#include "SysyBuilder.hpp"
#include <iostream>
#define CONST(num) llvm::ConstantInt::get(context, llvm::APInt(32, num))
#define _LLVM_IRBUILDER_ERROR_(str)                                            \
    {                                                                          \
        std::cerr << "Error in IRBuilder. " << str << std::endl;               \
        std::abort();                                                          \
    }

#define _DEBUG_IRBUILDER(str)                                                  \
    {                                                                          \
        std::cerr << "Debug in IRBuilder. " << str << std::endl;               \
    }

// store temporary value
llvm::Value *tmp_val = nullptr;
// whether require lvalue
bool require_address = false;
// function that is being built
llvm::Function *cur_fun = nullptr;
// detect scope pre-enter (for elegance only)
bool pre_enter_scope = false;
//
std::vector<llvm::Value *> array_init;
//
std::vector<llvm::BasicBlock *> iter_expr, iter_cont;

int tmp_int = 0;
bool use_int = false;

// llvm::ConstantArray* const_array;

llvm::Constant *ToConstArray(std::vector<int32_t> &array_bounds,
                             std::vector<llvm::Value *> &array_init,
                             llvm::Type *TyInt32)
{
    auto cur_bnd = array_bounds[0];
    std::vector<int32_t> bounds;
    bounds.assign(array_bounds.begin() + 1, array_bounds.end());
    std::vector<llvm::Constant *> init_list;

    int d_length = array_init.size() / cur_bnd;
    if (d_length == 1)
    {
        for (int i = 0; i < cur_bnd; i++)
        {
            init_list.push_back(static_cast<llvm::Constant *>(array_init[i]));
        }
    }
    else
    {
        for (int i = 0; i < cur_bnd; i++)
        {
            std::vector<llvm::Value *> init;
            init.assign(array_init.begin() + d_length * i,
                        array_init.begin() + d_length * (i + 1));
            auto const_array = ToConstArray(bounds, init, TyInt32);
            init_list.push_back(const_array);
        }
    }
    llvm::Type *TyArray = TyInt32;
    for (int i = (array_bounds.size() - 1); i >= 0; i--)
    {
        TyArray = llvm::ArrayType::get(TyArray,
                                       static_cast<uint64_t>(array_bounds[i]));
    }
    llvm::ArrayRef<llvm::Constant *> init_val(init_list);
    return llvm::ConstantArray::get(static_cast<llvm::ArrayType *>(TyArray),
                                    init_val);
}

void SysyBuilder::visit(TreeNodeCompUnit &node)
{
    //_DEBUG_IRBUILDER("CompUnit");
    for (auto DeclDef : node.DeclDefList)
    {
        DeclDef->accept(*this);
    }
    //_DEBUG_IRBUILDER("CompUnit_end");
}

void SysyBuilder::visit(TreeNodeConstDecl &node)
{
    //_DEBUG_IRBUILDER("ConstDecl");
    for (auto p : node.ConstDefList)
    {
        p->accept(*this);
    }
    //_DEBUG_IRBUILDER("ConstDecl_end");
}

