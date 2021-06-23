%{
#include <iostream>
#include <memory>
#include <sysyFlexLexer.hh>
using namespace std;

#undef yylex
#define yylex scanner->yylex

std::shared_ptr<TreeNodeCompUnit> rootFromParser;
%}

%language "c++"
%defines "./front/sysy_parser.hh"
%output "./front/sysy_parser.cc"

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
namespace yy 
{
    class sysyFlexLexer;
}
}

%token T_END
%token T_ERROR
%token T_ADD
%token T_SUB
%token T_MUL
%token T_DIV
%token T_MOD
%token T_LT
%token T_LTE
%token T_GT
%token T_GTE
%token T_EQ
%token T_NEQ
%token T_ASSIGN
%token T_SEMICOLIN
%token T_COMMA
%token T_LPARENTHESE
%token T_RPARENTHESE
%token T_LBRACKET
%token T_RBRACKET
%token T_LBRACE
%token T_RBRACE
%token T_ELSE
%token T_IF
%token T_INT
%token T_VOID
%token T_RETURN
%token T_WHILE
%token <std::string> T_IDENTIFIER
%token <int> T_NUMBER
//not implemented in .l
%token T_ARRAY
%token T_LETTER
//end not
%token T_EOL

%token T_COMMENT
%token T_BLANK
%token T_CONST
%token T_BREAK
%token T_CONTINUE
%token T_NOT
%token T_AND
%token T_OR

//%type <TreeNodeOrgin>
//shared_ptr 智能指针类
%type <std::shared_ptr<TreeNodeCompUnit>>			CompUnit;//编译单元
%type <std::shared_ptr<TreeNodeDeclDef>> 			DeclDef;//声明		
%type <std::shared_ptr<TreeNodeConstDecl>>		ConstDecl;//常量声明（const）
%type <std::shared_ptr<TreeNodeConstDefList>>		ConstDefList;//常量链表定义
%type <std::shared_ptr<TreeNodeConstDef>>			ConstDef;//常数定义
%type <std::shared_ptr<TreeNodeArrayConstExpList>>	ArrayConstExpList;//常量数组定义
%type <std::shared_ptr<TreeNodeConstInitVal>>		ConstInitVal;//常量初值
%type <std::shared_ptr<TreeNodeConstInitValList>>  	ConstInitValList;//常量初始化链表定义
%type <std::shared_ptr<TreeNodeVarDecl>>			VarDecl;//变量声明
%type <std::shared_ptr<TreeNodeVarDefList>>		VarDefList;//变量链表定义
%type <std::shared_ptr<TreeNodeVarDef>>			VarDef;//变量定义
%type <std::shared_ptr<TreeNodeInitVal>>         		InitVal;//变量初值
%type <std::shared_ptr<TreeNodeInitValList>>        	InitValList;//变量数组初值
%type <std::shared_ptr<TreeNodeFuncDef>>         		FuncDef;//函数定义
%type <std::shared_ptr<TreeNodeFuncFParamList>>         	FuncFParams;//函数形参表
%type <std::shared_ptr<TreeNodeFuncFParam>>		FuncFParam;//函数形参
%type <std::shared_ptr<TreeNodeParamArrayExpList>>	ParamArrayExpList;//变量数组定义
%type <std::shared_ptr<TreeNodeBlock>>			Block;//语句块
%type <std::shared_ptr<TreeNodeBlockItemList>>         	BlockItemList;//语句块项
%type <std::shared_ptr<TreeNodeBlockItem>>         	BlockItem;//语句块项
%type <std::shared_ptr<TreeNodeStmt>>         		Stmt;//语句
%type <std::shared_ptr<TreeNodeArrayExpList>>			ArrayExpList
%type <std::shared_ptr<TreeNodeAssignStmt>>			AssignStmt;//赋值语句
%type <std::shared_ptr<TreeNodeSelectStmt>>			SelectStmt;//if_else
%type <std::shared_ptr<TreeNodeBreakStmt>>         	BreakStmt;//break
%type <std::shared_ptr<TreeNodeContinueStmt>>	        ContinueStmt;//continue
%type <std::shared_ptr<TreeNodeIterationStmt>>		IterationStmt;
%type <std::shared_ptr<TreeNodeReturnStmt>>         	ReturnStmt;//return 
%type <std::shared_ptr<TreeNodeExp>>					Exp;//表达式
%type <std::shared_ptr<TreeNodeCond>>         		Cond;//条件表达式
%type <std::shared_ptr<TreeNodeLVal>>         		LVal;//左值表达式
%type <std::shared_ptr<TreeNodePrimaryExp>>       	PrimaryExp;//基本表达式
%type <std::shared_ptr<TreeNodeNumber>>         		Number;//数值
%type <std::shared_ptr<TreeNodeUnaryExp>>         	UnaryExp; //一元表达式
%type <std::shared_ptr<TreeNodeExpList>>         		FuncRParams;//函数实参表
%type <std::shared_ptr<TreeNodeCallee>>			Callee;
%type <std::shared_ptr<TreeNodeMulExp>>			MulExp;//乘除模表达式
%type <std::shared_ptr<TreeNodeAddExp>>         		AddExp;//加减表达式
%type <std::shared_ptr<TreeNodeRelExp>>         		RelExp;//关系表达式
%type <std::shared_ptr<TreeNodeEqExp>>         		EqExp;//相等性表达式
%type <std::shared_ptr<TreeNodeLAndExp>>         		LAndExp;//逻辑与表达式
%type <std::shared_ptr<TreeNodeLOrExp>>         		LOrExp;//逻辑或表达式
%type <std::shared_ptr<TreeNodeConstExp>>                 ConstExp;//常量表达式
// %type <type_specifier>					BType;
%type <type_specifier>					FuncType;
%type <unaryop>						UnaryOp;

