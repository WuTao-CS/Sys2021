#include "Constant.h"
#include "Module.h"

ConstantInt *ConstantInt::get(int val, Module *m)
{
    return new ConstantInt(Type::getInt32Ty(m), val);
}

ConstantArray::ConstantArray(ArrayType *ty, const std::vector<Constant *> &val)
    : Constant(ty, "", val.size())
{
    for (int i = 0; i < val.size(); i++)
        setOperand(i, val[i]);
    this->const_array.assign(val.begin(), val.end());
}

Constant *ConstantArray::getElementValue(int index)
{
    return this->const_array[index];
}

ConstantArray *ConstantArray::get(ArrayType *ty,
                                  const std::vector<Constant *> &val)
{
    return new ConstantArray(ty, val);
}

std::string ConstantInt::print()
{
    std::string const_ir;
    Type *ty = this->getType();
    if (ty->isIntegerTy() && static_cast<IntegerType *>(ty)->getNumBits() == 1)
    {
        // int1
        const_ir += (this->getValue() == 0) ? "false" : "true";
    }
    else
    {
        // int32
        const_ir += std::to_string(this->getValue());
    }
    return const_ir;
}

std::string ConstantArray::print()
{
    std::string const_ir;
    const_ir += this->getType()->print();
    const_ir += " ";
    const_ir += "[";
    for (int i = 0; i < this->getNumElements(); i++)
    {
        const_ir += getElementValue(i)->print();
        const_ir += ", ";
    }
    return const_ir;
}