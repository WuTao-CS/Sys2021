#include "SysyBuilder.h"
#include <iostream>

#define CONST(num) ConstantInt::get(num, &*module)

#define _IRBUILDER_ERROR_(str)                                                 \
    {                                                                          \
        std::cerr << "Error in IRbuilder-> " << str << std::endl;              \
        std::abort();                                                          \
    }

// type
Type *TyInt32;
Type *TyVoid;
Type *TyInt32Ptr;
Type *TyInt1;

// store temporary value
Value *tmp_val = nullptr;
// whether require lvalue
bool require_address = false;
// function that is being built
Function *cur_fun = nullptr;
// detect scope pre-enter (for elegance only)
bool pre_enter_scope = false;
//
std::vector<Value *> array_init;
//
std::vector<BasicBlock *> iter_expr, iter_cont;

int tmp_int = 0;
bool use_int = false;

Constant *ToConstArray(std::vector<int32_t> &array_bounds,
                       std::vector<Value *> &array_init)
{
    auto cur_bnd = array_bounds[0];
    std::vector<int32_t> bounds;
    bounds.assign(array_bounds.begin() + 1, array_bounds.end());
    std::vector<Constant *> init_list;

    int d_length = array_init.size() / cur_bnd;
    if (d_length == 1)
    {
        for (int i = 0; i < cur_bnd; i++)
        {
            init_list.push_back(static_cast<Constant *>(array_init[i]));
        }
    }
    else
    {
        for (int i = 0; i < cur_bnd; i++)
        {
            std::vector<Value *> init;
            init.assign(array_init.begin() + d_length * i,
                        array_init.begin() + d_length * (i + 1));
            auto const_array = ToConstArray(bounds, init);
            init_list.push_back(const_array);
        }
    }
    Type *TyArray = TyInt32;
    for (int i = (array_bounds.size() - 1); i >= 0; i--)
    {
        TyArray =
            ArrayType::get(TyArray, static_cast<uint64_t>(array_bounds[i]));
    }
    return ConstantArray::get(static_cast<ArrayType *>(TyArray), init_list);
}

void SysyBuilder::visit(TreeNodeCompUnit &node)
{
    TyInt32 = Type::getInt32Ty(&*module);
    TyVoid = Type::getVoidTy(&*module);
    TyInt32Ptr = Type::getInt32PtrTy(&*module);
    TyInt1 = Type::getInt1Ty(&*module);
    // std::cout<<TyInt32->getTypeID()<<std::endl;
    for (auto DeclDef : node.DeclDefList)
    {
        DeclDef->accept(*this);
    }
}

void SysyBuilder::visit(TreeNodeConstDecl &node)
{
    for (auto p : node.ConstDefList)
    {
        p->accept(*this);
    }
}