%start CompUnit //开始符号

//语法规则部分
%%
// 编译单元 CompUnit -> [ CompUnit ] ( Decl | FuncDef )
CompUnit : DeclDef {
	$$=std::make_shared<TreeNodeCompUnit>();
	// emplace_back效果类似于push_back，会调用构造函数和转移构造函数,如果可以在插入的时候直接构造，就只需要构造一次即可。
	$$->DeclDefList.emplace_back(std::move($1));
	rootFromParser=$$;
	std::cout<<"CompUnit Decl"<<std::endl;

    }
    | CompUnit DeclDef {
	$1->DeclDefList.emplace_back(std::move($2));
	$$=std::move($1);
	rootFromParser=$$;
	std::cout<<"CompUnit Decl"<<std::endl;

    }
    | CompUnit T_END {
    	$$=std::move($1);
    	rootFromParser=$$;
    	return 0;
    }
    ;
// 声明 Decl -> ConstDecl | VarDecl
DeclDef : ConstDecl{
	$$=std::make_shared<TreeNodeDeclDef>();
	$$->ConstDecl=std::move($1);
	$$->VarDecl=nullptr;
	$$->FuncDef=nullptr;
	std::cout<<"DeclDef : ConstDecl"<<std::endl;
    }
    | VarDecl{
	$$=std::make_shared<TreeNodeDeclDef>();
	$$->ConstDecl=nullptr;
    $$->VarDecl=std::move($1);
	$$->FuncDef=nullptr;
	std::cout<<"DeclDef : VarDecl"<<std::endl;
    }
    | FuncDef{
    $$=std::make_shared<TreeNodeDeclDef>();
	$$->ConstDecl=nullptr;
    $$->VarDecl=nullptr;
	$$->FuncDef=std::move($1);
	std::cout<<"DeclDef : FuncDef"<<std::endl;
    }
    ;

ConstDecl : T_CONST FuncDef ConstDefList T_SEMICOLIN {
	$$=std::make_shared<TreeNodeConstDecl>();
	$$->ConstDefList=$3->list;
	//TODO
	$$->type=TYPE_INT;
	std::cout<<"ConstDecl"<<std::endl;
    }
    ;
// 常数定义 ConstDef→Ident { '[' ConstExp ']' } '=' ConstInitVal
ConstDef : T_IDENTIFIER ArrayConstExpList T_ASSIGN ConstInitVal {
    	$$=std::make_shared<TreeNodeConstDef>();
		$$->ArrayConstExpList=$2->list;
		$$->id=$1;
		$$->ConstInitVal=std::move($4);
		std::cout<<"ConstDef : T_IDENTIFIER ArrayConstExpList T_ASSIGN ConstInitVal"<<std::endl;
    }
    ;
