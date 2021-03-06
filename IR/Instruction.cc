#include "Instruction.h"
#include "BasicBlock.h"
#include "Function.h"
#include "IRprinter.h"
#include "Module.h"
#include "ReturnVal.h"
#include "Type.h"
#include <algorithm>
#include <cassert>

Instruction::Instruction(Type *ty, OpID id, unsigned num_ops,
                         BasicBlock *parent)
    : User(ty, "", num_ops), op_id_(id), num_ops_(num_ops), parent_(parent)
{
    parent_->addInstruction(this);
}

Instruction::Instruction(Type *ty, OpID id, unsigned num_ops)
    : User(ty, "", num_ops), op_id_(id), num_ops_(num_ops), parent_(nullptr)
{
}

const Function *Instruction::getFunction() const
{
    return getParent()->getParent();
}
Module *Instruction::getModule()
{
    return parent_->getModule();
}
std::string Instruction::CommentPrint()
{
    std::string instr_comment;
    if (!this->isVoid())
    {
        instr_comment += this->getType()->CommentPrint();
        instr_comment += " %";
        instr_comment += getName();
        instr_comment += " ";
        instr_comment += " = ";
    }
    switch (this->getInstrType())
    {
    case Instruction::Ret:
        instr_comment += "ret ";
        break;

    case Instruction::Br:
        instr_comment += "Br ";
        if (static_cast<BranchInst *>(this)->isCmpBr())
        {
            switch (static_cast<BranchInst *>(this)->getCmpOp())
            {
            case CmpInst::EQ:
                instr_comment += "EQ ";
                break;
            case CmpInst::NE:
                instr_comment += "NE ";
                break;
            case CmpInst::GT:
                instr_comment += "GT ";
                break;
            case CmpInst::GE:
                instr_comment += "GE ";
                break;
            case CmpInst::LT:
                instr_comment += "LT ";
                break;
            case CmpInst::LE:
                instr_comment += "LE ";
                break;
            default:
                std::cout << "error in cmp type" << std::endl;
                break;
            }
        }
        break;
    case Instruction::Add:
        instr_comment += "Add ";
        break;

    case Instruction::Sub:
        instr_comment += "Sub ";
        break;

    case Instruction::Mul:
        instr_comment += "Mul ";
        break;

    case Instruction::Div:
        instr_comment += "Div ";
        break;

    case Instruction::Rem:
        instr_comment += "Rem ";
        break;

    case Instruction::And:
        instr_comment += "And ";
        break;

    case Instruction::Or:
        instr_comment += "Or ";
        break;

    case Instruction::Not:
        instr_comment += "Not ";
        break;

    case Instruction::Alloca:
        instr_comment += "Alloca ";
        break;

    case Instruction::Load:
        instr_comment += "Load ";
        break;

    case Instruction::Store:
        instr_comment += "Store ";
        break;

    case Instruction::Cmp:
        instr_comment += "Cmp";
        switch (static_cast<CmpInst *>(this)->getCmpOp())
        {
        case CmpInst::EQ:
            instr_comment += "EQ ";
            break;
        case CmpInst::NE:
            instr_comment += "NE ";
            break;
        case CmpInst::GT:
            instr_comment += "GT ";
            break;
        case CmpInst::GE:
            instr_comment += "GE ";
            break;
        case CmpInst::LT:
            instr_comment += "LT ";
            break;
        case CmpInst::LE:
            instr_comment += "LE ";
            break;
        default:
            std::cout << "error in cmp type" << std::endl;
            break;
        }
        break;

    case Instruction::Call:
        instr_comment += "Call ";
        instr_comment +=
            static_cast<Function *>(this->getOperand(0))->getName();
        instr_comment += " ";
        break;

    case Instruction::GEP:
        instr_comment += "GEP ";
        break;

    case Instruction::ZExt:
        instr_comment += "ZExt ";
        break;

    case Instruction::PHI:
        instr_comment += "PHI ";
        break;
    default:
        std::cout << "error this type";
        break;
    }

    for (auto op : this->getOperandList())
    {
        auto op_instr = dynamic_cast<Instruction *>(op);
        if (op_instr)
        {
            instr_comment += op_instr->getType()->CommentPrint();
            instr_comment += " %";
            instr_comment += op_instr->getName();
            instr_comment += " ";
        }

        auto op_const = dynamic_cast<Constant *>(op);
        if (op_const)
        {
            instr_comment += op_const->getType()->CommentPrint();
            instr_comment += " ";
            instr_comment += std::to_string(
                static_cast<ConstantInt *>(op_const)->getValue());
            instr_comment += " ";
        }

        auto op_arg = dynamic_cast<Argument *>(op);
        if (op_arg)
        {
            instr_comment += op_arg->getType()->CommentPrint();
            instr_comment += " %";
            instr_comment += op_arg->getName();
        }

        auto op_global = dynamic_cast<GlobalVariable *>(op);
        if (op_global)
        {
            instr_comment += op_global->getType()->CommentPrint();
            instr_comment += " @";
            instr_comment += op_global->getName();
            instr_comment += " ";
        }

        auto op_bb = dynamic_cast<BasicBlock *>(op);
        if (op_bb)
        {
            instr_comment += op_bb->getType()->CommentPrint();
            instr_comment += " %";
            instr_comment += op_bb->getName();
            instr_comment += " ";
        }
    }
    return instr_comment;
}

