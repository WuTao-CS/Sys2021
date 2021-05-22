%{
#include "Sysy_token.h"
#include <stdio.h>
int cur_line_num = 1;
void init_scanner();
void lex_error(char* msg, int line);
%}

/* Definitions, note: \042 is '"' */
INTEGER             ([0-9]+)
UNTERM_STRING       (\042[^\042\n]*)
/*字符串*/
STRING              (\042[^\042\n]*\042)
/*标识符*/
IDENTIFIER          ([a-zA-Z][a-zA-Z0-9]*([_\.][a-zA-Z0-9]+)?)
comment             ((\/\/.*)|(\/\*(.*|\n*)\*\/))
whitespace          ([ \t\n\r\f\v]+)
%%

[\n]                { cur_line_num++;                       }
[ \t\r\a]+          { /* ignore all spaces */               }
 /*跳过空白和注释*/
{whitespace}        {}
"/*".*"*/"              { printf("This is a commit.\n");}//“/**/”注释的处理
"//"[^\n]*              { printf("This is a commit.\n");}//“//”注释的处理
"/*"([^\*]|(\*)*[^\*/])*(\*)*"*/"	{printf("This is a commit.\n");}

 /*关系运算符*/
"<"				    { return LSS;               }
">"				    { return GRE;               }
"<="                { return LEQ;               }
">="                { return GEQ;               }
"=="                { return EQL;               }
"!="                { return NEQ;               }
 /*算术运算符*/
"-"				    { return MINU;              }
"+"				    { return PLUS;              }
"*"				    { return MULT;              }
"/"				    { return DIV;               }
"%"				    { return MOD;               }
"="                 { return ASSIGN;            }
 /*逻辑运算符*/
"&&"                { return AND;               }
"||"                { return OR;                }
"!"				    { return NOT;               }
 /*关键字*/
"void"              { return T_Void;            }
"int"               { return T_Int;             }
"while"             { return T_While;           }
"if"                { return T_If;              }
"else"              { return T_Else;            }
"return"            { return T_Return;          }
"break"             { return T_Break;           }
"continue"          { return T_Continue;        }
"const"			    { return T_Const;           }
 /*标点符号*/
"."                 { return DOT;               }
","                 { return COMMA;             }
";"                 { return SEMI;              }
"("                 { return LPARENT;           }
")"                 { return RPARENT;           }
"["                 { return LBRACK;            }
"]"                 { return RBRACK;            }
"{"                 { return LBRACE;            }
"}"                 { return RBRACE;            }
{INTEGER}           { return T_IntConstant;     }
{STRING}            { return T_StringConstant;  }
{IDENTIFIER}        { return T_Identifier;      }

<<EOF>>             { return 0; }

{UNTERM_STRING}     { lex_error("Unterminated string constant", cur_line_num);  }
.                   { lex_error("Unrecognized character", cur_line_num);        }

%%

int main(int argc, char* argv[]) 
{
    int token;
    init_scanner();
    while (token = yylex()) 
    {
        print_token(token);
        puts(yytext);
    }
    return 0;
}

void init_scanner() 
{
    printf("%-20s%s\n", "TOKEN-TYPE", "TOKEN-VALUE");
    printf("-------------------------------------------------\n");
}

void lex_error(char* msg, int line) 
{
    printf("\nError at line %-3d: %s\n\n", line, msg);
}

int yywrap(void) 
{
    return 1;
}