//常量连续定义（常数链表）
ConstDefList : ConstDef  {
	$$=std::make_shared<TreeNodeConstDefList>();
	$$->list.emplace_back(std::move($1));
	std::cout<<"ConstDefList : ConstDef"<<std::endl;
    }
    | ConstDefList T_COMMA ConstDef {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
		std::cout<<"ConstDefList : ConstDefList T_COMMA ConstDef"<<std::endl;
    }
    ;
// 常量数组定义
ArrayConstExpList : ArrayConstExpList T_LBRACKET ConstExp T_RBRACKET {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
		
    }
	|{
		$$=std::make_shared<TreeNodeArrayConstExpList>();
	}
    ;
// 常量初始化 ConstInitVal→ConstExp   | '{' [ ConstInitVal { ',' ConstInitVal } ] '}
ConstInitVal : ConstExp {
		$$=std::make_shared<TreeNodeConstInitVal>();
		$$->ConstExp=std::move($1);
    }
    | T_LBRACE  T_RBRACE {
		$$=std::make_shared<TreeNodeConstInitVal>();
		$$->ConstExp=nullptr;

    }
    | T_LBRACE ConstInitValList T_RBRACE {
    	$$=std::make_shared<TreeNodeConstInitVal>();
		$$->ConstExp=nullptr;
        $$->ConstInitValList=$2->list;
    }
    ;

// 常量初值链表（连续初始化常量） ConstInitValList -> ConstInitVal { ',' ConstInitVal }
ConstInitValList : ConstInitVal {
		$$=std::make_shared<TreeNodeConstInitValList>();
		$$->list.emplace_back(std::move($1));
    }
    | ConstInitValList T_COMMA ConstInitVal {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
		std::cout<<"ConstInitValList : ConstInitValList T_COMMA ConstInitVa"<<std::endl;
    }
    ;

// 变量声明 VarDecl →BType VarDef { ',' VarDef } ';' 
VarDecl : FuncType VarDefList T_SEMICOLIN {
		$$=std::make_shared<TreeNodeVarDecl>();
		$$->type=TYPE_INT;
		$$->VarDefList=$2->list;
		std::cout<<"VarDecl"<<std::endl;
    }
    ;

// 变量连续声明（变量链表） VarDefList -> VarDef { ',' VarDef }
VarDefList : VarDef {
		$$=std::make_shared<TreeNodeVarDefList>();
		$$->list.emplace_back(std::move($1));
		std::cout<<"VarDefList:VarDef"<<std::endl;
    }
    | VarDefList T_COMMA VarDef {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
		std::cout<<"VarDefList:VarDefList T_COMMA VarDef "<<std::endl;
    }
    ;
//变量定义VarDef →Ident { '[' ConstExp ']' } | Ident { '[' ConstExp ']' } '=' InitVal
VarDef : T_IDENTIFIER ArrayConstExpList  {

    	$$=std::make_shared<TreeNodeVarDef>();
		$$->id=$1;
		$$->ArrayConstExpList=$2->list;
		$$->InitVal=nullptr;
		std::cout<<"VarDef: T_IDENTIFIER ArrayConstExpList"<<std::endl;
    }
    | T_IDENTIFIER ArrayConstExpList T_ASSIGN InitVal {
    	$$=std::make_shared<TreeNodeVarDef>();
		$$->id=$1;
		$$->ArrayConstExpList=$2->list;
		$$->InitVal=std::move($4);
		std::cout<<"VarDef: T_IDENTIFIER ArrayConstExpList T_ASSIGN InitVal"<<std::endl;
    }
    ;
//变量初值 InitVal→Exp | '{' [ InitVal { ',' InitVal } ] '}'
InitVal : Exp {
	$$=std::make_shared<TreeNodeInitVal>();
	$$->Exp=std::move($1);
	std::cout<<"InitVal:Exp"<<std::endl;
    }
    | T_LBRACE  T_RBRACE {
	$$=std::make_shared<TreeNodeInitVal>();
	$$->Exp=nullptr;
	std::cout<<"{}"<<std::endl;
    }
    | T_LBRACE InitValList T_RBRACE {
    $$=std::make_shared<TreeNodeInitVal>();
	$$->Exp=nullptr;
	$$->InitValList=$2->list;
	std::cout<<"InitVal: { InitValList }"<<std::endl;
    }
    ;