UnaryInst::UnaryInst(Type *ty, OpID id, Value *v, BasicBlock *bb)
    : Instruction(ty, id, 1, bb)
{
    setOperand(0, v);
}

UnaryInst *UnaryInst::createNeg(Value *v, BasicBlock *bb)
{
    return new UnaryInst(v->getType(), Instruction::Neg, v, bb);
}

UnaryInst *UnaryInst::createNot(Value *v, BasicBlock *bb)
{
    return new UnaryInst(v->getType(), Instruction::Not, v, bb);
}
BinaryInst::BinaryInst(Type *ty, OpID id, Value *v1, Value *v2, BasicBlock *bb)
    : Instruction(ty, id, 2, bb)
{
    setOperand(0, v1);
    setOperand(1, v2);
    // assertValid();
}
BinaryInst::BinaryInst(Type *ty, OpID id, Value *v1, Value *v2)
    : Instruction(ty, id, 2)
{
    setOperand(0, v1);
    setOperand(1, v2);
    // assertValid();
}

void BinaryInst::assertValid()
{
    exit_ifnot(_False_assertValid_BinaryInst,
               getOperand(0)->getType()->isIntegerTy());
    exit_ifnot(_False_assertValid_BinaryInst,
               getOperand(1)->getType()->isIntegerTy());
    exit_ifnot(
        _False_assertValid_BinaryInst,
        static_cast<IntegerType *>(getOperand(0)->getType())->getNumBits() ==
            static_cast<IntegerType *>(getOperand(1)->getType())->getNumBits());
}

BinaryInst *BinaryInst::createAdd(Value *v1, Value *v2, BasicBlock *bb)
{
    return new BinaryInst(v1->getType()->isPointerTy() ? v1->getType()
                                                       : v2->getType(),
                          Instruction::Add, v1, v2, bb);
}

BinaryInst *BinaryInst::createSub(Value *v1, Value *v2, BasicBlock *bb)
{
    return new BinaryInst(v1->getType(), Instruction::Sub, v1, v2, bb);
}

BinaryInst *BinaryInst::createMul(Value *v1, Value *v2, BasicBlock *bb)
{
    return new BinaryInst(v1->getType(), Instruction::Mul, v1, v2, bb);
}

BinaryInst *BinaryInst::createDiv(Value *v1, Value *v2, BasicBlock *bb)
{
    return new BinaryInst(v1->getType(), Instruction::Div, v1, v2, bb);
}

