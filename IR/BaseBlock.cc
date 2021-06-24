#include "BaseBlock.h"
#include "Function.h"

//基本块，是一个是单入单出的代码块，该类维护了一个指令链表，基本块本身属于
// Value, 类型是 <label>，会被分支指令调用
BaseBlock::BaseBlock(BlockType ty, Module *m, const std::string &name,
                     Function *func)
    : block_ty_(ty), Value(Type::getLabelTy(m), name), father_(nullptr),
      func_(func) {
  func->addBaseBlock(this);
}