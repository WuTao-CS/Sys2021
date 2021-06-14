#include "Function.h"
#include "BasicBlock.h"
#include "Module.h"

#define PRINT_DEPTH_(N)                                                        \
  { std::cout << std::string(N, ' '); }

Function::Function(FunctionType *ty, const std::string &name, Module *parent)
    : Value(ty, name), parent_(parent) {
  // num_args_ = ty->getNumParams();
  parent->addFunction(this);
  print_cnt_ = 0;
  buildArgs();
}

Function *Function::create(FunctionType *ty, const std::string &name,
                           Module *parent) {
  return new Function(ty, name, parent);
}

FunctionType *Function::getFunctionType() const {
  return static_cast<FunctionType *>(getType());
}

Type *Function::getResultType() const {
  return getFunctionType()->getResultType();
}

unsigned Function::getNumArgs() const {
  return getFunctionType()->getNumArgs();
}

Module *Function::getParent() const { return parent_; }

void Function::buildArgs() {
  auto *func_ty = getFunctionType();
  unsigned num_args = getNumArgs();
  for (int i = 0; i < num_args; i++) {
    arguments_.push_back(new Argument(func_ty->getArgType(i), "", this, i));
  }
}

void Function::addBasicBlock(BasicBlock *bb) {
  // if (basic_blocks_.empty())
  // {
  //     bb->setName(std::to_string(getNumArgs()));
  // }
  // else
  // {
  //     auto seq = getNumArgs();
  //     for (auto block : basic_blocks_)
  //     {
  //         seq += block->getNumOfInstr();
  //     }
  //     bb->setName(std::to_string(seq));
  // }
  basic_blocks_.push_back(bb);
}

void Function::addBasicBlockAfter(std::list<BasicBlock *>::iterator after_pos,
                                  BasicBlock *bb) {
  ++after_pos;
  basic_blocks_.insert(after_pos, bb);
}

void Function::removeBasicBlock(BasicBlock *bb) {
  // for(auto instr : bb->getInstructions() )
  // {
  //     instr->removeUseOfOps();
  // }

  basic_blocks_.remove(bb);
  for (auto pre : bb->getPreBasicBlocks()) {
    pre->removeSuccBasicBlock(bb);
  }
  for (auto succ : bb->getSuccBasicBlocks()) {
    succ->removePreBasicBlock(bb);
  }
}

void NameBaseBlock(BaseBlock *bb, std::map<Value *, int> &seq,
                   int &print_cnt_) {
  if (seq.find(bb) == seq.end() && bb->getName().empty()) {
    auto seq_num = seq.size() + print_cnt_;
    bb->setName(std::to_string(seq_num));
    seq.insert({bb, seq_num});
  }

  if (bb->isBasicBlock()) {
    auto basicblock = dynamic_cast<BasicBlock *>(bb);
    for (auto instr : basicblock->getInstrList()) {
      if (seq.find(instr) == seq.end() && instr->getName().empty() &&
          (!instr->isVoid())) {
        auto seq_num = seq.size() + print_cnt_;
        instr->setName(std::to_string(seq_num));
        seq.insert({instr, seq_num});
      }
    }
  } else if (bb->isIfBlock()) {
    auto ifbb = dynamic_cast<IfBlock *>(bb);
    for (auto basebb : ifbb->getCondBBs()) {
      NameBaseBlock(basebb, seq, print_cnt_);
    }
    for (auto basebb : ifbb->getIfBodyBBs()) {
      NameBaseBlock(basebb, seq, print_cnt_);
    }
    for (auto basebb : ifbb->getElseBodyBBs()) {
      NameBaseBlock(basebb, seq, print_cnt_);
    }
  } else if (bb->isWhileBlock()) {
    auto whilebb = dynamic_cast<WhileBlock *>(bb);
    for (auto basebb : whilebb->getCondBBs()) {
      NameBaseBlock(basebb, seq, print_cnt_);
    }
    for (auto basebb : whilebb->getBodyBBs()) {
      NameBaseBlock(basebb, seq, print_cnt_);
    }
  }
}