void SysyBuilder::visit(TreeNodeConstDef &node)
{
    //_DEBUG_IRBUILDER("ConstDef");
    auto *TyInt32 = llvm::Type::getInt32Ty(context);
    if (node.ArrayConstExpList.size() == 0)
    {
        // if (scope.in_global()) {
        if (node.ConstInitVal != nullptr)
        {
            node.ConstInitVal->accept(*this);
            // std::cout<<tmp_val->getType()<<std::endl;
            scope.push(node.id, tmp_val);
        }
        else
        {
            _LLVM_IRBUILDER_ERROR_("not a constant")
        }
    }
    else
    {
        llvm::Type *TyArray = TyInt32;
        std::vector<int32_t> array_bounds;
        for (int i = 0; i < node.ArrayConstExpList.size(); i++)
        {
            auto array_const_exp = node.ArrayConstExpList[i];
            array_const_exp->accept(*this);
            auto dim_value = static_cast<llvm::ConstantInt *>(tmp_val)
                                 ->getValue()
                                 .getZExtValue();
            array_bounds.push_back(dim_value);
        }
        for (int i = (array_bounds.size() - 1); i >= 0; i--)
        {
            TyArray = llvm::ArrayType::get(
                TyArray, static_cast<uint64_t>(array_bounds[i]));
        } // get array type
        if (scope.in_global())
        {
            if (node.ConstInitVal != nullptr)
            {
                node.ConstInitVal->bounds.assign(array_bounds.begin(),
                                                 array_bounds.end());
                node.ConstInitVal->accept(*this);
                auto initializer =
                    ToConstArray(array_bounds, array_init, TyInt32);
                auto var = new llvm::GlobalVariable(
                    *module, TyArray, false,
                    llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                    initializer);
                scope.push(node.id, var);
            }
            else
            {
                auto initializer = llvm::ConstantAggregateZero::get(TyArray);
                auto var = new llvm::GlobalVariable(
                    *module, TyArray, false,
                    llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                    initializer);
                scope.push(node.id, var);
            }
        }
        else
        { // local var
            // //_DEBUG_IRBUILDER("VarDef_1");
            auto array_alloc = builder.CreateAlloca(TyArray);
            scope.push(node.id, array_alloc);
            if (node.ConstInitVal != nullptr)
            {
                auto alloca = scope.find(node.id);
                // //_DEBUG_IRBUILDER("VarDef_2");
                node.ConstInitVal->bounds.assign(array_bounds.begin(),
                                                 array_bounds.end());
                node.ConstInitVal->accept(*this);

                auto Ptr = builder.CreateGEP(alloca, {CONST(0), CONST(0)});
                for (int i = 1; i < node.ConstInitVal->bounds.size(); i++)
                {
                    Ptr = builder.CreateGEP(Ptr, {CONST(0), CONST(0)});
                }
                // //_DEBUG_IRBUILDER("VarDef_3");
                for (int i = 0; i < array_init.size(); i++)
                {
                    builder.CreateStore(array_init[i], Ptr);
                    Ptr = builder.CreateGEP(Ptr, CONST(1));
                }
            }
        } // get alloc
    }
    //_DEBUG_IRBUILDER("ConstDef_end");
}

