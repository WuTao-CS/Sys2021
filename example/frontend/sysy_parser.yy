%skeleton "lalr1.cc" /* -*- c++ -*- */
%require "3.0"
%defines
%define parser_class_name {sysy_parser}

%define api.token.constructor
%define api.value.type variant
%define parse.assert

%code requires
{
#include <string>
#include "syntax_tree.hh"
class sysy_driver;
}

// The parsing context.
%param { sysy_driver& driver }

// Location tracking
%locations
%initial-action
{
    // Initialize the initial location.
    @$.begin.filename = @$.T_END.filename = &driver.file;
};

// Enable tracing and verbose errors (which may be wrong!)
%define parse.trace
%define parse.error verbose

// Parser needs to know about the driver:
%code
{
#include "sysy_driver.hh"
#define yylex driver.lexer.yylex
}

// Tokens:
%define api.token.prefix {TOK_}

%token T_END
%token T_ERROR 258 T_ADD 259 T_SUB 260 T_MUL 261 T_DIV 262 T_LT 263 T_LTE 264
%token T_GT 265 T_GTE 266 T_EQ 267 T_NEQ 268 T_ASSIN 269 T_SEMICOLIN 270 
%token T_COMMA 271 T_LPARENTHESE 272 T_RPARENTHESE 273 T_LBRACKET 274 
%token T_RBRACKET 275 T_LBRACE 276 T_RBRACE 277 T_ELSE 278 T_IF 279
%token T_INT 280 T_RETURN 281 T_VOID 282 T_WHILE 283 
%token <std::string>T_IDENTIFIER 284
%token <int>T_NUMBER 285 
%token T_ARRAY 286 T_LETTER 287 T_EOL 288 T_COMMENT 289 
%token T_BLANK 290 T_CONST 291 T_BREAK 292 T_CONTINUE 293 T_NOT 294
%token T_AND 295 T_OR 296 T_MOD 297

// Use variant-based semantic values: %type and %token expect genuine types
/* %token <std::string> T_IDENTIFIER "identifier"
%token <int> T_NUMBER "number" */
%type <SyntaxCompUnit*>CompUnit
%type <SyntaxDeclDef*>DeclDef
// %type <SyntaxDecl*>Decl
%type <SyntaxConstDecl*>ConstDecl
%type <SyntaxConstDefList*>ConstDefList
// %type <SyntaxBType*>BType
%type <SyntaxConstDef*>ConstDef
%type <SyntaxArrayConstExpList*>ArrayConstExpList
%type <SyntaxConstInitVal*>ConstInitVal
%type <SyntaxConstInitValList*>ConstInitValList
%type <SyntaxVarDecl*>VarDecl
%type <SyntaxVarDefList*>VarDefList
%type <SyntaxVarDef*>VarDef
%type <SyntaxInitVal*>InitVal
%type <SyntaxInitValList*>InitValList
%type <SyntaxFuncDef*>FuncDef
%type <type_specifier>DefType
%type <SyntaxFuncFParamList*>FuncFParamList
%type <SyntaxFuncFParam*>FuncFParam
%type <SyntaxParamArrayExpList*>ParamArrayExpList
%type <SyntaxBlock*>Block
%type <SyntaxBlockItemList*>BlockItemList
%type <SyntaxBlockItem*>BlockItem
%type <SyntaxStmt*>Stmt
%type <SyntaxAssignStmt*>AssignStmt
%type <SyntaxSelectStmt*>SelectStmt
%type <SyntaxBreakStmt*>BreakStmt
%type <SyntaxContinueStmt*>ContinueStmt
%type <SyntaxIterationStmt*>IterationStmt
%type <SyntaxReturnStmt*>ReturnStmt
%type <SyntaxExp*>Exp
%type <SyntaxCond*>Cond
%type <SyntaxLVal*>LVal
%type <SyntaxArrayExpList*>ArrayExpList
%type <SyntaxPrimaryExp*>PrimaryExp
%type <SyntaxNumber*>Number
%type <SyntaxUnaryExp*>UnaryExp
%type <SyntaxCallee*>Callee
%type <unaryop>UnaryOp
%type <SyntaxExpList*>ExpList
%type <SyntaxMulExp*>MulExp
%type <SyntaxAddExp*>AddExp
%type <SyntaxRelExp*>RelExp
%type <SyntaxEqExp*>EqExp
%type <SyntaxLAndExp*>LAndExp
%type <SyntaxLOrExp*>LOrExp
%type <SyntaxConstExp*>ConstExp
// No %destructors are needed, since memory will be reclaimed by the
// regular destructors.
/* %printer { yyoutput << $$; } <*>; TODO:trace_parsing*/   