void PrintBaseBlock(BaseBlock *bb, int depth) {
  if (bb->isBasicBlock()) {
    PRINT_DEPTH_(depth);
    auto basicblock = dynamic_cast<BasicBlock *>(bb);
    std::cout << "<label>" << bb->getName();
    std::cout << std::endl;
    for (auto instr : basicblock->getInstrList()) {
      PRINT_DEPTH_(depth);

      std::cout << "    ";
      if (!instr->isVoid()) {
        instr->print();
        std::cout << " = ";
      }
      switch (instr->getInstrType()) {
      case Instruction::Ret:
        std::cout << "ret ";
        break;

      case Instruction::Br:
        std::cout << "Br ";
        if (static_cast<BranchInst *>(instr)->isCmpBr()) {
          switch (static_cast<BranchInst *>(instr)->getCmpOp()) {
          case CmpInst::EQ:
            std::cout << "EQ ";
            break;
          case CmpInst::NE:
            std::cout << "NE ";
            break;
          case CmpInst::GT:
            std::cout << "GT ";
            break;
          case CmpInst::GE:
            std::cout << "GE ";
            break;
          case CmpInst::LT:
            std::cout << "LT ";
            break;
          case CmpInst::LE:
            std::cout << "LE ";
            break;
          default:
            std::cout << "error in cmp type" << std::endl;
            break;
          }
        }
        break;

      case Instruction::Neg:
        std::cout << "Neg ";
        break;

      case Instruction::Add:
        std::cout << "Add ";
        break;

      case Instruction::Sub:
        std::cout << "Sub ";
        break;

      case Instruction::RSub:
        std::cout << "RSub ";
        break;

      case Instruction::Mul:
        std::cout << "Mul ";
        break;

      case Instruction::Div:
        std::cout << "Div ";
        break;

      case Instruction::Rem:
        std::cout << "Rem ";
        break;

      case Instruction::AddAddr:
        std::cout << "AddAddr ";
        break;

      case Instruction::And:
        std::cout << "And ";
        break;

      case Instruction::Or:
        std::cout << "Or ";
        break;

      case Instruction::Not:
        std::cout << "Not ";
        break;

      case Instruction::Alloca:
        std::cout << "Alloca ";
        if (static_cast<AllocaInst *>(instr)->getInit()) {
          std::cout << "Init 0 ";
        }

        break;

      case Instruction::Load:
        std::cout << "Load ";
        break;

      case Instruction::Store:
        std::cout << "Store ";
        break;

      case Instruction::Shl:
        std::cout << "Shl ";
        break;

      case Instruction::AShr:
        std::cout << "AShr ";
        break;

      case Instruction::LShr:
        std::cout << "LShr ";
        break;

      case Instruction::Cmp:
        std::cout << "Cmp";
        switch (static_cast<CmpInst *>(instr)->getCmpOp()) {
        case CmpInst::EQ:
          std::cout << "EQ ";
          break;
        case CmpInst::NE:
          std::cout << "NE ";
          break;
        case CmpInst::GT:
          std::cout << "GT ";
          break;
        case CmpInst::GE:
          std::cout << "GE ";
          break;
        case CmpInst::LT:
          std::cout << "LT ";
          break;
        case CmpInst::LE:
          std::cout << "LE ";
          break;
        default:
          std::cout << "error in cmp type" << std::endl;
          break;
        }
        break;

      case Instruction::Call:
        std::cout << "Call ";
        std::cout << static_cast<Function *>(instr->getOperand(0))->getName()
                  << " ";
        break;

      case Instruction::GEP:
        std::cout << "GEP ";
        break;

      case Instruction::ZExt:
        std::cout << "ZExt ";
        break;

      case Instruction::PHI:
        std::cout << "PHI ";
        break;

      case Instruction::MulAdd:
        std::cout << "MulAdd ";
        break;
      case Instruction::VV:
        std::cout << "VV" << static_cast<VVInst *>(instr)->getNumInt32() << " ";
        break;

      case Instruction::BIC:
        std::cout << "BIC ";
        break;

      case Instruction::Break:
        std::cout << "Break ";
        break;
      case Instruction::Continue:
        std::cout << "Continue ";
        break;

      default:
        std::cout << "error instr type";
        break;
      }

      for (auto op : instr->getOperandList()) {
        auto op_instr = dynamic_cast<Instruction *>(op);
        if (op_instr) {
          op_instr->print();
        }

        auto op_const = dynamic_cast<Constant *>(op);
        if (op_const) {
          op_const->print();
        }

        auto op_arg = dynamic_cast<Argument *>(op);
        if (op_arg) {
          op_arg->print();
        }

        auto op_global = dynamic_cast<GlobalVariable *>(op);
        if (op_global) {
          op_global->print();
        }

        auto op_bb = dynamic_cast<BasicBlock *>(op);
        if (op_bb) {
          op_bb->print();
        }
      }
      std::cout << std::endl;
    }
  } else if (bb->isIfBlock()) {
    PRINT_DEPTH_(depth);
    std::cout << "IF :" << std::endl;
    auto ifbb = dynamic_cast<IfBlock *>(bb);
    PRINT_DEPTH_(depth);
    std::cout << "    Cond:" << std::endl;
    for (auto basebb : ifbb->getCondBBs()) {
      PrintBaseBlock(basebb, depth + 4);
    }
    PRINT_DEPTH_(depth);
    std::cout << "    Then:" << std::endl;
    for (auto basebb : ifbb->getIfBodyBBs()) {
      PrintBaseBlock(basebb, depth + 4);
    }
    PRINT_DEPTH_(depth);
    std::cout << "    Else:" << std::endl;
    for (auto basebb : ifbb->getElseBodyBBs()) {
      PrintBaseBlock(basebb, depth + 4);
    }
  } else if (bb->isWhileBlock()) {
    PRINT_DEPTH_(depth);
    std::cout << "While:" << std::endl;
    PRINT_DEPTH_(depth);
    std::cout << "    Cond:" << std::endl;
    auto whilebb = dynamic_cast<WhileBlock *>(bb);
    for (auto basebb : whilebb->getCondBBs()) {
      PrintBaseBlock(basebb, depth + 4);
    }
    PRINT_DEPTH_(depth);
    std::cout << "    Body:" << std::endl;
    for (auto basebb : whilebb->getBodyBBs()) {
      PrintBaseBlock(basebb, depth + 4);
    }
  }
}