void SysyBuilder::visit(TreeNodeConstInitVal &node)
{
    //_DEBUG_IRBUILDER("ConstInitVal");
    auto *TyInt32 = llvm::Type::getInt32Ty(context);
    if (node.ConstExp != nullptr && node.bounds.size() == 0)
    {

        node.ConstExp->accept(*this);
        // tmp_val返回值
    }
    else
    {
        auto cur_bnd = node.bounds[0];

        auto d_length = 1;
        for (int i = 1; i < node.bounds.size(); i++)
        {
            d_length *= node.bounds[i];
        }

        std::vector<llvm::Value *> init_list;
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
    //_DEBUG_IRBUILDER("ConstInitVal_end");
}
void SysyBuilder::visit(TreeNodeConstExp &node)
{
    //_DEBUG_IRBUILDER("ConstExp");
    use_int = true;
    node.AddExp->accept(*this);
    tmp_val = CONST(tmp_int);
    // std::cout<<tmp_int<<std::endl;
    // std::cout<<tmp_val->getType()->isIntegerTy()<<std::endl;
    use_int = false;
    //_DEBUG_IRBUILDER("ConstExp_end");
}

void SysyBuilder::visit(TreeNodeVarDecl &node)
{
    //_DEBUG_IRBUILDER("VarDecl");
    for (auto p : node.VarDefList)
    {
        p->accept(*this);
    }
    //_DEBUG_IRBUILDER("VarDecl_end");
}

void SysyBuilder::visit(TreeNodeVarDef &node)
{
    //_DEBUG_IRBUILDER("VarDef");
    auto *TyInt32 = llvm::Type::getInt32Ty(context);
    if (node.ArrayConstExpList.size() == 0)
    {
        if (scope.in_global())
        {
            if (node.InitVal != nullptr)
            {
                node.InitVal->accept(*this);
                auto initializer = static_cast<llvm::Constant *>(tmp_val);
                auto var = new llvm::GlobalVariable(
                    *module, TyInt32, false,
                    llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                    initializer);
                scope.push(node.id, var);
            }
            else
            {
                auto initializer = llvm::ConstantAggregateZero::get(TyInt32);
                auto var = new llvm::GlobalVariable(
                    *module, TyInt32, false,
                    llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                    initializer);
                scope.push(node.id, var);
            }
        }
        else
        {
            auto val_alloc = builder.CreateAlloca(TyInt32);
            scope.push(node.id, val_alloc);
            if (node.InitVal != nullptr)
            { // assign
                node.InitVal->accept(*this);
                builder.CreateStore(tmp_val, val_alloc);
            }
        }
    }
    else
    {
        llvm::Type *TyArray = TyInt32;
        std::vector<int32_t> array_bounds;
        for (int i = 0; i < node.ArrayConstExpList.size(); i++)
        {
            auto array_const_exp = node.ArrayConstExpList[i];
            array_const_exp->accept(*this);
            auto dim_value = static_cast<llvm::ConstantInt *>(tmp_val)
                                 ->getValue()
                                 .getZExtValue();
            array_bounds.push_back(dim_value);
        }
        for (int i = (array_bounds.size() - 1); i >= 0; i--)
        {
            TyArray = llvm::ArrayType::get(
                TyArray, static_cast<uint64_t>(array_bounds[i]));
        } // get array type
        if (scope.in_global())
        {
            if (node.InitVal != nullptr)
            {
                node.InitVal->bounds.assign(array_bounds.begin(),
                                            array_bounds.end());
                node.InitVal->accept(*this);
                auto initializer =
                    ToConstArray(array_bounds, array_init, TyInt32);
                auto var = new llvm::GlobalVariable(
                    *module, TyArray, false,
                    llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                    initializer);
                scope.push(node.id, var);
            }
            else
            {
                auto initializer = llvm::ConstantAggregateZero::get(TyArray);
                auto var = new llvm::GlobalVariable(
                    *module, TyArray, false,
                    llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                    initializer);
                scope.push(node.id, var);
            }
        }
        else
        { // local var
            // //_DEBUG_IRBUILDER("VarDef_1");
            auto array_alloc = builder.CreateAlloca(TyArray);
            scope.push(node.id, array_alloc);
            if (node.InitVal != nullptr)
            {
                auto alloca = scope.find(node.id);
                // //_DEBUG_IRBUILDER("VarDef_2");
                node.InitVal->bounds.assign(array_bounds.begin(),
                                            array_bounds.end());
                node.InitVal->accept(*this);

                auto Ptr = builder.CreateGEP(alloca, {CONST(0), CONST(0)});
                for (int i = 1; i < node.InitVal->bounds.size(); i++)
                {
                    Ptr = builder.CreateGEP(Ptr, {CONST(0), CONST(0)});
                }
                // //_DEBUG_IRBUILDER("VarDef_3");
                for (int i = 0; i < array_init.size(); i++)
                {
                    builder.CreateStore(array_init[i], Ptr);
                    Ptr = builder.CreateGEP(Ptr, CONST(1));
                }
            }
        } // get alloc
    }
    //_DEBUG_IRBUILDER("VarDef_end");
}

void SysyBuilder::visit(TreeNodeInitVal &node)
{

    // 拍平成一维数组的方法
    auto *TyInt32 = llvm::Type::getInt32Ty(context);
    if (node.Exp != nullptr && node.bounds.size() == 0)
    {

        node.Exp->accept(*this);
        // tmp_val返回值
    }
    else
    {
        auto cur_bnd = node.bounds[0];

        auto d_length = 1;
        for (int i = 1; i < node.bounds.size(); i++)
        {
            d_length *= node.bounds[i];
        }

        std::vector<llvm::Value *> init_list;
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
    //_DEBUG_IRBUILDER("InitVal_end");
}

void SysyBuilder::visit(TreeNodeFuncDef &node)
{
    llvm::FunctionType *fun_type;
    llvm::Type *ret_type;
    std::vector<llvm::Type *> param_types;
    auto *TyInt32 = llvm::Type::getInt32Ty(context);
    auto *TyVoid = llvm::Type::getVoidTy(context);
    auto *TyInt32Ptr = llvm::Type::getInt32PtrTy(context);
    // 调研多维数组类型

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
    // //_DEBUG_IRBUILDER("FuncDef2");
    fun_type = llvm::FunctionType::get(ret_type, param_types, false);
    auto fun = llvm::Function::Create(
        fun_type, llvm::GlobalValue::LinkageTypes::ExternalLinkage, node.id,
        module.get());
    // //_DEBUG_IRBUILDER("FuncDef3");
    scope.push(node.id, fun);
    // //_DEBUG_IRBUILDER("FuncDef3.1");
    cur_fun = fun; // 当前分析的函数
    auto funBB = llvm::BasicBlock::Create(context, "entry", fun);
    builder.SetInsertPoint(funBB);
    // //_DEBUG_IRBUILDER("FuncDef3.5");
    scope.enter();
    pre_enter_scope = true; // TODO
    std::vector<llvm::Value *> args;
    // //_DEBUG_IRBUILDER("FuncDef4");
    for (auto arg = fun->arg_begin(); arg != fun->arg_end(); arg++)
    {
        args.push_back(arg);
    }
    // //_DEBUG_IRBUILDER("FuncDef5");
    for (int i = 0; i < node.FuncFParamList.size(); ++i)
    {
        if (node.FuncFParamList[i]->isarray)
        {
            auto array_alloc = builder.CreateAlloca(TyInt32Ptr);
            builder.CreateStore(args[i], array_alloc);
            std::vector<llvm::Value *> array_params;
            array_params.push_back(CONST(0));
            for (auto array_param : node.FuncFParamList[i]->ParamArrayExpList)
            {
                array_param->accept(*this);
                array_params.push_back(tmp_val);
            }
            // std::cout<<array_params.size()<<std::endl;
            scope.push(node.FuncFParamList[i]->id, array_alloc);
            scope.push_params(node.FuncFParamList[i]->id, array_alloc,
                              array_params);
        }
        else
        {
            auto alloc = builder.CreateAlloca(TyInt32);
            builder.CreateStore(args[i], alloc);
            scope.push(node.FuncFParamList[i]->id, alloc);
        }
    }
    node.Block->accept(*this);
    // 创建return 语句？
    if (builder.GetInsertBlock()->getTerminator() == nullptr)
    {
        if (cur_fun->getReturnType() == TyVoid)
        {
            builder.CreateRetVoid();
        }
        else if (builder.GetInsertBlock()->empty())
        {
            builder.GetInsertBlock()->eraseFromParent();
        }
    }
    scope.exit();
    //_DEBUG_IRBUILDER("FuncDef_end");
}

void SysyBuilder::visit(TreeNodeFuncFParam &node)
{
    node.ParamArrayExpList;
}

void SysyBuilder::visit(TreeNodeBlock &node)
{
    //_DEBUG_IRBUILDER("Block");
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
        if (builder.GetInsertBlock()->getTerminator() != nullptr)
            break; // todo: 不清楚这里判断基本块是否完整为了啥？
    }

    if (need_exit_scope)
    {
        scope.exit();
    }
    //_DEBUG_IRBUILDER("Block_end");
}

void SysyBuilder::visit(TreeNodeBreakStmt &node)
{
    //_DEBUG_IRBUILDER("BreakStmt");
    auto cur_iter = iter_cont[iter_expr.size() - 1];
    builder.CreateBr(cur_iter);
    //_DEBUG_IRBUILDER("BreakStmt_end");
}

void SysyBuilder::visit(TreeNodeContinueStmt &node)
{
    //_DEBUG_IRBUILDER("ContinueStmt");
    auto cur_iter = iter_expr[iter_expr.size() - 1];
    builder.CreateBr(cur_iter);
    //_DEBUG_IRBUILDER("ContinueStmt_end");
}

void SysyBuilder::visit(TreeNodeAssignStmt &node)
{
    //_DEBUG_IRBUILDER("AssignStmt");
    node.LVal->accept(*this);
    auto lval = tmp_val;
    node.Exp->accept(*this);
    auto rval = tmp_val;
    builder.CreateStore(rval, lval);
    //_DEBUG_IRBUILDER("AssignStmt_end");
}

void SysyBuilder::visit(TreeNodeSelectStmt &node)
{
    //_DEBUG_IRBUILDER("SelectStmt");
    auto *TyInt32 = llvm::Type::getInt32Ty(context);
    auto *TyInt1 = llvm::Type::getInt1Ty(context);
    node.Cond->accept(*this);
    auto cond_val = tmp_val;
    // auto cmp = builder.CreateICmpEQ(ret_val, CONST(1));
    auto trueBB = llvm::BasicBlock::Create(context, "", cur_fun);
    auto falseBB = llvm::BasicBlock::Create(context, "", cur_fun);
    auto contBB = llvm::BasicBlock::Create(context, "", cur_fun);
    // auto cond_val = builder.CreateICmpNE(ret_val, CONST(0));
    if (node.elseStmt == nullptr)
    {
        builder.CreateCondBr(cond_val, trueBB, contBB);
    }
    else
    {
        builder.CreateCondBr(cond_val, trueBB, falseBB);
    }
    builder.SetInsertPoint(trueBB);
    node.ifStmt->accept(*this);

    if (builder.GetInsertBlock()->getTerminator() == nullptr)
        builder.CreateBr(contBB);

    if (node.elseStmt == nullptr)
    {
        falseBB->eraseFromParent();
    }
    else
    {
        builder.SetInsertPoint(falseBB);
        node.elseStmt->accept(*this);
        if (builder.GetInsertBlock()->getTerminator() == nullptr)
            builder.CreateBr(contBB);
    }

    builder.SetInsertPoint(contBB);
    //_DEBUG_IRBUILDER("SelectStmt_end");
}

void SysyBuilder::visit(TreeNodeIterationStmt &node)
{
    //_DEBUG_IRBUILDER("IterationStmt");
    auto *TyInt32 = llvm::Type::getInt32Ty(context);
    auto *TyInt1 = llvm::Type::getInt1Ty(context);
    auto exprBB = llvm::BasicBlock::Create(context, "", cur_fun);
    if (builder.GetInsertBlock()->getTerminator() == nullptr)
        builder.CreateBr(exprBB);
    builder.SetInsertPoint(exprBB);

    iter_expr.push_back(exprBB);

    node.Cond->accept(*this);
    auto cond_val = tmp_val;
    auto trueBB = llvm::BasicBlock::Create(context, "", cur_fun);
    auto contBB = llvm::BasicBlock::Create(context, "", cur_fun);

    iter_cont.push_back(contBB);
    // auto cond_val = builder.CreateICmpNE(ret_val, CONST(0));
    builder.CreateCondBr(cond_val, trueBB, contBB);
    builder.SetInsertPoint(trueBB);
    node.Stmt->accept(*this);
    if (builder.GetInsertBlock()->getTerminator() == nullptr)
        builder.CreateBr(exprBB);

    iter_expr.pop_back();
    iter_cont.pop_back();
    builder.SetInsertPoint(contBB);
    //_DEBUG_IRBUILDER("IterationStmt_end");
}

void SysyBuilder::visit(TreeNodeReturnStmt &node)
{
    //_DEBUG_IRBUILDER("ReturnStmt");
    auto *TyInt32 = llvm::Type::getInt32Ty(context);
    if (node.Exp == nullptr)
    {
        builder.CreateRetVoid();
    }
    else
    {
        node.Exp->accept(*this);
        builder.CreateRet(tmp_val);
    }
    //_DEBUG_IRBUILDER("ReturnStmt_end");
}

void SysyBuilder::visit(TreeNodeLVal &node)
{
    //_DEBUG_IRBUILDER("LVal");
    //_DEBUG_IRBUILDER(node.id);
    // TODO const Lval 的处理?
    auto *TyInt32 = llvm::Type::getInt32Ty(context);
    auto *TyInt32Ptr = llvm::Type::getInt32PtrTy(context);
    auto var = scope.find(node.id);
    if (var->getType()->isIntegerTy())
    { // constant
        tmp_val = var;
        return;
    }

    // //_DEBUG_IRBUILDER("LVal 1");
    auto is_int = var->getType()->getPointerElementType()->isIntegerTy();
    // //_DEBUG_IRBUILDER("LVal 1");
    auto is_ptr = var->getType()->getPointerElementType()->isPointerTy();
    if (node.ArrayExpList.size() == 0)
    {
        if (is_int)
        {
            //_DEBUG_IRBUILDER("LVal is_int");
            tmp_val = scope.find(node.id);
        }
        else if (is_ptr)
        {
            //_DEBUG_IRBUILDER("LVal is_ptr");
            tmp_val = builder.CreateLoad(var);
        }
        else
        {
            //_DEBUG_IRBUILDER("LVal else1");
            tmp_val = builder.CreateGEP(var, {CONST(0), CONST(0)});
        }
    }
    else
    {

        // //_DEBUG_IRBUILDER("LVal 1");
        llvm::Value *tmp_ptr;
        if (is_int)
        {
            //_DEBUG_IRBUILDER("LVal is_int");
            tmp_ptr = var;
            for (auto exp : node.ArrayExpList)
            {
                exp->accept(*this);
                tmp_ptr = builder.CreateGEP(tmp_ptr, tmp_val);
            }
        }
        else if (is_ptr)
        {
            //_DEBUG_IRBUILDER("LVal is_ptr");
            std::vector<llvm::Value *> array_params;
            // //_DEBUG_IRBUILDER("LVal is_ptr");
            scope.find_params(node.id, array_params);
            // std::cout<<array_params.size()<<std::endl;
            // //_DEBUG_IRBUILDER("LVal is_ptr");
            auto array_load = builder.CreateLoad(var);
            for (int i = 0; i < node.ArrayExpList.size(); i++)
            {
                node.ArrayExpList[i]->accept(*this);
                auto val = tmp_val;
                for (int j = i + 1; j < array_params.size(); j++)
                {
                    val = builder.CreateMul(val, array_params[j]);
                }
                tmp_ptr = builder.CreateGEP(array_load, val);
            }
        }
        else
        {
            //_DEBUG_IRBUILDER("LVal else");
            tmp_ptr = var;
            for (auto exp : node.ArrayExpList)
            {
                exp->accept(*this);
                tmp_ptr = builder.CreateGEP(tmp_ptr, {CONST(0), tmp_val});
            }
        }
        tmp_val = tmp_ptr;
    }
    //_DEBUG_IRBUILDER("LVal_end");
}

void SysyBuilder::visit(TreeNodePrimaryExp &node)
{
    //_DEBUG_IRBUILDER("PrimaryExp");
    if (use_int)
    {
        if (node.Exp)
        {
            node.Exp->accept(*this);
        }
        else if (node.LVal)
        {
            node.LVal->accept(*this);
            tmp_int = static_cast<llvm::ConstantInt *>(tmp_val)
                          ->getValue()
                          .getZExtValue();
        }
        else if (node.Number)
        {
            node.Number->accept(*this);
        }
        //_DEBUG_IRBUILDER("PrimaryExp_end");
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
            //_DEBUG_IRBUILDER("PrimaryExp1");
            while (!tmp_val->getType()->getPointerElementType()->isIntegerTy())
            {
                //_DEBUG_IRBUILDER("PrimaryExp2");
                tmp_val = builder.CreateGEP(tmp_val, {CONST(0), CONST(0)});
            }
        }
        else
        {
            if (tmp_val->getType()->isIntegerTy())
            {
                return;
            }
            tmp_val = builder.CreateLoad(tmp_val);
        }
    }
    else if (node.Number)
    {
        node.Number->accept(*this);
    }
    //_DEBUG_IRBUILDER("PrimaryExp_end");
    return;
}