// Grammar:
%start Begin 

%%
Begin: CompUnit T_END { 
  auto printer=new syntax_tree_printer; 
  // printer->visit(*$1);
  // std::cout << "test T_END\n";
  driver.root = $1;
  // std::cout << driver.root << $1;
  // printer->visit(*(driver.root));
  return 0;
  }

CompUnit:CompUnit DeclDef{
		$1->DeclDefList.push_back(std::shared_ptr<SyntaxDeclDef>($2));
		$$=$1;
	} 
	| DeclDef{
		$$=new SyntaxCompUnit();
		$$->DeclDefList.push_back(std::shared_ptr<SyntaxDeclDef>($1));
	}
	;
DeclDef:ConstDecl{
    $$=new SyntaxDeclDef();
    $$->ConstDecl=std::shared_ptr<SyntaxConstDecl>($1);
    $$->VarDecl=nullptr;
    $$->FuncDef=nullptr;
    }
	| VarDecl{
    $$=new SyntaxDeclDef();
    $$->ConstDecl=nullptr;
    $$->VarDecl=std::shared_ptr<SyntaxVarDecl>($1);
    $$->FuncDef=nullptr;
  }
	| FuncDef{
    $$=new SyntaxDeclDef();
    $$->ConstDecl=nullptr;
    $$->VarDecl=nullptr;
    $$->FuncDef=std::shared_ptr<SyntaxFuncDef>($1);
  }
	;
ConstDecl:T_CONST DefType ConstDefList T_SEMICOLIN{
    $$=new SyntaxConstDecl();
    $$->ConstDefList.swap($3->list);
    $$->type=TYPE_INT;
}
	;
ConstDefList:ConstDefList T_COMMA ConstDef{
    $1->list.push_back(std::shared_ptr<SyntaxConstDef>($3));
    $$=$1;
}
	| ConstDef{
    $$=new SyntaxConstDefList();
    $$->list.push_back(std::shared_ptr<SyntaxConstDef>($1));
  }
	;
ConstDef:T_IDENTIFIER ArrayConstExpList T_ASSIN ConstInitVal{
    $$=new SyntaxConstDef();
    $$->ArrayConstExpList.swap($2->list);
    $$->id=$1;
    $$->ConstInitVal=std::shared_ptr<SyntaxConstInitVal>($4);
}
	;
ArrayConstExpList:ArrayConstExpList T_LBRACKET ConstExp T_RBRACKET{
    $1->list.push_back(std::shared_ptr<SyntaxConstExp>($3));
    $$=$1;
}
	|{
    $$=new SyntaxArrayConstExpList();
  };

ConstInitVal:ConstExp{
    $$=new SyntaxConstInitVal();
    $$->ConstExp=std::shared_ptr<SyntaxConstExp>($1);
}
	| T_LBRACE ConstInitValList T_RBRACE{
    $$=new SyntaxConstInitVal();
    $$->ConstExp=nullptr;
    $$->ConstInitValList.swap($2->list);
  }
	| T_LBRACE T_RBRACE{
    $$=new SyntaxConstInitVal();
    $$->ConstExp=nullptr;
  }
	;
ConstInitValList:ConstInitValList T_COMMA ConstInitVal{
    $1->list.push_back(std::shared_ptr<SyntaxConstInitVal>($3));
    $$=$1;
}
	| ConstInitVal{
    $$=new SyntaxConstInitValList();
    $$->list.push_back(std::shared_ptr<SyntaxConstInitVal>($1));
  }
	;
VarDecl:DefType VarDefList T_SEMICOLIN{
    $$=new SyntaxVarDecl();
    $$->VarDefList.swap($2->list);
    $$->type=TYPE_INT;
}
	;
VarDefList:VarDefList T_COMMA VarDef{
    $1->list.push_back(std::shared_ptr<SyntaxVarDef>($3));
    $$=$1;
}
	| VarDef{
    $$=new SyntaxVarDefList();
    $$->list.push_back(std::shared_ptr<SyntaxVarDef>($1));
  }
	;
