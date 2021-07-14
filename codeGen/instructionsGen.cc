#include "instructionsGen.hh"

#include <string>
#include <vector>

namespace InstGen {

std::string condCode(const CmpOp &cond)
{
    std::string asm_code;
    switch (cond)
    {
    case EQ:
        asm_code += "eq";
        break;
    case NE:
        asm_code += "ne";
        break;
    case GT:
        asm_code += "gt";
        break;
    case GE:
        asm_code += "ge";
        break;
    case LT:
        asm_code += "lt";
        break;
    case LE:
        asm_code += "le";
        break;
    default:
        break;
    }
    return asm_code;
}

std::string push(const std::vector<Reg> &reg_list)
{
    std::string asm_code;
    bool flag = false;
    asm_code += spaces;
    asm_code += "push";
    asm_code += " ";
    asm_code += "{";
    for (auto &i : reg_list)
    {
        if (flag)
        {
            asm_code += ", ";
        }
        asm_code += i.getName();
        flag = true;
    }
    asm_code += "}";
    asm_code += newline;
    return asm_code;
}

std::string pop(const std::vector<Reg> &reg_list)
{
    std::string asm_code;
    bool flag = false;
    asm_code += spaces;
    asm_code += "pop";
    asm_code += " ";
    asm_code += "{";
    for (auto &i : reg_list)
    {
        if (flag)
        {
            asm_code += ", ";
        }
        asm_code += i.getName();
        flag = true;
    }
    asm_code += "}";
    asm_code += newline;
    return asm_code;
}

std::string mov(const Reg &target, const Value &source, const CmpOp &cond)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "mov";
    asm_code += condCode(cond);
    asm_code += " ";
    asm_code += target.getName();
    asm_code += ", ";
    asm_code += source.getName();
    asm_code += newline;
    return asm_code;
}

std::string setValue(const Reg &target, const Constant &source)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "ldr";
    asm_code += " ";
    asm_code += target.getName();
    asm_code += ", ";
    asm_code += "=";
    asm_code += source.getName();
    asm_code += newline;
    return asm_code;
}

std::string getAddress(const Reg &target, const Label &source)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "adrl";
    asm_code += " ";
    asm_code += target.getName();
    asm_code += ", ";
    asm_code += source.getName();
    asm_code += newline;
    return asm_code;
}

std::string load(const Reg &target, const Addr &source)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "ldr";
    asm_code += " ";
    asm_code += target.getName();
    asm_code += ", ";
    asm_code += source.getName();
    asm_code += newline;
    return asm_code;
}

std::string load(const Reg &target, const Label &source)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "ldr";
    asm_code += " ";
    asm_code += target.getName();
    asm_code += ", ";
    asm_code += source.getName();
    asm_code += newline;
    return asm_code;
}

std::string store(const Reg &source, const Addr &target)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "str";
    asm_code += " ";
    asm_code += source.getName();
    asm_code += ", ";
    asm_code += target.getName();
    asm_code += newline;
    return asm_code;
}

std::string store(const Reg &source, const Label &target)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "str";
    asm_code += " ";
    asm_code += source.getName();
    asm_code += ", ";
    asm_code += target.getName();
    asm_code += newline;
    return asm_code;
}

std::string call(const std::string &target_func_name)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "bl";
    asm_code += " ";
    asm_code += target_func_name;
    asm_code += newline;
    return asm_code;
}

std::string add(const Reg &target, const Reg &op1, const Value &op2)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "add";
    asm_code += " ";
    asm_code += target.getName();
    asm_code += ", ";
    asm_code += op1.getName();
    asm_code += ", ";
    asm_code += op2.getName();
    asm_code += newline;
    return asm_code;
}

std::string sub(const Reg &target, const Reg &op1, const Value &op2)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "sub";
    asm_code += " ";
    asm_code += target.getName();
    asm_code += ", ";
    asm_code += op1.getName();
    asm_code += ", ";
    asm_code += op2.getName();
    asm_code += newline;
    return asm_code;
}

std::string and_(const Reg &target, const Reg &op1, const Value &op2)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "and";
    asm_code += " ";
    asm_code += target.getName();
    asm_code += ", ";
    asm_code += op1.getName();
    asm_code += ", ";
    asm_code += op2.getName();
    asm_code += newline;
    return asm_code;
}

std::string or_(const Reg &target, const Reg &op1, const Value &op2)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "orr";
    asm_code += " ";
    asm_code += target.getName();
    asm_code += ", ";
    asm_code += op1.getName();
    asm_code += ", ";
    asm_code += op2.getName();
    asm_code += newline;
    return asm_code;
}

std::string mul(const Reg &target, const Reg &op1, const Reg &op2)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "mul";
    asm_code += " ";
    asm_code += target.getName();
    asm_code += ", ";
    asm_code += op1.getName();
    asm_code += ", ";
    asm_code += op2.getName();
    asm_code += newline;
    return asm_code;
}

std::string cmp(const Reg &lhs, const Value &rhs)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "cmp";
    asm_code += " ";
    asm_code += lhs.getName();
    asm_code += ", ";
    asm_code += rhs.getName();
    asm_code += newline;
    return asm_code;
}

std::string branch(const Label &target, const CmpOp &cond)
{
    std::string asm_code;
    asm_code += spaces;
    asm_code += "b";
    asm_code += condCode(cond);
    asm_code += " ";
    asm_code += target.getName();
    asm_code += newline;
    return asm_code;
}

}; // namespace InstGen