#include "syntax_tree.hh"
#include "sysy_driver.hh"
#include <SYSYCBuilder.h>


#include "ActiveVars.h"
#include "BBConstPropagation.h"
#include "CodeGen.hh"
#include "DeadCodeEliminate.h"
#include "Dominators.h"
#include "FunctionInline.h"
#include "GlobalVariableLocal.h"
#include "LoopFind.h"
#include "PassManager.h"
#include "RegisterAllocation.h"
#include "SimplifyCFG.h"
#include "mem2reg.h"

#include "BBCommonSubExper.h"
#include "ConstLoopExpansion.h"
#include "RefactorPartIns.h"

#include "InstructionSchedule.h"
#include "LoopInvariant.h"
#include "LowerIR.h"
#include "PowerArray.h"

#include "AccumulatePattern.h"
#include "Analyzer.hh"
#include "BBExps.h"
#include "CondSimplify.h"
#include "FunctionOptimization.h"
#include "HIRToMIR.h"
#include "HighIRsimplyCFG.h"
#include "LoopMerge.h"
#include "MergeCond.h"
#include "Multithreading.h"
#include "Vectorization.h"

#include <algorithm>
#include <fstream>
#include <iostream>
#include <unordered_set>
using namespace std;
bool disable_div_optimization = false;