//变量初值链表 InitValList-> InitVal { ',' InitVal }
InitValList : InitVal {
	$$=std::make_shared<TreeNodeInitValList>();
	$$->list.emplace_back(std::move($1));
	std::cout<<"InitValList : InitVal"<<std::endl;
    }
    | InitValList T_COMMA InitVal {
	$1->list.emplace_back(std::move($3));
	$$=std::move($1);
	std::cout<<"InitValList T_COMMA InitVal"<<std::endl;
    }
    ;

//函数定义 FuncDef →FuncType Ident '(' [FuncFParams] ')' Block
FuncDef : FuncType T_IDENTIFIER T_LPARENTHESE T_RPARENTHESE Block {
	//不带参数的返回类型为Void的函数
	$$=std::make_shared<TreeNodeFuncDef>();
	$$->type=$1;
	$$->id=$2;
	$$->Block=std::move($5);
	std::cout<<"Void FuncDef without Param"<<std::endl;
    }
    | FuncType T_IDENTIFIER T_LPARENTHESE FuncFParams T_RPARENTHESE Block {
	//带有参数的返回值为Void的函数
	$$=std::make_shared<TreeNodeFuncDef>();
	$$->type=$1;
	$$->id=$2;
	$$->FuncFParamList=$4->list;
	$$->Block=std::move($6);
	std::cout<<"Void FuncDef with Param"<<std::endl;
    }
    ;

//函数参数表
FuncFParams :   FuncFParam  {
	$$=std::make_shared<TreeNodeFuncFParamList>();
	$$->list.emplace_back($1);
    }
    | FuncFParams T_COMMA FuncFParam {
    	$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
    }
    ;

//函数参数
// FuncFParam : FuncType T_IDENTIFIER  {
// 	$$=std::make_shared<TreeNodeFuncFParam>();
// 	$$->type=TYPE_INT;
// 	$$->id=$2;
// 	$$->isarray=0;
//     }
//     | FuncType T_IDENTIFIER ParamArrayExpList {
//     $$=std::make_shared<TreeNodeFuncFParam>();
// 	$$->type=TYPE_INT;
// 	$$->isarray=1;
// 	$$->id=$2;
// 	$$->ParamArrayExpList=$3->list;
//     }
//     ;
FuncFParam : FuncType T_IDENTIFIER  {
	$$=std::make_shared<TreeNodeFuncFParam>();
	$$->type=$1;
	$$->id=$2;
    }
    | FuncType T_IDENTIFIER T_LBRACKET T_RBRACKET {
    	$$=std::make_shared<TreeNodeFuncFParam>();
	$$->type=$1;
	$$->id=$2;
	$$->isarray=true;
    }
    | FuncType T_IDENTIFIER T_LBRACKET T_RBRACKET ParamArrayExpList  {
    	$$=std::make_shared<TreeNodeFuncFParam>();
	$$->type=$1;
	$$->id=$2;
	$$->isarray=true;
	$$->ParamArrayExpList=$5->list;
    }
    | FuncType T_IDENTIFIER T_LBRACKET Exp T_RBRACKET ParamArrayExpList  {
	$$=std::make_shared<TreeNodeFuncFParam>();
    	$$->type=$1;
    	$$->id=$2;
    	$$->isarray=true;
    	$$->ParamArrayExpList=$6->list;
    }
    ;
//数组
ParamArrayExpList : T_ARRAY {
	//一维数组
	$$=std::make_shared<TreeNodeParamArrayExpList>();
    }
    | ParamArrayExpList T_LBRACKET Exp T_RBRACKET {
    	//多维数组
		$1->list.emplace_back(std::move($3));
    	$$=std::move($1);
    }
    ;

//语句块 Block -> '{' { BlockItem } '}'
Block : T_LBRACE BlockItemList T_RBRACE {
    	$$=std::make_shared<TreeNodeBlock>();
    	$$->BlockItemList=$2->list;
    }
    ;
//BlockItemList -> { BlockItem }
BlockItemList : BlockItemList BlockItem{
    $1->list.emplace_back(std::move($2));
    $$=std::move($1);
	std::cout<<"BlockItemList : BlockItemList BlockItem"<<std::endl;
    }
	|{
	$$=std::make_shared<TreeNodeBlockItemList>();
	}
    ;
