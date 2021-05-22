%{
#include <cstdio>
#include <cstdlib>
#include <sysyFlexLexer.hh>
#include <sysy_parser.hh>
using namespace yy;

#undef YY_DECL
#define YY_DECL int yy::sysyFlexLexer::yylex(yy::sysy_parser::semantic_type *yylval, yy::sysy_parser::location_type*)
%}

%option c++
%option yyclass="yy::sysyFlexLexer"
%option noyywrap nodefault outfile="./build/sysy_scanner.cc"
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
"const"                 {  return sysy_parser::token::TOK_CONST       ;}
"if"                    {  return sysy_parser::token::TOK_IF          ;}
"else"                  {  return sysy_parser::token::TOK_ELSE        ;}
"while"                 {  return sysy_parser::token::TOK_WHILE       ;}
"break"                 {  return sysy_parser::token::TOK_BREAK       ;}
"continue"              {  return sysy_parser::token::TOK_CONTINUE    ;}
"return"                {  return sysy_parser::token::TOK_RETURN      ;}
"int"                   {  yylval->emplace<type_specifier>(TYPE_INT);    return sysy_parser::token::TOK_INT         ;}
"void"                  {  yylval->emplace<type_specifier>(TYPE_VOID);   return sysy_parser::token::TOK_VOID        ;}
"/*".*"*/"              {  ;}
"//"[^\n]*              {  ;}
{IDENT_ND}[0-9a-zA-Z_]* {  yylval->emplace<std::string>(yytext);                return sysy_parser::token::TOK_IDENTIFIER    ;}
{DECI_DIGIT}            {  yylval->emplace<int>(atoi(yytext));                  return sysy_parser::token::TOK_NUMBER        ;}
0[xX]{H}+               {  yylval->emplace<int>((int)strtol(yytext,nullptr,16));return sysy_parser::token::TOK_NUMBER        ;}
0[0-7]*                 {  yylval->emplace<int>((int)strtol(yytext,nullptr,8)); return sysy_parser::token::TOK_NUMBER        ;}
"+"                     {  yylval->emplace<addop>(OP_PLUS);      return sysy_parser::token::TOK_ADD         ;}
"-"                     {  yylval->emplace<addop>(OP_MINUS);     return sysy_parser::token::TOK_SUB         ;}
"*"                     {  yylval->emplace<mulop>(OP_MUL);       return sysy_parser::token::TOK_MUL         ;}
"/"                     {  yylval->emplace<mulop>(OP_DIV);       return sysy_parser::token::TOK_DIV         ;}
"%"                     {  yylval->emplace<mulop>(OP_MOD);       return sysy_parser::token::TOK_MOD         ;}
">"                     {  yylval->emplace<relop>(OP_GT);        return sysy_parser::token::TOK_GT          ;}
"<"                     {  yylval->emplace<relop>(OP_LT);        return sysy_parser::token::TOK_LT          ;}
"!"                     {  yylval->emplace<unaryop>(OP_NOT);     return sysy_parser::token::TOK_NOT         ;}
"="                     {  return sysy_parser::token::TOK_ASSIGN      ;}
"("                     {  return sysy_parser::token::TOK_LPARENTHESE ;}
")"                     {  return sysy_parser::token::TOK_RPARENTHESE ;}
"["                     {  return sysy_parser::token::TOK_LBRACKET    ;}
"]"                     {  return sysy_parser::token::TOK_RBRACKET    ;}
"{"                     {  return sysy_parser::token::TOK_LBRACE      ;}
"}"                     {  return sysy_parser::token::TOK_RBRACE      ;}
","                     {  return sysy_parser::token::TOK_COMMA       ;}
";"                     {  return sysy_parser::token::TOK_SEMICOLIN   ;}
"||"                    {  yylval->emplace<logop>(OP_OR);        return sysy_parser::token::TOK_OR          ;}
"&&"                    {  yylval->emplace<logop>(OP_AND);       return sysy_parser::token::TOK_AND         ;}
"<="                    {  yylval->emplace<relop>(OP_LTE);       return sysy_parser::token::TOK_LTE         ;}
">="                    {  yylval->emplace<relop>(OP_GTE);       return sysy_parser::token::TOK_GTE         ;}
"=="                    {  yylval->emplace<relop>(OP_EQ);        return sysy_parser::token::TOK_EQ          ;}
"!="                    {  yylval->emplace<relop>(OP_NEQ);       return sysy_parser::token::TOK_NEQ         ;}
[ \t\v\f]               { }
[\n]                    { }
.                       {  printf("[ unknown '%s' ]", yytext)    ;}
<<EOF>>                 {  return sysy_parser::token::TOK_END           ;}
%%