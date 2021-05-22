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
    @$.begin.filename = @$.end.filename = &driver.file;
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

%token END
%token ERROR 258 ADD 259 SUB 260 MUL 261 DIV 262 LT 263 LTE 264
%token GT 265 GTE 266 EQ 267 NEQ 268 ASSIN 269 SEMICOLON 270 
%token COMMA 271 LPARENTHESE 272 RPARENTHESE 273 LBRACKET 274 
%token RBRACKET 275 LBRACE 276 RBRACE 277 ELSE 278 IF 279
%token INT 280 RETURN 281 VOID 282 WHILE 283 
%token <std::string>IDENTIFIER 284
%token <int>NUMBER 285 
%token ARRAY 286 LETTER 287 EOL 288 COMMENT 289 
%token BLANK 290 CONST 291 BREAK 292 CONTINUE 293 NOT 294
%token AND 295 OR 296 MOD 297

// Use variant-based semantic values: %type and %token expect genuine types
/* %token <std::string> IDENTIFIER "identifier"
%token <int> NUMBER "number" */
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
Begin: CompUnit END { 
  auto printer=new syntax_tree_printer; 
  // printer->visit(*$1);
  // std::cout << "test END\n";
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
ConstDecl:CONST DefType ConstDefList SEMICOLON{
    $$=new SyntaxConstDecl();
    $$->ConstDefList.swap($3->list);
    $$->type=TYPE_INT;
}
	;
ConstDefList:ConstDefList COMMA ConstDef{
    $1->list.push_back(std::shared_ptr<SyntaxConstDef>($3));
    $$=$1;
}
	| ConstDef{
    $$=new SyntaxConstDefList();
    $$->list.push_back(std::shared_ptr<SyntaxConstDef>($1));
  }
	;
ConstDef:IDENTIFIER ArrayConstExpList ASSIN ConstInitVal{
    $$=new SyntaxConstDef();
    $$->ArrayConstExpList.swap($2->list);
    $$->id=$1;
    $$->ConstInitVal=std::shared_ptr<SyntaxConstInitVal>($4);
}
	;
ArrayConstExpList:ArrayConstExpList LBRACKET ConstExp RBRACKET{
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
	| LBRACE ConstInitValList RBRACE{
    $$=new SyntaxConstInitVal();
    $$->ConstExp=nullptr;
    $$->ConstInitValList.swap($2->list);
  }
	| LBRACE RBRACE{
    $$=new SyntaxConstInitVal();
    $$->ConstExp=nullptr;
  }
	;
ConstInitValList:ConstInitValList COMMA ConstInitVal{
    $1->list.push_back(std::shared_ptr<SyntaxConstInitVal>($3));
    $$=$1;
}
	| ConstInitVal{
    $$=new SyntaxConstInitValList();
    $$->list.push_back(std::shared_ptr<SyntaxConstInitVal>($1));
  }
	;
VarDecl:DefType VarDefList SEMICOLON{
    $$=new SyntaxVarDecl();
    $$->VarDefList.swap($2->list);
    $$->type=TYPE_INT;
}
	;
VarDefList:VarDefList COMMA VarDef{
    $1->list.push_back(std::shared_ptr<SyntaxVarDef>($3));
    $$=$1;
}
	| VarDef{
    $$=new SyntaxVarDefList();
    $$->list.push_back(std::shared_ptr<SyntaxVarDef>($1));
  }
	;
VarDef:IDENTIFIER ArrayConstExpList{
    $$=new SyntaxVarDef();
    $$->id=$1;
    $$->ArrayConstExpList.swap($2->list);
    $$->InitVal=nullptr;
}
	| IDENTIFIER ArrayConstExpList ASSIN InitVal{
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
	| LBRACE RBRACE{
    $$=new SyntaxInitVal();
    $$->Exp=nullptr;
  }
	| LBRACE InitValList RBRACE{
    $$=new SyntaxInitVal();
    $$->Exp=nullptr;
    $$->InitValList.swap($2->list);
  }
	;
InitValList:InitValList COMMA InitVal{
    $1->list.push_back(std::shared_ptr<SyntaxInitVal>($3));
    $$=$1;
  }
  | InitVal{
    $$=new SyntaxInitValList();
    $$->list.push_back(std::shared_ptr<SyntaxInitVal>($1));
  }
	;
FuncDef:DefType IDENTIFIER LPARENTHESE RPARENTHESE Block{
    $$=new SyntaxFuncDef();
    $$->type=$1;
    $$->id=$2;
    $$->Block=std::shared_ptr<SyntaxBlock>($5);
}
	| DefType IDENTIFIER LPARENTHESE FuncFParamList RPARENTHESE Block{
    $$=new SyntaxFuncDef();
    $$->type=$1;
    $$->id=$2;
    $$->FuncFParamList.swap($4->list);
    $$->Block=std::shared_ptr<SyntaxBlock>($6);
  }
	;
DefType:VOID{$$=TYPE_VOID;}
	| INT{$$=TYPE_INT;}
	;
FuncFParamList:FuncFParamList COMMA FuncFParam{
    $1->list.push_back(std::shared_ptr<SyntaxFuncFParam>($3));
    $$=$1;
}
	| FuncFParam{
    $$=new SyntaxFuncFParamList();
    $$->list.push_back(std::shared_ptr<SyntaxFuncFParam>($1));
  }
	;
FuncFParam:DefType IDENTIFIER ParamArrayExpList{
    $$=new SyntaxFuncFParam();
    $$->type=TYPE_INT;
    $$->isarray=1;
    $$->id=$2;
    $$->ParamArrayExpList.swap($3->list);
}
	| DefType IDENTIFIER{
    $$=new SyntaxFuncFParam();
    $$->type=TYPE_INT;
    $$->id=$2;
    $$->isarray=0;
  }
	;
ParamArrayExpList:ParamArrayExpList LBRACKET Exp RBRACKET{
    $1->list.push_back(std::shared_ptr<SyntaxExp>($3));
    $$=$1;
}
	| ARRAY{
    $$=new SyntaxParamArrayExpList();
  }
	;
Block:LBRACE BlockItemList RBRACE{
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
	| Exp SEMICOLON{
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
	| SEMICOLON{
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
BreakStmt:BREAK SEMICOLON{
    $$=new SyntaxBreakStmt();
}
	;
ContinueStmt:CONTINUE SEMICOLON{
    $$=new SyntaxContinueStmt();
}
	;
AssignStmt:LVal ASSIN Exp SEMICOLON{
    $$=new SyntaxAssignStmt();
    $$->LVal=std::shared_ptr<SyntaxLVal>($1);
    $$->Exp=std::shared_ptr<SyntaxExp>($3);
}
	;
SelectStmt:IF LPARENTHESE Cond RPARENTHESE Stmt{
    $$=new SyntaxSelectStmt();
    $$->Cond=std::shared_ptr<SyntaxCond>($3);
    $$->ifStmt=std::shared_ptr<SyntaxStmt>($5);
}
	| IF LPARENTHESE Cond RPARENTHESE Stmt ELSE Stmt{
    $$=new SyntaxSelectStmt();
    $$->Cond=std::shared_ptr<SyntaxCond>($3);
    $$->ifStmt=std::shared_ptr<SyntaxStmt>($5);
    $$->elseStmt=std::shared_ptr<SyntaxStmt>($7);
  }
	;
IterationStmt:WHILE LPARENTHESE Cond RPARENTHESE Stmt{
    // std::cout<<"ok"<<std::endl;
    $$=new SyntaxIterationStmt();
    $$->Cond=std::shared_ptr<SyntaxCond>($3);
    $$->Stmt=std::shared_ptr<SyntaxStmt>($5);
}
	;
ReturnStmt:RETURN Exp SEMICOLON{
    $$=new SyntaxReturnStmt();
    $$->Exp=std::shared_ptr<SyntaxExp>($2);
}
	| RETURN SEMICOLON{
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
LVal:IDENTIFIER ArrayExpList{
    $$=new SyntaxLVal();
    $$->id=$1;
    $$->ArrayExpList.swap($2->list);
}
	;
ArrayExpList:ArrayExpList LBRACKET Exp RBRACKET{
    $1->list.push_back(std::shared_ptr<SyntaxExp>($3));
    $$=$1;
}
	|{
    $$=new SyntaxArrayExpList();
  }
	;
PrimaryExp:LPARENTHESE Exp RPARENTHESE{
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
Number:NUMBER{
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
Callee:IDENTIFIER LPARENTHESE ExpList RPARENTHESE{
    $$=new SyntaxCallee();
    $$->id=$1;
    $$->ExpList.swap($3->list);
  }
  | IDENTIFIER LPARENTHESE RPARENTHESE {
    $$=new SyntaxCallee();
    $$->id=$1;
  }
	;
UnaryOp: ADD{$$=OP_POS;}
	| SUB{$$=OP_NEG;}
	| NOT{$$=OP_NOT;}
	;
ExpList:ExpList COMMA Exp{
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
	| MulExp MUL UnaryExp{
    $$=new SyntaxMulExp();
    $$->MulExp=std::shared_ptr<SyntaxMulExp>($1);
    $$->UnaryExp=std::shared_ptr<SyntaxUnaryExp>($3);
    $$->op=OP_MUL;
  }
	| MulExp DIV UnaryExp{
    $$=new SyntaxMulExp();
    $$->MulExp=std::shared_ptr<SyntaxMulExp>($1);
    $$->UnaryExp=std::shared_ptr<SyntaxUnaryExp>($3);
    $$->op=OP_DIV;
  }
	| MulExp MOD UnaryExp{
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
	| AddExp ADD MulExp{
    $$=new SyntaxAddExp();
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($1);
    $$->MulExp=std::shared_ptr<SyntaxMulExp>($3);
    $$->op=OP_PLUS;
  }
	| AddExp SUB MulExp{
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
	| RelExp LT AddExp{
    $$=new SyntaxRelExp();
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($1);
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($3);
    $$->op=OP_LT;
  }
	| RelExp GT AddExp{
    $$=new SyntaxRelExp();
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($1);
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($3);
    $$->op=OP_GT;
  }
	| RelExp LTE AddExp{
    $$=new SyntaxRelExp();
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($1);
    $$->AddExp=std::shared_ptr<SyntaxAddExp>($3);
    $$->op=OP_LTE;
  }
	| RelExp GTE AddExp{
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
	| EqExp EQ RelExp{
    $$=new SyntaxEqExp();
    $$->EqExp=std::shared_ptr<SyntaxEqExp>($1);
    $$->RelExp=std::shared_ptr<SyntaxRelExp>($3);
    $$->op=OP_EQ;
  }
	| EqExp NEQ RelExp{
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
	| LAndExp AND EqExp{
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
	| LOrExp OR LAndExp{
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
void yy::sysy_parser::error (const location_type& l,
                          const std::string& m)
{
    driver.error(l, m);
}