//BlockItem -> ConstDecl | VarDecl | Stmt
BlockItem: ConstDecl {
	$$=std::make_shared<TreeNodeBlockItem>();
	$$->ConstDecl=std::move($1);
	$$->VarDecl=nullptr;
    $$->Stmt=nullptr;
	std::cout<<"BlockItem: ConstDecl"<<std::endl;
    }
    |
    VarDecl {
    $$=std::make_shared<TreeNodeBlockItem>();
	$$->ConstDecl=nullptr;
	$$->VarDecl=std::move($1);
	$$->Stmt=nullptr;
	std::cout<<"BlockItem:VarDecl"<<std::endl;
    }
    | Stmt {
    $$=std::make_shared<TreeNodeBlockItem>();
	$$->ConstDecl=nullptr;
    $$->VarDecl=nullptr;
	$$->Stmt=std::move($1);
	std::cout<<"BlockItem:Stmt"<<std::endl;
    }
    ;
Stmt : BreakStmt {
	$$=std::make_shared<TreeNodeStmt>();
	$$->BreakStmt=std::move($1);
	$$->ContinueStmt=nullptr;
	$$->AssignStmt=nullptr;
    $$->Exp=nullptr;
    $$->Block=nullptr;
    $$->SelectStmt=nullptr;
    $$->IterationStmt=nullptr;
    $$->ReturnStmt=nullptr;
	std::cout<<"Stmt:break"<<std::endl;
    }
    | ContinueStmt {
    	$$=std::make_shared<TreeNodeStmt>();
		$$->BreakStmt=nullptr;
    	$$->ContinueStmt=std::move($1);
		$$->AssignStmt=nullptr;
		$$->Exp=nullptr;
		$$->Block=nullptr;
		$$->SelectStmt=nullptr;
		$$->IterationStmt=nullptr;
		$$->ReturnStmt=nullptr;
		std::cout<<"Stmt:Continue"<<std::endl;
    }
    | AssignStmt {
    	$$=std::make_shared<TreeNodeStmt>();
		$$->BreakStmt=nullptr;
		$$->ContinueStmt=nullptr;
    	$$->AssignStmt=std::move($1);
		std::cout<<"Stmt:AssignStmt"<<std::endl;
		$$->Exp=nullptr;
		$$->Block=nullptr;
		$$->SelectStmt=nullptr;
		$$->IterationStmt=nullptr;
		$$->ReturnStmt=nullptr;
    }
    | Exp T_SEMICOLIN {
    	$$=std::make_shared<TreeNodeStmt>();
		$$->BreakStmt=nullptr;
		$$->ContinueStmt=nullptr;
		$$->AssignStmt=nullptr;
		$$->Exp=std::move($1);
		$$->Block=nullptr;
		$$->SelectStmt=nullptr;
		$$->IterationStmt=nullptr;
		$$->ReturnStmt=nullptr;
		std::cout<<"Stmt:Exp T_SEMICOLIN"<<std::endl;
    }
    | T_SEMICOLIN {
		$$=std::make_shared<TreeNodeStmt>();
		$$->BreakStmt=nullptr;
		$$->ContinueStmt=nullptr;
		$$->AssignStmt=nullptr;
		$$->Exp=nullptr;
		$$->Block=nullptr;
		$$->SelectStmt=nullptr;
		$$->IterationStmt=nullptr;
		$$->ReturnStmt=nullptr;
    }
    | Block {
    	$$=std::make_shared<TreeNodeStmt>();
		$$->BreakStmt=nullptr;
		$$->ContinueStmt=nullptr;
		$$->AssignStmt=nullptr;
		$$->Exp=nullptr;
		$$->Block=std::move($1);
		$$->SelectStmt=nullptr;
		$$->IterationStmt=nullptr;
		$$->ReturnStmt=nullptr;
		std::cout<<"Stmt: Block"<<std::endl;
    }
    | SelectStmt {
    	$$=std::make_shared<TreeNodeStmt>();
		$$->BreakStmt=nullptr;
		$$->ContinueStmt=nullptr;
		$$->AssignStmt=nullptr;
		$$->Exp=nullptr;
		$$->Block=nullptr;
		$$->SelectStmt=std::move($1);
		$$->IterationStmt=nullptr;
    	$$->ReturnStmt=nullptr;
		std::cout<<"SelectStmt"<<std::endl;
    }
    | IterationStmt {
    	$$=std::make_shared<TreeNodeStmt>();
		$$->BreakStmt=nullptr;
		$$->ContinueStmt=nullptr;
		$$->AssignStmt=nullptr;
		$$->Exp=nullptr;
		$$->Block=nullptr;
		$$->SelectStmt=nullptr;
		$$->IterationStmt=std::move($1);
		$$->ReturnStmt=nullptr;
		std::cout<<"IterationStmt"<<std::endl;
    }
    | ReturnStmt {
    	$$=std::make_shared<TreeNodeStmt>();
		$$->BreakStmt=nullptr;
		$$->ContinueStmt=nullptr;
		$$->AssignStmt=nullptr;
		$$->Exp=nullptr;
		$$->Block=nullptr;
		$$->SelectStmt=nullptr;
		$$->IterationStmt=nullptr;
		$$->ReturnStmt=std::move($1);
		std::cout<<"ReturnStmt"<<std::endl;
    }
    ;