VarDef:T_IDENTIFIER ArrayConstExpList{
    $$=new SyntaxVarDef();
    $$->id=$1;
    $$->ArrayConstExpList.swap($2->list);
    $$->InitVal=nullptr;
}
	| T_IDENTIFIER ArrayConstExpList T_ASSIN InitVal{
    $$=new SyntaxVarDef();
    $$->id=$1;
    $$->ArrayConstExpList.swap($2->list);
    $$->InitVal=std::shared_ptr<SyntaxInitVal>($4);
  }
	;
InitVal:Exp{
    $$=new SyntaxInitVal();
    $$->Exp=std::shared_ptr<SyntaxExp>($1);
}
	| T_LBRACE T_RBRACE{
    $$=new SyntaxInitVal();
    $$->Exp=nullptr;
  }
	| T_LBRACE InitValList T_RBRACE{
    $$=new SyntaxInitVal();
    $$->Exp=nullptr;
    $$->InitValList.swap($2->list);
  }
	;
InitValList:InitValList T_COMMA InitVal{
    $1->list.push_back(std::shared_ptr<SyntaxInitVal>($3));
    $$=$1;
  }
  | InitVal{
    $$=new SyntaxInitValList();
    $$->list.push_back(std::shared_ptr<SyntaxInitVal>($1));
  }
	;
FuncDef:DefType T_IDENTIFIER T_LPARENTHESE T_RPARENTHESE Block{
    $$=new SyntaxFuncDef();
    $$->type=$1;
    $$->id=$2;
    $$->Block=std::shared_ptr<SyntaxBlock>($5);
}
	| DefType T_IDENTIFIER T_LPARENTHESE FuncFParamList T_RPARENTHESE Block{
    $$=new SyntaxFuncDef();
    $$->type=$1;
    $$->id=$2;
    $$->FuncFParamList.swap($4->list);
    $$->Block=std::shared_ptr<SyntaxBlock>($6);
  }
	;
DefType:T_VOID{$$=TYPE_VOID;}
	| T_ELSE{$$=TYPE_INT;}
	;
FuncFParamList:FuncFParamList T_COMMA FuncFParam{
    $1->list.push_back(std::shared_ptr<SyntaxFuncFParam>($3));
    $$=$1;
}
	| FuncFParam{
    $$=new SyntaxFuncFParamList();
    $$->list.push_back(std::shared_ptr<SyntaxFuncFParam>($1));
  }
	;
FuncFParam:DefType T_IDENTIFIER ParamArrayExpList{
    $$=new SyntaxFuncFParam();
    $$->type=TYPE_INT;
    $$->isarray=1;
    $$->id=$2;
    $$->ParamArrayExpList.swap($3->list);
}
	| DefType T_IDENTIFIER{
    $$=new SyntaxFuncFParam();
    $$->type=TYPE_INT;
    $$->id=$2;
    $$->isarray=0;
  }
	;
ParamArrayExpList:ParamArrayExpList T_LBRACKET Exp T_RBRACKET{
    $1->list.push_back(std::shared_ptr<SyntaxExp>($3));
    $$=$1;
}
	| T_ARRAY{
    $$=new SyntaxParamArrayExpList();
  }
	;
Block:T_LBRACE BlockItemList T_RBRACE{
    $$=new SyntaxBlock();
    $$->BlockItemList.swap($2->list);
}
	;
BlockItemList:BlockItemList BlockItem{
    $1->list.push_back(std::shared_ptr<SyntaxBlockItem>($2));
    $$=$1;
}
	|{
    $$=new SyntaxBlockItemList();
  }
	;
BlockItem:ConstDecl{
    $$=new SyntaxBlockItem();
    $$->ConstDecl=std::shared_ptr<SyntaxConstDecl>($1);
    $$->VarDecl=nullptr;
    $$->Stmt=nullptr;
}
	| VarDecl{
    $$=new SyntaxBlockItem();
    // std::cout<<"310"<<std::endl;
    $$->ConstDecl=nullptr;
    // std::cout<<"312"<<std::endl;
    $$->VarDecl=std::shared_ptr<SyntaxVarDecl>($1);
    // std::cout<<"314"<<std::endl;
    $$->Stmt=nullptr;
  }
	| Stmt{
    $$=new SyntaxBlockItem();
    $$->ConstDecl=nullptr;
    $$->VarDecl=nullptr;
    $$->Stmt=std::shared_ptr<SyntaxStmt>($1);
  }
	;
