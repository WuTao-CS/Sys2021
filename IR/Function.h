#ifndef SYSYC_FUNCTION_H
#define SYSYC_FUNCTION_H

#include <cassert>
#include <cstddef>
#include <iterator>
#include <list>
#include <map>

#include "Instruction.h"
#include "ReturnVal.h"
#include "User.h"
#include <unordered_map>

class Module;
class Argument;
class BasicBlock;
class Type;
class FunctionType;

class Function : public Value
{
  public:
    Function(FunctionType *ty, const std::string &name, Module *parent);
    ~Function();
    //创建并返回Function,
    //参数依次是待创建函数类型ty，函数名字name(不可为空），函数所属的Module
    static Function *create(FunctionType *ty, const std::string &name,
                            Module *parent);
    // 返回函数类的函数类型
    FunctionType *getFunctionType() const;
    // 返回此函数类型的返回值类型
    Type *getResultType() const;
    // 将bb添加至Function的链表上(调用bb的创建函数会自动调用此函数挂在function的bb链表上
    void addBasicBlock(BasicBlock *bb);
    // 将bb添加至Function的链表上的一个位置
    void addBasicBlockAfter(std::list<BasicBlock *>::iterator after_pos,
                            BasicBlock *bb);
    // 换区函数形参数量
    unsigned getNumArgs() const;
    // 得到函数基本块数量
    unsigned getNumBasicBlocks() const
    {
        return basic_blocks_.size();
    }

    // 得到函数所属的Module
    Module *getParent() const;
    // 得到函数所属的block链表
    std::list<BasicBlock *> &getBasicBlocks()
    {
        return basic_blocks_;
    }
    // 获取函数的形参链表
    std::list<Argument *> &getArgs()
    {
        return arguments_;
    }
    //获取第一个bb块
    BasicBlock *getEntryBlock()
    {
        return *basic_blocks_.begin();
    }
    //得到函数形参的list的起始迭代器
    std::list<Argument *>::iterator arg_begin()
    {
        return arguments_.begin();
    }
    //得到函数形参的list的最后一个迭代器
    std::list<Argument *>::iterator arg_end()
    {
        return arguments_.end();
    }
    // 去除基本块
    void removeBasicBlock(BasicBlock *bb);
    bool is_declaration()
    {
        return basic_blocks_.empty();
    }
    // 给函数中未命名的基本块和指令命名
    void setInstrName();
    //输出LLVM中间代码
    std::string print() override;

  private:
    void buildArgs();

  private:
    // 基本块列表
    std::list<BasicBlock *> basic_blocks_; // basic blocks
    // 形参列表
    std::list<Argument *> arguments_; // arguments
    // 函数属于的Module
    Module *parent_;
    // 函数属于Module的数量
    int print_cnt_;

    //    bool multithreading_ = false;
};

// 函数参数, does not contain actual value
class Argument : public Value
{
  public:
    /// Argument constructor.
    explicit Argument(Type *ty, const std::string &name = "",
                      Function *f = nullptr, unsigned arg_no = 0)
        : Value(ty, name), parent_(f), arg_no_(arg_no)
    {
    }
    ~Argument() {}
    // 返回参数属于哪个函数
    inline const Function *getParent() const
    {
        return parent_;
    }
    inline Function *getParent()
    {
        return parent_;
    }

    /// 返回参数所在函数的第几个参数 eg:"void foo(int a, float b)" a is 0 and b
    /// is 1.
    unsigned getArgNo() const
    {
        if (parent_ == nullptr)
            exit(_getArgNo_Argument);
        return arg_no_;
    }

    virtual std::string print() override;

  private:
    Function *parent_; // 返回函数属于哪个参数
    unsigned arg_no_;  // 函数参数的位置
};

#endif // SYSYC_FUNCTION_H