void SysyBuilder::visit(TreeNodeConstDef &node)
{
    if (node.ArrayConstExpList.size() == 0)
    {
        if (node.ConstInitVal != nullptr)
        {
            node.ConstInitVal->accept(*this);
            scope.push(node.id, tmp_val);
        }
        else
        {
            _IRBUILDER_ERROR_("ConstDef")
        }
    }
    else
    {
        Type *TyArray = TyInt32;
        std::vector<int32_t> array_bounds;
        for (int i = 0; i < node.ArrayConstExpList.size(); i++)
        {
            auto array_const_exp = node.ArrayConstExpList[i];
            array_const_exp->accept(*this);
            auto dim_value = static_cast<ConstantInt *>(tmp_val)->getValue();
            array_bounds.push_back(dim_value);
        }
        for (int i = (array_bounds.size() - 1); i >= 0; i--)
        {
            TyArray = ArrayType::get(TyArray, array_bounds[i]);
        }
        if (scope.in_global())
        {
            if (node.ConstInitVal != nullptr)
            {
                node.ConstInitVal->bounds.assign(array_bounds.begin(),
                                                 array_bounds.end());
                node.ConstInitVal->accept(*this);
                auto initializer = ToConstArray(array_bounds, array_init);
                auto var = GlobalVariable::create(node.id, &*module, TyArray,
                                                  false, initializer);
                scope.push(node.id, var);
            }
            else
            {
                auto var = GlobalVariable::create(node.id, &*module, TyArray,
                                                  false, CONST(0));
                scope.push(node.id, var);
            }
        }
        else
        { // local var
            auto array_alloc = builder->CreateAlloca(TyArray);
            scope.push(node.id, array_alloc);
            if (node.ConstInitVal != nullptr)
            {
                auto alloca = scope.find(node.id);
                node.ConstInitVal->bounds.assign(array_bounds.begin(),
                                                 array_bounds.end());
                node.ConstInitVal->accept(*this);

                auto Ptr = builder->CreateGEP(alloca, {CONST(0)});
                for (int i = 1; i < node.ConstInitVal->bounds.size(); i++)
                {
                    Ptr = builder->CreateGEP(Ptr, {CONST(0)});
                }
                for (int i = 0; i < array_init.size(); i++)
                {
                    builder->CreateStore(array_init[i], Ptr);
                    Ptr = builder->CreateGEP(Ptr, {CONST(1)});
                }
            }
        } // get alloc
    }
}