void Function::HighIRprint() {
  std::map<Value *, int> seq;
  for (auto arg : this->getArgs()) {
    if (seq.find(arg) == seq.end() && arg->getName().empty()) {
      auto seq_num = seq.size() + print_cnt_;
      arg->setName(std::to_string(seq_num));
      seq.insert({arg, seq_num});
    }
  }
  for (auto bb : base_blocks_) {
    if (seq.find(bb) == seq.end() && bb->getName().empty()) {
      auto seq_num = seq.size() + print_cnt_;
      bb->setName(std::to_string(seq_num));
      seq.insert({bb, seq_num});
    }
    NameBaseBlock(bb, seq, print_cnt_);
  }

  std::cout << "define ";
  this->getResultType()->print();
  std::cout << "@" << this->getName();
  std::cout << "(";

  for (auto arg : this->getArgs()) {
    arg->print();
    if (arg->getArgNo() + 1 != this->getNumArgs()) {
      std::cout << ", ";
    }
  }
  std::cout << ")" << std::endl;

  for (auto bb : base_blocks_) {
    PrintBaseBlock(bb, 0);
  }

  print_cnt_ += seq.size();
}

void Function::print() {
  if (basic_blocks_.empty()) {
    HighIRprint();
    return;
  }

  std::map<Value *, int> seq;
  for (auto arg : this->getArgs()) {
    if (seq.find(arg) == seq.end() && arg->getName().empty()) {
      auto seq_num = seq.size() + print_cnt_;
      arg->setName(std::to_string(seq_num));
      seq.insert({arg, seq_num});
    }
  }
  for (auto bb : basic_blocks_) {
    if (seq.find(bb) == seq.end() && bb->getName().empty()) {
      auto seq_num = seq.size() + print_cnt_;
      bb->setName(std::to_string(seq_num));
      seq.insert({bb, seq_num});
    }

    for (auto instr : bb->getInstrList()) {
      if (seq.find(instr) == seq.end() && instr->getName().empty() &&
          (!instr->isVoid())) {
        auto seq_num = seq.size() + print_cnt_;
        instr->setName(std::to_string(seq_num));
        seq.insert({instr, seq_num});
      }
    }
  }

  std::cout << "define ";
  this->getResultType()->print();
  std::cout << "@" << this->getName();
  std::cout << "(";

  for (auto arg : this->getArgs()) {
    arg->print();
    if (arg->getArgNo() + 1 != this->getNumArgs()) {
      std::cout << ", ";
    }
  }
  std::cout << ")" << std::endl;

  for (auto bb : basic_blocks_) {
    std::cout << "<label>" << bb->getName();
    std::cout << "        ;preds: ";
    for (auto pre_bb : bb->getPreBasicBlocks()) {
      std::cout << "%" << pre_bb->getName() << "    ";
    }

    std::cout << std::endl;
    for (auto instr : bb->getInstrList()) {
      std::cout << "    ";
      if (!instr->isVoid()) {
        instr->print();
        std::cout << " = ";
      }
      switch (instr->getInstrType()) {
      case Instruction::Ret:
        std::cout << "ret ";
        break;

      case Instruction::Br:
        std::cout << "Br ";
        if (static_cast<BranchInst *>(instr)->isCmpBr()) {
          switch (static_cast<BranchInst *>(instr)->getCmpOp()) {
          case CmpInst::EQ:
            std::cout << "EQ ";
            break;
          case CmpInst::NE:
            std::cout << "NE ";
            break;
          case CmpInst::GT:
            std::cout << "GT ";
            break;
          case CmpInst::GE:
            std::cout << "GE ";
            break;
          case CmpInst::LT:
            std::cout << "LT ";
            break;
          case CmpInst::LE:
            std::cout << "LE ";
            break;
          default:
            std::cout << "error in cmp type" << std::endl;
            break;
          }
        }
        break;

      case Instruction::Neg:
        std::cout << "Neg ";
        break;

      case Instruction::Add:
        std::cout << "Add ";
        break;

      case Instruction::Sub:
        std::cout << "Sub ";
        break;

      case Instruction::RSub:
        std::cout << "RSub ";
        break;

      case Instruction::Mul:
        std::cout << "Mul ";
        break;

      case Instruction::Div:
        std::cout << "Div ";
        break;

      case Instruction::Rem:
        std::cout << "Rem ";
        break;

      case Instruction::AddAddr:
        std::cout << "AddAddr ";
        break;

      case Instruction::And:
        std::cout << "And ";
        break;

      case Instruction::Or:
        std::cout << "Or ";
        break;

      case Instruction::Not:
        std::cout << "Not ";
        break;

      case Instruction::Alloca:
        std::cout << "Alloca ";
        if (static_cast<AllocaInst *>(instr)->getInit()) {
          std::cout << "Init 0 ";
        }

        break;

      case Instruction::Load:
        std::cout << "Load ";
        break;

      case Instruction::Store:
        std::cout << "Store ";
        break;

      case Instruction::Shl:
        std::cout << "Shl ";
        break;

      case Instruction::AShr:
        std::cout << "AShr ";
        break;

      case Instruction::LShr:
        std::cout << "LShr ";
        break;

      case Instruction::Cmp:
        std::cout << "Cmp";
        switch (static_cast<CmpInst *>(instr)->getCmpOp()) {
        case CmpInst::EQ:
          std::cout << "EQ ";
          break;
        case CmpInst::NE:
          std::cout << "NE ";
          break;
        case CmpInst::GT:
          std::cout << "GT ";
          break;
        case CmpInst::GE:
          std::cout << "GE ";
          break;
        case CmpInst::LT:
          std::cout << "LT ";
          break;
        case CmpInst::LE:
          std::cout << "LE ";
          break;
        default:
          std::cout << "error in cmp type" << std::endl;
          break;
        }
        break;

      case Instruction::Call:
        std::cout << "Call ";
        std::cout << static_cast<Function *>(instr->getOperand(0))->getName()
                  << " ";
        break;

      case Instruction::GEP:
        std::cout << "GEP ";
        break;

      case Instruction::ZExt:
        std::cout << "ZExt ";
        break;

      case Instruction::PHI:
        std::cout << "PHI ";
        break;

      case Instruction::MulAdd:
        std::cout << "MulAdd ";
        break;
      case Instruction::VV:
        std::cout << "VV" << static_cast<VVInst *>(instr)->getNumInt32() << " ";
        break;

      case Instruction::BIC:
        std::cout << "BIC ";
        break;

      default:
        std::cout << "error instr type";
        break;
      }

      for (auto op : instr->getOperandList()) {
        auto op_instr = dynamic_cast<Instruction *>(op);
        if (op_instr) {
          op_instr->print();
        }

        auto op_const = dynamic_cast<Constant *>(op);
        if (op_const) {
          op_const->print();
        }

        auto op_arg = dynamic_cast<Argument *>(op);
        if (op_arg) {
          op_arg->print();
        }

        auto op_global = dynamic_cast<GlobalVariable *>(op);
        if (op_global) {
          op_global->print();
        }

        auto op_bb = dynamic_cast<BasicBlock *>(op);
        if (op_bb) {
          op_bb->print();
        }
      }
      std::cout << std::endl;
    }
    std::cout << "        ;succ: ";
    for (auto succ_bb : bb->getSuccBasicBlocks()) {
      std::cout << "%" << succ_bb->getName() << "    ";
    }
    std::cout << std::endl;
  }
  print_cnt_ += seq.size();
}

void Argument::print() {
  this->getType()->print();
  std::cout << " %" << this->getName() << " ";
}

void Function::addBaseBlock(BaseBlock *basebb) {
  base_blocks_.push_back(basebb);
  basebb->setFunction(this);
}