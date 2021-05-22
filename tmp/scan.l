%option yylineno
%{
#include<stdio.h>
#include<string.h>
int Dec2Dec(char temp[]);
int Oct2Dec(char temp[]);
int Hex2Dec(char temp[]);
extern int yylineno;
%}

/*数字定义*/
/*十进制*/
decimal (0|[1-9][0-9]*)
/*十六进制*/
hexadecimal 0[xX][a-fA-F0-9]
/*八进制*/
octal 0[0-7]
/*总表示*/
number {decimal}|{hexadecimal}|{octal}

/*关键字*/
CONST const
INT int
VOID void
IF if
ELSE else
WHILE while
BREAK break
CONTINUE continue
RETURN return


/*标识符定义*/
identifier [a-zA-Z][a-zA-Z0-9]*([_\.][a-zA-Z0-9]+)?

/*其它字符*/
comment (\/\/.*)|(\/\*(.*|\n*)\*\/)
whitespace [ \t\n\r\f\v]+
 
 /*运算符*/
 /*算术运算符*/
ADD  \+
SUB  \-
MUL  \*
QUO  \/
REM  %

 /*赋值运算符*/
ASSIGN  =

 /*逻辑运算符*/
AND   &&
OR    \|\|
NOT    \!

 /*关系运算符*/
EQL     ==
LESS     <
GREATER     >
NEQ       !=
LEQ       <=
GEQ       >=

 /*标点符号*/
LPAREN  \(
LBRACK  \[
LBRACE  \{
COMMA   ,
RPAREN     \)
RBRACK     \]
RBRACE     \}
SEMI    ;
%%
 
 /*关键字*/
{CONST} {
        printf("CONST\t_\n");
        return tCONST;
}
{BREAK} {
        printf("BREAK\t_\n");
        return tBREAK;
}
{CONTINUE} {
        printf("CONTINUE\t_\n");
        return tCONTINUE;
}
{ELSE} {
        printf("ELSE\t_\n");
        return tELSE;
}
{IF} {
        printf("IF\t_\n");
        return tIF;
}
{INT} {
        printf("INT\t_\n");
        return tINT;
}
{RETURN} {
        printf("RETURN\t_\n");
        return tRETURN;
}
{VOID} {
        printf("VOID\t_\n");
        return tVOID;
}
{WHILE} {
        printf("WHILE\t_\n");
        return tWHILE;
}


 /*数字表示*/
{decimal}     {
        printf("INT10\t%d\n", Dec2Dec(yytext));
        return tNUMBER;
}
{octal}   {
        printf("INT8\t%d\n",Oct2Dec(yytext));
        return tNUMBER;
}
{hexadecimal} {
        printf("INT16\t%d\n",Hex2Dec(yytext));
        return tNUMBER;
}

 /*跳过空白和注释*/
{whitespace} {}
{comment} {
        printf("This is a commit.\n");
}

 /*运算符*/
 /*算术运算符*/
{ADD} {
        printf("%s\t_\n",yytext);
        return tADD;
}
{SUB} {
        printf("%s\t_\n",yytext);
        return tSUB;
}
{MUL} {
        printf("%s\t_\n",yytext);
        return tMUL;
}
{QUO} {
        printf("%s\t_\n",yytext);
        return tQUO;
}
{REM} {
        printf("%s\t_\n",yytext);
        return tREM;
}

 /*逻辑运算符*/
{AND} {
        printf("%s\t_\n",yytext);
        return tAND;
}
{OR} {
        printf("%s\t_\n",yytext);
        return tOR;
}
{NOT} {
        printf("%s\t_\n",yytext);
        return tNOT;
}

 /*赋值运算符*/
{ASSIGN} {
        printf("%s\t_\n",yytext);
        return tASSIGN;
}

 /*关系运算符*/
{EQL} {
        printf("%s\t_\n",yytext);
        return tEQL;
}
{LESS} {
        printf("%s\t_\n",yytext);
        return tLESS;
}
{GREATER} {
        printf("%s\t_\n",yytext);
        return tGREATER;
}
{NEQ} {
        printf("%s\t_\n",yytext);
        retunr tNEQ;
}
{LEQ} {
        printf("%s\t_\n",yytext);
        return tLEQ;
}
{GEQ} {
        printf("%s\t_\n",yytext);
        return tGEQ;
}

 /*标点符号*/
{LPAREN} {
        printf("%s\t_\n",yytext);
        return tLPAREN;
}
{LBRACK} {
        printf("%s\t_\n",yytext);
        return tLBRACK;
}
{LBRACE} {
        printf("%s\t_\n",yytext);
        return tLBRACE;
}
{COMMA} {
        printf("%s\t_\n",yytext);
        return tCOMMA;
}
{RPAREN} {
        printf("%s\t_\n",yytext);
        return tRPAREN;
}
{RBRACK} {
        printf("%s\t_\n",yytext);
        return tRBRACK;
}
{RBRACE} {
        printf("%s\t_\n",yytext);
        return tRBRACE;
}
{SEMI} {
        printf("%s\t_\n",yytext);
        return tSEMI;
}



{identifier} {
        printf("IDN\t%s\n",yytext);
        return tIDENT;
}

%%
int Dec2Dec(char temp[])						//十进制转int
{
    	int sum = 0;
	for (int i = 1;i < strlen(temp);i++)
	{
		sum = sum * 10 + temp[i] - '0';
	}
	return sum;
}

int Oct2Dec(char temp[])						//八进制转十进制
{
	int sum = 0;
	for (int i = 1;i < strlen(temp);i++)
	{
		sum = sum * 8 + temp[i] - '0';
	}
	return sum;
}

int Hex2Dec(char temp[])                                                //十六进制转十进制
{
        int sum = 0;
        int mid[100];
        for (int ii = 0;ii < strlen(temp);ii++)
        {
                if (temp[ii] == 'a' || temp[ii] == 'A')
                        mid[ii] = 10;
                else if (temp[ii] == 'b' || temp[ii] == 'B')
                        mid[ii] = 11;
                else if (temp[ii] == 'c' || temp[ii] == 'C')
                        mid[ii] = 12;
                else if (temp[ii] == 'd' || temp[ii] == 'D')
                        mid[ii] = 13;
                else if (temp[ii] == 'e' || temp[ii] == 'E')
                        mid[ii] = 14;
                else if (temp[ii] == 'f' || temp[ii] == 'F')
                        mid[ii] = 15;
                else mid[ii] = temp[ii] - '0';
        }
        int i;
        for (i = 2;i < strlen(temp);i++)
        {
                sum = sum * 16 + mid[i];
        }
        return sum;
}

int main(int argc,char **argv)
{
        yylineno = 1;
        yylex();
        return 0;
}
int yywarp(){
        return 1;
}