BinaryInst *BinaryInst::createRem(Value *v1, Value *v2, BasicBlock *bb)
{
    return new BinaryInst(v1->getType(), Instruction::Rem, v1, v2, bb);
}

BinaryInst *BinaryInst::createAnd(Value *v1, Value *v2, BasicBlock *bb)
{
    return new BinaryInst(v1->getType(), Instruction::And, v1, v2, bb);
}

BinaryInst *BinaryInst::createOr(Value *v1, Value *v2, BasicBlock *bb)
{
    return new BinaryInst(v1->getType(), Instruction::Or, v1, v2, bb);
}
std::string BinaryInst::print()
{
    std::string instr_ir;
    instr_ir += "%";
    instr_ir += this->getName();
    instr_ir += " = ";
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    instr_ir += this->getOperand(0)->getType()->print();
    instr_ir += " ";
    instr_ir += print_as_op(this->getOperand(0), false);
    instr_ir += ", ";
    if (Type::isEqType(this->getOperand(0)->getType(),
                       this->getOperand(1)->getType()))
    {
        instr_ir += print_as_op(this->getOperand(1), false);
    }
    else
    {
        instr_ir += print_as_op(this->getOperand(1), true);
    }
    return instr_ir;
}

CmpInst::CmpInst(Type *ty, CmpOp op, Value *lhs, Value *rhs, BasicBlock *bb)
    : Instruction(ty, Instruction::Cmp, 2, bb), cmp_op_(op)
{
    setOperand(0, lhs);
    setOperand(1, rhs);
    assertValid();
}

void CmpInst::assertValid()
{
    exit_ifnot(_False_assertValid_CmpInst,
               getOperand(0)->getType()->isIntegerTy());
    exit_ifnot(_False_assertValid_CmpInst,
               getOperand(1)->getType()->isIntegerTy());
    exit_ifnot(
        _False_assertValid_CmpInst,
        static_cast<IntegerType *>(getOperand(0)->getType())->getNumBits() ==
            static_cast<IntegerType *>(getOperand(1)->getType())->getNumBits());
}

CmpInst *CmpInst::createCmp(CmpOp op, Value *lhs, Value *rhs, BasicBlock *bb,
                            Module *m)
{
    return new CmpInst(m->getInt1Ty(), op, lhs, rhs, bb);
}

CallInst::CallInst(Function *func, std::vector<Value *> args, BasicBlock *bb)
    : Instruction(func->getResultType(), Instruction::Call, args.size() + 1, bb)
{
    exit_ifnot(_ArgsNotMatch_Constructor_CallInst,
               func->getNumArgs() == args.size());
    int num_ops = args.size() + 1;
    setOperand(0, func);
    for (int i = 1; i < num_ops; i++)
    {
        setOperand(i, args[i - 1]);
    }
}
std::string CmpInst::print()
{
    std::string instr_ir;
    instr_ir += "%";
    instr_ir += this->getName();
    instr_ir += " = ";
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    instr_ir += print_cmp_type(this->cmp_op_);
    instr_ir += " ";
    instr_ir += this->getOperand(0)->getType()->print();
    instr_ir += " ";
    instr_ir += print_as_op(this->getOperand(0), false);
    instr_ir += ", ";
    if (Type::isEqType(this->getOperand(0)->getType(),
                       this->getOperand(1)->getType()))
    {
        instr_ir += print_as_op(this->getOperand(1), false);
    }
    else
    {
        instr_ir += print_as_op(this->getOperand(1), true);
    }
    return instr_ir;
}

CallInst::CallInst(Function *func, BasicBlock *bb)
    : Instruction(func->getResultType(), Instruction::Call,
                  func->getNumArgs() + 1, bb)
{
}

