%{
#include <iostream>
#include <memory>
#include <sysyFlexLexer.hh>
using namespace std;

#undef yylex
#define yylex scanner->yylex

std::shared_ptr<SyntaxCompUnit> rootFromParser;
%}

%language "c++"
%defines "./build/sysy_parser.hh"
%output "./build/sysy_parser.cc"

%locations
%define parser_class_name {sysy_parser}
%define api.value.type variant
%parse-param {sysyFlexLexer* scanner}
%define parse.trace

%require "3.2"

%code requires{
#define YYLTYPE
#include <syntax_tree.hh>
#include <string>
class sysy_driver;
namespace yy {
    class sysyFlexLexer;
}
}

%token TOK_END
%token TOK_ERROR
%token TOK_ADD
%token TOK_SUB
%token TOK_MUL
%token TOK_DIV
%token TOK_MOD
%token TOK_LT
%token TOK_LTE
%token TOK_GT
%token TOK_GTE
%token TOK_EQ
%token TOK_NEQ
%token TOK_ASSIGN
%token TOK_SEMICOLIN
%token TOK_COMMA
%token TOK_LPARENTHESE
%token TOK_RPARENTHESE
%token TOK_LBRACKET
%token TOK_RBRACKET
%token TOK_LBRACE
%token TOK_RBRACE
%token TOK_ELSE
%token TOK_IF
%token TOK_INT
%token TOK_VOID
%token TOK_RETURN
%token TOK_WHILE
%token <std::string> TOK_IDENTIFIER
%token <int> TOK_NUMBER
//not implemented in .l
%token TOK_ARRAY
%token TOK_LETTER
//end not
%token TOK_EOL

%token TOK_COMMENT
%token TOK_BLANK
%token TOK_CONST
%token TOK_BREAK
%token TOK_CONTINUE
%token TOK_NOT
%token TOK_AND
%token TOK_OR

//%type <SyntaxTreeNode>
%type <std::shared_ptr<SyntaxCompUnit>>			CompUnit;
%type <std::shared_ptr<SyntaxDeclDef>> 			DeclDef;
%type <std::shared_ptr<SyntaxConstDecl>>		ConstDecl;
%type <std::shared_ptr<SyntaxConstDefList>>		ConstDefList;
%type <std::shared_ptr<SyntaxConstDef>>			ConstDef;
%type <std::shared_ptr<SyntaxArrayConstExpList>>	ConstIndexList;

%type <std::shared_ptr<SyntaxConstInitVal>>		ConstInitVal;
%type <std::shared_ptr<SyntaxConstInitValList>>  	ConstInitValList;
%type <std::shared_ptr<SyntaxVarDecl>>			VarDecl;
%type <std::shared_ptr<SyntaxVarDefList>>		VarDefList;
%type <std::shared_ptr<SyntaxVarDef>>			VarDef;
%type <std::shared_ptr<SyntaxInitVal>>         		InitVal;
%type <std::shared_ptr<SyntaxInitValList>>        	InitValList;
%type <std::shared_ptr<SyntaxFuncDef>>         		FuncDef;
%type <std::shared_ptr<SyntaxFuncFParamList>>         	FuncFParams;
%type <std::shared_ptr<SyntaxFuncFParam>>		FuncFParam;
%type <std::shared_ptr<SyntaxParamArrayExpList>>	IndexList;
%type <std::shared_ptr<SyntaxBlock>>			Block;
%type <std::shared_ptr<SyntaxBlockItemList>>         	BlockItemList;
%type <std::shared_ptr<SyntaxBlockItem>>         	BlockItem;
%type <std::shared_ptr<SyntaxStmt>>         		Stmt;
//%type <std::shared_ptr<SyntaxStmt>>         		Stmt1;
%type <std::shared_ptr<SyntaxAssignStmt>>		AssignStmt;
%type <std::shared_ptr<SyntaxSelectStmt>>		SelectStmt;
%type <std::shared_ptr<SyntaxBreakStmt>>         	BreakStmt;
%type <std::shared_ptr<SyntaxContinueStmt>>	        ContinueStmt;
%type <std::shared_ptr<SyntaxIterationStmt>>		IterationStmt;
%type <std::shared_ptr<SyntaxReturnStmt>>         	ReturnStmt;
%type <std::shared_ptr<SyntaxExp>>			Exp;
%type <std::shared_ptr<SyntaxCond>>         		Cond;
%type <std::shared_ptr<SyntaxLVal>>         		LVal;
%type <std::shared_ptr<SyntaxExpList>>         		FuncRParams;
%type <std::shared_ptr<SyntaxPrimaryExp>>       	PrimaryExp;
%type <std::shared_ptr<SyntaxNumber>>         		Number;
%type <std::shared_ptr<SyntaxUnaryExp>>         	UnaryExp;
%type <std::shared_ptr<SyntaxCallee>>			Callee;
%type <std::shared_ptr<SyntaxMulExp>>			MulExp;
%type <std::shared_ptr<SyntaxAddExp>>         		AddExp;
%type <std::shared_ptr<SyntaxRelExp>>         		RelExp;
%type <std::shared_ptr<SyntaxEqExp>>         		EqExp;
%type <std::shared_ptr<SyntaxLAndExp>>         		LAndExp;
%type <std::shared_ptr<SyntaxLOrExp>>         		LOrExp;
//%type <SyntaxArrayConstExpList>
//%type <SyntaxParamArrayExpList>
//%type <SyntaxExpList>                   FuncRParams;
%type <std::shared_ptr<SyntaxConstExp>>                 ConstExp;
%type <type_specifier>					BType;
%type <type_specifier>					FuncType;
%type <unaryop>						UnaryOp;

