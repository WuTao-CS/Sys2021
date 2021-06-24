#ifndef SYSYC_BASICBLOCK_H
#define SYSYC_BASICBLOCK_H

#include <list>
#include <map>
#include <set>
#include <string>
#include <unordered_map>
#include <unordered_set>

#include "BaseBlock.h"
#include "Value.h"

class Function;
class Instruction;
class Module;

class BasicBlock : public BaseBlock
{
    //基本块，是一个是单入单出的代码块，该类维护了一个指令链表，基本块本身属于
    // Value, 类型是 \<label\>，会被分支指令调用
  public:
    static BasicBlock *create(Module *m, const std::string &name)
    {
        // 创建并返回BB块，参数分别是BB块所属的Module，name是其名字默认为空，BB块所属的Function
        return new BasicBlock(m, name);
    }

    // 创建并返回BB块，参数分别是BB块所属的Module，name是其名字默认为空，BB块所属的Function
    static BasicBlock *create(Module *m, const std::string &name,
                              Function *func)
    {
        return new BasicBlock(m, name, func);
    }
    // 设置BB块所属的函数
    void setParent(Function *parent)
    {
        func_ = parent;
    }

    // 返回BB块所属的函数
    Function *getParent() const
    {
        return func_;
    }
    // 返回BB块所属的Module
    Module *getModule() const;
    // 返回指令链表头
    auto rbegin()
    {
        return instr_list_.rbegin();
    }
    // 返回指令链表的结尾
    auto rend()
    {
        return instr_list_.rend();
    }
    // 返回BB块的指令链表
    std::list<Instruction *> &getInstructions()
    {
        return instr_list_;
    }

    const Instruction *getTerminator() const;
    // 返回BB块的终止指令(return|break)若BB块最后一条指令不是终止指令返回null
    Instruction *getTerminator()
    {
        return const_cast<Instruction *>(
            static_cast<const BasicBlock *>(this)->getTerminator());
    }
    // 将instr指令添加到此BB块指令链表结尾，调用IRBuilder里来创建函数会自动调用此方法
    void addInstruction(Instruction *instr);
    // 将instr指令添加到此BB块指令链表开头
    void addInstrBegin(Instruction *instr);
    // 判断BB块指令链表是否为空
    bool empty()
    {
        return instr_list_.empty();
    }
    // 返回BB块中指令的数目
    int getNumOfInstr()
    {
        return instr_list_.size();
    }
    //在pos后插入Instr
    void insertInstr(Instruction *pos, Instruction *insert);
    // 从BB块指令链表删除instr指令
    void deleteInstr(Instruction *instr);

    std::map<Value *, std::set<Value *>> &getBBAssignIn()
    {
        return reach_assign_in_;
    }
    std::map<Value *, std::set<Value *>> &getBBAssignOut()
    {
        return reach_assign_out_;
    }
    /****************api about cfg****************/
    // 返回前驱快集合
    std::list<BasicBlock *> &getPreBasicBlocks()
    {
        return pre_bbs_;
    }
    // 返回后继块集合
    std::list<BasicBlock *> &getSuccBasicBlocks()
    {
        return succ_bbs_;
    }

    // 添加前驱块
    void addPreBasicBlock(BasicBlock *bb)
    {
        pre_bbs_.push_back(bb);
    }
    // 添加后继驱块
    void addSuccBasicBlock(BasicBlock *bb)
    {
        succ_bbs_.push_back(bb);
    }
    // 移除前驱块
    void removePreBasicBlock(BasicBlock *bb)
    {
        pre_bbs_.remove(bb);
    }
    // 移除后继块
    void removeSuccBasicBlock(BasicBlock *bb)
    {
        succ_bbs_.remove(bb);
    }
    void clearSuccBasicBlock()
    {
        succ_bbs_.clear();
    }

    virtual std::string print() override;

  protected:
    explicit BasicBlock(Module *m, const std::string &name);
    explicit BasicBlock(Module *m, const std::string &name, Function *func);

    std::list<Instruction *> instr_list_;

  private:
    std::map<Value *, std::set<Value *>> reach_assign_in_; // data flow
    std::map<Value *, std::set<Value *>> reach_assign_out_;

    std::list<BasicBlock *> pre_bbs_;
    std::list<BasicBlock *> succ_bbs_;

    std::unordered_set<Value *> activeIn, activeOut, definedVals;
    std::unordered_map<Value *, BasicBlock *> inheritedVals;
};

#endif // SYSYC_BASICBLOCK_H