CallInst *CallInst::create(Function *func, std::vector<Value *> args,
                           BasicBlock *bb)
{
    return new CallInst(func, args, bb);
}
std::string CallInst::print()
{
    std::string instr_ir;
    if (!this->isVoid())
    {
        instr_ir += "%";
        instr_ir += this->getName();
        instr_ir += " = ";
    }
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    instr_ir += this->getFunctionType()->getResultType()->print();

    instr_ir += " ";
    assert(dynamic_cast<Function *>(this->getOperand(0)) &&
           "Wrong call operand function");
    instr_ir += print_as_op(this->getOperand(0), false);
    instr_ir += "(";
    for (int i = 1; i < this->getNumOperand(); i++)
    {
        if (i > 1)
            instr_ir += ", ";
        instr_ir += this->getOperand(i)->getType()->print();
        instr_ir += " ";
        instr_ir += print_as_op(this->getOperand(i), false);
    }
    instr_ir += ")";
    return instr_ir;
}
FunctionType *CallInst::getFunctionType() const
{
    return static_cast<FunctionType *>(getOperand(0)->getType());
}

Function *CallInst::getFunction() const
{
    return static_cast<Function *>(getOperand(0));
}

BranchInst::BranchInst(Value *cond, BasicBlock *if_true, BasicBlock *if_false,
                       BasicBlock *bb)
    : Instruction(Type::getVoidTy(if_true->getModule()), Instruction::Br, 3, bb)
{
    setOperand(0, cond);
    setOperand(1, if_true);
    setOperand(2, if_false);
}

BranchInst::BranchInst(BasicBlock *if_true, BasicBlock *bb)
    : Instruction(Type::getVoidTy(if_true->getModule()), Instruction::Br, 1, bb)
{
    setOperand(0, if_true);
}

BranchInst::BranchInst(CmpOp op, Value *lhs, Value *rhs, BasicBlock *if_true,
                       BasicBlock *if_false, BasicBlock *bb)
    : Instruction(Type::getVoidTy(if_true->getModule()), Instruction::Br, 4, bb)
{
    cmp_op_ = op;
    setOperand(0, lhs);
    setOperand(1, rhs);
    setOperand(2, if_true);
    setOperand(3, if_false);
}

BranchInst *BranchInst::createCondBr(Value *cond, BasicBlock *if_true,
                                     BasicBlock *if_false, BasicBlock *bb)
{
    if_true->addPreBasicBlock(bb);
    if_false->addPreBasicBlock(bb);
    bb->addSuccBasicBlock(if_false);
    bb->addSuccBasicBlock(if_true);

    return new BranchInst(cond, if_true, if_false, bb);
}

BranchInst *BranchInst::createBr(BasicBlock *if_true, BasicBlock *bb)
{
    if_true->addPreBasicBlock(bb);
    bb->addSuccBasicBlock(if_true);
    return new BranchInst(if_true, bb);
}

BranchInst *BranchInst::createCmpBr(CmpOp op, Value *lhs, Value *rhs,
                                    BasicBlock *if_true, BasicBlock *if_false,
                                    BasicBlock *bb)
{
    if_true->addPreBasicBlock(bb);
    if_false->addPreBasicBlock(bb);
    bb->addSuccBasicBlock(if_false);
    bb->addSuccBasicBlock(if_true);

    return new BranchInst(op, lhs, rhs, if_true, if_false, bb);
}

bool BranchInst::isCondBr() const
{
    return getNumOperand() == 3;
}

void BranchInst::fuseCmpInst()
{
    exit_ifnot(_NotCondBr_fuseCmpInst_BranchInst, isCondBr());
    // only this br use cmp
    exit_ifnot(_cmpUsedMoreThanOnce_fuseCmpInst_BranchInst,
               getOperand(0)->getUseList().size() == 1);
    auto cmp = static_cast<CmpInst *>(getOperand(0));
    auto if_true = getOperand(1);
    auto if_false = getOperand(2);
    removeUseOfOps();
    setNumOps(4);
    setOperand(0, cmp->getOperand(0));
    setOperand(1, cmp->getOperand(1));
    setOperand(2, if_true);
    setOperand(3, if_false);
    cmp_op_ = cmp->getCmpOp();
}
std::string BranchInst::print()
{
    std::string instr_ir;
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    // instr_ir += this->getOperand(0)->getType()->print();
    instr_ir += print_as_op(this->getOperand(0), true);
    if (isCondBr())
    {
        instr_ir += ", ";
        instr_ir += print_as_op(this->getOperand(1), true);
        instr_ir += ", ";
        instr_ir += print_as_op(this->getOperand(2), true);
    }
    return instr_ir;
}

