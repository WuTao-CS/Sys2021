#include "codeGen.hh"

#include <algorithm>
#include <experimental/optional>
#include <map>
#include <set>
#include <string>
#include <vector>

#include "instructionsGen.hh"

using std::experimental::nullopt;
using std::experimental::optional;

std::string codeGen::generateModuleCode(
    optional<std::map<Value *, int>> register_mapping) {
  std::string asm_code;
  if (register_mapping) {
    this->register_mapping = register_mapping.value();
  } else {  // set all virtual register mapped to memory
    this->register_mapping.clear();
    for (auto &func : this->module->getFunctions()) {
      if (func->getBasicBlocks().size()) {
        for (auto &bb : func->getBasicBlocks()) {
          for (auto &inst : bb->getInstructions()) {
            this->register_mapping[inst] = 0;
          }
        }
      }
    }
  }
  asm_code += InstGen::spaces + ".arch armv7-a" + InstGen::newline;
  asm_code += InstGen::spaces + ".file" + " " + "\"" +
              this->module->getSourceFileName() + "\"" + InstGen::newline;
  asm_code += InstGen::spaces + ".text" + InstGen::newline;
  for (auto &func : this->module->getFunctions()) {
    if (func->getBasicBlocks().size()) {
      asm_code += codeGen::global(func->getName());
    }
  }
  asm_code += InstGen::spaces + ".syntax unified" + InstGen::newline;
  asm_code += InstGen::spaces + ".arm" + InstGen::newline;
  asm_code += codeGen::generateGOT();
  for (auto &func : this->module->getFunctions()) {
    if (func->getBasicBlocks().size()) {
      asm_code += codeGen::generateFunctionCode(func);
    }
  }
  asm_code += InstGen::spaces + ".data" + InstGen::newline;
  asm_code += codeGen::generateGlobalVarsCode();
  return asm_code;
}

std::string codeGen::global(std::string name) {
  return InstGen::spaces + ".global" + " " + name + InstGen::newline;
}

std::string codeGen::generateFunctionCode(Function *func) {
  std::string asm_code;
  int counter = 0;
  codeGen::allocateStackSpace(func);
  for (auto &bb : func->getBasicBlocks()) {
    if (bb->getName().empty()) {
      bb->setName(std::to_string(counter++));
    }
  }
  asm_code += func->getName() + ":" + InstGen::newline;
  asm_code += generateFunctionEntryCode(func);
  for (auto &bb : func->getBasicBlocks()) {
    asm_code += getLabelName(bb) + ":" + InstGen::newline;
    asm_code += generateBasicBlockCode(bb);
  }
  asm_code += generateFunctionPostCode(func);
  return asm_code;
}

std::string codeGen::generateFunctionEntryCode(Function *func) {
  std::string asm_code;
  asm_code += codeGen::getLabelName(func, 0) + ":" + InstGen::newline;
  // save callee-save registers and lr
  auto save_registers = codeGen::getRegisters(func);
  save_registers.push_back(InstGen::lr);
  std::sort(save_registers.begin(), save_registers.end());
  asm_code += InstGen::push(save_registers);
  // allocate stack space and process on-stack function args
  asm_code +=
      InstGen::mov(InstGen::Reg(op_reg_0), InstGen::Constant(this->stack_size));
  asm_code += InstGen::sub(InstGen::sp, InstGen::sp, InstGen::Reg(op_reg_0));
  int cnt = 0;
  for (auto &arg : func->getArgs()) {
    bool extended = false;
    auto sizeof_val = arg->getType()->getSize(extended);
    sizeof_val = ((sizeof_val + 3) / 4) * 4;
    cnt++;
    assert(sizeof_val == 4);
    if (cnt > 4) {
      int offset = stack_size + (save_registers.size() + cnt - 5) * 4;
      asm_code += InstGen::load(InstGen::Reg(op_reg_0),
                                InstGen::Addr(InstGen::sp, offset));
      asm_code += codeGen::getFromSpecificReg(arg, op_reg_0);
    }
  }
  return asm_code;
}

std::string codeGen::generateFunctionExitCode(Function *func) {
  std::string asm_code;
  // reclaim stack space
  asm_code +=
      InstGen::mov(InstGen::Reg(op_reg_0), InstGen::Constant(this->stack_size));
  asm_code += InstGen::add(InstGen::sp, InstGen::sp, InstGen::Reg(op_reg_0));
  // restore callee-save registers and pc
  auto save_registers = codeGen::getRegisters(func);
  save_registers.push_back(InstGen::pc);
  std::sort(save_registers.begin(), save_registers.end());
  asm_code += InstGen::pop(save_registers);
  return asm_code;
}

