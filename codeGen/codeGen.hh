#ifndef SYSYC_CODEGEN_H
#define SYSYC_CODEGEN_H

#include <experimental/optional>
#include <iostream>
#include <map>
#include <memory>
#include <set>
#include <string>
#include <vector>

#include "BasicBlock.h"
#include "Constant.h"
#include "Function.h"
#include "GlobalVariable.h"
#include "IRBuilder.h"
#include "Instruction.h"
#include "Module.h"
#include "Type.h"
#include "User.h"
#include "Value.h"
#include "instructionsGen.hh"

using std::experimental::nullopt;
using std::experimental::optional;

const std::string global_vars_label = ".global_vars";

const std::vector<int> caller_save_regs = {0, 1, 2, 3, 12, 14};

const int op_reg_0 = 12;
const int op_reg_1 = 14;
const int op_reg_2 = 11;

class codeGen {
 private:
  std::shared_ptr<Module> module;
  std::map<Value *, int> register_mapping;
  std::map<Value *, int> stack_mapping;
  std::set<Value *> allocated;
  std::map<Value *, int> GOT;
  int stack_size;

 public:
  codeGen(std::shared_ptr<Module> module) { this->module = module; }
  ~codeGen() {}
  std::string generateModuleCode(
      optional<std::map<Value *, int>> register_mapping);
  std::string generateModuleCode() { return generateModuleCode(nullopt); }
  std::string generateFunctionCode(Function *func);
  std::string generateFunctionEntryCode(Function *func);
  std::string generateFunctionExitCode(Function *func);
  std::string generateFunctionPostCode(Function *func);
  std::string generateBasicBlockCode(BasicBlock *bb);
  std::string generateInstructionCode(Instruction *inst);
  std::string global(std::string name);
  std::string getLabelName(BasicBlock *bb);
  std::string getLabelName(Function *func, int type);
  std::vector<InstGen::Reg> getRegisters(Function *func);
  void allocateStackSpace(Function *func);
  std::string assignToSpecificReg(Value *val, int target);
  std::string getFromSpecificReg(Value *val, int source);
  std::string generateGOT();
  std::string generateGlobalVarsCode();
  std::string generateInitializerCode(Constant *init);
  int queryGOT(Value *val);
};

#endif