ReturnInst::ReturnInst(Value *val, BasicBlock *bb)
    : Instruction(Type::getVoidTy(bb->getModule()), Instruction::Ret, 1, bb)
{
    setOperand(0, val);
}

ReturnInst::ReturnInst(BasicBlock *bb)
    : Instruction(Type::getVoidTy(bb->getModule()), Instruction::Ret, 0, bb)
{
}

ReturnInst *ReturnInst::createRet(Value *val, BasicBlock *bb)
{
    return new ReturnInst(val, bb);
}

ReturnInst *ReturnInst::createVoidRet(BasicBlock *bb)
{
    return new ReturnInst(bb);
}

bool ReturnInst::isVoidRet() const
{
    return getNumOperand() == 0;
}
std::string ReturnInst::print()
{
    std::string instr_ir;
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    if (!isVoidRet())
    {
        instr_ir += this->getOperand(0)->getType()->print();
        instr_ir += " ";
        instr_ir += print_as_op(this->getOperand(0), false);
    }
    else
    {
        instr_ir += "void";
    }

    return instr_ir;
}
GetElementPtrInst::GetElementPtrInst(Value *ptr, std::vector<Value *> idxs,
                                     BasicBlock *bb)
    : Instruction(PointerType::get(getElementType(ptr, idxs)), Instruction::GEP,
                  1 + idxs.size(), bb)
{
    setOperand(0, ptr);
    for (int i = 0; i < idxs.size(); i++)
    {
        setOperand(i + 1, idxs[i]);
    }
    element_ty_ = getElementType(ptr, idxs);
}

GetElementPtrInst::GetElementPtrInst(Value *ptr, std::vector<Value *> idxs)
    : Instruction(PointerType::get(getElementType(ptr, idxs)), Instruction::GEP,
                  1 + idxs.size())
{
    setOperand(0, ptr);
    for (int i = 0; i < idxs.size(); i++)
    {
        setOperand(i + 1, idxs[i]);
    }
    element_ty_ = getElementType(ptr, idxs);
}

Type *GetElementPtrInst::getElementType(Value *ptr, std::vector<Value *> idxs)
{
    Type *ty = ptr->getType()->getPointerElementType();
    exit_ifnot(_ElementIsArrayOrInterger_getElementType_GetElementPtrInst,
               ty->isArrayTy() || ty->isIntegerTy());
    if (ty->isArrayTy())
    {
        ArrayType *arr_ty = static_cast<ArrayType *>(ty);
        for (int i = 0; i < idxs.size(); i++)
        {
            ty = arr_ty->getElementType();
            if (i < idxs.size() - 1)
            {
                exit_ifnot(_IndexError_getElementType_GetElementPtrInst,
                           ty->isArrayTy() && "Index error!");
            }
            if (ty->isArrayTy())
            {
                arr_ty = static_cast<ArrayType *>(ty);
            }
        }
    }
    return ty;
}

Type *GetElementPtrInst::getElementType() const
{
    return element_ty_;
}

GetElementPtrInst *GetElementPtrInst::createGEP(Value *ptr,
                                                std::vector<Value *> idxs,
                                                BasicBlock *bb)
{
    return new GetElementPtrInst(ptr, idxs, bb);
}

