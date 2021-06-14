#include "PassManager.h"
#include <algorithm>
#include <map>

void IRCheck::run() {
  CheckParent();
  CheckPhiPosition();
  CheckRetBrPostion();
  CheckTerminate();
  CheckPredSucc();
  CheckEntry();
  CheckUseList();
  CheckOperandExit();
}

void IRCheck::CheckParent() {
  for (auto func : m_->getFunctions()) {
    for (auto bb : func->getBasicBlocks()) {
      if (bb->getParent() == nullptr) {
        std::cout << "bb with no parent" << std::endl;
        throw std::exception();
      }
      if (bb->getParent() != func) {
        std::cout << "bb with wrong parent" << std::endl;
        throw std::exception();
      }
      for (auto instr : bb->getInstructions()) {
        if (instr->getParent() == nullptr) {
          std::cout << instr->CommentPrint() << std::endl;
          std::cout << "instr with no parent" << std::endl;
          throw std::exception();
        }
        if (instr->getParent() != bb) {
          std::cout << instr->CommentPrint() << std::endl;
          std::cout << "instr with wrong parent" << std::endl;
          throw std::exception();
        }
        if (instr->getFunction() == nullptr) {
          std::cout << instr->CommentPrint() << std::endl;
          std::cout << "instr with no function" << std::endl;
          throw std::exception();
        }
        if (instr->getFunction() != func) {
          std::cout << instr->CommentPrint() << std::endl;
          std::cout << "instr with wrong function" << std::endl;
          throw std::exception();
        }
      }
    }
  }
}

void IRCheck::CheckPhiPosition() {
  for (auto func : m_->getFunctions()) {
    for (auto bb : func->getBasicBlocks()) {
      bool pos_begin = true;
      for (auto instr : bb->getInstructions()) {
        if (instr->isPHI()) {
          if (pos_begin) {
            continue;
          } else {
            std::cout << "phi postion error" << std::endl;
            throw std::exception();
          }
        } else {
          pos_begin = false;
        }
      }
    }
  }
}

void IRCheck::CheckRetBrPostion() {
  for (auto func : m_->getFunctions()) {
    for (auto bb : func->getBasicBlocks()) {
      for (auto instr : bb->getInstructions()) {
        if (instr->isBr() || instr->isRet()) {
          if (instr != bb->getTerminator()) {
            std::cout << "bb <label>%" << bb->getName()
                      << " error in br ret position" << std::endl;
            throw std::exception();
          }
        }
      }
    }
  }
}

void IRCheck::CheckTerminate() {
  for (auto func : m_->getFunctions()) {
    for (auto bb : func->getBasicBlocks()) {
      if (bb->getTerminator() == nullptr) {
        std::cout << "bb <label>%" << bb->getName()
                  << " doesn't have terminator" << std::endl;
        throw std::exception();
      }
    }
  }
}

void IRCheck::CheckPredSucc() {
  for (auto func : m_->getFunctions()) {
    for (auto bb : func->getBasicBlocks()) {
      // pred
      for (auto pre_bb : bb->getPreBasicBlocks()) {
        bool find = false;
        for (auto pre_bb_succ : pre_bb->getSuccBasicBlocks()) {
          if (pre_bb_succ == bb) {
            find = true;
          }
        }
        if (!find) {
          std::cout << "error in bb pre & succ" << std::endl;
          throw std::exception();
        }
      }
      // succ
      for (auto succ_bb : bb->getSuccBasicBlocks()) {
        bool find = false;
        for (auto succ_bb_pre : succ_bb->getPreBasicBlocks()) {
          if (succ_bb_pre == bb) {
            find = true;
          }
        }
        if (!find) {
          std::cout << "error in bb pre & succ" << std::endl;
          throw std::exception();
        }
      }
    }
  }
}

void IRCheck::CheckEntry() {
  for (auto &func : m_->getFunctions()) {
    if (!func->getBasicBlocks().empty()) {
      if (func->getEntryBlock() != func->getBasicBlocks().front()) {
        std::cout << "entry block is not the first block" << std::endl;
        throw std::exception();
      }
    }
  }
}

