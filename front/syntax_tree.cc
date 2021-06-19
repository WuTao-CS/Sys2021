#include "syntax_tree.hh"
#include <iostream>
#include <string>
// #include "llvm/IR/DerivedTypes.h"
// #include "llvm/IR/IRBuilder.h"
// #include "llvm/IR/LLVMContext.h"
// #include "llvm/IR/Module.h"
// #include "llvm/IR/Verifier.h"
// using namespace llvm;

#define _SYNTAX_TREE_NODE_ERROR_                                               \
  std::cout << "Abort due to node cast error." << std::endl;                   \
  std::abort();

void syntax_tree::run_visitor(syntax_tree_visitor &visitor) 
{
  root->accept(visitor);
}
//
void TreeNodeDeclDef::accept(syntax_tree_visitor &visitor) 
{
#ifdef MY_DEBUG
  std::cout << "TreeNodeDeclDef" << std::endl;
#endif
  if (this->ConstDecl) 
  {
    this->ConstDecl->accept(visitor);
    return;
  } 
  else if (this->FuncDef) 
  {
    this->FuncDef->accept(visitor);
    return;
  } 
  else if (this->VarDecl) 
  {
    this->VarDecl->accept(visitor);
    return;
  }
  _SYNTAX_TREE_NODE_ERROR_
}


void TreeNodeBlockItem::accept(syntax_tree_visitor &visitor) 
{
#ifdef MY_DEBUG
  std::cout << "TreeNodeBlockItem" << std::endl;
#endif
  if (this->ConstDecl) 
  {
    this->ConstDecl->accept(visitor);
    return;
  } 
  else if (this->VarDecl) 
  {
    this->VarDecl->accept(visitor);
    return;
  } 
  else if (this->Stmt) 
  {
    this->Stmt->accept(visitor);
    return;
  }
  _SYNTAX_TREE_NODE_ERROR_
}

void TreeNodeStmt::accept(syntax_tree_visitor &visitor) 
{
#ifdef MY_DEBUG
  std::cout << "TreeNodeStmt" << std::endl;
#endif
  if (this->AssignStmt) 
  {
    this->AssignStmt->accept(visitor);
    return;
  } 
  else if (this->Block) 
  {
    this->Block->accept(visitor);
    return;
  } 
  else if (this->BreakStmt) 
  {
    this->BreakStmt->accept(visitor);
    return;
  } 
  else if (this->ContinueStmt) 
  {
    this->ContinueStmt->accept(visitor);
    return;
  } 
  else if (this->Exp) 
  {
    this->Exp->accept(visitor);
    return;
  } 
  else if (this->IterationStmt) 
  {
    this->IterationStmt->accept(visitor);
    return;
  } 
  else if (this->ReturnStmt) 
  {
    this->ReturnStmt->accept(visitor);
    return;
  } 
  else if (this->SelectStmt) 
  {
    this->SelectStmt->accept(visitor);
    return;
  }
  _SYNTAX_TREE_NODE_ERROR_
}

void TreeNodeExp::accept(syntax_tree_visitor &visitor) 
{
#ifdef MY_DEBUG
  std::cout << "TreeNodeExp" << std::endl;
#endif
  this->AddExp->accept(visitor);
}
void TreeNodeCond::accept(syntax_tree_visitor &visitor) 
{
#ifdef MY_DEBUG
  std::cout << "TreeNodeCond" << std::endl;
#endif
  this->LOrExp->accept(visitor);
}

void TreeNodePrimaryExp::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}

void TreeNodeConstExp::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeCompUnit::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeConstDecl::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeConstDef::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeConstInitVal::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeVarDecl::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeVarDef::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeInitVal::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeFuncDef::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeFuncFParam::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeBlock::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void TreeNodeBreakStmt::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeContinueStmt::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeAssignStmt::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeSelectStmt::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeIterationStmt::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeReturnStmt::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeLVal::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void TreeNodeNumber::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeUnaryExp::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeCallee::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeMulExp::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeAddExp::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeRelExp::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeEqExp::accept(syntax_tree_visitor &visitor) { visitor.visit(*this); }
void TreeNodeLAndExp::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}
void TreeNodeLOrExp::accept(syntax_tree_visitor &visitor) 
{
  visitor.visit(*this);
}

#define _DEBUG_PRINT_N_(N)                                                     \
  { std::cout <<std::string(N, '-'); }

#define _TYPE_(t) (((t) == TYPE_INT) ? "int" : "void")


syntax_tree_printer::syntax_tree_printer(){
}

void syntax_tree_printer::visit(TreeNodeConstExp &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "const_exp" << std::endl;
  add_depth();
  node.AddExp->accept(*this);
  remove_depth();
}

