#include "Type.h"
#include "Module.h"
#include "ReturnVal.h"
#include <cassert>

Type::Type(TypeID tid)
{
    tid_ = tid;
}

Type *Type::getVoidTy(Module *m)
{
    return m->getVoidTy();
}

Type *Type::getLabelTy(Module *m)
{
    return m->getLabelTy();
}

IntegerType *Type::getInt1Ty(Module *m)
{
    return m->getInt1Ty();
}

IntegerType *Type::getInt32Ty(Module *m)
{
    return m->getInt32Ty();
}

PointerType *Type::getInt32PtrTy(Module *m)
{
    return m->getInt32PtrTy();
}

Type *Type::getPointerElementType()
{
    if (this->isPointerTy())
        return static_cast<PointerType *>(this)->getElementType();
    else
        return nullptr;
}

int Type::getSize(bool extended)
{
    if (this->isIntegerTy())
    {
        auto bits = static_cast<IntegerType *>(this)->getNumBits() / 8;
        return bits > 0 ? bits : 1;
    }
    if (this->isArrayTy())
    {
        auto element_size =
            static_cast<ArrayType *>(this)->getElementType()->getSize();
        auto num_elements = static_cast<ArrayType *>(this)->getNumOfElements();
        return element_size * num_elements;
    }
    if (this->isPointerTy())
    {
        if (extended && this->getPointerElementType()->isArrayTy())
        {
            return this->getPointerElementType()->getSize();
        }
        else
        {
            return 4;
        }
    }
    return 0;
}

std::string Type::print()
{
    std::string type_ir;
    switch (this->getTypeID())
    {
    case VoidTyID:
        type_ir += "void";
        break;
    case LabelTyID:
        type_ir += "label";
        break;
    case IntegerTyID:
        type_ir += "i";
        type_ir +=
            std::to_string(static_cast<IntegerType *>(this)->getNumBits());
        break;
    case FunctionTyID:
        type_ir += static_cast<FunctionType *>(this)->getResultType()->print();
        type_ir += " (";
        for (int i = 0; i < static_cast<FunctionType *>(this)->getNumArgs();
             i++)
        {
            if (i)
                type_ir += ", ";
            type_ir +=
                static_cast<FunctionType *>(this)->getArgType(i)->print();
        }
        type_ir += ")";
        break;
    case PointerTyID:
        type_ir += this->getPointerElementType()->print();
        type_ir += "*";
        break;
    case ArrayTyID:
        type_ir += "[";
        type_ir +=
            std::to_string(static_cast<ArrayType *>(this)->getNumOfElements());
        type_ir += " x ";
        type_ir += static_cast<ArrayType *>(this)->getElementType()->print();
        type_ir += "]";
        break;
    default:
        break;
    }
    return type_ir;
}
std::string Type::CommentPrint()
{
    std::string typeString;
    switch (tid_)
    {
    case LabelTyID:
        typeString += "<label>";
        break;

    case IntegerTyID:
        if (static_cast<IntegerType *>(this)->getNumBits() == 1)
        {
            typeString += "i1";
        }
        else
        {
            typeString += "i32";
        }
        break;

    case ArrayTyID:
        typeString += "[ ";
        typeString +=
            std::to_string(static_cast<ArrayType *>(this)->getNumOfElements()) +
            " x ";
        typeString +=
            static_cast<ArrayType *>(this)->getElementType()->CommentPrint();
        typeString += "]";
        break;

    case PointerTyID:
        typeString += getPointerElementType()->CommentPrint();
        typeString += "*";
        break;

    default:
        break;
    }
    return typeString;
}

IntegerType::IntegerType(unsigned num_bits)
    : Type(Type::IntegerTyID), num_bits_(num_bits)
{
}

IntegerType *IntegerType::get(unsigned num_bits)
{
    return new IntegerType(num_bits);
}

unsigned IntegerType::getNumBits()
{
    return num_bits_;
}

FunctionType::FunctionType(Type *result, std::vector<Type *> params)
    : Type(Type::FunctionTyID)
{
    exit_ifnot(_InvalidRetVal_Constructor_FunctionType,
               isValidReturnType(result) &&
                   "Invalid return type for function!");
    result_ = result;

    for (auto p : params)
    {
        exit_ifnot(_InvalidArgType_Constructor_FunctionType,
                   isValidArgumentType(p) &&
                       "Not a valid type for function argument!");
        args_.push_back(p);
    }
}

bool FunctionType::isValidReturnType(Type *ty)
{
    return ty->isIntegerTy() || ty->isVoidTy();
}

bool FunctionType::isValidArgumentType(Type *ty)
{
    return ty->isIntegerTy() || ty->isPointerTy();
}

FunctionType *FunctionType::get(Type *result, std::vector<Type *> params)
{
    return new FunctionType(result, params);
}

unsigned FunctionType::getNumArgs() const
{
    return args_.size();
}

Type *FunctionType::getArgType(unsigned i) const
{
    return args_[i];
}

Type *FunctionType::getResultType() const
{
    return result_;
}

ArrayType::ArrayType(Type *contained, unsigned num_elements)
    : Type(Type::ArrayTyID), num_elements_(num_elements)
{
    exit_ifnot(_InvalidElemType_Constructor_ArrayType,
               isValidElementType(contained) &&
                   "Not a valid type for array element!");
    contained_ = contained;
}

bool ArrayType::isValidElementType(Type *ty)
{
    return ty->isIntegerTy() || ty->isArrayTy();
}

ArrayType *ArrayType::get(Type *contained, unsigned num_elements)
{
    return new ArrayType(contained, num_elements);
}

std::vector<unsigned> ArrayType::getDims() const
{
    std::vector<unsigned> rets;
    auto elem_ty = contained_;
    rets.push_back(num_elements_);
    while (elem_ty->isArrayTy())
    {
        auto arr = static_cast<ArrayType *>(elem_ty);
        rets.push_back(arr->getNumOfElements());
        elem_ty = arr->getElementType();
    }
    return rets;
}

PointerType::PointerType(Type *contained)
    : Type(Type::PointerTyID), contained_(contained)
{
}

PointerType *PointerType::get(Type *contained)
{
    return new PointerType(contained);
}