Stmt:AssignStmt{
    $$=new SyntaxStmt();
    $$->BreakStmt=nullptr;
    $$->ContinueStmt=nullptr;
    $$->AssignStmt=std::shared_ptr<SyntaxAssignStmt>($1);
    $$->Exp=nullptr;
    $$->Block=nullptr;
    $$->SelectStmt=nullptr;
    $$->IterationStmt=nullptr;
    $$->ReturnStmt=nullptr;
  }
	| Exp T_SEMICOLIN{
    $$=new SyntaxStmt();
    $$->BreakStmt=nullptr;
    $$->ContinueStmt=nullptr;
    $$->AssignStmt=nullptr;
    $$->Exp=std::shared_ptr<SyntaxExp>($1);
    $$->Block=nullptr;
    $$->SelectStmt=nullptr;
    $$->IterationStmt=nullptr;
    $$->ReturnStmt=nullptr;
  }
	| T_SEMICOLIN{
    $$=new SyntaxStmt();
    $$->BreakStmt=nullptr;
    $$->ContinueStmt=nullptr;
    $$->AssignStmt=nullptr;
    $$->Exp=nullptr;
    $$->Block=nullptr;
    $$->SelectStmt=nullptr;
    $$->IterationStmt=nullptr;
    $$->ReturnStmt=nullptr;
  }
	| Block{
    $$=new SyntaxStmt();
    $$->BreakStmt=nullptr;
    $$->ContinueStmt=nullptr;
    $$->AssignStmt=nullptr;
    $$->Exp=nullptr;
    $$->Block=std::shared_ptr<SyntaxBlock>($1);
    $$->SelectStmt=nullptr;
    $$->IterationStmt=nullptr;
    $$->ReturnStmt=nullptr;
  }
	| SelectStmt{
    $$=new SyntaxStmt();
    $$->BreakStmt=nullptr;
    $$->ContinueStmt=nullptr;
    $$->AssignStmt=nullptr;
    $$->Exp=nullptr;
    $$->Block=nullptr;
    $$->SelectStmt=std::shared_ptr<SyntaxSelectStmt>($1);
    $$->IterationStmt=nullptr;
    $$->ReturnStmt=nullptr;
  }
	| IterationStmt{
    $$=new SyntaxStmt();
    $$->BreakStmt=nullptr;
    $$->ContinueStmt=nullptr;
    $$->AssignStmt=nullptr;
    $$->Exp=nullptr;
    $$->Block=nullptr;
    $$->SelectStmt=nullptr;
    $$->IterationStmt=std::shared_ptr<SyntaxIterationStmt>($1);
    $$->ReturnStmt=nullptr;
  } 
	| BreakStmt{
    $$=new SyntaxStmt();
    $$->BreakStmt=std::shared_ptr<SyntaxBreakStmt>($1);
    $$->ContinueStmt=nullptr;
    $$->AssignStmt=nullptr;
    $$->Exp=nullptr;
    $$->Block=nullptr;
    $$->SelectStmt=nullptr;
    $$->IterationStmt=nullptr;
    $$->ReturnStmt=nullptr;
  }
	| ContinueStmt{
    $$=new SyntaxStmt();
    $$->BreakStmt=nullptr;
    $$->ContinueStmt=std::shared_ptr<SyntaxContinueStmt>($1);
    $$->AssignStmt=nullptr;
    $$->Exp=nullptr;
    $$->Block=nullptr;
    $$->SelectStmt=nullptr;
    $$->IterationStmt=nullptr;
    $$->ReturnStmt=nullptr;
  }
	| ReturnStmt{
    $$=new SyntaxStmt();
    $$->BreakStmt=nullptr;
    $$->ContinueStmt=nullptr;
    $$->AssignStmt=nullptr;
    $$->Exp=nullptr;
    $$->Block=nullptr;
    $$->SelectStmt=nullptr;
    $$->IterationStmt=nullptr;
    $$->ReturnStmt=std::shared_ptr<SyntaxReturnStmt>($1);
  }
	;
BreakStmt:T_BREAK T_SEMICOLIN{
    $$=new SyntaxBreakStmt();
}
	;
ContinueStmt:T_CONTINUE T_SEMICOLIN{
    $$=new SyntaxContinueStmt();
}
	;
AssignStmt:LVal T_ASSIN Exp T_SEMICOLIN{
    $$=new SyntaxAssignStmt();
    $$->LVal=std::shared_ptr<SyntaxLVal>($1);
    $$->Exp=std::shared_ptr<SyntaxExp>($3);
}
	;
