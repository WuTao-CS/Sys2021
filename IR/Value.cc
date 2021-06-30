#include "Value.h"
#include "ReturnVal.h"
#include "Type.h"
#include "User.h"
#include <algorithm>
#include <cassert>

Value::Value(Type *ty, const std::string &name) : type_(ty), name_(name) {}

void Value::addUse(Value *val, unsigned arg_no)
{
    use_list_.push_back(Use(val, arg_no));
}

std::string Value::getName() const
{
    return name_;
}

void Value::removeUse(Value *val, unsigned arg_no)
{
    auto iter = std::find(use_list_.begin(), use_list_.end(), Use(val, arg_no));
    exit_ifnot(_CantFindUse_removeUse_Value, iter != use_list_.end());
    use_list_.erase(iter);
}