std::string codeGen::generateFunctionPostCode(Function *func) {
  std::string asm_code;
  asm_code += codeGen::getLabelName(func, 1) + ":" + InstGen::newline;
  return asm_code;
}

std::string codeGen::getLabelName(BasicBlock *bb) {
  return "." + bb->getParent()->getName() + "_" + bb->getName();
}

std::string codeGen::getLabelName(Function *func, int type) {
  const std::vector<std::string> name_list = {"pre", "post"};
  return "." + func->getName() + "_" + name_list.at(type);
}

std::string codeGen::generateBasicBlockCode(BasicBlock *bb) {
  std::string asm_code;
  for (auto &inst : bb->getInstructions()) {
    asm_code += codeGen::generateInstructionCode(inst);
  }
  return asm_code;
}

std::string codeGen::generateInstructionCode(Instruction *inst) {
  std::string asm_code;
  const auto &ops = inst->getOperands();
  if (inst->getInstrType() == Instruction::Ret) {
    if (!ops.empty()) {
      asm_code += codeGen::assignToSpecificReg(ops.at(0), 0);  // ABI
    }
    asm_code += codeGen::generateFunctionExitCode(inst->getFunction());
  } else if (inst->getInstrType() == Instruction::Alloca) {
  } else if (inst->getInstrType() == Instruction::Load) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_1);
    asm_code += InstGen::load(InstGen::Reg(op_reg_0),
                              InstGen::Addr(InstGen::Reg(op_reg_1), 0));
    asm_code += codeGen::getFromSpecificReg(inst, op_reg_0);
  } else if (inst->getInstrType() == Instruction::Store) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_1);
    asm_code += codeGen::assignToSpecificReg(ops.at(1), op_reg_0);
    asm_code += InstGen::store(InstGen::Reg(op_reg_1),
                               InstGen::Addr(InstGen::Reg(op_reg_0), 0));
  } else if (inst->getInstrType() == Instruction::Call) {
    std::string target_func_name;
    int total_args_size = 0;
    for (int i = 0; i < std::min(ops.size(), (size_t)5); i++) {
      if (i == 0) {
        target_func_name = static_cast<Function *>(ops.at(i))->getName();
      } else {
        asm_code += codeGen::assignToSpecificReg(ops.at(i), i - 1);
      }
    }
    for (int i = ops.size() - 1; i >= 5; i--) {
      total_args_size += 4;
      asm_code += codeGen::assignToSpecificReg(ops.at(i), op_reg_0);
      asm_code += InstGen::store(InstGen::Reg(op_reg_0),
                                 InstGen::Addr(InstGen::sp, -total_args_size));
    }
    asm_code += InstGen::mov(InstGen::Reg(op_reg_0),
                             InstGen::Constant(total_args_size));
    asm_code += InstGen::sub(InstGen::sp, InstGen::sp, InstGen::Reg(op_reg_0));
    asm_code += InstGen::call(target_func_name);
    asm_code += InstGen::mov(InstGen::Reg(op_reg_0),
                             InstGen::Constant(total_args_size));
    asm_code += InstGen::add(InstGen::sp, InstGen::sp, InstGen::Reg(op_reg_0));
    if (inst->getType()->getSize() > 0) {
      asm_code += codeGen::getFromSpecificReg(inst, 0);
    }
  } else if (inst->getInstrType() == Instruction::Add) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_0);
    asm_code += codeGen::assignToSpecificReg(ops.at(1), op_reg_1);
    asm_code += InstGen::add(InstGen::Reg(op_reg_0), InstGen::Reg(op_reg_0),
                             InstGen::Reg(op_reg_1));
    asm_code += codeGen::getFromSpecificReg(inst, op_reg_0);
  } else if (inst->getInstrType() == Instruction::Sub) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_0);
    asm_code += codeGen::assignToSpecificReg(ops.at(1), op_reg_1);
    asm_code += InstGen::sub(InstGen::Reg(op_reg_0), InstGen::Reg(op_reg_0),
                             InstGen::Reg(op_reg_1));
    asm_code += codeGen::getFromSpecificReg(inst, op_reg_0);
  } else if (inst->getInstrType() == Instruction::Neg && false) {
    // not implemented
  } else if (inst->getInstrType() == Instruction::And) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_0);
    asm_code += codeGen::assignToSpecificReg(ops.at(1), op_reg_1);
    asm_code += InstGen::and_(InstGen::Reg(op_reg_0), InstGen::Reg(op_reg_0),
                              InstGen::Reg(op_reg_1));
    asm_code += codeGen::getFromSpecificReg(inst, op_reg_0);
  } else if (inst->getInstrType() == Instruction::Or) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_0);
    asm_code += codeGen::assignToSpecificReg(ops.at(1), op_reg_1);
    asm_code += InstGen::or_(InstGen::Reg(op_reg_0), InstGen::Reg(op_reg_0),
                             InstGen::Reg(op_reg_1));
    asm_code += codeGen::getFromSpecificReg(inst, op_reg_0);
  } else if (inst->getInstrType() == Instruction::Not && false) {
    // not implemented
  } else if (inst->getInstrType() == Instruction::Mul) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_0);
    asm_code += codeGen::assignToSpecificReg(ops.at(1), op_reg_1);
    asm_code += InstGen::mul(InstGen::Reg(op_reg_0), InstGen::Reg(op_reg_0),
                             InstGen::Reg(op_reg_1));
    asm_code += codeGen::getFromSpecificReg(inst, op_reg_0);
  } else if (inst->getInstrType() == Instruction::Div) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), 0);
    asm_code += codeGen::assignToSpecificReg(ops.at(1), 1);
    asm_code += InstGen::call("__aeabi_idiv");
    asm_code += codeGen::getFromSpecificReg(inst, 0);
  } else if (inst->getInstrType() == Instruction::Rem) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), 0);
    asm_code += codeGen::assignToSpecificReg(ops.at(1), 1);
    asm_code += InstGen::call("__aeabi_idivmod");
    asm_code += codeGen::getFromSpecificReg(inst, 1);
  } else if (inst->getInstrType() == Instruction::ZExt) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_0);
    asm_code += codeGen::getFromSpecificReg(inst, op_reg_0);
  } else if (inst->getInstrType() == Instruction::GEP &&
             inst->getOperands().size() == 2) {
    asm_code += codeGen::assignToSpecificReg(ops.at(1), op_reg_1);
    asm_code += InstGen::mov(
        InstGen::Reg(op_reg_0),
        InstGen::Constant(inst->getType()->getPointerElementType()->getSize()));
    asm_code += InstGen::mul(InstGen::Reg(op_reg_1), InstGen::Reg(op_reg_1),
                             InstGen::Reg(op_reg_0));
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_0);
    asm_code += InstGen::add(InstGen::Reg(op_reg_0), InstGen::Reg(op_reg_0),
                             InstGen::Reg(op_reg_1));
    asm_code += codeGen::getFromSpecificReg(inst, op_reg_0);
  } else if (inst->getInstrType() == Instruction::Cmp) {
    CmpInst::CmpOp myCmpOp = static_cast<CmpInst *>(inst)->getCmpOp();
    InstGen::CmpOp asmCmpOp;
    switch (myCmpOp) {
      case CmpInst::CmpOp::EQ:
        asmCmpOp = InstGen::CmpOp::EQ;
        break;
      case CmpInst::CmpOp::NE:
        asmCmpOp = InstGen::CmpOp::NE;
        break;
      case CmpInst::CmpOp::GT:
        asmCmpOp = InstGen::CmpOp::GT;
        break;
      case CmpInst::CmpOp::GE:
        asmCmpOp = InstGen::CmpOp::GE;
        break;
      case CmpInst::CmpOp::LT:
        asmCmpOp = InstGen::CmpOp::LT;
        break;
      case CmpInst::CmpOp::LE:
        asmCmpOp = InstGen::CmpOp::LE;
        break;
      default:
        asmCmpOp = InstGen::CmpOp::EQ;
        break;
    }
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_0);
    asm_code += codeGen::assignToSpecificReg(ops.at(1), op_reg_1);
    asm_code += InstGen::cmp(InstGen::Reg(op_reg_0), InstGen::Reg(op_reg_1));
    asm_code += InstGen::mov(InstGen::Reg(op_reg_0), InstGen::Constant(0));
    asm_code +=
        InstGen::mov(InstGen::Reg(op_reg_0), InstGen::Constant(1), asmCmpOp);
    asm_code += codeGen::getFromSpecificReg(inst, op_reg_0);
  } else if (inst->getInstrType() == Instruction::Br && ops.size() == 1) {
    asm_code += InstGen::branch(InstGen::Label(
        codeGen::getLabelName(static_cast<BasicBlock *>(ops.at(0))), 0));
  } else if (inst->getInstrType() == Instruction::Br && ops.size() == 3) {
    asm_code += codeGen::assignToSpecificReg(ops.at(0), op_reg_0);
    asm_code += InstGen::cmp(InstGen::Reg(op_reg_0), InstGen::Constant(0));
    asm_code += InstGen::branch(
        InstGen::Label(
            codeGen::getLabelName(static_cast<BasicBlock *>(ops.at(1))), 0),
        InstGen::CmpOp::NE);
    asm_code += InstGen::branch(InstGen::Label(
        codeGen::getLabelName(static_cast<BasicBlock *>(ops.at(2))), 0));
  } else {
    std::cerr << "Cannot translate this function:" << std::endl;
    inst->getFunction()->print();
    std::cerr << std::endl;
    std::cerr << "Cannot translate this instruction:" << std::endl;
    inst->print();
    std::cerr << std::endl;
    abort();
  }
  return asm_code;
}

