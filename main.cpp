#include "SysyBuilder.hpp"
#include "syntax_tree.hh"
#include "sysy_driver.hh"
#include "llvm/ADT/Triple.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/CodeGen/CommandFlags.def"
#include "llvm/CodeGen/LinkAllCodegenComponents.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/IR/AutoUpgrade.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/ToolOutputFile.h"
#include "llvm/Target/TargetMachine.h"
#include <iostream>
using namespace std::literals::string_literals;

extern TreeNodeCompUnit *MonkeyType(const std::string filename);

void print_help(std::string exe_name)
{
    std::cout
        << "Usage: " << exe_name
        << " [ -h | --help ] [ -o <target-file> ] [ -emit-llvm ] <input-file>"
        << std::endl;
}

int main(int argc, char **argv)
{
    std::string target_path;
    std::string input_path;
    bool emit = false;
    bool Syntree = true;
    bool codegenbin = true;
    bool codegenasm = false;
    for (int i = 1; i < argc; i++)
    {
        if (argv[i] == "-h"s || argv[i] == "--help"s)
        {
            print_help(argv[0]);
            return 0;
        }
        else if (argv[i] == "-o"s)
        {
            if (target_path.empty() && i + 1 < argc)
            {
                target_path = argv[i + 1];
                i += 1;
            }
            else
            {
                print_help(argv[0]);
                return 0;
            }
        }
        else
        {
            if (input_path.empty())
            {
                input_path = argv[i];
            }
            else
            {
                print_help(argv[0]);
                return 0;
            }
        }
    }
    if (input_path.empty())
    {
        print_help(argv[0]);
        return 0;
    }
    if (target_path.empty())
    {
        auto pos = input_path.rfind('.');
        if (pos == std::string::npos)
        {
            std::cerr << argv[0] << ": input file " << input_path
                      << " has unknown filetype!" << std::endl;
            return -1;
        }
        else
        {
            if (input_path.substr(pos) != ".sy")
            {
                std::cerr << argv[0] << ": input file " << input_path
                          << " has unknown filetype!" << std::endl;
                return -1;
            }
            target_path = input_path.substr(0, pos);
        }
    }

    std::shared_ptr<TreeNodeCompUnit> root;
    sysy_driver driver;
    syntax_tree_printer printer;
    root = driver.parse(input_path);
    auto tree = syntax_tree(root);

    SysyBuilder builder;

    std::cout << input_path.c_str() << ": " << std::endl;
    tree.run_visitor(builder);
    if (Syntree)
    {
        std::cout << "########语法树结构##############" << std::endl;
        printer.visit(*root);
        std::cout << "##############################" << std::endl;
    }

    auto mod = builder.build();
    mod->setSourceFileName(input_path);

    std::error_code error_msg;
    llvm::InitializeAllTargets();
    llvm::InitializeAllTargetInfos();
    llvm::InitializeAllTargetMCs();
    llvm::InitializeAllAsmParsers();
    llvm::InitializeAllAsmPrinters();

    llvm::PassRegistry *Registry = llvm::PassRegistry::getPassRegistry();
    initializeCore(*Registry);
    initializeCodeGen(*Registry);
    initializeScalarOpts(*Registry);

    llvm::Triple TheTriple;
    TheTriple.setTriple(llvm::sys::getDefaultTargetTriple());
    std::string Error;
    const llvm::Target *TheTarget =
        llvm::TargetRegistry::lookupTarget("", TheTriple, Error);

    std::string CPUStr = getCPUStr(), FeaturesStr = getFeaturesStr();
    CodeGenOpt::Level OLvl = CodeGenOpt::None;
    TargetOptions Options = InitTargetOptionsFromCodeGenFlags();
    std::unique_ptr<TargetMachine> Target(TheTarget->createTargetMachine(
        TheTriple.getTriple(), CPUStr, FeaturesStr, Options, getRelocModel(),
        getCodeModel(), OLvl));
    assert(Target);

    legacy::PassManager PM;

    llvm::TargetLibraryInfoImpl TLII(Triple(mod->getTargetTriple()));
    PM.add(new TargetLibraryInfoWrapperPass(TLII));
    mod->setDataLayout(Target->createDataLayout());
    UpgradeDebugInfo(*mod);
    setFunctionAttributes(CPUStr, FeaturesStr, *mod);

    llvm::LLVMTargetMachine &LLVMTM = static_cast<LLVMTargetMachine &>(*Target);
    MachineModuleInfo *MMI = new MachineModuleInfo(&LLVMTM);
    TargetPassConfig &TPC = *LLVMTM.createPassConfig(PM);

    TPC.setDisableVerify(true);
    PM.add(&TPC);
    PM.add(MMI);

    if (emit)
    {
        std::string ir_path = target_path + ".ll";
        auto output_file = llvm::make_unique<llvm::ToolOutputFile>(
            ir_path, error_msg, llvm::sys::fs::F_None);
        if (error_msg.value())
        {
            std::cout << "Error in IR" << std::endl;
            llvm::errs() << error_msg.message() << "\n";
            return -1;
        }
        auto output_ostream = &output_file->os();
        PM.run(*mod);
        mod->print(*output_ostream, nullptr);
        output_file->keep();
        std::cout << "##########中间代码##############" << std::endl;
        mod->print(llvm::errs(), nullptr);
        std::cout << "###############################" << std::endl;
    }
    if (codegenbin)
    {
        auto obj_file_name = target_path + ".o";
        auto obj_file = llvm::make_unique<llvm::ToolOutputFile>(
            obj_file_name, error_msg, llvm::sys::fs::F_None);
        if (error_msg.value())
        {
            llvm::errs() << error_msg.message() << "\n";
            return -1;
        }

        auto obj_ostream = &obj_file->os();
        TPC.addISelPasses();
        TPC.addMachinePasses();
        TPC.setInitialized();
        LLVMTM.addAsmPrinter(PM, *obj_ostream, nullptr,
                             TargetMachine::CGFT_ObjectFile, MMI->getContext());
        PM.add(createFreeMachineFunctionPass());
        PM.run(*mod);

        obj_file->keep();

        auto command_string = std::string("clang -w ") + target_path +
                              ".o -o " + target_path + " -L. -lsysy_io";
        std::system(command_string.c_str());
    }
    if (codegenasm)
    {
        auto asm_file_name = target_path + ".s";
        auto asm_file = llvm::make_unique<llvm::ToolOutputFile>(
            asm_file_name, error_msg, llvm::sys::fs::F_None);
        if (error_msg.value())
        {
            llvm::errs() << error_msg.message() << "\n";
            return -1;
        }

        auto asm_ostream = &asm_file->os();
        TPC.addISelPasses();
        TPC.addMachinePasses();
        TPC.setInitialized();
        LLVMTM.addAsmPrinter(PM, *asm_ostream, nullptr,
                             TargetMachine::CGFT_AssemblyFile,
                             MMI->getContext());
        PM.add(createFreeMachineFunctionPass());
        PM.run(*mod);

        std::cerr << asm_ostream << std::endl;
        asm_file->keep();
    }

    return 0;
}
