
#ifndef SYSYC_USER_H
#define SYSYC_USER_H

#include "Value.h"
#include <vector>

/*
使用者，提供一个操作数表，表中每个操作数都直接指向一个 Value, 提供了 use-def
信息，它本身是 Value 的子类，
Value类会维护一个该数据使用者的列表，提供def-use信息。简单来说操作数表表示我用了谁，
该数据使用者列表表示谁用了我。
*/
class User : public Value
{
  private:
    std::vector<Value *> operands_; // 参数列表,表示这个使用者所用到的参数
    unsigned num_ops_; // 表示该使用者使用的参数的个数
  public:
    User(Type *ty, const std::string &name = "", unsigned num_ops = 0);
    ~User() = default;

    std::vector<Value *> &getOperandList();

    // 从 user 的操作数链表中取出第 i 个操作数
    Value *getOperand(unsigned i) const;

    // 将 user 的第 i 个操作数设为 v
    void setOperand(unsigned i, Value *v);
    // 将 v 挂到 User 的操作数链表上
    void addOperand(Value *v);

    // 从 User 的操作数链表中的所有操作数处的 use_list_ 移除该 User;
    void removeOperand(unsigned i);
    // 移除操作数链表中索引为 index1-index2 的操作数,例如想删除第 0 个操作数:
    void removeOperand(unsigned i, unsigned j);
    // 得到操作数链表的大小
    unsigned getNumOperand() const;

    std::vector<Value *> &getOperands()
    {
        return operands_;
    }
    void removeUseOfOps();

    void setNumOps(unsigned num)
    {
        num_ops_ = num;
        operands_.resize(num, nullptr);
    }
    void clearOps()
    {
        num_ops_ = 0;
        removeUseOfOps();
        operands_.clear();
    }
    virtual std::string print() override {}
};

#endif // SYSYC_USER_H