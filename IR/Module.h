#ifndef SYSYC_MODULE_H
#define SYSYC_MODULE_H

#include <list>
#include <map>
#include <string>

#include "Function.h"
#include "GlobalVariable.h"
#include "Type.h"
#include "Value.h"

class GlobalVariable;
// 一个编译单元,在此源语言的意义下是一个文件
class Module
{
  public:
    enum IRLeval { HIR, MIR_MEM, MIR_SSA, LIR };
    explicit Module(std::string name);
    ~Module();

    Type *getVoidTy();
    Type *getLabelTy();
    IntegerType *getInt1Ty();
    IntegerType *getInt32Ty();
    PointerType *getInt32PtrTy();

    void addFunction(Function *f);
    void removeFunction(Function *f)
    {
        function_list_.remove(f);
    }
    void removeGlobalVariable(GlobalVariable *v)
    {
        global_list_.remove(v);
    }
    std::list<Function *> &getFunctions()
    {
        return function_list_;
    }
    std::list<GlobalVariable *> &getGlobalVariables()
    {
        return global_list_;
    }
    std::map<std::string, Value *> &getValueSym()
    {
        return value_sym_;
    }
    std::string getModuleName()
    {
        return module_name_;
    }
    std::string getSourceFileName()
    {
        return source_file_name_;
    }
    void addGlobalVariable(GlobalVariable *g);
    virtual std::string print();

    Function *getMainFunction()
    {
        for (auto f : function_list_)
        {
            if (f->getName() == "main")
            {
                return f;
            }
        }
        // assert(! "Can't find main");
    }

    Function *getFunction(std::string name)
    {
        for (auto f : function_list_)
        {
            if (f->getName() == name)
            {
                return f;
            }
        }
        exit(_getFunction_Function);
    }

    std::string getInstrOpName(Instruction::OpID instr)
    {
        return instr_id2string_[instr];
    }

  private:
    std::list<GlobalVariable *> global_list_; // 全局变量链表
    std::list<Function *>
        function_list_; // 函数链表,记录了这个编译单元的所有函数
    std::map<std::string, Value *> value_sym_; // Symbol table for values
    std::map<Instruction::OpID, std::string>
        instr_id2string_; // 通过指令类型id得到其打印的string

    std::string module_name_;      // Human readable identifier for the module
    std::string source_file_name_; // Original source file name for module, for
                                   // test and debug

    IRLeval ir_level_ = HIR;

  private:
    IntegerType *int1_ty_;
    IntegerType *int32_ty_;
    Type *label_ty_;
    Type *void_ty_;
    PointerType *int32ptr_ty_;
};

#endif // SYSYC_MODULE_H