%start CompUnit

%%

CompUnit : DeclDef {
	$$=std::make_shared<SyntaxCompUnit>();
	$$->DeclDefList.emplace_back(std::move($1));
	rootFromParser=$$;
    }
    | CompUnit DeclDef {
	$1->DeclDefList.emplace_back(std::move($2));
	$$=std::move($1);
	rootFromParser=$$;
    }
    | CompUnit TOK_END {
    	$$=std::move($1);
    	rootFromParser=$$;
    	return 0;
    }
    ;

DeclDef : ConstDecl{
	$$=std::make_shared<SyntaxDeclDef>();
	$$->ConstDecl=std::move($1);
    }
    | VarDecl{
	$$=std::make_shared<SyntaxDeclDef>();
        $$->VarDecl=std::move($1);
    }
    | FuncDef{
    	$$=std::make_shared<SyntaxDeclDef>();
	$$->FuncDef=std::move($1);
    }
    ;

ConstDefList : ConstDef  {
	$$=std::make_shared<SyntaxConstDefList>();
	$$->list.emplace_back(std::move($1));
    }
    | ConstDefList TOK_COMMA ConstDef {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
    }
    ;

ConstDecl : TOK_CONST BType ConstDefList TOK_SEMICOLIN {
	$$=std::make_shared<SyntaxConstDecl>();
	// Assume that the memory of 'ConstDefList' won't be released
	// Here we copy pointers
	$$->ConstDefList=$3->list;
    }
    ;

ConstIndexList : TOK_LBRACKET ConstExp TOK_RBRACKET {
	$$=std::make_shared<SyntaxArrayConstExpList>();
	$$->list.emplace_back(std::move($2));
    }
    | ConstIndexList TOK_LBRACKET ConstExp TOK_RBRACKET {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
    }
    ;

BType : TOK_INT {
	$$=TYPE_INT;
    }
    ;

ConstDef : TOK_IDENTIFIER TOK_ASSIGN ConstInitVal {
    	$$=std::make_shared<SyntaxConstDef>();
    	$$->ConstInitVal=std::move($3);
    	$$->id=$1;
    }
    | TOK_IDENTIFIER ConstIndexList TOK_ASSIGN ConstInitVal {
    	$$=std::make_shared<SyntaxConstDef>();
	$$->ConstInitVal=std::move($4);
	$$->id=$1;
	$$->ArrayConstExpList=$2->list;
    }
    ;

ConstInitValList : ConstInitVal {
	$$=std::make_shared<SyntaxConstInitValList>();
	$$->list.emplace_back(std::move($1));
    }
    | ConstInitValList TOK_COMMA ConstInitVal {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
    }
    ;