void SysyBuilder::visit(TreeNodeNumber &node)
{
    //_DEBUG_IRBUILDER("Number");
    if (use_int)
    {
        tmp_int = node.num;
        return;
    }
    tmp_val = CONST(node.num);
    //_DEBUG_IRBUILDER("Number_end");
}

void SysyBuilder::visit(TreeNodeUnaryExp &node)
{
    //_DEBUG_IRBUILDER("UnaryExp")
    auto *TyInt32 = llvm::Type::getInt32Ty(context);

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
            _LLVM_IRBUILDER_ERROR_("Function call in ConstExp!");
        }
        switch (node.op)
        {
        case OP_NEG:
            tmp_int = 0 - val;
            break;
        case OP_NOT:
            tmp_int = val != 0;
            _LLVM_IRBUILDER_ERROR_("NOT operation in ConstExp!")
            break;
        }
        //_DEBUG_IRBUILDER("UnaryExp_end")
        return;
    }

    llvm::Value *val;
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
        val = builder.CreateSub(CONST(0), val);
        break;
    case OP_NOT:
        val = builder.CreateICmpEQ(val, CONST(0));
        val = builder.CreateZExt(val, TyInt32);
        break;
    }
    tmp_val = val;
    //_DEBUG_IRBUILDER("UnaryExp_end")
}