std::vector<InstGen::Reg> codeGen::getRegisters(Function *func) {
  std::set<int> registers;
  for (auto &bb : func->getBasicBlocks()) {
    for (auto &inst : bb->getInstructions()) {
      if (this->register_mapping.count(inst)) {
        registers.insert(this->register_mapping.at(inst) - 1);
      }
    }
  }
  registers.erase(-1);  // mem
  for (auto &i : caller_save_regs) {
    registers.erase(i);
  }
  return std::vector<InstGen::Reg>(registers.begin(), registers.end());
}

void codeGen::allocateStackSpace(Function *func) {
  this->stack_size = 0;
  this->stack_mapping.clear();
  int cnt = 0;
  for (auto &arg : func->getArgs()) {
    bool extended = false;
    auto sizeof_val = arg->getType()->getSize(extended);
    sizeof_val = ((sizeof_val + 3) / 4) * 4;
    cnt++;
    assert(sizeof_val == 4);
    if (cnt > 4) {
      stack_mapping[arg] = stack_size;
      stack_size += sizeof_val;
    } else {
      register_mapping[arg] = cnt;  // ABI
    }
  }
  for (auto &bb : func->getBasicBlocks()) {
    for (auto &inst : bb->getInstructions()) {
      if (this->register_mapping.count(inst) &&
          this->register_mapping.at(inst) > 0) {
        continue;
      }
      bool extended = inst->getInstrType() == Instruction::Alloca;
      if (extended) {
        this->allocated.insert(inst);
      }
      auto sizeof_val = inst->getType()->getSize(extended);
      sizeof_val = ((sizeof_val + 3) / 4) * 4;
      if (sizeof_val > 0) {
        stack_mapping[inst] = stack_size;
        stack_size += sizeof_val;
      }
    }
  }
}

