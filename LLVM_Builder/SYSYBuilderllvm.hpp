#ifndef SYSYC_SYSYBUILDERLLVM_HPP
#define SYSYC_SYSYBUILDERLLVM_HPP

#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/Verifier.h>
#include "syntax_tree.hh"
#include <map>

class Scope {
public:
    // enter a new scope
    void enter() {
        inner.push_back({});
        array_param.push_back({});
    }

    // exit a scope
    void exit() {
        inner.pop_back();
        array_param.pop_back();
    }

    bool in_global() {
        return inner.size() == 1;
    }

    // push a name to scope
    // return true if successful
    // return false if this name already exits
    bool push(std::string name, llvm::Value *val) {
        auto result = inner[inner.size() - 1].insert({name, val});
        return result.second;
    }

    bool push_params(std::string name, llvm::Value *val, std::vector<llvm::Value *> params) {
        auto result = array_param[array_param.size() - 1].insert({name, params});
        return result.second;
    }

    llvm::Value* find(std::string name) {
        for (auto s = inner.rbegin(); s!= inner.rend();s++) {
            auto iter = s->find(name);
            if (iter != s->end()) {
                return iter->second;
            }
        }

        return nullptr;
    }

    llvm::Value* find_params(std::string name, std::vector<llvm::Value *> &params) {
        // std::cout<<"find_params"<<std::endl;
        for (auto s = array_param.rbegin(); s!= array_param.rend();s++) {
            // std::cout<<"find_params1"<<std::endl;
            auto iter = s->find(name);
            if (iter != s->end()) {
                // std::cout<<"find_params2"<<std::endl;
                params.assign(iter->second.begin(),iter->second.end());
                return iter->second[0];
            }
        }
        // std::cout<<"find_params3"<<std::endl;
        return nullptr;
    }

private:
    std::vector<std::map<std::string, llvm::Value *>> inner;
    std::vector<std::map<std::string, std::vector<llvm::Value *>>> array_param;
};



class SYSYCBuilder: public syntax_tree_visitor {
public:
    SYSYCBuilder(): builder(context) {
        module = std::make_unique<llvm::Module>("sysyc", context);
        auto TyVoid = llvm::Type::getVoidTy(context);
        auto TyInt32 = llvm::Type::getInt32Ty(context);
        auto TyPtr = llvm::Type::getInt32PtrTy(context);
        
        auto getint_type = llvm::FunctionType::get(TyInt32, false);
        // auto getch_type = llvm::FunctionType::get(TyInt32, false);
        auto getint_fun =
            llvm::Function::Create(
                getint_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "getint",
                module.get());

        auto getch_fun =
            llvm::Function::Create(
                getint_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "getch",
                module.get());

        std::vector<llvm::Type *> putint_params;
        putint_params.push_back(TyInt32);
        auto putint_type = llvm::FunctionType::get(TyVoid,putint_params,false);
        
        auto putint_fun =
            llvm::Function::Create(
                putint_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "putint",
                module.get());
        
        auto putch_fun =
            llvm::Function::Create(
                putint_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "putch",
                module.get());

        std::vector<llvm::Type *> getarray_params;
        getarray_params.push_back(TyPtr);
        auto getarray_type = llvm::FunctionType::get(TyInt32,getarray_params,false);
        
        auto getarray_fun =
            llvm::Function::Create(
                getarray_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "getarray",
                module.get());
        
        std::vector<llvm::Type *> putarray_params;
        putarray_params.push_back(TyInt32);
        putarray_params.push_back(TyPtr);
        auto putarray_type = llvm::FunctionType::get(TyInt32,putarray_params,false);
        
        auto putarray_fun =
            llvm::Function::Create(
                putarray_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "putarray",
                module.get());

        scope.enter();
        scope.push("getint", getint_fun);
        scope.push("getch", getch_fun);
        scope.push("putint", putint_fun);
        scope.push("putch", putch_fun);
        scope.push("getarray", getarray_fun);
        scope.push("putarray", putarray_fun);
    }

    std::unique_ptr<llvm::Module> build() {
        return std::move(module);
    }
private:
    virtual void visit(TreeNodeConstExp &) override final;
    virtual void visit(TreeNodeCompUnit &) override final;
    virtual void visit(TreeNodeConstDecl &) override final;
    virtual void visit(TreeNodeConstDef &) override final;
    virtual void visit(TreeNodeConstInitVal &) override final;
    virtual void visit(TreeNodeVarDecl &) override final;
    virtual void visit(TreeNodeVarDef &) override final;
    virtual void visit(TreeNodeInitVal &) override final;
    virtual void visit(TreeNodeFuncDef &) override final;
    virtual void visit(TreeNodeFuncFParam &) override final;
    virtual void visit(TreeNodeBlock &) override final;
    virtual void visit(TreeNodeBreakStmt &) override final;
    virtual void visit(TreeNodeContinueStmt &) override final;
    virtual void visit(TreeNodeAssignStmt &) override final;
    virtual void visit(TreeNodeSelectStmt &) override final;
    virtual void visit(TreeNodeIterationStmt &) override final;
    virtual void visit(TreeNodeReturnStmt &) override final;
    virtual void visit(TreeNodeLVal &) override final;
    virtual void visit(TreeNodePrimaryExp &) override final;
    virtual void visit(TreeNodeNumber &) override final;
    virtual void visit(TreeNodeUnaryExp &) override final;
    virtual void visit(TreeNodeCallee &) override final;
    virtual void visit(TreeNodeMulExp &) override final;
    virtual void visit(TreeNodeAddExp &) override final;
    virtual void visit(TreeNodeRelExp &) override final;
    virtual void visit(TreeNodeEqExp &) override final;
    virtual void visit(TreeNodeLAndExp &) override final;
    virtual void visit(TreeNodeLOrExp &) override final;
    llvm::LLVMContext context;
    llvm::IRBuilder<> builder;
    Scope scope;
    std::unique_ptr<llvm::Module> module;
};
#endif //SYSYC_SYSYBUILDERLLVM_HPP
