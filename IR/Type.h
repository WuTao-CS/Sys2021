#ifndef SYSYC_TYPE_H
#define SYSYC_TYPE_H

#include <iostream>
#include <vector>

class Module;
class IntegerType;
class FunctionType;
class ArrayType;
class PointerType;
// IR的类型,该类是所有类型的超类
class Type
{
  public:
    //枚举类型,表示type的类型
    enum TypeID {
        VoidTyID,     // Void
        LabelTyID,    // Labels, e.g., BasicBlock
        IntegerTyID,  // Integers, include 32 bits and 1 bit
        FunctionTyID, // Functions
        ArrayTyID,    // Arrays
        PointerTyID,  // Pointer
    };

    explicit Type(TypeID tid);
    ~Type() = default;

    TypeID getTypeID() const
    {
        return tid_;
    }
    bool isVoidTy() const
    {
        return getTypeID() == VoidTyID;
    }
    bool isLabelTy() const
    {
        return getTypeID() == LabelTyID;
    }
    bool isIntegerTy() const
    {
        return getTypeID() == IntegerTyID;
    }
    bool isFunctionTy() const
    {
        return getTypeID() == FunctionTyID;
    }
    bool isArrayTy() const
    {
        return getTypeID() == ArrayTyID;
    }
    bool isPointerTy() const
    {
        return getTypeID() == PointerTyID;
    }
    static bool isEqType(Type *ty1, Type *ty2)
    {
        return ty1 == ty2;
    }

    static Type *getVoidTy(Module *m);
    static Type *getLabelTy(Module *m);
    static IntegerType *getInt1Ty(Module *m);
    static IntegerType *getInt32Ty(Module *m);
    static PointerType *getInt32PtrTy(Module *m);

    Type *getPointerElementType();

    std::string print();
    std::string CommentPrint();

    int getSize(bool extended = true);

    bool eq(Type rhs)
    {
        if (this->tid_ != rhs.tid_)
        {
            return false;
        }
        else if (this->isPointerTy())
        {
            return this->getPointerElementType()->eq(
                *rhs.getPointerElementType());
        }
        else
        {
            return true;
        }
    }

  private:
    TypeID tid_;
};
// int类型
class IntegerType : public Type
{
  public:
    explicit IntegerType(unsigned num_bits);
    static IntegerType *get(unsigned num_bits);
    unsigned getNumBits();

  private:
    unsigned num_bits_;
};
//函数类型
class FunctionType : public Type
{
  public:
    FunctionType(Type *result, std::vector<Type *> params);

    static bool isValidReturnType(Type *ty);
    static bool isValidArgumentType(Type *ty);
    static FunctionType *
    get(Type *result,
        std::vector<Type *>
            params); // 返回函数类型,参数依次是返回值类型result,形参类型链表params
    unsigned getNumArgs() const;        //返回形参的个数
    Type *getArgType(unsigned i) const; // 返回第 i 个形参的类型
    Type *getResultType() const; //返回函数类型中的返回值类型

  private:
    Type *result_;             //函数返回值
    std::vector<Type *> args_; //函数参数类型
};
//数组类型
class ArrayType : public Type
{
  public:
    ArrayType(Type *contained, unsigned num_elements);

    static bool isValidElementType(Type *ty);
    static ArrayType *
    get(Type *contained,
        unsigned num_elements); //返回数组类型,参数依次是 数组元素的类型
                                // contained ,数组元素个数
    Type *getElementType() const //返回数组元素类型
    {
        return contained_;
    }
    unsigned getNumOfElements() const // 返回数组元素的个数
    {
        return num_elements_;
    }
    std::vector<unsigned> getDims() const;

  private:
    Type *contained_;       // 数组元素种类的
    unsigned num_elements_; // 数组元素数目
};

class PointerType : public Type
{
  public:
    PointerType(Type *contained);
    Type *getElementType() const //返回指针指向的类型
    {
        return contained_;
    }

    static PointerType *get(Type *contained); // 创建指向contained类型的指针类型

  private:
    Type *contained_; // 指针指向的类型
};

#endif // SYSYC_TYPE_H