void syntax_tree_printer::visit(TreeNodeCompUnit &node) 
{
  _DEBUG_PRINT_N_(depth);
  std::cout << "CompUnit" << std::endl;
  add_depth();
  for (auto decl : node.DeclDefList) {
    decl->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeConstDecl &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "ConstDecl" << _TYPE_(node.type) << std::endl;
  add_depth();
  for (auto p : node.ConstDefList) {
    p->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeConstDef &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "ConstDef:" << '\t' << node.id << '\n';
  add_depth();
  for (auto p : node.ArrayConstExpList) {
    p->accept(*this);
  }
  if (node.ConstInitVal) {
    node.ConstInitVal->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeConstInitVal &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "ConstInitVal" << std::endl;
  add_depth();
  if (node.ConstExp) {
    node.ConstExp->accept(*this);
  } else {
    for (auto p : node.ConstInitValList) {
      p->accept(*this);
    }
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeVarDecl &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "VarDecl:\t" << _TYPE_(node.type) << std::endl;
  add_depth();
  for (auto p : node.VarDefList) {
    p->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeVarDef &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "VarDef:\t" << node.id << std::endl;
  add_depth();
  for (auto p : node.ArrayConstExpList) {
    p->accept(*this);
  }
  if (node.InitVal) {
    node.InitVal->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeInitVal &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "ConstInitVal" << std::endl;
  add_depth();
  if (node.Exp) {
    node.Exp->accept(*this);
  } else {
    for (auto p : node.InitValList) {
      p->accept(*this);
    }
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeFuncDef &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "FuncDef:\t" << _TYPE_(node.type) << node.id << std::endl;
  add_depth();
  for (auto p : node.FuncFParamList) {
    p->accept(*this);
  }
  if (node.Block) {
    node.Block->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeFuncFParam &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "FuncFParam" << node.type << node.id
            << "\tisarray:" << node.isarray << '\n';
  add_depth();
  for (auto p : node.ParamArrayExpList) {
    p->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeBlock &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "Block" << std::endl;
  add_depth();
  for (auto p : node.BlockItemList) {
    p->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeBreakStmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "break;" << std::endl;
}
void syntax_tree_printer::visit(TreeNodeContinueStmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "continue;\n";
}
void syntax_tree_printer::visit(TreeNodeAssignStmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "AssignStmt" << std::endl;
  add_depth();
  node.LVal->accept(*this);
  node.Exp->accept(*this);
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeSelectStmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "SelectStmt" << std::endl;
  add_depth();
  node.Cond->accept(*this);
  node.ifStmt->accept(*this);
  if (node.elseStmt) {
    node.elseStmt->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeIterationStmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "WhileLoop" << std::endl;
  add_depth();
  if (node.Cond) {
    node.Cond->accept(*this);
  }
  node.Stmt->accept(*this);
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeReturnStmt &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "Return" << std::endl;
  add_depth();
  if (node.Exp) {
    node.Exp->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeLVal &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "Lval:\t" << node.id << std::endl;
  add_depth();
  for (auto p : node.ArrayExpList) {
    p->accept(*this);
  }
  remove_depth();
}

void syntax_tree_printer::visit(TreeNodePrimaryExp &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "PrimaryExp:\t" << std::endl;
  add_depth();
  if (node.Exp) {
    node.Exp->accept(*this);
  } else if (node.LVal) {
    node.LVal->accept(*this);
  } else if (node.Number) {
    node.Number->accept(*this);
  }
  remove_depth();
}

void syntax_tree_printer::visit(TreeNodeNumber &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "Number:\t" << node.num << '\n';
}
void syntax_tree_printer::visit(TreeNodeUnaryExp &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "UnaryExp: " << node.op << std::endl;
  add_depth();
  if (node.PrimaryExp) {
    node.PrimaryExp->accept(*this);
  } else if (node.Callee) {
    node.Callee->accept(*this);
  } else {
    node.UnaryExp->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeCallee &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "Call:\t" << node.id << std::endl;
  add_depth();
  for (auto p : node.ExpList) {
    p->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeMulExp &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "MulExp:\t" << node.op << std::endl;
  add_depth();
  if (node.MulExp) {
    node.MulExp->accept(*this);
  }
  if (node.UnaryExp) {
    node.UnaryExp->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeAddExp &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "AddExp:\t" << node.op << std::endl;
  add_depth();
  if (node.AddExp) {
    node.AddExp->accept(*this);
  }
  if (node.MulExp) {
    node.MulExp->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeRelExp &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "RelExp:\t" << node.op << std::endl;
  add_depth();
  if (node.RelExp) {
    node.RelExp->accept(*this);
  }
  if (node.AddExp) {
    node.AddExp->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeEqExp &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "EqExp:\t" << node.op << std::endl;
  add_depth();
  if (node.EqExp) {
    node.EqExp->accept(*this);
  }
  if (node.RelExp) {
    node.RelExp->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeLAndExp &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "LogicalAndExp:\t" << node.op << std::endl;
  add_depth();
  if (node.LAndExp) {
    node.LAndExp->accept(*this);
  }
  if (node.EqExp) {
    node.EqExp->accept(*this);
  }
  remove_depth();
}
void syntax_tree_printer::visit(TreeNodeLOrExp &node) {
  _DEBUG_PRINT_N_(depth);
  std::cout << "LogicalOrExp:\t" << node.op << std::endl;
  add_depth();
  if (node.LOrExp) {
    node.LOrExp->accept(*this);
  }
  if (node.LAndExp) {
    node.LAndExp->accept(*this);
  }
  remove_depth();
}