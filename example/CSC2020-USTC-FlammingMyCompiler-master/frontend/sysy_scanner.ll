/* -*- c++ -*- */
%{
#include <cerrno>
#include <climits>
#include <cstdlib>
#include <string>

#include "sysy_driver.hh"
#include "sysy_parser.hh"

// Work around an incompatibility in flex (at least versions
// 2.5.31 through 2.5.33): it generates code that does
// not conform to C89.  See Debian bug 333231
// <http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=333231>.
# undef yywrap
# define yywrap() 1

// CHANGE: "Code run each time a pattern is matched" moved from its
// own block below (this change was not strictly necessary).
#define YY_USER_ACTION  loc.columns (yyleng);

// CHANGE: We must exclude unistd.h or the compiler will choke on the
// `isatty()` declaration emitted by `flex` having a different
// exception specifier from the one in `unistd.h`:
#define YY_NO_UNISTD_H
// #undef YY_NULL 
// #define YY_NULL yy::sysy_parser::symbol_type \
//             (yy::sysy_parser::token::TOK_END, loc);
extern sysy_driver driver;
%}

/* Options: */
%option noyywrap nounput batch debug noinput

/* Regex abbreviations: */

MultilineComment		"/*"([^\*]|(\*)*[^\*/])*(\*)*"*/"				
SingleLineComment		"//".*$									
identifierPattern		[a-zA-Z_][a-zA-Z0-9_]*						
NumberPattern           ([1-9][0-9]*|0[0-7]*|(0x|0X)[0-9a-fA-F]*)

%%
	/**key_word**/
int 		{return yy::sysy_parser::make_INT(loc);}
else 		{return yy::sysy_parser::make_ELSE(loc);}
if 			{return yy::sysy_parser::make_IF(loc);}
return 		{return yy::sysy_parser::make_RETURN(loc);}
void 		{return yy::sysy_parser::make_VOID(loc);}
while 		{return yy::sysy_parser::make_WHILE(loc);}
const		{return yy::sysy_parser::make_CONST(loc);}
break		{return yy::sysy_parser::make_BREAK(loc);}
continue 	{return yy::sysy_parser::make_CONTINUE(loc);}

	/**special_symbol**/
[+] 		{return yy::sysy_parser::make_ADD(loc);}
[-] 		{return yy::sysy_parser::make_SUB(loc);}
[*] 		{return yy::sysy_parser::make_MUL(loc);}
[/] 		{return yy::sysy_parser::make_DIV(loc);}
[<] 		{return yy::sysy_parser::make_LT(loc);}		
"<=" 		{return yy::sysy_parser::make_LTE(loc);}
[>] 		{return yy::sysy_parser::make_GT(loc);}
">=" 		{return yy::sysy_parser::make_GTE(loc);}
"==" 		{return yy::sysy_parser::make_EQ(loc);}
"!=" 		{return yy::sysy_parser::make_NEQ(loc);}
[!]			{return yy::sysy_parser::make_NOT(loc);}		
"&&"		{return yy::sysy_parser::make_AND(loc);}		
"\|\|"		{return yy::sysy_parser::make_OR(loc);}		
[=] 		{return yy::sysy_parser::make_ASSIN(loc);}
[;] 		{return yy::sysy_parser::make_SEMICOLON(loc);}
[,] 		{return yy::sysy_parser::make_COMMA(loc);}
[(] 		{return yy::sysy_parser::make_LPARENTHESE(loc);}
[)] 		{return yy::sysy_parser::make_RPARENTHESE(loc);}
[[] 		{return yy::sysy_parser::make_LBRACKET(loc);} 
[]] 		{return yy::sysy_parser::make_RBRACKET(loc);}
[{] 		{return yy::sysy_parser::make_LBRACE(loc);}
[}] 		{return yy::sysy_parser::make_RBRACE(loc);}
[%]			{return yy::sysy_parser::make_MOD(loc);}
[ \t\n\f] 	/** 忽略 **/
"[]" 		{return yy::sysy_parser::make_ARRAY(loc);}
{MultilineComment}				 		/** 忽略 **/
{SingleLineComment}						/** 忽略 **/
{identifierPattern} 					{return yy::sysy_parser::make_IDENTIFIER(driver.lexer.YYText(), loc);}
{NumberPattern} 							{return yy::sysy_parser::make_NUMBER(std::stoi(driver.lexer.YYText(),nullptr,0),loc);}
<<EOF>>                                 {return yy::sysy_parser::make_END(loc);}
.			{std::cout << "Error in scaner!" << '\n'; exit(1);}

%%

// CHANGE: The "parts of the driver that need lexer data" have been
// moved to calc++-driver.cc (where they really belong) and access the
// new lexer object via its public interface.

// CHANGE: The linker will choke if there's no implementation of the
// default `yylex` even if it's never called.
int yyFlexLexer::yylex() {
    std::cerr << "'int yyFlexLexer::yylex()' should never be called." << std::endl;
    exit(1);
}
