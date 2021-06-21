#ifndef _SYNTAX_TREE_HPP_
#define _SYNTAX_TREE_HPP_

#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include <iostream>
#include <memory>
#include <vector>
using namespace llvm;

enum type_specifier { TYPE_INT, TYPE_VOID };
// 关系运算符
enum relop {
    // <=
    OP_LTE,
    // <
    OP_LT,
    // >
    OP_GT,
    // >=
    OP_GTE,
    // ==
    OP_EQ,
    // !=
    OP_NEQ
};
// +-运算符
enum addop {
    // +
    OP_PLUS,
    // -
    OP_MINUS
};
// */%运算符
enum mulop {
    // *
    OP_MUL,
    // /
    OP_DIV,
    // %
    OP_MOD
};
// 单目运算符
enum unaryop {
    // +
    OP_POS,
    // -
    OP_NEG,
    // !
    OP_NOT
};
// 逻辑运算份额
enum logop {
    // &&
    OP_AND,
    // ||
    OP_OR,

};
//节点基类

struct TreeNodeOrgin;

//编译单元

struct TreeNodeCompUnit;
struct TreeNodeDeclDef;
struct TreeNodeConstDecl;
struct TreeNodeConstDefList;
// struct TreeNodeBType;
struct TreeNodeConstDef;
struct TreeNodeArrayConstExpList;
struct TreeNodeConstInitVal;
struct TreeNodeConstInitValList;

struct TreeNodeVarDecl;
struct TreeNodeVarDefList;
struct TreeNodeVarDef;
struct TreeNodeInitVal;
struct TreeNodeInitValList;

struct TreeNodeFuncDef;
struct TreeNodeFuncFParamList;
struct TreeNodeFuncFParam;
struct TreeNodeParamArrayExpList;

struct TreeNodeBlock;
struct TreeNodeBlockItemList;
struct TreeNodeBlockItem;

struct TreeNodeStmt;
struct TreeNodeAssignStmt;
struct TreeNodeSelectStmt;
struct TreeNodeBreakStmt;
struct TreeNodeContinueStmt;
struct TreeNodeIterationStmt;
struct TreeNodeReturnStmt;

struct TreeNodeExp;
struct TreeNodeCond;
struct TreeNodeLVal;
struct TreeNodeArrayExpList;
struct TreeNodePrimaryExp;
struct TreeNodeNumber;
struct TreeNodeUnaryExp;
struct TreeNodeCallee;
struct TreeNodeExpList;
struct TreeNodeMulExp;
struct TreeNodeAddExp;
struct TreeNodeRelExp;
struct TreeNodeEqExp;
struct TreeNodeLAndExp;
struct TreeNodeLOrExp;
struct TreeNodeConstExp;

class Tree_visitor;
static LLVMContext TheContext;
static IRBuilder<> Builder(TheContext);
static std::unique_ptr<Module> TheModule;
static std::map<std::string, Value *> NamedValues;
//语法树结构定义
class syntax_tree
{
  public:
    syntax_tree(std::shared_ptr<TreeNodeCompUnit> &start_node)
    {
        root = start_node;
    };
    syntax_tree(syntax_tree &&tree)
    {
        root = tree.root;
        tree.root = nullptr;
    };
    TreeNodeCompUnit *get_root()
    {
        return root.get();
    }
    void run_visitor(Tree_visitor &visitor); //调用visitor

  private:
    std::shared_ptr<TreeNodeCompUnit> root = nullptr;
};

//作为一切节点的基类
struct TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) = 0;
};

//编译单元
struct TreeNodeCompUnit : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
    //声明类vector
    std::vector<std::shared_ptr<TreeNodeDeclDef>> DeclDefList;
    // virtual Value *Codegen() = 0;
};

//声明
struct TreeNodeDeclDef : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
    // 常数声明
    std::shared_ptr<TreeNodeConstDecl> ConstDecl;
    // 变量声明
    std::shared_ptr<TreeNodeVarDecl> VarDecl;
    // 函数声明
    std::shared_ptr<TreeNodeFuncDef> FuncDef;
};

