#ifndef SYSYC_VALUE_H
#define SYSYC_VALUE_H

#include <iostream>
#include <list>
#include <string>

class Type;
class Value;
// 记录了所有使用该操作数的指令
struct Use
{
    Value *val_;
    unsigned arg_no_; // the no. of operand, e.g., func(a, b), a is 0, b is 1
    Use(Value *val, unsigned no) : val_(val), arg_no_(no) {}
    friend bool operator==(const Use &lhs, const Use &rhs)
    {
        return lhs.val_ == rhs.val_ && lhs.arg_no_ == rhs.arg_no_;
    }
};

class UseHash
{
  public:
    size_t operator()(const Use &u) const
    {
        return (std::hash<Value *>()(u.val_)) ^
               (std::hash<unsigned>()(u.arg_no_));
    }
};
// 最基础的类,代表一个操作数,代表一个可能用于指令操作数的带类型数据
class Value
{
  public:
    explicit Value(Type *ty, const std::string &name = "");
    ~Value() = default;

    Type *getType() const
    {
        return type_;
    }

    std::list<Use> &getUseList()
    {
        return use_list_;
    }

    void addUse(Value *val, unsigned arg_no = 0);

    bool setName(std::string name)
    {
        if (name_ == "")
        {
            name_ = name;
            return true;
        }
        return false;
    }
    std::string getName() const;

    virtual std::string print() {}

    void removeUse(Value *val, unsigned arg_no);

  private:
    Type *type_;              // 类型,一个 type 类,表示操作数的类型
    std::list<Use> use_list_; // 记录了所有使用该操作数的指令的列表
    std::string name_;        // 名字
};

#endif // SYSYC_VALUE_H