int main(int argc, char **argv) {
//    ifstream infile(argv[1]);
//
//    yy::sysyFlexLexer scanner{infile, std::cout};
//    yy::sysy_parser::semantic_type yylval;
//
////    scanner.yylex(&yylval);
////    scanner.yylex(&yylval);
////    scanner.yylex(&yylval);
//    yy::sysy_parser parser(&scanner);
//    int x = parser.parse();
//    infile.close();
//    assert(x == 0);

    std::string target_path;
    target_path=string("./test.out");
    bool emit = false;
    bool test = false;
    bool opti = false;
    bool debug = true;

    std::shared_ptr<SyntaxCompUnit> root;
    sysy_driver driver;
    syntax_tree_printer printer;
    int res = 0;
    for (int i = 1; i < argc; ++i) {
        if (argv[i] == std::string("-p"))
            driver.trace_parsing = true;
        else if (argv[i] == std::string("-s"))
            driver.trace_scanning = true;
        else if (root = driver.parse(argv[i])) {
//            printer.visit(*(root.get()));
            auto tree = syntax_tree(root);
            std::cout<<"Generate syntax tree success!\n";

            SYSYCBuilder builder;
            std::cout<<"Begin to build tree of sysy!"<<std::endl;
            tree.run_visitor(builder);
            std::cout<<"End building tree of sysy!"<<std::endl;
            if (true) {
                std::cout<<"Begin to optimize!"<<std::endl;

                std::cout<<"Begin to generate PassManager!"<<std::endl;
                PassManager PM(builder.getModule().get());
                std::cout<<"End generating PassManager!"<<std::endl;

                // HIR optimization
                std::cout<<"Begin to optimize HIR!"<<std::endl;
                PM.addPass<HighIRsimplyCFG>();
                PM.addPass<LoopMerge>();
                PM.addPass<AccumulatePattern>();
                PM.addPass<HighIRsimplyCFG>();
                std::cout<<"End optimizing HIR!"<<std::endl;

                // HIR to MIR
                std::cout<<"Begin to optimize MIR!"<<std::endl;
                PM.addPass<HIRToMIR>();
                PM.addPass<SimplifyCFG>();
                std::cout<<"End optimizing MIR!"<<std::endl;

                // FunctionOptimization
                std::cout<<"Begin to optimize Function!"<<std::endl;
                PM.addPass<FunctionOptimization>();
                PM.addPass<DeadCodeEliminate>();
                std::cout<<"End optimizing Function!"<<std::endl;

                // Inline
                std::cout<<"Begin to optimize Inline!"<<std::endl;
                PM.addPass<FunctionInline>();
                PM.addPass<GlobalVariableLocal>();
                PM.addPass<DeadCodeEliminate>();
                PM.addPass<SimplifyCFG>();
                std::cout<<"End optimizing Inline!"<<std::endl;

                // SSA
                std::cout<<"Begin to optimize SSA!"<<std::endl;
                PM.addPass<Dominators>();
                PM.addPass<Mem2RegPass>();
                PM.addPass<DeadCodeEliminate>();
                std::cout<<"End optimizing SSA!"<<std::endl;

                // Const Propagation
                std::cout<<"Begin to optimize Const Propagation!"<<std::endl;
                PM.addPass<BBConstPropagation>();
                PM.addPass<DeadCodeEliminate>();
                PM.addPass<SimplifyCFG>();
                std::cout<<"End optimizing Const Propagation!"<<std::endl;

                // Common Sub Exper
                std::cout<<"Begin to optimize Common Sub Exper"<<std::endl;
                PM.addPass<BBCommonSubExper>();
                std::cout<<"End optimizing Common Sub Exper!"<<std::endl;

                // SSA Inline
                std::cout<<"Begin to optimize SSA Inline"<<std::endl;
                PM.addPass<FunctionInline>();
                PM.addPass<DeadCodeEliminate>();
                PM.addPass<SimplifyCFG>();
                std::cout<<"End optimizing SSA Inline!"<<std::endl;

                // Const Loop Expansion
                std::cout<<"Begin to optimize Loop Expansion"<<std::endl;
                PM.addPass<RefactorPartIns>();
                std::cout<<"End optimizing Loop Expansion!"<<std::endl;

                // PM.addPass<ConstLoopExpansion>();
                PM.addPass<SimplifyCFG>();
                PM.addPass<BBConstPropagation>();
                PM.addPass<DeadCodeEliminate>();
                PM.addPass<SimplifyCFG>();
                // PowerArray: remove bitset.sy x array
                // PM.addPass<PowerArray>();
                PM.addPass<DeadCodeEliminate>();
                PM.addPass<SimplifyCFG>();
                // LoopInvariant
                PM.addPass<LoopInvariant>();
                PM.addPass<SimplifyCFG>();
                // CommonSubExper
                PM.addPass<BBCommonSubExper>();
                PM.addPass<DeadCodeEliminate>();
                PM.addPass<SimplifyCFG>();
                // Multithreading
                PM.addPass<RefactorPartIns>();
                PM.addPass<Multithreading>();
                PM.addPass<DeadCodeEliminate>();
                PM.addPass<SimplifyCFG>();


                // SIMD
                std::cout<<"Begin to optimize SIMD"<<std::endl;
                // PM.addPass<Vectorization>();
                PM.addPass<DeadCodeEliminate>();
                // MIR to LIR and LIR optimization
                PM.addPass<LowerIR>();
                PM.addPass<DeadCodeEliminate>();
                PM.addPass<BBCommonSubExper>();
                PM.addPass<DeadCodeEliminate>();
                std::cout<<"End optimizing SIMD"<<std::endl;

                std::cout<<"Begin to run!"<<std::endl;
                PM.run();
                std::cout<<"End running!"<<std::endl;
                // CodeGen
                std::cout<<"Begin to generate code!"<<std::endl;
                CodeGen code_generator(builder.getModule(), debug);
                std::cerr << std::endl
                          << "### IR (without RegAlloc) ###" << std::endl
                          << std::endl;
                builder.getModule().get()->print();
                std::string asm_code = code_generator.generateModuleCode(true);
                std::cerr << std::endl
                          << "### IR (with RegAlloc) ###" << std::endl
                          << std::endl;
                // code_generator.printIR();
                // code_generator.printStat();
                std::ofstream out(target_path);
                out << asm_code;
                out.close();
                std::cout<<"End generating code!"<<std::endl;
                return 0;
            }
        } else {
            res = 1;
        }
    }



}