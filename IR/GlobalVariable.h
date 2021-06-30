//
// Created by cqy on 2020/6/29.
//

#ifndef SYSYC_GLOBALVARIABLE_H
#define SYSYC_GLOBALVARIABLE_H

#include "Constant.h"
#include "Module.h"
#include "User.h"

class GlobalVariable : public User
{
  private:
    bool is_const_ : true; //判断是否为常量
    Constant *init_val_;   // 初始值
    GlobalVariable(std::string name, Module *m, Type *ty, bool is_const,
                   Constant *init = nullptr);

  public:
    static GlobalVariable *create(std::string name, Module *m, Type *ty,
                                  bool is_const, Constant *init);
    // 获取初始值
    Constant *getInit()
    {
        return init_val_;
    }
    // 输出LLVM格式的中间代码
    std::string print();
};
#endif // SYSYC_GLOBALVARIABLE_H