ConstInitVal : ConstExp {
	$$=std::make_shared<SyntaxConstInitVal>();
	$$->ConstExp=std::move($1);
    }
    | TOK_LBRACE  TOK_RBRACE {

    }
    | TOK_LBRACE ConstInitValList TOK_RBRACE {
    	$$=std::make_shared<SyntaxConstInitVal>();
        $$->ConstInitValList=$2->list;
    }
    ;

VarDecl : BType VarDefList TOK_SEMICOLIN {
	$$=std::make_shared<SyntaxVarDecl>();
	$$->type=$1;
	$$->VarDefList=$2->list;
//	std::cout<<"VarDecl"<<std::endl;
    }
    ;

VarDefList : VarDef {
	$$=std::make_shared<SyntaxVarDefList>();
	$$->list.emplace_back(std::move($1));
    }
    | VarDefList TOK_COMMA VarDef {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
    }
    ;

VarDef : TOK_IDENTIFIER  {
	$$=std::make_shared<SyntaxVarDef>();
	$$->id=$1;
    }
    | TOK_IDENTIFIER TOK_ASSIGN InitVal {
    	$$=std::make_shared<SyntaxVarDef>();
    	$$->id=$1;
    	$$->InitVal=std::move($3);
    }
    | TOK_IDENTIFIER ConstIndexList  {
    	$$=std::make_shared<SyntaxVarDef>();
	$$->id=$1;
	$$->ArrayConstExpList=$2->list;
    }
    | TOK_IDENTIFIER ConstIndexList TOK_ASSIGN InitVal {
    	$$=std::make_shared<SyntaxVarDef>();
	$$->id=$1;
	$$->ArrayConstExpList=$2->list;
	$$->InitVal=std::move($4);
    }
    ;

InitValList : InitVal {
	$$=std::make_shared<SyntaxInitValList>();
	$$->list.emplace_back(std::move($1));
    }
    | InitValList TOK_COMMA InitVal {
	$1->list.emplace_back(std::move($3));
	$$=std::move($1);
    }
    ;

InitVal : Exp {
	$$=std::make_shared<SyntaxInitVal>();
	$$->Exp=std::move($1);
    }
    | TOK_LBRACE  TOK_RBRACE {

    }
    | TOK_LBRACE InitValList TOK_RBRACE {
    	$$=std::make_shared<SyntaxInitVal>();
	$$->InitValList=$2->list;
    }
    ;

FuncDef : FuncType TOK_IDENTIFIER TOK_LPARENTHESE TOK_RPARENTHESE Block {
	$$=std::make_shared<SyntaxFuncDef>();
	$$->type=$1;
	$$->id=$2;
	$$->Block=std::move($5);
    }
    | FuncType TOK_IDENTIFIER TOK_LPARENTHESE FuncFParams TOK_RPARENTHESE Block {
	$$=std::make_shared<SyntaxFuncDef>();
	$$->type=$1;
	$$->id=$2;
	$$->Block=std::move($6);
	$$->FuncFParamList=$4->list;
    }
    | BType TOK_IDENTIFIER TOK_LPARENTHESE  TOK_RPARENTHESE Block {
    	$$=std::make_shared<SyntaxFuncDef>();
	$$->type=$1;
	$$->id=$2;
	$$->Block=std::move($5);
    }
    | BType TOK_IDENTIFIER TOK_LPARENTHESE FuncFParams TOK_RPARENTHESE Block {
    	$$=std::make_shared<SyntaxFuncDef>();
    	$$->type=$1;
    	$$->id=$2;
    	$$->Block=std::move($6);
    	$$->FuncFParamList=$4->list;
    }
    ;

FuncType : TOK_VOID  {
	$$=TYPE_VOID;
    }
    ;

FuncFParams :   FuncFParam  {
	$$=std::make_shared<SyntaxFuncFParamList>();
	$$->list.emplace_back($1);
    }
    | FuncFParams TOK_COMMA FuncFParam {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
    }
    ;


IndexList : TOK_LBRACKET Exp TOK_RBRACKET {
	$$=std::make_shared<SyntaxParamArrayExpList>();
	$$->list.emplace_back(std::move($2));
    }
    | IndexList TOK_LBRACKET Exp TOK_RBRACKET {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
    }
    ;

