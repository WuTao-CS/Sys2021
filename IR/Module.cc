#include "Module.h"

Module::Module(std::string name) : module_name_(name)
{
    void_ty_ = new Type(Type::VoidTyID);
    label_ty_ = new Type(Type::LabelTyID);
    int1_ty_ = new IntegerType(1);
    int32_ty_ = new IntegerType(32);
    int32ptr_ty_ = new PointerType(int32_ty_);

    instr_id2string_.insert({Instruction::Ret, "ret"});
    instr_id2string_.insert({Instruction::Br, "br"});

    instr_id2string_.insert({Instruction::Add, "add"});
    instr_id2string_.insert({Instruction::Sub, "sub"});
    instr_id2string_.insert({Instruction::Mul, "mul"});
    instr_id2string_.insert({Instruction::Div, "sdiv"});
    instr_id2string_.insert({Instruction::Rem, "srem"});

    instr_id2string_.insert({Instruction::And, "and"});
    instr_id2string_.insert({Instruction::Or, "or"});
    instr_id2string_.insert({Instruction::Not, "srem"});

    instr_id2string_.insert({Instruction::Alloca, "alloca"});
    instr_id2string_.insert({Instruction::Load, "load"});
    instr_id2string_.insert({Instruction::Store, "store"});

    instr_id2string_.insert({Instruction::Cmp, "icmp"});
    instr_id2string_.insert({Instruction::PHI, "phi"});
    instr_id2string_.insert({Instruction::Call, "call"});
    instr_id2string_.insert({Instruction::GEP, "getelementptr"});
    instr_id2string_.insert({Instruction::ZExt, "zext"});
}

Module::~Module()
{
    delete void_ty_;
    delete label_ty_;
    delete int1_ty_;
    delete int32_ty_;
    delete int32ptr_ty_;
}

Type *Module::getVoidTy()
{
    return void_ty_;
}

Type *Module::getLabelTy()
{
    return label_ty_;
}

IntegerType *Module::getInt1Ty()
{
    return int1_ty_;
}

IntegerType *Module::getInt32Ty()
{
    return int32_ty_;
}

PointerType *Module::getInt32PtrTy()
{
    return int32ptr_ty_;
}

void Module::addFunction(Function *f)
{
    function_list_.push_back(f);
}

void Module::addGlobalVariable(GlobalVariable *g)
{
    global_list_.push_back(g);
}

std::string Module::print()
{
    std::string module_ir = "; ModuleID = ";
    module_ir += "\'" + module_name_ + "\'" + "\n";
    module_ir += "source_filename = " + std::string("\"") + source_file_name_ +
                 std::string("\"") + "\n";
    for (auto global_val : this->global_list_)
    {
        module_ir += global_val->print();
        module_ir += "\n";
    }
    for (auto func : this->function_list_)
    {
        module_ir += func->print();
        module_ir += "\n";
    }
    return module_ir;
}