//常量声明（const）
struct TreeNodeConstDecl : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
    // 常数定义 vector
    std::vector<std::shared_ptr<TreeNodeConstDef>> ConstDefList;
    type_specifier type;
};

//常量链表定义（连续定义多个常量
struct TreeNodeConstDefList
{
    std::vector<std::shared_ptr<TreeNodeConstDef>> list;
};

//常数定义
struct TreeNodeConstDef : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::vector<std::shared_ptr<TreeNodeConstExp>> ArrayConstExpList;
    std::shared_ptr<TreeNodeConstInitVal> ConstInitVal;
    std::string id;
};

//常量数组定义
struct TreeNodeArrayConstExpList
{
    std::vector<std::shared_ptr<TreeNodeConstExp>> list;
};

//常量初始化赋值
struct TreeNodeConstInitVal : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::shared_ptr<TreeNodeConstExp> ConstExp;
    std::vector<std::shared_ptr<TreeNodeConstInitVal>> ConstInitValList;
    std::vector<int> bounds;
};

//常量初始化链表赋值
struct TreeNodeConstInitValList
{
    std::vector<std::shared_ptr<TreeNodeConstInitVal>> list;
};

//变量声明
struct TreeNodeVarDecl : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::vector<std::shared_ptr<TreeNodeVarDef>> VarDefList;
    type_specifier type;
};

//变量链表定义
struct TreeNodeVarDefList
{
    std::vector<std::shared_ptr<TreeNodeVarDef>> list;
};

//变量
struct TreeNodeVarDef : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::string id;
    std::vector<std::shared_ptr<TreeNodeConstExp>> ArrayConstExpList;
    std::shared_ptr<TreeNodeInitVal> InitVal;
};

//变量初始化
struct TreeNodeInitVal : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::vector<std::shared_ptr<TreeNodeInitVal>> InitValList;
    std::shared_ptr<TreeNodeExp> Exp;
    std::vector<int> bounds;
};

//变量连续初始化
struct TreeNodeInitValList
{
    std::vector<std::shared_ptr<TreeNodeInitVal>> list;
};

//函数定义
struct TreeNodeFuncDef : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    type_specifier type;
    std::string id;
    std::vector<std::shared_ptr<TreeNodeFuncFParam>> FuncFParamList;
    std::shared_ptr<TreeNodeBlock> Block;
};

// 函数参数表
struct TreeNodeFuncFParamList
{
    std::vector<std::shared_ptr<TreeNodeFuncFParam>> list;
};

//函数参数
struct TreeNodeFuncFParam : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    type_specifier type;
    std::string id;
    bool isarray;
    std::vector<std::shared_ptr<TreeNodeExp>> ParamArrayExpList;
};

// 参数数组列表
struct TreeNodeParamArrayExpList
{
    std::vector<std::shared_ptr<TreeNodeExp>> list;
};

//语句块
struct TreeNodeBlock : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::vector<std::shared_ptr<TreeNodeBlockItem>> BlockItemList;
};

//语句块项表
struct TreeNodeBlockItemList
{
    std::vector<std::shared_ptr<TreeNodeBlockItem>> list;
};

//语句块项
struct TreeNodeBlockItem : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
    // 常数定义块
    std::shared_ptr<TreeNodeConstDecl> ConstDecl;
    // 变量定义块
    std::shared_ptr<TreeNodeVarDecl> VarDecl;
    // 语句块
    std::shared_ptr<TreeNodeStmt> Stmt;
};

//语句
struct TreeNodeStmt : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
    // break语句
    std::shared_ptr<TreeNodeBreakStmt> BreakStmt;
    // continue语句
    std::shared_ptr<TreeNodeContinueStmt> ContinueStmt;
    // 赋值语句
    std::shared_ptr<TreeNodeAssignStmt> AssignStmt;
    // 表达式
    std::shared_ptr<TreeNodeExp> Exp;
    // 块
    std::shared_ptr<TreeNodeBlock> Block;
    // if语句
    std::shared_ptr<TreeNodeSelectStmt> SelectStmt;
    // while语句
    std::shared_ptr<TreeNodeIterationStmt> IterationStmt;
    // return语句
    std::shared_ptr<TreeNodeReturnStmt> ReturnStmt;
};