FuncFParam : BType TOK_IDENTIFIER  {
	$$=std::make_shared<SyntaxFuncFParam>();
	$$->type=$1;
	$$->id=$2;
    }
    | BType TOK_IDENTIFIER TOK_LBRACKET TOK_RBRACKET {
    	$$=std::make_shared<SyntaxFuncFParam>();
	$$->type=$1;
	$$->id=$2;
	$$->isarray=true;
    }
    | BType TOK_IDENTIFIER TOK_LBRACKET TOK_RBRACKET IndexList  {
    	$$=std::make_shared<SyntaxFuncFParam>();
	$$->type=$1;
	$$->id=$2;
	$$->isarray=true;
	$$->ParamArrayExpList=$5->list;
    }
    | BType TOK_IDENTIFIER TOK_LBRACKET Exp TOK_RBRACKET IndexList  {
	$$=std::make_shared<SyntaxFuncFParam>();
    	$$->type=$1;
    	$$->id=$2;
    	$$->isarray=true;
    	$$->ParamArrayExpList=$6->list;
    }
    ;

Block : TOK_LBRACE TOK_RBRACE {

    }
    | TOK_LBRACE BlockItemList TOK_RBRACE {
    	$$=std::make_shared<SyntaxBlock>();
    	$$->BlockItemList=$2->list;
//    	std::cout<<"Block"<<std::endl;
    }
    ;

BlockItemList : BlockItem {
	$$=std::make_shared<SyntaxBlockItemList>();
	$$->list.emplace_back(std::move($1));
    }
    | BlockItemList BlockItem{
    	$1->list.emplace_back(std::move($2));
    	$$=std::move($1);
    }
    ;

BlockItem: ConstDecl {
	$$=std::make_shared<SyntaxBlockItem>();
	$$->ConstDecl=std::move($1);
    }
    |
    VarDecl {
    	$$=std::make_shared<SyntaxBlockItem>();
	$$->VarDecl=std::move($1);
    }
    | Stmt {
    	$$=std::make_shared<SyntaxBlockItem>();
	$$->Stmt=std::move($1);
    }
    ;

/*
 * elimimate if-else grammer ambiguous
 * > [Dangling_else](https://en.wikipedia.org/wiki/Dangling_else)
 */
 Stmt : BreakStmt TOK_SEMICOLIN  {
 	$$=std::make_shared<SyntaxStmt>();
 	$$->BreakStmt=std::move($1);
     }
     | ContinueStmt TOK_SEMICOLIN {
     	$$=std::make_shared<SyntaxStmt>();
     	$$->ContinueStmt=std::move($1);
     }
     | AssignStmt {
     	$$=std::make_shared<SyntaxStmt>();
     	$$->AssignStmt=std::move($1);
     }
     | Exp TOK_SEMICOLIN {
     	$$=std::make_shared<SyntaxStmt>();
	$$->Exp=std::move($1);
     }
     | TOK_SEMICOLIN {
     }
     | Block {
     	$$=std::make_shared<SyntaxStmt>();
	$$->Block=std::move($1);
     }
     | SelectStmt {
     	$$=std::make_shared<SyntaxStmt>();
	$$->SelectStmt=std::move($1);
     }
     | IterationStmt {
     	$$=std::make_shared<SyntaxStmt>();
	$$->IterationStmt=std::move($1);
     }
     | ReturnStmt {
     	$$=std::make_shared<SyntaxStmt>();
	$$->ReturnStmt=std::move($1);
     }
     ;

BreakStmt : TOK_BREAK {
	$$=std::make_shared<SyntaxBreakStmt>();
    }
    ;
ContinueStmt : TOK_CONTINUE {
	$$=std::make_shared<SyntaxContinueStmt>();
    }
    ;
AssignStmt : LVal TOK_ASSIGN Exp TOK_SEMICOLIN{
	$$=std::make_shared<SyntaxAssignStmt>();
	$$->LVal=std::move($1);
    }
    ;

