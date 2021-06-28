#ifndef SYSYC_INSTRUCTIONS_H
#define SYSYC_INSTRUCTIONS_H

#include <string>
#include <vector>

namespace InstGen {

const std::string spaces = std::string(4, ' ');
const std::string newline = "\n";

const std::string reg_name[] = {"r0",  "r1", "r2", "r3", "r4",  "r5",
                                "r6",  "r7", "r8", "r9", "r10", "r11",
                                "r12", "sp", "lr", "pc"};

enum CmpOp {
  EQ,  // ==
  NE,  // !=
  GT,  // >
  GE,  // >=
  LT,  // <
  LE,  // <=
  NOP
};

class Value {
 public:
  virtual std::string getName() const = 0;
};

class Reg : public Value {
  int id;

 public:
  Reg(int id) : id(id) {}
  int getID() const { return this->id; }
  std::string getName() const { return reg_name[id]; }
  const bool operator<(const Reg &rhs) const { return this->id < rhs.id; }
};

const Reg sp = Reg(13);
const Reg lr = Reg(14);
const Reg pc = Reg(15);

class Addr {
  Reg reg;
  int offset;

 public:
  Addr(Reg reg, int offset) : reg(reg), offset(offset) {}
  Reg getReg() const { return this->reg; }
  int getOffset() const { return this->offset; }
  std::string getName() const {
    return "[" + reg.getName() + ", " + "#" + std::to_string(this->offset) +
           "]";
  }
};

class Constant : public Value {
  int value;

 public:
  Constant(int value) : value(value) {}
  int getValue() const { return this->value; }
  std::string getName() const { return "#" + std::to_string(this->value); }
};

class Label {
  std::string label;
  int offset;

 public:
  Label(std::string label, int offset) : label(label), offset(offset) {}
  std::string getName() const { return label + "+" + std::to_string(offset); }
};

std::string condCode(const CmpOp &cond);
std::string push(const std::vector<Reg> &reg_list);
std::string pop(const std::vector<Reg> &reg_list);
std::string mov(const Reg &target, const Value &source, const CmpOp &op = NOP);
std::string setValue(const Reg &target, const Constant &source);
std::string getAddress(const Reg &target, const Label &source);
std::string load(const Reg &target, const Addr &source);
std::string load(const Reg &target, const Label &source);
std::string store(const Reg &source, const Addr &target);
std::string store(const Reg &source, const Label &target);
std::string call(const std::string &target_func_name);
std::string add(const Reg &target, const Reg &op1, const Value &op2);
std::string sub(const Reg &target, const Reg &op1, const Value &op2);
std::string and_(const Reg &target, const Reg &op1, const Value &op2);
std::string or_(const Reg &target, const Reg &op1, const Value &op2);
std::string mul(const Reg &target, const Reg &op1, const Reg &op2);
std::string cmp(const Reg &lhs, const Value &rhs);
std::string branch(const Label &target, const CmpOp &op = NOP);

};  // namespace InstGen

#endif