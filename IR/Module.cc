#include "Module.h"

Module::Module(std::string name) : module_name_(name)
{
    void_ty_ = new Type(Type::VoidTyID);
    label_ty_ = new Type(Type::LabelTyID);
    int1_ty_ = new IntegerType(1);
    int32_ty_ = new IntegerType(32);
    int32ptr_ty_ = new PointerType(int32_ty_);
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
    std::cout << "; ModuleID = "
              << "\'" << module_name_ << "\'" << std::endl;
    std::cout << "source_filename = "
              << "\"" << source_file_name_ << "\"" << std::endl;
    std::string module_ir="; ModuleID = ";
    module_ir+="\'"+module_name_+"\'"+"\n";
    module_ir+="source_filename = "+std::string("\"")+source_file_name_+std::string("\"")+"\n";
    for ( auto global_val : this->global_list_)
    {
        module_ir += global_val->print();
        module_ir += "\n";
    }
    for ( auto func : this->function_list_)
    {
        module_ir += func->print();
        module_ir += "\n";
    }
    return module_ir;
}

void Module::HighIRprint()
{
    std::cout << "; Module name: "
              << "\'" << module_name_ << "\'" << std::endl;
    std::cout << "source_filename: "
              << "\"" << source_file_name_ << "\"" << std::endl;
    for (auto global_var : global_list_)
    {
        global_var->print();
        std::cout << " = "
                  << "global ";
        global_var->getInit()->print();
        std::cout << std::endl;
    }
    for (auto func : function_list_)
    {
        func->HighIRprint();
    }
}