SelectStmt : TOK_IF TOK_LPARENTHESE Cond TOK_RPARENTHESE Stmt {
	$$=std::make_shared<SyntaxSelectStmt>();
	$$->Cond=std::move($3);
	$$->ifStmt=std::move($5);
    }
    | TOK_IF TOK_LPARENTHESE Cond TOK_RPARENTHESE Stmt TOK_ELSE Stmt {
    	$$=std::make_shared<SyntaxSelectStmt>();
    	$$->Cond=std::move($3);
    	$$->ifStmt=std::move($5);
    	$$->elseStmt=std::move($7);
    }
//    | TOK_IF TOK_LPARENTHESE Cond TOK_RPARENTHESE Stmt1 TOK_ELSE Stmt {
//	$$=std::make_shared<SyntaxSelectStmt>();
//	$$->Cond=std::move($3);
//	$$->ifStmt=std::move($5);
//	$$->elseStmt=std::move($7);
//    }
    ;

//Stmt1 : TOK_IF TOK_LPARENTHESE Cond TOK_RPARENTHESE Stmt1 TOK_ELSE Stmt1 {
//	$$=std::make_shared<SyntaxStmt>();
//	$$->SelectStmt=std::make_shared<SyntaxSelectStmt>();
//	$$->SelectStmt->Cond=std::move($3);
//	$$->SelectStmt->ifStmt=std::move($5);
//	$$->SelectStmt->elseStmt=std::move($7);
//    }
//    ;

IterationStmt : TOK_WHILE TOK_LPARENTHESE Cond TOK_RPARENTHESE Stmt {
	$$=std::make_shared<SyntaxIterationStmt>();
	$$->Cond=std::move($3);
	$$->Stmt=std::move($5);
    }
    ;
ReturnStmt : TOK_RETURN TOK_SEMICOLIN {
	$$=std::make_shared<SyntaxReturnStmt>();
    }
    | TOK_RETURN Exp TOK_SEMICOLIN {
	$$=std::make_shared<SyntaxReturnStmt>();
	$$->Exp=std::move($2);
    }
    ;
//Stmt : OpenStmt { }
//    | CloseStmt { }
//    ;
//
//OpenStmt : TOK_IF TOK_LPARENTHESE Cond TOK_RPARENTHESE SimpleStmt {}
//    | TOK_IF TOK_LPARENTHESE Cond TOK_RPARENTHESE OpenStmt {}
//    | TOK_IF TOK_LPARENTHESE Cond TOK_RPARENTHESE CloseStmt TOK_ELSE OpenStmt {}
//    | TOK_WHILE TOK_LPARENTHESE Cond TOK_RPARENTHESE OpenStmt {}
//    ;
//
//CloseStmt : SimpleStmt { }
//    | TOK_IF TOK_LPARENTHESE Cond TOK_RPARENTHESE CloseStmt TOK_ELSE CloseStmt {}
//    | TOK_WHILE TOK_LPARENTHESE Cond TOK_RPARENTHESE CloseStmt  {}
//    ;

//SimpleStmt: AssignStmt {}
//    | Exp TOK_SEMICOLIN { }
//    | TOK_SEMICOLIN {}
//    | Block {}
//    | BreakStmt TOK_SEMICOLIN  {}
//    | ContinueStmt TOK_SEMICOLIN {}
//    | ReturnStmt {}
//    ;

Exp : AddExp {
	$$=std::make_shared<SyntaxExp>();
	$$->AddExp=std::move($1);
    }
    ;

Cond : LOrExp {
	$$=std::make_shared<SyntaxCond>();
	$$->LOrExp=std::move($1);
    }
    ;

LVal : TOK_IDENTIFIER {
	$$=std::make_shared<SyntaxLVal>();
	$$->id=$1;
    }
    | TOK_IDENTIFIER IndexList {
    	$$=std::make_shared<SyntaxLVal>();
    	$$->id=$1;
    	$$->ArrayExpList=$2->list;
    }
    ;

PrimaryExp : TOK_LPARENTHESE Exp TOK_RPARENTHESE {
	$$=std::make_shared<SyntaxPrimaryExp>();
	$$->Exp=std::move($2);
    }
    | LVal {
    	$$=std::make_shared<SyntaxPrimaryExp>();
	$$->LVal=std::move($1);
    }
    | Number {
    	$$=std::make_shared<SyntaxPrimaryExp>();
	$$->Number=std::move($1);
    }
    ;