SelectStmt:T_IF T_LPARENTHESE Cond T_RPARENTHESE Stmt{
    $$=new SyntaxSelectStmt();
    $$->Cond=std::shared_ptr<SyntaxCond>($3);
    $$->ifStmt=std::shared_ptr<SyntaxStmt>($5);
}
	| T_IF T_LPARENTHESE Cond T_RPARENTHESE Stmt T_ELSE Stmt{
    $$=new SyntaxSelectStmt();
    $$->Cond=std::shared_ptr<SyntaxCond>($3);
    $$->ifStmt=std::shared_ptr<SyntaxStmt>($5);
    $$->elseStmt=std::shared_ptr<SyntaxStmt>($7);
  }
	;
IterationStmt:T_WHILE T_LPARENTHESE Cond T_RPARENTHESE Stmt{
    // std::cout<<"ok"<<std::endl;
    $$=new SyntaxIterationStmt();
    $$->Cond=std::shared_ptr<SyntaxCond>($3);
    $$->Stmt=std::shared_ptr<SyntaxStmt>($5);
}
	;
ReturnStmt:T_RETURN Exp T_SEMICOLIN{
    $$=new SyntaxReturnStmt();
    $$->Exp=std::shared_ptr<SyntaxExp>($2);
}
	| T_RETURN T_SEMICOLIN{
    $$=new SyntaxReturnStmt();
    $$->Exp=nullptr;
  }
	;

Exp:AddExp{
    $$=new SyntaxExp();
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($1);
}
	;
Cond:LOrExp{
    $$=new SyntaxCond();
    $$->LOrExp=std::shared_ptr<SyntaxLOrExp>($1);
}
	;
LVal:T_IDENTIFIER ArrayExpList{
    $$=new SyntaxLVal();
    $$->id=$1;
    $$->ArrayExpList.swap($2->list);
}
	;
ArrayExpList:ArrayExpList T_LBRACKET Exp T_RBRACKET{
    $1->list.push_back(std::shared_ptr<SyntaxExp>($3));
    $$=$1;
}
	|{
    $$=new SyntaxArrayExpList();
  }
	;
PrimaryExp:T_LPARENTHESE Exp T_RPARENTHESE{
    $$=new SyntaxPrimaryExp();
    $$->Exp=std::shared_ptr<SyntaxExp>($2);
    $$->LVal=nullptr;
    $$->Number=nullptr;
}
	| LVal{
    $$=new SyntaxPrimaryExp();
    $$->Exp=nullptr;
    $$->LVal=std::shared_ptr<SyntaxLVal>($1);
    $$->Number=nullptr;
  }
	| Number{
    $$=new SyntaxPrimaryExp();
    $$->Exp=nullptr;
    $$->LVal=nullptr;
    $$->Number=std::shared_ptr<SyntaxNumber>($1);
  }
	;
Number:T_NUMBER{
    $$=new SyntaxNumber();
    $$->num=$1;
}
	;
UnaryExp:PrimaryExp{
    $$=new SyntaxUnaryExp();
    $$->op=OP_POS;
    $$->PrimaryExp=std::shared_ptr<SyntaxPrimaryExp>($1);
    $$->Callee=nullptr;
    $$->UnaryExp=nullptr;
}
	| Callee{
    $$=new SyntaxUnaryExp();
    $$->op=OP_POS;
    $$->PrimaryExp=nullptr;
    $$->Callee=std::shared_ptr<SyntaxCallee>($1);
    $$->UnaryExp=nullptr;
  } 
	| UnaryOp UnaryExp{
    $$=new SyntaxUnaryExp();
    $$->op=$1;
    $$->PrimaryExp=nullptr;
    $$->Callee=nullptr;
    $$->UnaryExp=std::shared_ptr<SyntaxUnaryExp>($2);
  }
	;
Callee:T_IDENTIFIER T_LPARENTHESE ExpList T_RPARENTHESE{
    $$=new SyntaxCallee();
    $$->id=$1;
    $$->ExpList.swap($3->list);
  }
  | T_IDENTIFIER T_LPARENTHESE T_RPARENTHESE {
    $$=new SyntaxCallee();
    $$->id=$1;
  }
	;
UnaryOp: T_ADD{$$=OP_POS;}
	| T_SUB{$$=OP_NEG;}
	| T_NOT{$$=OP_NOT;}
	;
ExpList:ExpList T_COMMA Exp{
    $1->list.push_back(std::shared_ptr<SyntaxExp>($3));
    $$=$1;
    }
	|Exp{
    $$=new SyntaxExpList();
    $$->list.push_back(std::shared_ptr<SyntaxExp>($1));
  }
	;
