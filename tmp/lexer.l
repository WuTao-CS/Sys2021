%{

#ifndef YYSTYPE_IS_DECLARED
#define YYSTYPE TokenData
#define YYSTYPE_IS_DECLARED 1
#endif

#include "token_type.h"

#include "parser.h"
#include <stdlib.h>
#include <string>
#include <iostream> 


using std::string; 

int linum = 1;
%}

%%

[ \t]  	{ /* skip blanks and tabs */ }
(\r|\n|\r\n)   { linum++; /* skip newlines */ }
"//"    { 
    // no string support, take it easy 
    int c;
    while ((c = yyinput()) != 0) {
        if (c == '\n') {
            linum++;
            break;
        } 
    }
}
"/*"    {	/* skip multi-line comments */
    int c;
    while ((c = yyinput()) != 0) {
        if (c == '\n')
            linum++;
        else if (c == '*') {
            if ((c = yyinput()) == '/')
                break;
            else
                unput(c);
        }
    }
}

"\""    {
    int c; 
    string str = "";
    while ((c = yyinput()) != 0) {
        if (c == '\n') {
            linum++;
        } else if (c == '\"') {
            break; 
        } else {
            str += c; 
        }
    }
    yylval = TokenData(str);
    return P_STR; 
}

"void"      { return P_VOID; }
"int"       { return P_INT; }
"const"     { return P_CONST; }
"while"     { return P_WHILE; }
"if"        { return P_IF; }
"else"      { return P_ELSE; }
"return"    { return P_RETURN; }
"break"     { return P_BREAK; }
"continue"  { return P_CONTINUE; }    

"&&"        { return P_AND; }
"||"        { return P_OR; }
"<="        { return P_LE; }
">="        { return P_GE; }
"=="        { return P_EQ; }
"!="        { return P_NE; } 

"+"|"-"|"*"|"/"|"%"|"<"|">"|"="|"!"|";"|","|"("|")"|"["|"]"|"{"|"}"    { return yytext[0]; }

0[Xx][0-9A-Fa-f]+|[0-9]+   { yylval = TokenData(atoi(yytext)); return P_NUM;  }
[a-zA-Z_][0-9a-zA-Z_]*      { yylval = TokenData(string(yytext));  return P_IDENTIFIER;  }

.           { std::cerr << "Syntax Error when reading \'" << yytext << "\'" << std::endl; }

%%

int yywrap(void) { 
    return 1;
}

/*
int main()
{
    while (1) {
        std::cout << yylex() << std::endl;
    }
}
*/