// break语句
struct TreeNodeBreakStmt : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
};

// continue语句
struct TreeNodeContinueStmt : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
};

//赋值语句
struct TreeNodeAssignStmt : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
    // 左值表达式
    std::shared_ptr<TreeNodeLVal> LVal;
    // 表达式
    std::shared_ptr<TreeNodeExp> Exp;
};

// if-else语句
struct TreeNodeSelectStmt : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
    // 判断条件
    std::shared_ptr<TreeNodeCond> Cond;
    // if语句
    std::shared_ptr<TreeNodeStmt> ifStmt;
    // else语句
    std::shared_ptr<TreeNodeStmt> elseStmt;
};

// while循环语句
struct TreeNodeIterationStmt : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
    // while条件列表
    std::shared_ptr<TreeNodeCond> Cond;
    // while循环的语句块
    std::shared_ptr<TreeNodeStmt> Stmt;
};

// return语句
struct TreeNodeReturnStmt : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::shared_ptr<TreeNodeExp> Exp;
};

//表达式
struct TreeNodeExp : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::shared_ptr<TreeNodeAddExp> AddExp;
};

//条件表达式
struct TreeNodeCond : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::shared_ptr<TreeNodeLOrExp> LOrExp;
};

//左值表达式
struct TreeNodeLVal : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::vector<std::shared_ptr<TreeNodeExp>> ArrayExpList;
    std::string id;
};

struct TreeNodeArrayExpList
{
    std::vector<std::shared_ptr<TreeNodeExp>> list;
};

//基本表达式
struct TreeNodePrimaryExp : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
    // 表达式
    std::shared_ptr<TreeNodeExp> Exp;
    // 左值表达式
    std::shared_ptr<TreeNodeLVal> LVal;
    // 基本数字
    std::shared_ptr<TreeNodeNumber> Number;
};

//数值
struct TreeNodeNumber : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    int32_t num;
};

//一元表达式
struct TreeNodeUnaryExp : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;
    // 运算符
    unaryop op;
    // 基本表达式运算
    std::shared_ptr<TreeNodePrimaryExp> PrimaryExp;
    // 函数调用
    std::shared_ptr<TreeNodeCallee> Callee;
    // dan
    std::shared_ptr<TreeNodeUnaryExp> UnaryExp;
};

//函数调用
struct TreeNodeCallee : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::string id;
    std::vector<std::shared_ptr<TreeNodeExp>> ExpList;
};

//表达式列表
struct TreeNodeExpList
{
    std::vector<std::shared_ptr<TreeNodeExp>> list;
};

//乘除模表达式
struct TreeNodeMulExp : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    mulop op;
    std::shared_ptr<TreeNodeMulExp> MulExp;
    std::shared_ptr<TreeNodeUnaryExp> UnaryExp;
};

//加减表达式
struct TreeNodeAddExp : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    addop op;
    std::shared_ptr<TreeNodeAddExp> AddExp;
    std::shared_ptr<TreeNodeMulExp> MulExp;
};

//关系表达式
struct TreeNodeRelExp : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    relop op;
    std::shared_ptr<TreeNodeRelExp> RelExp;
    std::shared_ptr<TreeNodeAddExp> AddExp;
};

//相等性表达式
struct TreeNodeEqExp : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    relop op;
    std::shared_ptr<TreeNodeEqExp> EqExp;
    std::shared_ptr<TreeNodeRelExp> RelExp;
};

//逻辑与表达式
struct TreeNodeLAndExp : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    logop op;
    std::shared_ptr<TreeNodeLAndExp> LAndExp;
    std::shared_ptr<TreeNodeEqExp> EqExp;
};