MulExp:UnaryExp{
    $$=new SyntaxMulExp();
    $$->MulExp=nullptr;
    $$->UnaryExp=std::shared_ptr<SyntaxUnaryExp>($1);
}
	| MulExp T_MUL UnaryExp{
    $$=new SyntaxMulExp();
    $$->MulExp=std::shared_ptr<SyntaxMulExp>($1);
    $$->UnaryExp=std::shared_ptr<SyntaxUnaryExp>($3);
    $$->op=OP_MUL;
  }
	| MulExp T_DIV UnaryExp{
    $$=new SyntaxMulExp();
    $$->MulExp=std::shared_ptr<SyntaxMulExp>($1);
    $$->UnaryExp=std::shared_ptr<SyntaxUnaryExp>($3);
    $$->op=OP_DIV;
  }
	| MulExp T_MOD UnaryExp{
    $$=new SyntaxMulExp();
    $$->MulExp=std::shared_ptr<SyntaxMulExp>($1);
    $$->UnaryExp=std::shared_ptr<SyntaxUnaryExp>($3);
    $$->op=OP_MOD;
  }
	;
AddExp:MulExp{
    $$=new SyntaxAddExp();
    $$->AddExp=nullptr;
    $$->MulExp=std::shared_ptr<SyntaxMulExp>($1);
}
	| AddExp T_ADD MulExp{
    $$=new SyntaxAddExp();
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($1);
    $$->MulExp=std::shared_ptr<SyntaxMulExp>($3);
    $$->op=OP_PLUS;
  }
	| AddExp T_SUB MulExp{
    $$=new SyntaxAddExp();
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($1);
    $$->MulExp=std::shared_ptr<SyntaxMulExp>($3);
    $$->op=OP_MINUS;
  }
	;
RelExp:AddExp{
    $$=new SyntaxRelExp();
    $$->RelExp=nullptr;
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($1);
}
	| RelExp T_LT AddExp{
    $$=new SyntaxRelExp();
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($1);
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($3);
    $$->op=OP_LT;
  }
	| RelExp T_GT AddExp{
    $$=new SyntaxRelExp();
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($1);
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($3);
    $$->op=OP_GT;
  }
	| RelExp T_LTE AddExp{
    $$=new SyntaxRelExp();
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($1);
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($3);
    $$->op=OP_LTE;
  }
	| RelExp T_GTE AddExp{
    $$=new SyntaxRelExp();
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($1);
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($3);
    $$->op=OP_GTE;
  }
	;
EqExp:RelExp{
    $$=new SyntaxEqExp();
    $$->EqExp=nullptr;
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($1);
  }
	| EqExp T_EQ RelExp{
    $$=new SyntaxEqExp();
    $$->EqExp=std::shared_ptr<SyntaxEqExp>($1);
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($3);
    $$->op=OP_EQ;
  }
	| EqExp T_NEQ RelExp{
    $$=new SyntaxEqExp();
    $$->EqExp=std::shared_ptr<SyntaxEqExp>($1);
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($3);
    $$->op=OP_NEQ;
  }
	;
LAndExp:EqExp {
    $$=new SyntaxLAndExp();
    $$->LAndExp=nullptr;
    $$->EqExp=std::shared_ptr<SyntaxEqExp>($1);
  }
	| LAndExp T_AND EqExp{
    $$=new SyntaxLAndExp();
    $$->LAndExp=std::shared_ptr<SyntaxLAndExp>($1);
    $$->EqExp=std::shared_ptr<SyntaxEqExp>($3);
    $$->op=OP_AND;
  }
	;
LOrExp:LAndExp{
    $$=new SyntaxLOrExp();
    $$->LOrExp=nullptr;
    $$->LAndExp=std::shared_ptr<SyntaxLAndExp>($1);
  }
	| LOrExp T_OR LAndExp{
    $$=new SyntaxLOrExp();
    $$->LOrExp=std::shared_ptr<SyntaxLOrExp>($1);
    $$->LAndExp=std::shared_ptr<SyntaxLAndExp>($3);
    $$->op=OP_OR;
  }
	;
ConstExp:AddExp{
    $$=new SyntaxConstExp();
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($1);
  }
	;

%%

// Register errors to the driver:
void yy::sysy_parser::T_ERROR (const location_type& l,
                          const std::string& m)
{
    driver.T_ERROR(l, m);
}