Number : TOK_NUMBER {
	$$=std::make_shared<SyntaxNumber>();
	$$->num=$1;
    }
    ;

//
UnaryExp : PrimaryExp {
	$$=std::make_shared<SyntaxUnaryExp>();
	$$->PrimaryExp=std::move($1);
    }
    | Callee {
        $$=std::make_shared<SyntaxUnaryExp>();
	$$->Callee=std::move($1);
    }
    | UnaryOp UnaryExp {
        $$=std::make_shared<SyntaxUnaryExp>();
	$$->UnaryExp=std::move($2);
	$$->op=$1;
    }
    ;

Callee : TOK_IDENTIFIER TOK_LPARENTHESE TOK_RPARENTHESE {
	$$=std::make_shared<SyntaxCallee>();
	$$->id=$1;
    }
    | TOK_IDENTIFIER TOK_LPARENTHESE FuncRParams TOK_RPARENTHESE {
	$$=std::make_shared<SyntaxCallee>();
	$$->id=$1;
	$$->ExpList=$3->list;
    }
    ;

// operand passes to UnaryExp as a attribute
UnaryOp : TOK_ADD {
	$$=OP_POS;
    }
    | TOK_SUB {
    	$$=OP_NEG;
    }
    | TOK_NOT {
    	$$=OP_NOT;
    }
    ;

FuncRParams : Exp {
	$$=std::make_shared<SyntaxExpList>();
	$$->list.emplace_back(std::move($1));
    }
    | FuncRParams TOK_COMMA Exp {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
    }
    ;

MulExp : UnaryExp {
	$$=std::make_shared<SyntaxMulExp>();
	$$->UnaryExp=std::move($1);
    }
    | MulExp TOK_MUL UnaryExp {
	$$=std::make_shared<SyntaxMulExp>();
	$$->MulExp=std::move($1);
	$$->UnaryExp=std::move($3);
	$$->op=OP_MUL;
    }
    | MulExp TOK_DIV UnaryExp {
	$$=std::make_shared<SyntaxMulExp>();
	$$->MulExp=std::move($1);
	$$->UnaryExp=std::move($3);
	$$->op=OP_DIV;
    }
    | MulExp TOK_MOD UnaryExp {
	$$=std::make_shared<SyntaxMulExp>();
	$$->MulExp=std::move($1);
	$$->UnaryExp=std::move($3);
	$$->op=OP_MOD;
    }
    ;

AddExp : MulExp {
	$$=std::make_shared<SyntaxAddExp>();
	$$->MulExp=std::move($1);
    }
    | AddExp TOK_ADD MulExp {
   	$$=std::make_shared<SyntaxAddExp>();
   	$$->AddExp=std::move($1);
   	$$->MulExp=std::move($3);
   	$$->op=OP_PLUS;
    }
    | AddExp TOK_SUB MulExp {
	$$=std::make_shared<SyntaxAddExp>();
	$$->AddExp=std::move($1);
	$$->MulExp=std::move($3);
	$$->op=OP_MINUS;
    }
    ;

RelExp : AddExp	{
	$$=std::make_shared<SyntaxRelExp>();
	$$->AddExp=std::move($1);
    }
    | RelExp TOK_LT AddExp {
	$$=std::make_shared<SyntaxRelExp>();
	$$->RelExp=std::move($1);
	$$->AddExp=std::move($3);
	$$->op=OP_LT;
    }
    | RelExp TOK_GT AddExp {
  	$$=std::make_shared<SyntaxRelExp>();
  	$$->RelExp=std::move($1);
  	$$->AddExp=std::move($3);
  	$$->op=OP_GT;
    }
    | RelExp TOK_LTE AddExp {
    	$$=std::make_shared<SyntaxRelExp>();
    	$$->RelExp=std::move($1);
    	$$->AddExp=std::move($3);
    	$$->op=OP_LTE;
    }
    | RelExp TOK_GTE AddExp {
    	$$=std::make_shared<SyntaxRelExp>();
    	$$->RelExp=std::move($1);
    	$$->AddExp=std::move($3);
    	$$->op=OP_GTE;
    }
    ;

