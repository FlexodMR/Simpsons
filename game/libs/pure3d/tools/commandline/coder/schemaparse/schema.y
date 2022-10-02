%{
#define YYSTYPE char*
#define YYDEBUG 1
#define YYERROR_VERBOSE 1

#include <malloc.h>
#include <stdlib.h>
#include <string.h>
#include "construct.h"

int yylex(void);

int objectCount = 0;
int propertyCount = 0;
int propertyParamCount = 0;
int memberCount = 0;

void yyerror(char *errorinfo);
%}

%token TOK_IDENTIFIER
%token TOK_STRING
%token TOK_OPENBRACE
%token TOK_CLOSEBRACE
%token TOK_OPENPAREN
%token TOK_CLOSEPAREN
%token TOK_COMMA
%token TOK_COLON
%token TOK_SEMICOLON
%token TOK_INT
%token TOK_FLOAT  
%token TOK_POUND    

%%

start : fileproperties objectlist    { ConstructObjectList(objectCount); } 
        | objectlist { ConstructObjectList(objectCount); }
        ;

objectlist : object { objectCount++; }
      | object objectlist { objectCount++; }
      ;
      
object : TOK_IDENTIFIER TOK_IDENTIFIER properties TOK_OPENBRACE members TOK_CLOSEBRACE { ConstructObject($1 , $2, memberCount, 1 ); memberCount = 0; }
         | TOK_IDENTIFIER TOK_IDENTIFIER TOK_OPENBRACE members TOK_CLOSEBRACE { ConstructObject($1 , $2, memberCount, 0 ); memberCount = 0; }
         | TOK_IDENTIFIER TOK_IDENTIFIER TOK_OPENBRACE TOK_CLOSEBRACE { ConstructObject($1, $2, 0, 0 ); memberCount = 0; }
         | TOK_IDENTIFIER TOK_IDENTIFIER properties TOK_OPENBRACE TOK_CLOSEBRACE { ConstructObject($1 , $2, 0, 1 ); memberCount = 0; }
         ;

fileproperties : filepropertylist { ConstructFilePropertyBlock(propertyCount); propertyCount = 0; }
            ;
            
filepropertylist : fileproperty { propertyCount++; }
               |   fileproperty filepropertylist{ propertyCount++;}
               ;

fileproperty : TOK_POUND TOK_IDENTIFIER TOK_OPENPAREN propertyparams TOK_CLOSEPAREN { ConstructProperty($2, propertyParamCount); propertyParamCount = 0; }         

properties : TOK_COLON propertylist  { ConstructPropertyBlock(propertyCount); propertyCount = 0; }
            ;
            
propertylist : property                 { propertyCount++; }
               | propertylist TOK_COMMA property { propertyCount++;}
               ;

property : TOK_IDENTIFIER                                { ConstructProperty($1, propertyParamCount); propertyParamCount = 0; }
         | TOK_IDENTIFIER TOK_OPENPAREN TOK_CLOSEPAREN   { ConstructProperty($1, propertyParamCount); propertyParamCount = 0; }
         | TOK_IDENTIFIER TOK_OPENPAREN propertyparams TOK_CLOSEPAREN { ConstructProperty($1, propertyParamCount); propertyParamCount = 0; }
         
propertyparams : propertyparam  { propertyParamCount++ ; }
               | propertyparams TOK_COMMA propertyparam { propertyParamCount++ ; }

propertyparam : TOK_IDENTIFIER { ConstructParam($1); }
              | TOK_STRING { ConstructParam($1); }
              | TOK_INT { ConstructParam($1); }
              | TOK_FLOAT { ConstructParam($1); }
              
members : member  { memberCount++; }
        | members member { memberCount++; }
        ;

member : type TOK_IDENTIFIER TOK_SEMICOLON { ConstructMember($2, 0);}
       | type TOK_IDENTIFIER properties TOK_SEMICOLON { ConstructMember($2, 1);}
       ;

type : property 
%%
#include "lex.yy.c"

/////////////////////////////////////////
void yyerror(char *errorinfo)
{  printf("%s : line %d, near %s\n", errorinfo, curLine, yytext);  }

