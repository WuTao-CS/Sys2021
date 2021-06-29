%{
#include <stdio.h>
#include <stdlib.h>
#include <sysyFlexLexer.hh>
#include "sysy_parser.hh"
#include <iostream>
using namespace yy;
#undef YY_DECL
#define YY_DECL int yy::sysyFlexLexer::yylex(yy::sysy_parser::semantic_type *yylval, yy::sysy_parser::location_type*)
%}

%option c++
%option yyclass="yy::sysyFlexLexer"
%option noyywrap nodefault outfile="./front/sysy_scanner.cc"
%option yylineno
%option debug

DECI_DIGIT  [1-9][0-9]*
LETTER      [a-zA-Z]+
IDENT_ND    [a-zA-Z_]+

D			[0-9]
L			[a-zA-Z_]
H			[a-fA-F0-9]
E			([Ee][+-]?{D}+)
P           ([Pp][+-]?{D}+)


%%
 /*关键字*/
"const"                 {  return sysy_parser::token::T_CONST       ;}
"if"                    {  return sysy_parser::token::T_IF          ;}
"else"                  {  return sysy_parser::token::T_ELSE        ;}
"while"                 {  return sysy_parser::token::T_WHILE       ;}
"break"                 {  return sysy_parser::token::T_BREAK       ;}
"continue"              {  return sysy_parser::token::T_CONTINUE    ;}
"return"                {  return sysy_parser::token::T_RETURN      ;}
"int"                   {  yylval->emplace<type_specifier>(TYPE_INT);    return sysy_parser::token::T_INT         ;}
"void"                  {  yylval->emplace<type_specifier>(TYPE_VOID);   return sysy_parser::token::T_VOID        ;}
 /*跳过注释*/
"/*".*"*/"              {  ;}//“/**/”注释的处理
"//"[^\n]*              {  ;}//“//”注释的处理
"/*"([^\*]|(\*)*[^\*/])*(\*)*"*/"	{ ;}
 /*对于数字和标识符*/
{IDENT_ND}[0-9a-zA-Z_]* {  yylval->emplace<std::string>(yytext);                return sysy_parser::token::T_IDENTIFIER    ;}
{DECI_DIGIT}            {  yylval->emplace<int>(atoi(yytext));                  return sysy_parser::token::T_NUMBER        ;}
0[xX]{H}+               {  yylval->emplace<int>((int)strtol(yytext,nullptr,16));return sysy_parser::token::T_NUMBER        ;}
0[0-7]*                 {  yylval->emplace<int>((int)strtol(yytext,nullptr,8)); return sysy_parser::token::T_NUMBER        ;}

 /*关系运算符*/
">"                     {  yylval->emplace<relop>(OP_GT);        return sysy_parser::token::T_GT          ;}
"<"                     {  yylval->emplace<relop>(OP_LT);        return sysy_parser::token::T_LT          ;}
"<="                    {  yylval->emplace<relop>(OP_LTE);       return sysy_parser::token::T_LTE         ;}
">="                    {  yylval->emplace<relop>(OP_GTE);       return sysy_parser::token::T_GTE         ;}
"=="                    {  yylval->emplace<relop>(OP_EQ);        return sysy_parser::token::T_EQ          ;}
"!="                    {  yylval->emplace<relop>(OP_NEQ);       return sysy_parser::token::T_NEQ         ;}

 /*算术运算符*/
"+"                     {  yylval->emplace<addop>(OP_PLUS);      return sysy_parser::token::T_ADD         ;}
"-"                     {  yylval->emplace<addop>(OP_MINUS);     return sysy_parser::token::T_SUB         ;}
"*"                     {  yylval->emplace<mulop>(OP_MUL);       return sysy_parser::token::T_MUL         ;}
"/"                     {  yylval->emplace<mulop>(OP_DIV);       return sysy_parser::token::T_DIV         ;}
"%"                     {  yylval->emplace<mulop>(OP_MOD);       return sysy_parser::token::T_MOD         ;}
"="                     {  return sysy_parser::token::T_ASSIGN      ;}

 /*逻辑运算符*/
"||"                    {  yylval->emplace<logop>(OP_OR);        return sysy_parser::token::T_OR          ;}
"&&"                    {  yylval->emplace<logop>(OP_AND);       return sysy_parser::token::T_AND         ;}
"!"                     {  yylval->emplace<unaryop>(OP_NOT);     return sysy_parser::token::T_NOT         ;}

 /*标点符号*/
"("                     {  return sysy_parser::token::T_LPARENTHESE ;}
")"                     {  return sysy_parser::token::T_RPARENTHESE ;}
"["                     {  return sysy_parser::token::T_LBRACKET    ;}
"]"                     {  return sysy_parser::token::T_RBRACKET    ;}
"{"                     {  return sysy_parser::token::T_LBRACE      ;}
"}"                     {  return sysy_parser::token::T_RBRACE      ;}
","                     {  return sysy_parser::token::T_COMMA       ;}
";"                     {  return sysy_parser::token::T_SEMICOLIN   ;}
 /*跳过空白*/
[ \t\v\f]               { }
[\n]                    { }

"[]" 		            {  return sysy_parser::token::T_ARRAY       ;}
.                       {  std::cout<<"##########"<<std::endl    ;}

<<EOF>>                 {  return sysy_parser::token::T_END           ;}
%%