std::string codeGen::assignToSpecificReg(Value *val, int target) {
  std::string asm_code;
  auto val_const = dynamic_cast<ConstantInt *>(val);
  auto val_global = dynamic_cast<GlobalVariable *>(val);
  if (val_const) {
    asm_code += InstGen::setValue(InstGen::Reg(target),
                                  InstGen::Constant(val_const->getValue()));
  } else if (val_global) {
    asm_code += InstGen::getAddress(
        InstGen::Reg(op_reg_2),
        InstGen::Label(global_vars_label, codeGen::queryGOT(val_global) * 4));
    asm_code += InstGen::load(InstGen::Reg(target),
                              InstGen::Addr(InstGen::Reg(op_reg_2), 0));
  } else if (allocated.count(val)) {
    auto offset = stack_mapping.at(val);
    if (offset > 1020) {
      asm_code +=
          InstGen::mov(InstGen::Reg(op_reg_2), InstGen::Constant(offset));
      asm_code += InstGen::add(InstGen::Reg(target), InstGen::sp,
                               InstGen::Reg(op_reg_2));
    } else {
      asm_code += InstGen::add(InstGen::Reg(target), InstGen::sp,
                               InstGen::Constant(stack_mapping.at(val)));
    }
  } else if (register_mapping.count(val) && register_mapping.at(val) > 0) {
    auto source = register_mapping.at(val) - 1;
    if (target != source) {
      asm_code += InstGen::mov(InstGen::Reg(target), InstGen::Reg(source));
    }
  } else if (stack_mapping.count(val)) {
    auto offset = stack_mapping.at(val);
    if (offset > 4095) {
      asm_code +=
          InstGen::mov(InstGen::Reg(op_reg_2), InstGen::Constant(offset));
      asm_code += InstGen::add(InstGen::Reg(op_reg_2), InstGen::Reg(op_reg_2),
                               InstGen::sp);
      asm_code += InstGen::load(InstGen::Reg(target),
                                InstGen::Addr(InstGen::Reg(op_reg_2), 0));
    } else {
      asm_code += InstGen::load(InstGen::Reg(target),
                                InstGen::Addr(InstGen::sp, offset));
    }
  } else {
    std::cerr << "Function assignToSpecificReg exception!" << std::endl;
    abort();
  }
  return asm_code;
}