void SysyBuilder::visit(TreeNodeCallee &node)
{
    //_DEBUG_IRBUILDER("Callee");

    auto fun = scope.find(node.id);
    std::vector<llvm::Value *> args;
    for (int i = 0; i < node.ExpList.size(); i++)
    {
        //_DEBUG_IRBUILDER("Callee_1")
        auto arg = node.ExpList[i];
        // std::cout<<fun->getType()->getPointerElementType()->getTypeID()<<std::endl;

        auto arg_type =
            fun->getType()->getPointerElementType()->getFunctionParamType(i);
        //_DEBUG_IRBUILDER("Callee_1.1")
        if (arg_type->isIntegerTy())
        {
            require_address = false;
        }
        else
        {
            require_address = true;
        }
        //_DEBUG_IRBUILDER("Callee_2")
        arg->accept(*this); // 调用Exp
        require_address = false;
        args.push_back(tmp_val);
    }
    //_DEBUG_IRBUILDER("Callee_3")
    tmp_val = builder.CreateCall(fun, args);
    //_DEBUG_IRBUILDER("Callee_end")
}

void SysyBuilder::visit(TreeNodeMulExp &node)
{
    //_DEBUG_IRBUILDER("MulExp");

    auto *TyInt32 = llvm::Type::getInt32Ty(context);
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
            //_DEBUG_IRBUILDER("MulExp_end");
            return;
        }

        node.MulExp->accept(*this);
        auto l_val = tmp_val;
        node.UnaryExp->accept(*this);
        auto r_val = tmp_val;
        switch (node.op)
        {
        case OP_MUL:
            tmp_val = builder.CreateMul(l_val, r_val);
            break;
        case OP_DIV:
            tmp_val = builder.CreateSDiv(l_val, r_val);
            break;
        case OP_MOD:
            tmp_val = builder.CreateSRem(l_val, r_val);
            break;
        }
    }
    //_DEBUG_IRBUILDER("MulExp_end");
}