GetElementPtrInst *GetElementPtrInst::createGEP(Value *ptr,
                                                std::vector<Value *> idxs)
{
    return new GetElementPtrInst(ptr, idxs);
}
std::string GetElementPtrInst::print()
{
    std::string instr_ir;
    instr_ir += "%";
    instr_ir += this->getName();
    instr_ir += " = ";
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    assert(this->getOperand(0)->getType()->isPointerTy());
    instr_ir +=
        this->getOperand(0)->getType()->getPointerElementType()->print();
    instr_ir += ", ";
    for (int i = 0; i < this->getNumOperand(); i++)
    {
        if (i > 0)
            instr_ir += ", ";
        instr_ir += this->getOperand(i)->getType()->print();
        instr_ir += " ";
        instr_ir += print_as_op(this->getOperand(i), false);
    }
    return instr_ir;
}
StoreInst::StoreInst(Value *val, Value *ptr, BasicBlock *bb)
    : Instruction(Type::getVoidTy(bb->getModule()), Instruction::Store, 2, bb)
{
    setOperand(0, val);
    setOperand(1, ptr);
}

StoreInst::StoreInst(Module *m, Value *val, Value *ptr)
    : Instruction(Type::getVoidTy(m), Instruction::Store, 2)
{
    setOperand(0, val);
    setOperand(1, ptr);
}

StoreInst::StoreInst(Module *m, Value *val, Value *ptr, Value *offset)
    : Instruction(Type::getVoidTy(m), Instruction::Store, 3)
{
    setOperand(0, val);
    setOperand(1, ptr);
    setOperand(2, offset);
}

StoreInst *StoreInst::createStore(Value *val, Value *ptr, BasicBlock *bb)
{
    return new StoreInst(val, ptr, bb);
}

StoreInst *StoreInst::createStore(Module *m, Value *val, Value *ptr)
{
    return new StoreInst(m, val, ptr);
}

StoreInst *StoreInst::createStore(Module *m, Value *val, Value *ptr,
                                  Value *offset)
{
    return new StoreInst(m, val, ptr, offset);
}
std::string StoreInst::print()
{
    std::string instr_ir;
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    instr_ir += this->getOperand(0)->getType()->print();
    instr_ir += " ";
    instr_ir += print_as_op(this->getOperand(0), false);
    instr_ir += ", ";
    instr_ir += print_as_op(this->getOperand(1), true);
    return instr_ir;
}
LoadInst::LoadInst(Type *ty, Value *ptr, BasicBlock *bb)
    : Instruction(ty, Instruction::Load, 1, bb)
{
    exit_ifnot(_LoadFromErrorType_Constructor_LodInst,
               ptr->getType()->isPointerTy());
    exit_ifnot(
        _ElemIsNotTargetType_Constructor_LodInst,
        ty == static_cast<PointerType *>(ptr->getType())->getElementType());
    setOperand(0, ptr);
}

LoadInst::LoadInst(Type *ty, Value *ptr) : Instruction(ty, Instruction::Load, 1)
{
    exit_ifnot(_LoadFromErrorType_Constructor_LodInst,
               ptr->getType()->isPointerTy());
    exit_ifnot(
        _ElemIsNotTargetType_Constructor_LodInst,
        ty == static_cast<PointerType *>(ptr->getType())->getElementType());
    setOperand(0, ptr);
}

LoadInst::LoadInst(Type *ty, Value *ptr, Value *offset)
    : Instruction(ty, Instruction::Load, 2)
{
    exit_ifnot(_LoadFromErrorType_Constructor_LodInst,
               ptr->getType()->isPointerTy());
    exit_ifnot(
        _ElemIsNotTargetType_Constructor_LodInst,
        ty == static_cast<PointerType *>(ptr->getType())->getElementType());
    setOperand(0, ptr);
    setOperand(1, offset);
}

LoadInst *LoadInst::createLoad(Type *ty, Value *ptr, BasicBlock *bb)
{
    return new LoadInst(ty, ptr, bb);
}