BreakStmt : T_BREAK T_SEMICOLIN{
	$$=std::make_shared<TreeNodeBreakStmt>();
    }
    ;
ContinueStmt : T_CONTINUE T_SEMICOLIN{
	$$=std::make_shared<TreeNodeContinueStmt>();
    }
    ;
AssignStmt : LVal T_ASSIGN Exp T_SEMICOLIN{
	$$=std::make_shared<TreeNodeAssignStmt>();
	$$->LVal=std::move($1);
	$$->Exp=std::move($3);
    }
    ;

SelectStmt : T_IF T_LPARENTHESE Cond T_RPARENTHESE Stmt {
	$$=std::make_shared<TreeNodeSelectStmt>();
	$$->Cond=std::move($3);
	$$->ifStmt=std::move($5);
    }
    | T_IF T_LPARENTHESE Cond T_RPARENTHESE Stmt T_ELSE Stmt {
    	$$=std::make_shared<TreeNodeSelectStmt>();
    	$$->Cond=std::move($3);
    	$$->ifStmt=std::move($5);
    	$$->elseStmt=std::move($7);
    }
    ;

IterationStmt : T_WHILE T_LPARENTHESE Cond T_RPARENTHESE Stmt {
	$$=std::make_shared<TreeNodeIterationStmt>();
	$$->Cond=std::move($3);
	$$->Stmt=std::move($5);
    }
    ;
ReturnStmt : T_RETURN T_SEMICOLIN {
	$$=std::make_shared<TreeNodeReturnStmt>();
	$$->Exp=nullptr;
    }
    | T_RETURN Exp T_SEMICOLIN {
	$$=std::make_shared<TreeNodeReturnStmt>();
	$$->Exp=std::move($2);
    }
    ;

Exp : AddExp {
	$$=std::make_shared<TreeNodeExp>();
	$$->AddExp=std::move($1);
	std::cout<<"Exp : AddExp"<<std::endl;
    }
    ;

Cond : LOrExp {
	$$=std::make_shared<TreeNodeCond>();
	$$->LOrExp=std::move($1);
	std::cout<<"Cond : LOrExp"<<std::endl;
    }
    ;
// 左值表达式 LVal -> Ident {'[' Exp ']'}
LVal : T_IDENTIFIER ArrayExpList {
	$$=std::make_shared<TreeNodeLVal>();
	$$->id=$1;
	$$->ArrayExpList=$2->list;
	std::cout<<"LVal:T_IDENTIFIER ParamArrayExpList"<<std::endl;
    }
    ;
ArrayExpList:ArrayExpList T_LBRACKET Exp T_RBRACKET {
	$1->list.emplace_back(std::move($3));
    $$=std::move($1);
	}
	|{
    $$=std::make_shared<TreeNodeArrayExpList>();
  	}
	;
//基本表达式
PrimaryExp : T_LPARENTHESE Exp T_RPARENTHESE {
	$$=std::make_shared<TreeNodePrimaryExp>();
	$$->Exp=std::move($2);
	$$->LVal=nullptr;
    $$->Number=nullptr;
	std::cout<<"PrimaryExp:(Exp)"<<std::endl;
    }
    | LVal {
    $$=std::make_shared<TreeNodePrimaryExp>();
	$$->Exp=nullptr;
	$$->LVal=std::move($1);
    $$->Number=nullptr;
    std::cout<<"PrimaryExp：LVal"<<std::endl;
	}
    | Number {
    $$=std::make_shared<TreeNodePrimaryExp>();
	$$->Exp=nullptr;
	$$->LVal=nullptr;
	$$->Number=std::move($1);
    std::cout<<"PrimaryExp：Number"<<std::endl;
	}
    ;