void SysyBuilder::visit(TreeNodeAddExp &node)
{
    //_DEBUG_IRBUILDER("AddExp");
    auto *TyInt32 = llvm::Type::getInt32Ty(context);
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
            //_DEBUG_IRBUILDER("AddExp_end");
            return;
        }

        node.AddExp->accept(*this);
        auto l_val = tmp_val;
        node.MulExp->accept(*this);
        auto r_val = tmp_val;
        switch (node.op)
        {
        case OP_PLUS:
            tmp_val = builder.CreateAdd(l_val, r_val);
            break;
        case OP_MINUS:
            tmp_val = builder.CreateSub(l_val, r_val);
            break;
        }
    }
    //_DEBUG_IRBUILDER("AddExp_end");
}

void SysyBuilder::visit(TreeNodeRelExp &node)
{
    //_DEBUG_IRBUILDER("RelExp");

    auto *TyInt32 = llvm::Type::getInt32Ty(context);
    llvm::Value *logicalVal;
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
            logicalVal = builder.CreateICmpSLE(lval, rval);
            break;
        case OP_LT:
            logicalVal = builder.CreateICmpSLT(lval, rval);
            break;
        case OP_GT:
            logicalVal = builder.CreateICmpSGT(lval, rval);
            break;
        case OP_GTE:
            logicalVal = builder.CreateICmpSGE(lval, rval);
            break;
        }
        tmp_val = builder.CreateZExt(logicalVal, TyInt32);
    }
    //_DEBUG_IRBUILDER("RelExp_end");
}