void SysyBuilder::visit(TreeNodeConstInitVal &node)
{
    if (node.ConstExp != nullptr && node.bounds.size() == 0)
    {
        node.ConstExp->accept(*this);
    }
    else
    {
        auto cur_bnd = node.bounds[0];
        auto d_length = 1;
        for (int i = 1; i < node.bounds.size(); i++)
        {
            d_length *= node.bounds[i];
        }
        std::vector<Value *> init_list;
        for (int i = 0; i < node.ConstInitValList.size(); i++)
        {
            auto init_val = node.ConstInitValList[i];
            if (init_val->ConstExp != nullptr)
            {
                init_val->ConstExp->accept(*this);
                init_list.push_back(tmp_val);
            }
            else
            {
                auto pos = init_list.size();
                for (int j = 0; j < (d_length - (pos % d_length)) % d_length;
                     j++)
                {
                    init_list.push_back(CONST(0));
                }
                init_val->bounds.assign(node.bounds.begin() + 1,
                                        node.bounds.end());
                init_val->accept(*this);
                init_list.insert(init_list.end(), array_init.begin(),
                                 array_init.end());
            }
        }
        for (int i = init_list.size(); i < d_length * cur_bnd; i++)
        {
            init_list.push_back(CONST(0));
        }
        array_init.assign(init_list.begin(), init_list.end());
    }
}
void SysyBuilder::visit(TreeNodeVarDecl &node)
{
    for (auto p : node.VarDefList)
    {
        p->accept(*this);
    }
}
void SysyBuilder::visit(TreeNodeVarDef &node)
{
    if (node.ArrayConstExpList.size() == 0)
    {
        if (scope.in_global())
        {
            if (node.InitVal != nullptr)
            {
                node.InitVal->accept(*this);
                auto initializer = static_cast<Constant *>(tmp_val);
                auto var = GlobalVariable::create(node.id, &*module, TyInt32,
                                                  false, initializer);
                scope.push(node.id, var);
            }
            else
            {
                auto var = GlobalVariable::create(node.id, &*module, TyInt32,
                                                  false, CONST(0));
                scope.push(node.id, var);
            }
        }
        else
        {
            auto val_alloc = builder->CreateAlloca(TyInt32);
            scope.push(node.id, val_alloc);
            if (node.InitVal != nullptr)
            { // assign
                node.InitVal->accept(*this);
                builder->CreateStore(tmp_val, val_alloc);
            }
        }
    }
    else
    {
        Type *TyArray = TyInt32;
        std::vector<int32_t> array_bounds;
        for (int i = 0; i < node.ArrayConstExpList.size(); i++)
        {
            auto array_const_exp = node.ArrayConstExpList[i];
            array_const_exp->accept(*this);
            auto dim_value = static_cast<ConstantInt *>(tmp_val)->getValue();
            array_bounds.push_back(dim_value);
        }
        for (int i = (array_bounds.size() - 1); i >= 0; i--)
        {
            TyArray =
                ArrayType::get(TyArray, static_cast<uint64_t>(array_bounds[i]));
        } // get array type
        if (scope.in_global())
        {
            if (node.InitVal != nullptr)
            {
                node.InitVal->bounds.assign(array_bounds.begin(),
                                            array_bounds.end());
                node.InitVal->accept(*this);
                auto initializer = ToConstArray(array_bounds, array_init);
                auto var = GlobalVariable::create(node.id, &*module, TyArray,
                                                  false, initializer);
                scope.push(node.id, var);
            }
            else
            {
                auto var = GlobalVariable::create(node.id, &*module, TyArray,
                                                  false, CONST(0));
                scope.push(node.id, var);
            }
        }
        else
        { // local var
            auto array_alloc = builder->CreateAlloca(TyArray);
            scope.push(node.id, array_alloc);
            if (node.InitVal != nullptr)
            {
                auto alloca = scope.find(node.id);
                node.InitVal->bounds.assign(array_bounds.begin(),
                                            array_bounds.end());
                node.InitVal->accept(*this);

                auto Ptr = builder->CreateGEP(alloca, {CONST(0)});
                for (int i = 1; i < node.InitVal->bounds.size(); i++)
                {
                    Ptr = builder->CreateGEP(Ptr, {CONST(0)});
                }
                for (int i = 0; i < array_init.size(); i++)
                {
                    builder->CreateStore(array_init[i], Ptr);
                    Ptr = builder->CreateGEP(Ptr, {CONST(1)});
                }
            }
        } // get alloc
    }
}
void SysyBuilder::visit(TreeNodeInitVal &node)
{
    if (node.Exp != nullptr && node.bounds.size() == 0)
    {
        node.Exp->accept(*this);
    }
    else
    {
        auto cur_bnd = node.bounds[0];
        auto d_length = 1;
        for (int i = 1; i < node.bounds.size(); i++)
        {
            d_length *= node.bounds[i];
        }
        std::vector<Value *> init_list;
        for (int i = 0; i < node.InitValList.size(); i++)
        {
            auto init_val = node.InitValList[i];
            if (init_val->Exp != nullptr)
            {
                init_val->Exp->accept(*this);
                init_list.push_back(tmp_val);
            }
            else
            {
                auto pos = init_list.size();
                for (int j = 0; j < (d_length - (pos % d_length)) % d_length;
                     j++)
                {
                    init_list.push_back(CONST(0));
                }
                init_val->bounds.assign(node.bounds.begin() + 1,
                                        node.bounds.end());
                init_val->accept(*this);
                init_list.insert(init_list.end(), array_init.begin(),
                                 array_init.end());
            }
        }
        for (int i = init_list.size(); i < d_length * cur_bnd; i++)
        {
            init_list.push_back(CONST(0));
        }
        array_init.assign(init_list.begin(), init_list.end());
    }
}
void SysyBuilder::visit(TreeNodeFuncDef &node)
{
    FunctionType *fun_type;
    Type *ret_type;
    std::vector<Type *> param_types;
    if (node.type == TYPE_INT)
    {
        ret_type = TyInt32;
    }
    else
    {
        ret_type = TyVoid;
    }
    for (auto &param : node.FuncFParamList)
    {
        if (param->isarray)
        {
            param_types.push_back(TyInt32Ptr);
        }
        else
        {
            param_types.push_back(TyInt32);
        }
    }
    fun_type = FunctionType::get(ret_type, param_types);
    auto fun = Function::create(fun_type, node.id, module.get());
    scope.push(node.id, fun);
    cur_fun = fun;
    auto funBB = BasicBlock::create(&*module, "entry", fun);
    builder->SetInsertPoint(funBB);
    scope.enter();
    pre_enter_scope = true;
    std::vector<Argument *> args;
    for (auto arg = fun->arg_begin(); arg != fun->arg_end(); arg++)
    {
        args.push_back(*arg);
    }
    for (int i = 0; i < node.FuncFParamList.size(); ++i)
    {
        if (node.FuncFParamList[i]->isarray)
        {
            auto array_alloc = builder->CreateAlloca(TyInt32Ptr);
            builder->CreateStore(static_cast<Value *>(args[i]), array_alloc);
            std::vector<Value *> array_params;
            array_params.push_back(CONST(0));
            for (auto array_param : node.FuncFParamList[i]->ParamArrayExpList)
            {
                array_param->accept(*this);
                array_params.push_back(tmp_val);
            }
            scope.push(node.FuncFParamList[i]->id, array_alloc);
            scope.push_params(node.FuncFParamList[i]->id, array_alloc,
                              array_params);
        }
        else
        {
            auto alloc = builder->CreateAlloca(TyInt32);
            builder->CreateStore(args[i], alloc);
            scope.push(node.FuncFParamList[i]->id, alloc);
        }
    }
    node.Block->accept(*this);
    if (builder->GetInsertBlock()->getTerminator() == nullptr)
    {
        if (cur_fun->getResultType() == TyVoid)
        {
            builder->CreateVoidRet();
        }
        else if (builder->GetInsertBlock()->empty())
        {
            auto parent = builder->GetInsertBlock()->getParent();
            parent->removeBasicBlock(builder->GetInsertBlock());
        }
    }
    scope.exit();
}

