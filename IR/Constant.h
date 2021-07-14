#ifndef SYSYC_CONSTANT_H
#define SYSYC_CONSTANT_H
#include "Type.h"
#include "User.h"
#include "Value.h"

// class User;
// 常数，各种类型常量的基类
class Constant : public User
{
  private:
    // int value;
  public:
    Constant(Type *ty, const std::string &name = "", unsigned num_ops = 0)
        : User(ty, name, num_ops)
    {
    }
    ~Constant() = default;
};
// int类型的常数
class ConstantInt : public Constant
{
  private:
    int value_; //常数值
    ConstantInt(Type *ty, int val) : Constant(ty, "", 0), value_(val) {}

  public:
    // 返回该常数类型中存的常数值
    static int getValue(ConstantInt *const_val)
    {
        return const_val->value_;
    }
    // 返回该常数类型中存的常数值
    int getValue()
    {
        return value_;
    }
    // 修改常数值
    void setValue(int val)
    {
        value_ = val;
    }
    // 以val值来创建常数类
    static ConstantInt *get(int val, Module *m);
    virtual std::string print() override;
};
// 数组类型的常数
class ConstantArray : public Constant
{
  private:
    //数组常量值
    std::vector<Constant *> const_array;

    ConstantArray(ArrayType *ty, const std::vector<Constant *> &val);

  public:
    ~ConstantArray() = default;
    // 获取index下标的元素
    Constant *getElementValue(int index);
    // 返回数组的大小
    unsigned getNumElements() const
    {
        return const_array.size();
    }

    static ConstantArray *get(ArrayType *ty,
                              const std::vector<Constant *> &val);
    // LLVM格式中间代码生成
    virtual std::string print() override;
};

#endif // SYSYC_CONSTANT_H