Number : T_NUMBER {
	$$=std::make_shared<TreeNodeNumber>();
	$$->num=$1;
    std::cout<<"Numbers"<<std::endl;
	}
    ;

//一元表达式
UnaryExp : PrimaryExp {
	$$=std::make_shared<TreeNodeUnaryExp>();
	$$->op=OP_POS;
	$$->PrimaryExp=std::move($1);
	$$->Callee=nullptr;
    $$->UnaryExp=nullptr;
	std::cout<<"UnaryExp:PrimaryExp"<<std::endl;
    }
    | Callee {
    $$=std::make_shared<TreeNodeUnaryExp>();
	$$->op=OP_POS;
	$$->PrimaryExp=nullptr;
	$$->Callee=std::move($1);
	$$->UnaryExp=nullptr;
	std::cout<<"UnaryExp:Callee"<<std::endl;
    }
    | UnaryOp UnaryExp {
    $$=std::make_shared<TreeNodeUnaryExp>();
	$$->op=$1;
	$$->PrimaryExp=nullptr;
    $$->Callee=nullptr;
	$$->UnaryExp=std::move($2);
    std::cout<<"UnaryExp:UnaryOp UnaryExp "<<std::endl;
	}
    ;

Callee : T_IDENTIFIER T_LPARENTHESE T_RPARENTHESE {
	$$=std::make_shared<TreeNodeCallee>();
	$$->id=$1;
    }
    | T_IDENTIFIER T_LPARENTHESE FuncRParams T_RPARENTHESE {
	$$=std::make_shared<TreeNodeCallee>();
	$$->id=$1;
	$$->ExpList=$3->list;
	}
    ;

// operand passes to UnaryExp as a attribute
UnaryOp : T_ADD {
	$$=OP_POS;
	std::cout<<"+"<<std::endl;
    }
    | T_SUB {
    $$=OP_NEG;
    std::cout<<"-"<<std::endl;
	}
    | T_NOT {
    $$=OP_NOT;
    std::cout<<"！"<<std::endl;
	}
    ;
FuncRParams : FuncRParams T_COMMA Exp {
    $1->list.emplace_back(std::move($3));
    $$=std::move($1);
    std::cout<<"FuncRParams :Exp,Exp"<<std::endl;
	}
	| Exp {
	$$=std::make_shared<TreeNodeExpList>();
	$$->list.emplace_back(std::move($1));
    std::cout<<"FuncRParams : Exp "<<std::endl;
	}
    ;

//乘除模表达式MulExp→UnaryExp | MulExp ('*' | '/' | '%') UnaryExp
MulExp : UnaryExp {
	$$=std::make_shared<TreeNodeMulExp>();
	$$->UnaryExp=std::move($1);
	std::cout<<"MulExp : UnaryExp"<<std::endl;
    }
    | MulExp T_MUL UnaryExp {
	$$=std::make_shared<TreeNodeMulExp>();
	$$->MulExp=std::move($1);
	$$->UnaryExp=std::move($3);
	$$->op=OP_MUL;
	std::cout<<"MulExp : MulExp T_MUL UnaryExp"<<std::endl;
    }
    | MulExp T_DIV UnaryExp {
	$$=std::make_shared<TreeNodeMulExp>();
	$$->MulExp=std::move($1);
	$$->UnaryExp=std::move($3);
	$$->op=OP_DIV;
	std::cout<<"MulExp : MulExp T_DIV UnaryExp"<<std::endl;
    }
    | MulExp T_MOD UnaryExp {
	$$=std::make_shared<TreeNodeMulExp>();
	$$->MulExp=std::move($1);
	$$->UnaryExp=std::move($3);
	$$->op=OP_MOD;
	std::cout<<"MulExp :MulExp T_MOD UnaryExp"<<std::endl;
    }
    ;
//加减表达式AddExp→MulExp | AddExp ('+' | '−') MulExp 
AddExp : MulExp {
	$$=std::make_shared<TreeNodeAddExp>();
	$$->MulExp=std::move($1);
    //std::cout<<""<<std::endl;
	}
    | AddExp T_ADD MulExp {
   	$$=std::make_shared<TreeNodeAddExp>();
   	$$->AddExp=std::move($1);
   	$$->MulExp=std::move($3);
   	$$->op=OP_PLUS;
	//std::cout<<""<<std::endl;
    }
    | AddExp T_SUB MulExp {
	$$=std::make_shared<TreeNodeAddExp>();
	$$->AddExp=std::move($1);
	$$->MulExp=std::move($3);
	$$->op=OP_MINUS;
	//std::cout<<""<<std::endl;
    }
    ;