void IRCheck::CheckUseList() {
  for (auto global : m_->getGlobalVariables()) {
    // check global variable
    auto uses = global->getUseList();
    auto uniq = std::unordered_set<Use, UseHash>(uses.begin(), uses.end());
    if (uniq.size() != uses.size()) {
      std::cout << "global @" << global->getName() << " has duplicate use"
                << std::endl;
      throw std::exception();
    }
    for (auto use : uses) {
      auto val = dynamic_cast<User *>(use.val_);
      if (!val) {
        std::cout << "global @" << global->getName() << " has non-User type use"
                  << std::endl;
        throw std::exception();
      }
      if (val->getOperand(use.arg_no_) != global) {
        std::cout << "value %" << val->getName() << " don't use global @"
                  << global->getName() << std::endl;
        throw std::exception();
      }
    }
  }

  for (auto func : m_->getFunctions()) {
    // check function
    auto uses = func->getUseList();
    auto uniq = std::unordered_set<Use, UseHash>(uses.begin(), uses.end());
    if (uniq.size() != uses.size()) {
      std::cout << "func @" << func->getName() << " has duplicate use"
                << std::endl;
      throw std::exception();
    }
    for (auto use : uses) {
      auto val = dynamic_cast<User *>(use.val_);
      if (!val) {
        std::cout << "func @" << func->getName() << " has non-User type use"
                  << std::endl;
        throw std::exception();
      }
      if (val->getOperand(use.arg_no_) != func) {
        std::cout << "value %" << val->getName() << " don't use func @"
                  << func->getName() << std::endl;
        throw std::exception();
      }
    }

    for (auto arg : func->getArgs()) {
      // check argument
      auto uses = arg->getUseList();
      auto uniq = std::unordered_set<Use, UseHash>(uses.begin(), uses.end());
      if (uniq.size() != uses.size()) {
        std::cout << "arg %" << arg->getName() << " has duplicate use"
                  << std::endl;
        throw std::exception();
      }
      for (auto use : uses) {
        auto val = dynamic_cast<User *>(use.val_);
        if (!val) {
          std::cout << "arg %" << arg->getName() << " has non-User type use"
                    << std::endl;
          throw std::exception();
        }
        if (val->getOperand(use.arg_no_) != arg) {
          std::cout << "value %" << val->getName() << " don't use arg %"
                    << arg->getName() << std::endl;
          throw std::exception();
        }
      }
    }

    for (auto bb : func->getBasicBlocks()) {
      // check basicblock
      auto uses = bb->getUseList();
      auto uniq = std::unordered_set<Use, UseHash>(uses.begin(), uses.end());
      if (uniq.size() != uses.size()) {
        std::cout << "bb <label>%" << bb->getName() << " has duplicate use"
                  << std::endl;
        throw std::exception();
      }
      for (auto use : uses) {
        auto val = dynamic_cast<User *>(use.val_);
        if (!val) {
          std::cout << "bb <label>%" << bb->getName()
                    << " has non-User type use" << std::endl;
          throw std::exception();
        }
        if (val->getOperand(use.arg_no_) != bb) {
          std::cout << "value %" << val->getName() << " don't use bb <label>%"
                    << bb->getName() << std::endl;
          throw std::exception();
        }
      }

      for (auto inst : bb->getInstructions()) {
        // check instructions
        auto uses = inst->getUseList();
        auto uniq = std::unordered_set<Use, UseHash>(uses.begin(), uses.end());
        if (uniq.size() != uses.size()) {
          std::cout << "inst %" << inst->getName() << " has duplicate use"
                    << std::endl;
          throw std::exception();
        }
        for (auto use : uses) {
          auto val = dynamic_cast<User *>(use.val_);
          if (!val) {
            std::cout << "inst %" << inst->getName() << " has non-User type use"
                      << std::endl;
            throw std::exception();
          }
          if (val->getOperand(use.arg_no_) != inst) {
            std::cout << "value %" << val->getName() << " don't use inst %"
                      << inst->getName() << std::endl;
            throw std::exception();
          }
        }
        int index = 0;
        for (auto op : inst->getOperands()) {
          auto uses = op->getUseList();
          auto iter = std::find(uses.begin(), uses.end(), Use(inst, index));
          if (iter == uses.end()) {
            std::cout << "inst %" << inst->getName()
                      << " is not in use list of operand %" << op->getName()
                      << std::endl;
            throw std::exception();
          }
          index++;
        }
      }
    }
  }
}

void IRCheck::CheckOperandExit() {
  std::unordered_set<Value *> global_defined;
  for (auto var : m_->getGlobalVariables())
    global_defined.insert(var);
  for (auto func : m_->getFunctions())
    global_defined.insert(func);
  for (auto func : m_->getFunctions()) {
    std::unordered_set<Value *> defined;
    for (auto arg : func->getArgs())
      defined.insert(arg);
    for (auto bb : func->getBasicBlocks()) {
      defined.insert(bb);
      for (auto inst : bb->getInstructions()) {
        defined.insert(inst);
      }
    }
    for (auto bb : func->getBasicBlocks()) {
      for (auto inst : bb->getInstructions()) {
        for (auto op : inst->getOperands()) {
          if (dynamic_cast<Constant *>(op) ||
              defined.find(op) != defined.end() ||
              global_defined.find(op) != global_defined.end())
            continue;
          else {
            std::cout << inst->CommentPrint() << std::endl;
            std::cout << "inst %" << inst->getName()
                      << " has undefined operand %" << op->getName()
                      << std::endl;
            throw std::exception();
          }
        }
      }
    }
  }
}