void SysyBuilder::visit(TreeNodeFuncFParam &node) {}

void SysyBuilder::visit(TreeNodeBlock &node)
{
    bool need_exit_scope = !pre_enter_scope;
    if (pre_enter_scope)
    {
        pre_enter_scope = false;
    }
    else
    {
        scope.enter();
    }

    for (auto &blockitem : node.BlockItemList)
    {
        blockitem->accept(*this);
        // if (builder->GetInsertBlock()->getTerminator() != nullptr)
        // break;
    }

    if (need_exit_scope)
    {
        scope.exit();
    }
}
void SysyBuilder::visit(TreeNodeBreakStmt &node)
{
    auto cur_iter = iter_cont[iter_expr.size() - 1];
    builder->CreateBr(cur_iter);
}

void SysyBuilder::visit(TreeNodeContinueStmt &node)
{
    auto cur_iter = iter_expr[iter_expr.size() - 1];
    builder->CreateBr(cur_iter);
}

void SysyBuilder::visit(TreeNodeAssignStmt &node)
{
    node.LVal->accept(*this);
    auto lval = tmp_val;
    node.Exp->accept(*this);
    auto rval = tmp_val;
    builder->CreateStore(rval, lval);
}

void SysyBuilder::visit(TreeNodeSelectStmt &node)
{
    node.Cond->accept(*this);
    auto cond_val = tmp_val;
    auto trueBB = BasicBlock::create(&*module, "", cur_fun);
    auto falseBB = BasicBlock::create(&*module, "", cur_fun);
    auto contBB = BasicBlock::create(&*module, "", cur_fun);
    if (node.elseStmt == nullptr)
    {
        builder->CreateCondBr(cond_val, trueBB, contBB);
    }
    else
    {
        builder->CreateCondBr(cond_val, trueBB, falseBB);
    }
    builder->SetInsertPoint(trueBB);
    node.ifStmt->accept(*this);
    if (builder->GetInsertBlock()->getTerminator() == nullptr)
        builder->CreateBr(contBB);

    if (node.elseStmt == nullptr)
    {
        auto parent = falseBB->getParent();
        parent->removeBasicBlock(falseBB);
    }
    else
    {
        builder->SetInsertPoint(falseBB);
        node.elseStmt->accept(*this);
        if (builder->GetInsertBlock()->getTerminator() == nullptr)
            builder->CreateBr(contBB);
    }
    builder->SetInsertPoint(contBB);
}