// 逻辑或表达式
struct TreeNodeLOrExp : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    logop op;
    std::shared_ptr<TreeNodeLOrExp> LOrExp;
    std::shared_ptr<TreeNodeLAndExp> LAndExp;
};

// 常量表达式
struct TreeNodeConstExp : TreeNodeOrgin
{
    virtual void accept(Tree_visitor &) final;

    std::shared_ptr<TreeNodeAddExp> AddExp;
};

class Tree_visitor
{
  public:
    virtual void visit(TreeNodeConstExp &) = 0;
    virtual void visit(TreeNodeCompUnit &) = 0;
    virtual void visit(TreeNodeConstDecl &) = 0;
    virtual void visit(TreeNodeConstDef &) = 0;
    virtual void visit(TreeNodeConstInitVal &) = 0;
    virtual void visit(TreeNodeVarDecl &) = 0;
    virtual void visit(TreeNodeVarDef &) = 0;
    virtual void visit(TreeNodeInitVal &) = 0;
    virtual void visit(TreeNodeFuncDef &) = 0;
    virtual void visit(TreeNodeFuncFParam &) = 0;
    virtual void visit(TreeNodeBlock &) = 0;
    virtual void visit(TreeNodeBreakStmt &) = 0;
    virtual void visit(TreeNodeContinueStmt &) = 0;
    virtual void visit(TreeNodeAssignStmt &) = 0;
    virtual void visit(TreeNodeSelectStmt &) = 0;
    virtual void visit(TreeNodeIterationStmt &) = 0;
    virtual void visit(TreeNodeReturnStmt &) = 0;
    virtual void visit(TreeNodeLVal &) = 0;
    virtual void visit(TreeNodePrimaryExp &) = 0;
    virtual void visit(TreeNodeNumber &) = 0;
    virtual void visit(TreeNodeUnaryExp &) = 0;
    virtual void visit(TreeNodeCallee &) = 0;
    virtual void visit(TreeNodeMulExp &) = 0;
    virtual void visit(TreeNodeAddExp &) = 0;
    virtual void visit(TreeNodeRelExp &) = 0;
    virtual void visit(TreeNodeEqExp &) = 0;
    virtual void visit(TreeNodeLAndExp &) = 0;
    virtual void visit(TreeNodeLOrExp &) = 0;
};
class syntax_tree_printer : public Tree_visitor
{
  public:
    syntax_tree_printer();
    void visit(TreeNodeCompUnit &) final;
    void visit(TreeNodeConstDecl &) final;
    void visit(TreeNodeConstDef &) final;
    void visit(TreeNodeConstInitVal &) final;
    void visit(TreeNodeVarDecl &) final;
    void visit(TreeNodeVarDef &) final;
    void visit(TreeNodeInitVal &) final;
    void visit(TreeNodeFuncDef &) final;
    void visit(TreeNodeFuncFParam &) final;
    void visit(TreeNodeBlock &) final;
    void visit(TreeNodeBreakStmt &) final;
    void visit(TreeNodeContinueStmt &) final;
    void visit(TreeNodeAssignStmt &) final;
    void visit(TreeNodeSelectStmt &) final;
    void visit(TreeNodeIterationStmt &) final;
    void visit(TreeNodeReturnStmt &) final;
    void visit(TreeNodeLVal &) final;
    void visit(TreeNodePrimaryExp &) final;
    void visit(TreeNodeNumber &) final;
    void visit(TreeNodeUnaryExp &) final;
    void visit(TreeNodeCallee &) final;
    void visit(TreeNodeMulExp &) final;
    void visit(TreeNodeAddExp &) final;
    void visit(TreeNodeRelExp &) final;
    void visit(TreeNodeEqExp &) final;
    void visit(TreeNodeLAndExp &) final;
    void visit(TreeNodeLOrExp &) final;
    void visit(TreeNodeConstExp &) final;
    void add_depth()
    {
        depth += 1;
    }
    void remove_depth()
    {
        depth -= 1;
    }

  private:
    //当前节点深度
    int depth = 0;
};
#endif // _SYNTAX_TREE_HPP_