EqExp : RelExp {
	$$=std::make_shared<SyntaxEqExp>();
	$$->RelExp=std::move($1);
    }
    | EqExp TOK_EQ RelExp {
    	$$=std::make_shared<SyntaxEqExp>();
    	$$->EqExp=std::move($1);
    	$$->RelExp=std::move($3);
    	$$->op=OP_EQ;
    }
    | EqExp TOK_NEQ RelExp {
    	$$=std::make_shared<SyntaxEqExp>();
    	$$->EqExp=std::move($1);
    	$$->RelExp=std::move($3);
    	$$->op=OP_NEQ;
    }
    ;

LAndExp : EqExp {
	$$=std::make_shared<SyntaxLAndExp>();
	$$->EqExp=std::move($1);
    }
    | LAndExp TOK_AND EqExp {
    	$$=std::make_shared<SyntaxLAndExp>();
    	$$->LAndExp=std::move($1);
    	$$->EqExp=std::move($3);
    	$$->op=OP_AND;
    }
    ;

LOrExp : LAndExp {
	$$=std::make_shared<SyntaxLOrExp>();
	$$->LAndExp=std::move($1);
    }
    | LOrExp TOK_OR LAndExp {
	$$=std::make_shared<SyntaxLOrExp>();
	$$->LOrExp=std::move($1);
	$$->LAndExp=std::move($3);
	$$->op=OP_OR;
    }
    ;

ConstExp : AddExp {
	$$=std::make_shared<SyntaxConstExp>();
	$$->AddExp=std::move($1);
    }
    ;

