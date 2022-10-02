%{
#include<string.h>

char* DuplicateString(char* in);

int curLine = 0;

unsigned inputPos = 0;
char* inputBuf;

#undef YY_INPUT
#define YY_INPUT(buf,result,max_size) \
    { \
    result = (inputBuf[inputPos] == 0) ? YY_NULL : (buf[0] = inputBuf[inputPos++], 1); \
    }

%}

%x MULTI_LINE_COMMENT
%x SINGLE_LINE_COMMENT
 
%%
<<EOF>> {  yyterminate(); }

<INITIAL>"//"             { BEGIN(SINGLE_LINE_COMMENT); }
<SINGLE_LINE_COMMENT>.    { /* absorb anything except newline */ }
<SINGLE_LINE_COMMENT>"\n" { curLine++; BEGIN(INITIAL); }

<INITIAL>"/*"                      { BEGIN(MULTI_LINE_COMMENT); }
<MULTI_LINE_COMMENT>[^*\n]*        { /* absorb anything that's not a '*' */}
<MULTI_LINE_COMMENT>"*"+[^*/\n]*   { /* absorb '*' not followed by '/' */} 
<MULTI_LINE_COMMENT>\n             { curLine++; /* count lines even though we are in a comment */ }
<MULTI_LINE_COMMENT>"*"+"/"        { BEGIN(INITIAL); }


\"[^\"]*\"              {  yylval = DuplicateString(yytext); return TOK_STRING; }
[a-zA-Z][:._a-zA-Z0-9]+ {  yylval = DuplicateString(yytext); return TOK_IDENTIFIER;  }
[0-9][a-zA-Z]+          {  yylval = DuplicateString(yytext); return TOK_IDENTIFIER;  }
[a-zA-Z]                {  yylval = DuplicateString(yytext); return TOK_IDENTIFIER;  }

"#" {  return TOK_POUND;  }
"{" {  return TOK_OPENBRACE;  }
"}" {  return TOK_CLOSEBRACE;  }
"(" {  return TOK_OPENPAREN;  }
")" {  return TOK_CLOSEPAREN;  }
"," {  return TOK_COMMA;  }
":" {  return TOK_COLON;  }
";" {  return TOK_SEMICOLON;  }

[0-9]+"."[0-9]+[fF]  {  yylval = DuplicateString(yytext); return TOK_FLOAT; }
-[0-9]+"."[0-9]+[fF] {  yylval = DuplicateString(yytext); return TOK_FLOAT; }
[0-9]+"."[0-9]+      {  yylval = DuplicateString(yytext); return TOK_FLOAT; }
-[0-9]+"."[0-9]+     {  yylval = DuplicateString(yytext); return TOK_FLOAT; }

[0-9]+               {  yylval = DuplicateString(yytext); return TOK_INT; }
-[0-9]+              {  yylval = DuplicateString(yytext); return TOK_INT; }
0x[0-9A-Fa-f]+       {  yylval = DuplicateString(yytext); return TOK_INT; }
0b[01]+              {  yylval = DuplicateString(yytext); return TOK_INT; }

[ \t]+           { /* absorb whitespace */ }
"\n"             { curLine++; }
.                { printf( "Unrecognized character: %s\n", yytext ); }
%%


//////////////////////////////////////////////////
char* DuplicateString(char* in)
{
    return strdup(in);
}

void yysetbuf(char* b)
{    
    inputBuf = b;
    inputPos = 0;
    curLine = 0;   
}

void yyreset( )
{
    yyrestart( );
    objectCount = 0;
}

/*
int main(void)
{
    for(;;)
    {
        int token;

        if((token=yylex())==TOK_EOF) { break; }
        
        printf("Token= %d (%s)\n",token,yytext);
    }

    printf("Bye..Bye...\n");
    return 0;
}
*/