void SysyBuilder::visit(TreeNodeIterationStmt &node)
{
    auto exprBB = BasicBlock::create(&*module, "", cur_fun);
    if (builder->GetInsertBlock()->getTerminator() == nullptr)
        builder->CreateBr(exprBB);
    builder->SetInsertPoint(exprBB);

    iter_expr.push_back(exprBB);

    node.Cond->accept(*this);
    auto cond_val = tmp_val;
    auto trueBB = BasicBlock::create(&*module, "", cur_fun);
    auto contBB = BasicBlock::create(&*module, "", cur_fun);

    iter_cont.push_back(contBB);
    builder->CreateCondBr(cond_val, trueBB, contBB);
    builder->SetInsertPoint(trueBB);
    node.Stmt->accept(*this);
    if (builder->GetInsertBlock()->getTerminator() == nullptr)
        builder->CreateBr(exprBB);

    iter_expr.pop_back();
    iter_cont.pop_back();
    builder->SetInsertPoint(contBB);
}

void SysyBuilder::visit(TreeNodeReturnStmt &node)
{
    if (node.Exp == nullptr)
    {
        builder->CreateVoidRet();
    }
    else
    {
        node.Exp->accept(*this);
        builder->CreateRet(tmp_val);
    }
}
void SysyBuilder::visit(TreeNodeLVal &node)
{
    auto var = scope.find(node.id);
    if (var->getType()->isIntegerTy())
    { // constant
        tmp_val = var;
        return;
    }
    // std::cout<<var->getType()->getTypeID()<<std::endl;
    auto is_int = var->getType()->getPointerElementType()->isIntegerTy();
    auto is_ptr = var->getType()->getPointerElementType()->isPointerTy();
    if (node.ArrayExpList.size() == 0)
    {
        if (is_int)
        {
            tmp_val = scope.find(node.id);
        }
        else if (is_ptr)
        {
            tmp_val = builder->CreateLoad(var);
        }
        else
        {
            tmp_val = builder->CreateGEP(var, {CONST(0)});
        }
    }
    else
    {
        Value *tmp_ptr;
        if (is_int)
        {
            tmp_ptr = var;
            for (auto exp : node.ArrayExpList)
            {
                exp->accept(*this);
                tmp_ptr = builder->CreateGEP(tmp_ptr, {tmp_val});
            }
        }
        else if (is_ptr)
        {
            std::vector<Value *> array_params;
            scope.find_params(node.id, array_params);
            auto array_load = builder->CreateLoad(var);
            for (int i = 0; i < node.ArrayExpList.size(); i++)
            {
                node.ArrayExpList[i]->accept(*this);
                auto val = tmp_val;
                for (int j = i + 1; j < array_params.size(); j++)
                {
                    val = builder->CreateMul(val, array_params[j]);
                }
                tmp_ptr = builder->CreateGEP(array_load, {val});
            }
        }
        else
        {
            tmp_ptr = var;
            for (auto exp : node.ArrayExpList)
            {
                exp->accept(*this);
                tmp_ptr = builder->CreateGEP(tmp_ptr, {tmp_val});
            }
        }
        tmp_val = tmp_ptr;
    }
}