RelExp : AddExp	{
	$$=std::make_shared<TreeNodeRelExp>();
	$$->RelExp=nullptr;
	$$->AddExp=std::move($1);
	std::cout<<"RelExp : AddExp	"<<std::endl;
    }
    | RelExp T_LT AddExp {
	$$=std::make_shared<TreeNodeRelExp>();
	$$->RelExp=std::move($1);
	$$->AddExp=std::move($3);
	$$->op=OP_LT;
	std::cout<<"RelExp : RelExp T_LT AddExp	"<<std::endl;
    }
    | RelExp T_GT AddExp {
  	$$=std::make_shared<TreeNodeRelExp>();
  	$$->RelExp=std::move($1);
  	$$->AddExp=std::move($3);
  	$$->op=OP_GT;
	std::cout<<"RelExp : RelExp T_GT AddExp"<<std::endl;
    }
    | RelExp T_LTE AddExp {
	$$=std::make_shared<TreeNodeRelExp>();
	$$->RelExp=std::move($1);
	$$->AddExp=std::move($3);
	$$->op=OP_LTE;
	std::cout<<"RelExp : RelExp T_LTE AddExp"<<std::endl;
    }
    | RelExp T_GTE AddExp {
	$$=std::make_shared<TreeNodeRelExp>();
	$$->RelExp=std::move($1);
	$$->AddExp=std::move($3);
	$$->op=OP_GTE;
	std::cout<<"RelExp : RelExp T_GTE AddExp"<<std::endl;
    }
    ;

EqExp : RelExp {
	$$=std::make_shared<TreeNodeEqExp>();
	$$->EqExp=nullptr;
	$$->RelExp=std::move($1);
	std::cout<<"EqExp : RelExp"<<std::endl;
    }
    | EqExp T_EQ RelExp {
	$$=std::make_shared<TreeNodeEqExp>();
	$$->EqExp=std::move($1);
	$$->RelExp=std::move($3);
	$$->op=OP_EQ;
	std::cout<<"EqExp : EqExp T_EQ RelExp"<<std::endl;
    }
    | EqExp T_NEQ RelExp {
	$$=std::make_shared<TreeNodeEqExp>();
	$$->EqExp=std::move($1);
	$$->RelExp=std::move($3);
	$$->op=OP_NEQ;
	std::cout<<"EqExp : EqExp T_NEQ RelExp"<<std::endl;
    }
    ;

LAndExp : EqExp {
	$$=std::make_shared<TreeNodeLAndExp>();
	$$->LAndExp=nullptr;
	$$->EqExp=std::move($1);
	std::cout<<"LAndExp : EqExp"<<std::endl;
    }
    | LAndExp T_AND EqExp {
	$$=std::make_shared<TreeNodeLAndExp>();
	$$->LAndExp=std::move($1);
	$$->EqExp=std::move($3);
	$$->op=OP_AND;
	std::cout<<"LAndExp : LAndExp T_AND EqExp"<<std::endl;
    }
    ;

LOrExp : LAndExp {
	$$=std::make_shared<TreeNodeLOrExp>();
	$$->LOrExp=nullptr;
	$$->LAndExp=std::move($1);
	std::cout<<"LOrExp : LAndExp"<<std::endl;
    }
    | LOrExp T_OR LAndExp {
	$$=std::make_shared<TreeNodeLOrExp>();
	$$->LOrExp=std::move($1);
	$$->LAndExp=std::move($3);
	$$->op=OP_OR;
	std::cout<<"LOrExp : LOrExp T_OR LAndExp"<<std::endl;
    }
    ;

ConstExp : AddExp {
	$$=std::make_shared<TreeNodeConstExp>();
	$$->AddExp=std::move($1);
	std::cout<<"ConstExp : AddExp"<<std::endl;
    }
    ;


FuncType : T_VOID  
	{
	$$=TYPE_VOID;
    }
	| T_INT
	{
	$$=TYPE_INT;
	}
    ;
%%

void yy::sysy_parser::error (const location_type& l, const std::string& m){
	std::cout << l << "\n";
	std::cout << "Find error in parsering, " << m<< "\n";
}