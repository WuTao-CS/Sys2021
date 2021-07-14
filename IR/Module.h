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
    explicit Module(std::string name);
    ~Module();

    Type *getVoidTy();
    Type *getLabelTy();
    IntegerType *getInt1Ty();
    IntegerType *getInt32Ty();
    PointerType *getInt32PtrTy();
    //将f挂在module的function链表上，在function被创建的时候会自动调用此方法来添加function
    void addFunction(Function *f);
    void removeFunction(Function *f)
    {
        function_list_.remove(f);
    }
    //将g挂在module的GlobalVariable链表上，在GlobalVariable被创建的时候会自动调用此方法来添加GlobalVariable
    void addGlobalVariable(GlobalVariable *g);
    //从GlobalVariable链表上删除v
    void removeGlobalVariable(GlobalVariable *v)
    {
        global_list_.remove(v);
    }
    // 获取function链表
    std::list<Function *> &getFunctions()
    {
        return function_list_;
    }
    //获取全局变量列表
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
    Function *getMainFunction()
    {
        for (auto f : function_list_)
        {
            if (f->getName() == "main")
            {
                return f;
            }
        }
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
    // 获取instr对应的指令名(打印ir时调用)
    std::string getInstrOpName(Instruction::OpID instr)
    {
        return instr_id2string_[instr];
    }
    virtual std::string print();

  private:
    std::list<GlobalVariable *> global_list_; // 全局变量链表
    std::list<Function *>
        function_list_; // 函数链表,记录了这个编译单元的所有函数
    std::map<std::string, Value *> value_sym_; // values的符号表
    std::map<Instruction::OpID, std::string>
        instr_id2string_; // 通过指令类型id得到其打印的string

    std::string module_name_; // Human readable identifier for the module
    std::string
        source_file_name_; // 编译原文件名字(LLVM标准中间代码有,但是不影响LLVM
                           // IR的编译)

  private:
    IntegerType *int1_ty_;
    IntegerType *int32_ty_;
    Type *label_ty_;
    Type *void_ty_;
    PointerType *int32ptr_ty_;
};

#endif // SYSYC_MODULE_H