void SysyBuilder::visit(TreeNodePrimaryExp &node)
{
    if (use_int)
    {
        if (node.Exp)
        {
            node.Exp->accept(*this);
        }
        else if (node.LVal)
        {
            node.LVal->accept(*this);
            tmp_int = static_cast<ConstantInt *>(tmp_val)->getValue();
        }
        else if (node.Number)
        {
            node.Number->accept(*this);
        }
        return;
    }

    if (node.Exp)
    {
        node.Exp->accept(*this);
    }
    else if (node.LVal)
    {
        node.LVal->accept(*this);
        if (require_address)
        {
            while (!tmp_val->getType()->getPointerElementType()->isIntegerTy())
            {
                tmp_val = builder->CreateGEP(tmp_val, {CONST(0)});
            }
        }
        else
        {
            if (tmp_val->getType()->isIntegerTy())
            {
                return;
            }
            tmp_val = builder->CreateLoad(tmp_val);
        }
    }
    else if (node.Number)
    {
        node.Number->accept(*this);
    }
    return;
}

void SysyBuilder::visit(TreeNodeNumber &node)
{
    if (use_int)
    {
        tmp_int = node.num;
        return;
    }
    tmp_val = CONST(node.num);
}
void SysyBuilder::visit(TreeNodeUnaryExp &node)
{
    if (use_int)
    {
        int val;
        if (node.PrimaryExp)
        {
            node.PrimaryExp->accept(*this);
            val = tmp_int;
        }
        else if (node.UnaryExp)
        {
            node.UnaryExp->accept(*this);
            val = tmp_int;
        }
        else
        {
            _IRBUILDER_ERROR_("Function call in ConstExp!");
        }
        switch (node.op)
        {
        case OP_NEG:
            tmp_int = 0 - val;
            break;
        case OP_NOT:
            tmp_int = val != 0;
            _IRBUILDER_ERROR_("NOT operation in ConstExp!")
            break;
        }
        return;
    }

    Value *val;
    if (node.PrimaryExp)
    {
        node.PrimaryExp->accept(*this);
        val = tmp_val;
    }
    else if (node.UnaryExp)
    {
        node.UnaryExp->accept(*this);
        val = tmp_val;
    }
    else
    {
        node.Callee->accept(*this);
        val = tmp_val;
    }
    switch (node.op)
    {
    case OP_NEG:
        val = builder->CreateSub(CONST(0), val);
        break;
    case OP_NOT:
        val = builder->CreateCmpEQ(val, CONST(0), &*module);
        val = builder->CreateZext(val, TyInt32);
        break;
    }
    tmp_val = val;
}

void SysyBuilder::visit(TreeNodeCallee &node)
{
    auto fun = scope.find(node.id);
    std::vector<Value *> args;
    for (int i = 0; i < node.ExpList.size(); i++)
    {
        auto arg = node.ExpList[i];
        auto arg_type =
            static_cast<Function *>(fun)->getFunctionType()->getArgType(i);
        if (arg_type->isIntegerTy())
        {
            require_address = false;
        }
        else
        {
            require_address = true;
        }
        arg->accept(*this);
        require_address = false;
        args.push_back(tmp_val);
    }
    tmp_val = builder->CreateCall(static_cast<Function *>(fun), args);
}

void SysyBuilder::visit(TreeNodeMulExp &node)
{
    if (node.MulExp == nullptr)
    {
        node.UnaryExp->accept(*this);
    }
    else
    {
        if (use_int)
        {
            node.MulExp->accept(*this);
            auto l_val = tmp_int;
            node.UnaryExp->accept(*this);
            auto r_val = tmp_int;
            switch (node.op)
            {
            case OP_MUL:
                tmp_int = l_val * r_val;
                break;
            case OP_DIV:
                tmp_int = l_val / r_val;
                break;
            case OP_MOD:
                tmp_int = l_val % r_val;
                break;
            }
            return;
        }

        node.MulExp->accept(*this);
        auto l_val = tmp_val;
        node.UnaryExp->accept(*this);
        auto r_val = tmp_val;
        switch (node.op)
        {
        case OP_MUL:
            tmp_val = builder->CreateMul(l_val, r_val);
            break;
        case OP_DIV:
            tmp_val = builder->CreateDiv(l_val, r_val);
            break;
        case OP_MOD:
            tmp_val = builder->CreateRem(l_val, r_val);
            break;
        }
    }
}