Type *LoadInst::getLoadType() const
{
    return static_cast<PointerType *>(getOperand(0)->getType())
        ->getElementType();
}
std::string LoadInst::print()
{
    std::string instr_ir;
    instr_ir += "%";
    instr_ir += this->getName();
    instr_ir += " = ";
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    assert(this->getOperand(0)->getType()->isPointerTy());
    instr_ir +=
        this->getOperand(0)->getType()->getPointerElementType()->print();
    instr_ir += ",";
    instr_ir += " ";
    instr_ir += print_as_op(this->getOperand(0), true);
    return instr_ir;
}
AllocaInst::AllocaInst(Type *ty, BasicBlock *bb)
    : Instruction(PointerType::get(ty), Instruction::Alloca, 0, bb),
      alloca_ty_(ty)
{
}

AllocaInst *AllocaInst::createAlloca(Type *ty, BasicBlock *bb)
{
    return new AllocaInst(ty, bb);
}

Type *AllocaInst::getAllocaType() const
{
    return alloca_ty_;
}
std::string AllocaInst::print()
{
    std::string instr_ir;
    instr_ir += "%";
    instr_ir += this->getName();
    instr_ir += " = ";
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    instr_ir += getAllocaType()->print();
    return instr_ir;
}
CastInst::CastInst(OpID op, Value *val, Type *ty, BasicBlock *bb)
    : Instruction(ty, op, 1, bb), dest_ty_(ty)
{
    setOperand(0, val);
}

CastInst *CastInst::createZExt(Value *val, Type *ty, BasicBlock *bb)
{
    return new CastInst(Instruction::ZExt, val, ty, bb);
}

Type *CastInst::getDestType() const
{
    return dest_ty_;
}
std::string CastInst::print()
{
    std::string instr_ir;
    instr_ir += "%";
    instr_ir += this->getName();
    instr_ir += " = ";
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    instr_ir += this->getOperand(0)->getType()->print();
    instr_ir += " ";
    instr_ir += print_as_op(this->getOperand(0), false);
    instr_ir += " to ";
    instr_ir += this->getDestType()->print();
    return instr_ir;
}

PhiInst::PhiInst(OpID op, std::vector<Value *> vals,
                 std::vector<BasicBlock *> val_bbs, Type *ty, BasicBlock *bb)
    : Instruction(ty, op, 2 * vals.size())
{
    // setParent(bb);
    for (int i = 0; i < vals.size(); i++)
    {
        setOperand(2 * i, vals[i]);
        setOperand(2 * i + 1, val_bbs[i]);
    }
}

PhiInst *PhiInst::createPhi(Type *ty, BasicBlock *bb)
{
    std::vector<Value *> vals;
    std::vector<BasicBlock *> val_bbs;
    return new PhiInst(Instruction::PHI, vals, val_bbs, ty, bb);
}
std::string PhiInst::print()
{
    std::string instr_ir;
    instr_ir += "%";
    instr_ir += this->getName();
    instr_ir += " = ";
    instr_ir += this->getModule()->getInstrOpName(this->getInstrType());
    instr_ir += " ";
    instr_ir += this->getOperand(0)->getType()->print();
    instr_ir += " ";
    for (int i = 0; i < this->getNumOperand() / 2; i++)
    {
        if (i > 0)
            instr_ir += ", ";
        instr_ir += "[ ";
        instr_ir += print_as_op(this->getOperand(2 * i), false);
        instr_ir += ", ";
        instr_ir += print_as_op(this->getOperand(2 * i + 1), false);
        instr_ir += " ]";
    }
    if (this->getNumOperand() / 2 <
        this->getParent()->getPreBasicBlocks().size())
    {
        for (auto pre_bb : this->getParent()->getPreBasicBlocks())
        {
            if (std::find(
                    this->getOperands().begin(), this->getOperands().end(),
                    static_cast<Value *>(pre_bb)) == this->getOperands().end())
            {
                // find a pre_bb is not in phi
                instr_ir += ", [ undef, " + print_as_op(pre_bb, false) + " ]";
            }
        }
    }
    return instr_ir;
}