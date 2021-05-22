#ifndef SYSY_TOKEN_H
#define SYSY_TOKEN_H

typedef enum 
{
    LSS = 256, GRE, LEQ, GEQ,EQL,NEQ, 
    AND, OR, NOT,
    MINU,PLUS,MULT,DIV,MOD,ASSIGN,
    T_Void, T_Int, T_While,T_If, T_Else, T_Return, T_Break,
    T_Continue,T_Const,
    DOT,COMMA,SEMI,LPARENT,RPARENT,LBRACK,RBRACK,LBRACE,RBRACE,
    T_Identifier,T_StringConstant,T_IntConstant

} TokenType;

static void print_token(int token) {
    static char* token_strs[] = {
        "LSS", "GRE", "LEQ", "GEQ" , "EQL" ,"NEQ", 
        "AND", "OR", "NOT",
        "MINU","PLUS","MULT","DIV","MOD","ASSIGN",
        "T_Void", "T_Int", "T_While","T_If", "T_Else", "T_Return", "T_Break",
        "T_Continue","T_Const",
        "DOT","COMMA","SEMI","LPARENT","RPARENT","LBRACK","RBRACK","LBRACE","RBRACE",
        "T_Identifier","T_StringConstant","T_IntConstant"
    };

    if (token < 256) 
    {
        printf("%-20c", token);
    } else {
        printf("%-20s", token_strs[token-256]);
    }
}

#endif
