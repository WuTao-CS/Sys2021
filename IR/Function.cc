#include "Function.h"
#include "BasicBlock.h"
#include "IRprinter.h"
#include "Module.h"

#define PRINT_DEPTH_(N)                                                        \
    {                                                                          \
        std::cout << std::string(N, ' ');                                      \
    }

Function::Function(FunctionType *ty, const std::string &name, Module *parent)
    : Value(ty, name), parent_(parent)
{
    // num_args_ = ty->getNumParams();
    parent->addFunction(this);
    print_cnt_ = 0;
    buildArgs();
}

Function *Function::create(FunctionType *ty, const std::string &name,
                           Module *parent)
{
    return new Function(ty, name, parent);
}

FunctionType *Function::getFunctionType() const
{
    return static_cast<FunctionType *>(getType());
}

Type *Function::getResultType() const
{
    return getFunctionType()->getResultType();
}

unsigned Function::getNumArgs() const
{
    return getFunctionType()->getNumArgs();
}

Module *Function::getParent() const
{
    return parent_;
}

void Function::buildArgs()
{
    auto *func_ty = getFunctionType();
    unsigned num_args = getNumArgs();
    for (int i = 0; i < num_args; i++)
    {
        arguments_.push_back(new Argument(func_ty->getArgType(i), "", this, i));
    }
}

void Function::addBasicBlock(BasicBlock *bb)
{
    basic_blocks_.push_back(bb);
}

void Function::addBasicBlockAfter(std::list<BasicBlock *>::iterator after_pos,
                                  BasicBlock *bb)
{
    ++after_pos;
    basic_blocks_.insert(after_pos, bb);
}

void Function::removeBasicBlock(BasicBlock *bb)
{
    // for(auto instr : bb->getInstructions() )
    // {
    //     instr->removeUseOfOps();
    // }

    basic_blocks_.remove(bb);
    for (auto pre : bb->getPreBasicBlocks())
    {
        pre->removeSuccBasicBlock(bb);
    }
    for (auto succ : bb->getSuccBasicBlocks())
    {
        succ->removePreBasicBlock(bb);
    }
}

void Function::setInstrName()
{
    std::map<Value *, int> seq;
    for (auto arg : this->getArgs())
    {
        if (seq.find(arg) == seq.end())
        {
            auto seq_num = seq.size() + print_cnt_;
            if (arg->setName("arg" + std::to_string(seq_num)))
            {
                seq.insert({arg, seq_num});
            }
        }
    }
    for (auto bb : basic_blocks_)
    {
        if (seq.find(bb) == seq.end())
        {
            auto seq_num = seq.size() + print_cnt_;
            if (bb->setName("label" + std::to_string(seq_num)))
            {
                seq.insert({bb, seq_num});
            }
        }
        for (auto instr : bb->getInstructions())
        {
            if (!instr->isVoid() && seq.find(instr) == seq.end())
            {
                auto seq_num = seq.size() + print_cnt_;
                if (instr->setName("op" + std::to_string(seq_num)))
                {
                    seq.insert({instr, seq_num});
                }
            }
        }
    }
    print_cnt_ += seq.size();
}

std::string Function::print()
{
    setInstrName();
    std::string func_ir;
    if (this->is_declaration())
    {
        func_ir += "declare ";
    }
    else
    {
        func_ir += "define ";
    }

    func_ir += this->getResultType()->print();
    func_ir += " ";
    func_ir += print_as_op(this, false);
    func_ir += "(";

    // print arg
    if (this->is_declaration())
    {
        for (int i = 0; i < this->getNumArgs(); i++)
        {
            if (i)
                func_ir += ", ";
            func_ir += static_cast<FunctionType *>(this->getType())
                           ->getArgType(i)
                           ->print();
        }
    }
    else
    {
        for (auto arg = this->arg_begin(); arg != arg_end(); arg++)
        {
            if (arg != this->arg_begin())
            {
                func_ir += ", ";
            }
            func_ir += static_cast<Argument *>(*arg)->print();
        }
    }
    func_ir += ")";
    // print bb
    if (this->is_declaration())
    {
        func_ir += "\n";
    }
    else
    {
        func_ir += " {";
        func_ir += "\n";
        for (auto bb : this->getBasicBlocks())
        {
            func_ir += bb->print();
        }
        func_ir += "}";
    }

    return func_ir;
    // }
}

std::string Argument::print()
{
    std::string arg_ir;
    arg_ir += this->getType()->print();
    arg_ir += " %";
    arg_ir += this->getName();
    return arg_ir;
}