void SysyBuilder::visit(TreeNodeAddExp &node)
{
    if (node.AddExp == nullptr)
    {
        node.MulExp->accept(*this);
    }
    else
    {

        if (use_int)
        {
            node.AddExp->accept(*this);
            auto l_val = tmp_int;
            node.MulExp->accept(*this);
            auto r_val = tmp_int;
            switch (node.op)
            {
            case OP_PLUS:
                tmp_int = l_val + r_val;
                break;
            case OP_MINUS:
                tmp_int = l_val - r_val;
                break;
            }
            return;
        }

        node.AddExp->accept(*this);
        auto l_val = tmp_val;
        node.MulExp->accept(*this);
        auto r_val = tmp_val;
        switch (node.op)
        {
        case OP_PLUS:
            tmp_val = builder->CreateAdd(l_val, r_val);
            break;
        case OP_MINUS:
            tmp_val = builder->CreateSub(l_val, r_val);
            break;
        }
    }
}

void SysyBuilder::visit(TreeNodeRelExp &node)
{
    Value *logicalVal;
    if (node.RelExp == nullptr)
    {
        node.AddExp->accept(*this);
    }
    else
    {
        node.RelExp->accept(*this);
        auto lval = tmp_val;
        node.AddExp->accept(*this);
        auto rval = tmp_val;
        switch (node.op)
        {
        case OP_LTE:
            logicalVal = builder->CreateCmpLE(lval, rval, &*module);
            break;
        case OP_LT:
            logicalVal = builder->CreateCmpLT(lval, rval, &*module);
            break;
        case OP_GT:
            logicalVal = builder->CreateCmpGT(lval, rval, &*module);
            break;
        case OP_GTE:
            logicalVal = builder->CreateCmpGE(lval, rval, &*module);
            break;
        }
        tmp_val = builder->CreateZext(logicalVal, TyInt32);
    }
}
void SysyBuilder::visit(TreeNodeEqExp &node)
{
    if (node.EqExp == nullptr)
    {
        node.RelExp->accept(*this);
    }
    else
    {
        node.EqExp->accept(*this);
        auto lval = tmp_val;
        node.RelExp->accept(*this);
        auto rval = tmp_val;
        switch (node.op)
        {
        case OP_EQ:
            tmp_val = builder->CreateCmpEQ(lval, rval, &*module);
            break;
        case OP_NEQ:
            tmp_val = builder->CreateCmpNE(lval, rval, &*module);
            break;
        }
        tmp_val = builder->CreateZext(tmp_val, TyInt32);
    }
}
void SysyBuilder::visit(TreeNodeLAndExp &node)
{
    if (node.LAndExp == nullptr)
    {
        node.EqExp->accept(*this);
        tmp_val = builder->CreateCmpNE(tmp_val, CONST(0), &*module);
    }
    else
    {
        node.LAndExp->accept(*this);
        auto lval = tmp_val;
        node.EqExp->accept(*this);
        auto rval = builder->CreateCmpNE(tmp_val, CONST(0), &*module);
        tmp_val = builder->CreateAnd(lval, rval);
    }
}
void SysyBuilder::visit(TreeNodeLOrExp &node)
{
    if (node.LOrExp == nullptr)
    {
        node.LAndExp->accept(*this);
    }
    else
    {
        node.LOrExp->accept(*this);
        auto lval = tmp_val;
        node.LAndExp->accept(*this);
        auto rval = tmp_val;
        tmp_val = builder->CreateOr(lval, rval);
    }
}
void SysyBuilder::visit(TreeNodeConstExp &node)
{
    use_int = true;
    node.AddExp->accept(*this);
    tmp_val = CONST(tmp_int);
    use_int = false;
}