std::string codeGen::getFromSpecificReg(Value *val, int source) {
  std::string asm_code;
  if (register_mapping.count(val) && register_mapping.at(val) > 0) {
    auto target = register_mapping.at(val) - 1;
    if (source != target) {
      asm_code += InstGen::mov(InstGen::Reg(target), InstGen::Reg(source));
    }
  } else if (stack_mapping.count(val)) {
    auto offset = stack_mapping.at(val);
    if (offset > 4095) {
      asm_code +=
          InstGen::mov(InstGen::Reg(op_reg_2), InstGen::Constant(offset));
      asm_code += InstGen::add(InstGen::Reg(op_reg_2), InstGen::Reg(op_reg_2),
                               InstGen::sp);
      asm_code += InstGen::store(InstGen::Reg(source),
                                 InstGen::Addr(InstGen::Reg(op_reg_2), 0));
    } else {
      asm_code += InstGen::store(InstGen::Reg(source),
                                 InstGen::Addr(InstGen::sp, offset));
    }
  } else {
    std::cerr << "Function getFromSpecificReg exception!" << std::endl;
    abort();
  }
  return asm_code;
}

std::string codeGen::generateGOT() {
  std::string asm_code;
  this->GOT.clear();
  for (auto &global_var : this->module->getGlobalVariables()) {
    int count = this->GOT.size();
    if (!GOT.count(global_var)) {
      this->GOT[global_var] = count;
    }
  }
  std::vector<Value *> vecGOT;
  vecGOT.resize(this->GOT.size());
  for (auto &i : GOT) {
    vecGOT[i.second] = i.first;
  }
  for (auto &i : vecGOT) {
    asm_code +=
        InstGen::spaces + ".global" + " " + i->getName() + InstGen::newline;
  }
  asm_code += global_vars_label + ":" + InstGen::newline;
  for (auto &i : vecGOT) {
    asm_code +=
        InstGen::spaces + ".long" + " " + i->getName() + InstGen::newline;
  }
  return asm_code;
}

int codeGen::queryGOT(Value *val) { return this->GOT.at(val); }

std::string codeGen::generateGlobalVarsCode() {
  std::string asm_code;
  for (auto &global_var : this->module->getGlobalVariables()) {
    asm_code += global_var->getName() + ":" + InstGen::newline;
    if (!global_var->getType()->getPointerElementType()->eq(
            *global_var->getOperands().at(0)->getType())) {
      asm_code += InstGen::spaces + ".zero" + " " +
                  std::to_string(global_var->getType()->getSize()) +
                  InstGen::newline;
    } else {
      asm_code += codeGen::generateInitializerCode(
          static_cast<Constant *>(global_var->getOperands().at(0)));
    }
  }
  return asm_code;
}

std::string codeGen::generateInitializerCode(Constant *init) {
  std::string asm_code;
  auto int_init = dynamic_cast<ConstantInt *>(init);
  auto array_init = dynamic_cast<ConstantArray *>(init);
  if (int_init) {
    asm_code += InstGen::spaces + ".long" + " " +
                std::to_string(int_init->getValue()) + InstGen::newline;
  } else if (array_init) {
    auto length =
        static_cast<ArrayType *>(array_init->getType())->getNumOfElements();
    for (int i = 0; i < length; i++) {
      asm_code +=
          codeGen::generateInitializerCode(array_init->getElementValue(i));
    }
  } else {
  }
  return asm_code;
}