void SysyBuilder::visit(TreeNodeEqExp &node)
{
    //_DEBUG_IRBUILDER("EqExp");
    auto *TYInt32 = llvm::Type::getInt32Ty(context);
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
            tmp_val = builder.CreateICmpEQ(lval, rval);
            break;
        case OP_NEQ:
            tmp_val = builder.CreateICmpNE(lval, rval);
            break;
        }
        tmp_val = builder.CreateZExt(tmp_val, TYInt32);
    }
    //_DEBUG_IRBUILDER("EqExp_end");
}

void SysyBuilder::visit(TreeNodeLAndExp &node)
{
    //_DEBUG_IRBUILDER("LAndExp");
    if (node.LAndExp == nullptr)
    {
        node.EqExp->accept(*this);
        // tmp_val = builder.CreateZExt(tmp_val, TYInt32);
        tmp_val = builder.CreateICmpNE(tmp_val, CONST(0));
    }
    else
    {
        node.LAndExp->accept(*this);
        auto lval = tmp_val;
        node.EqExp->accept(*this);
        auto rval = builder.CreateICmpNE(tmp_val, CONST(0));
        // auto rval = builder.CreateICmpNE(tmp_val, CONST(0));
        tmp_val = builder.CreateAnd(lval, rval);
    }
    //_DEBUG_IRBUILDER("LAndExp_end");
} // return int1;

void SysyBuilder::visit(TreeNodeLOrExp &node)
{
    //_DEBUG_IRBUILDER("LOrExp");
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
        tmp_val = builder.CreateOr(lval, rval);
    }
    //_DEBUG_IRBUILDER("LOrExp_end");
}