//CompUnit : DeclDef
//    | CompUnit DeclDef
//    ;
//
//DeclDef : ConstDecl
//    | VarDecl
//    | FuncDef
//    ;
//
//ConstDefList : ConstDef
//    | ConstDefList TOK_COMMA ConstDef
//    ;
//
//ConstDecl : TOK_CONST BType ConstDefList TOK_SEMICOLIN
//    ;
//
//ConstIndexList : TOK_LBRACKET ConstExp TOK_RBRACKET
//    | ConstIndexList TOK_LBRACKET ConstExp TOK_RBRACKET
//    ;
//
//BType : TOK_NUMBER
//    ;
//
//ConstDef : TOK_IDENTIFIER TOK_ASSIGN ConstInitVal
//    | TOK_IDENTIFIER ConstIndexList TOK_ASSIGN ConstInitVal
//    ;
//
//ConstInitValList : ConstInitVal
//    | ConstInitValList TOK_COMMA ConstInitVal
//    ;
//
//ConstInitVal : ConstExp
//    | TOK_LBRACE  TOK_RBRACE
//    | TOK_LBRACE ConstInitValList TOK_RBRACE
//    ;
//
//VarDecl : BType VarDefList TOK_SEMICOLIN
//    ;
//
//VarDefList : VarDef
//    | VarDefList TOK_COMMA VarDef
//    ;
//
//VarDef : TOK_IDENTIFIER
//    | TOK_IDENTIFIER TOK_ASSIGN InitVal
//    | TOK_IDENTIFIER ConstIndexList
//    | TOK_IDENTIFIER ConstIndexList TOK_ASSIGN InitVal
//    ;
//
//InitValList : InitVal
//    | InitValList TOK_COMMA InitVal
//    ;
//
//InitVal : Exp
//    | TOK_LBRACE  TOK_RBRACE
//    | TOK_LBRACE InitValList TOK_RBRACE
//    ;
//
//FuncDef : FuncType TOK_IDENTIFIER TOK_LPARENTHESE TOK_RPARENTHESE Block
//    | FuncType TOK_IDENTIFIER TOK_LPARENTHESE FuncFParams TOK_RPARENTHESE Block
//    | BType TOK_IDENTIFIER TOK_LPARENTHESE  TOK_RPARENTHESE Block
//    | BType TOK_IDENTIFIER TOK_LPARENTHESE FuncFParams TOK_RPARENTHESE Block
//    ;
//
//FuncType : TOK_VOID
//    ;
//
//FuncFParams :   FuncFParam
//    | FuncFParams TOK_COMMA FuncFParam
//    ;
//
//
//IndexList : TOK_LBRACKET Exp TOK_RBRACKET
//    | IndexList TOK_LBRACKET Exp TOK_RBRACKET
//    ;
//
//FuncFParam : BType TOK_IDENTIFIER
//    | BType TOK_IDENTIFIER TOK_LBRACKET TOK_RBRACKET
//    | BType TOK_IDENTIFIER TOK_LBRACKET TOK_RBRACKET IndexList
//    | BType TOK_IDENTIFIER TOK_LBRACKET Exp TOK_RBRACKET IndexList
//    ;
//
//Block : TOK_LBRACE TOK_RBRACE
//    | TOK_LBRACE BlockItemList TOK_RBRACE
//    ;
//
//BlockItemList : BlockItem
//    | BlockItemList BlockItem
//    ;
//
//BlockItem: ConstDecl
//    | VarDecl
//    | Stmt
//    ;
//
// Stmt : BreakStmt TOK_SEMICOLIN
//     | ContinueStmt TOK_SEMICOLIN
//     | AssignStmt
//     | Exp TOK_SEMICOLIN
//     | TOK_SEMICOLIN
//     | Block
//     | SelectStmt
//     | IterationStmt
//     | ReturnStmt
//     ;
//
//BreakStmt : TOK_BREAK
//    ;
//ContinueStmt : TOK_CONTINUE
//    ;
//AssignStmt : LVal TOK_ASSIGN Exp TOK_SEMICOLIN
//    ;
//
//SelectStmt : TOK_IF TOK_LPARENTHESE Cond TOK_RPARENTHESE Stmt
//    | TOK_IF TOK_LPARENTHESE Cond TOK_RPARENTHESE Stmt TOK_ELSE Stmt
//
//IterationStmt : TOK_WHILE TOK_LPARENTHESE Cond TOK_RPARENTHESE Stmt
//    ;
//ReturnStmt : TOK_RETURN TOK_SEMICOLIN
//    | TOK_RETURN Exp TOK_SEMICOLIN
//    ;
//
//Exp : AddExp
//    ;
//
//Cond : LOrExp
//    ;
//
//LVal : TOK_IDENTIFIER
//    | TOK_IDENTIFIER IndexList
//    ;
//
//PrimaryExp : TOK_LPARENTHESE Exp TOK_RPARENTHESE
//    | LVal
//    | Number
//    ;
//
//Number : TOK_NUMBER
//    ;
//
////
//UnaryExp : PrimaryExp
//    | Callee
//    | UnaryOp UnaryExp
//    ;
//
//Callee : TOK_IDENTIFIER TOK_LPARENTHESE TOK_RPARENTHESE
//    | TOK_IDENTIFIER TOK_LPARENTHESE FuncRParams TOK_RPARENTHESE
//    ;
//
//// operand passes to UnaryExp as a attribute
//UnaryOp : TOK_ADD
//    | TOK_SUB
//    | TOK_NOT
//    ;
//
//FuncRParams : Exp
//    | FuncRParams TOK_COMMA Exp
//    ;
//
//MulExp : UnaryExp
//    | MulExp TOK_MUL UnaryExp
//    | MulExp TOK_DIV UnaryExp
//    | MulExp TOK_MOD UnaryExp
//    ;
//
//AddExp : MulExp
//    | AddExp TOK_ADD MulExp
//    | AddExp TOK_SUB MulExp
//    ;
//
//RelExp : AddExp
//    | RelExp TOK_LT AddExp
//    | RelExp TOK_GT AddExp
//    | RelExp TOK_LTE AddExp
//    | RelExp TOK_GTE AddExp
//    ;
//
//EqExp : RelExp
//    | EqExp TOK_EQ RelExp
//    | EqExp TOK_NEQ RelExp
//    ;
//
//LAndExp : EqExp
//    | LAndExp TOK_AND EqExp
//    ;
//
//LOrExp : LAndExp
//    | LOrExp TOK_OR LAndExp
//    ;
//
//ConstExp : AddExp
//    ;
%%
//void yy::sysy_parser::error (const std::string& m){
//	std::cerr << "Find error in parsering, " << m<< "\n";
//}
void yy::sysy_parser::error (const location_type& l, const std::string& m){
	std::cerr << l << "\n";
	std::cerr << "Find error in parsering, " << m<< "\n";
}
