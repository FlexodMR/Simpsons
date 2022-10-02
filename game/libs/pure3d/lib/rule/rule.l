/* Lexical analyzer for StringC */

%{

/* ------------------------------------------------------------------
   Initial code (copied verbatim to the output file)
   ------------------------------------------------------------------ */

#pragma warning(disable:4273)   // inconsistent DLL linkage. dllexport assumed (isatty)

// Includes
#include <string.h>   // strcpy, strncpy
#include <io.h>       // isatty
#include <iostream.h>

#define  _LEX_CPP_   // make sure our variables get created
#include "ruleParser.hpp"
#include "parse.hpp"

extern "C" int yywrap (); // the yywrap function is declared by the caller

// Forward references
void Identifier ();
void StringConstant ();
void EatComment ();
void Report();

//// End of inititial code
%}

/* ------------------------------------------------------------------
   Some macros (standard regular expressions)
   ------------------------------------------------------------------ */

LETTER      [a-zA-Z_]
DIGIT       [0-9]
FLT         -?(([0-9]+)|([0-9]*\.[0-9]+))
FLD         {LETTER}({LETTER}|{DIGIT})*
HEX         0[x,X][a-fA-F]*
STR         \"[^\"]*\"
WSPACE      [ \t]+
DELIMIT     ,


/* ------------------------------------------------------------------
   The lexer rules
   ------------------------------------------------------------------ */
%%

"rule"      {Report(); return RULE;}
"include"   {yylval.str=CRuleParser::yystring(yytext);return INCLUDE;}
"severity"  {Report(); return SEVERITY;}
"if"        {Report(); return IF;}
"require"   {Report(); return REQUIRE;}
"label"     {Report(); return LABEL;}
"message"   {Report(); return MESSAGE;}
"file"      {Report(); return FILE_IDENT;}
"type"      {Report(); return TYPE;}
"exists"    {Report(); return EXISTS;}
"sequence"  {Report(); return SEQUENCE;}
"nocase"    {Report(); return NOCASE;}
"not"       {Report(); return NOT;}
"or"        {Report(); return OR;}
"and"       {Report(); return AND;}
"scope"     {Report(); return SCOPE;}
"children"  {yylval.str=CRuleParser::yystring(yytext);return CHILDREN;}
"parents"   {yylval.str=CRuleParser::yystring(yytext);return PARENTS;}
"siblings"  {yylval.str=CRuleParser::yystring(yytext);return SIBLINGS;}
"self"      {yylval.str=CRuleParser::yystring(yytext);return SELF;}
"SUM"       {yylval.str=CRuleParser::yystring(yytext);return SUM;}
"COUNT"     {yylval.str=CRuleParser::yystring(yytext);return COUNT;}
"MIN"       {yylval.str=CRuleParser::yystring(yytext);return MIN;}
"MAX"       {yylval.str=CRuleParser::yystring(yytext);return MAX;}
"sqrt"      {yylval.str=CRuleParser::yystring(yytext);return SQRT;}
"!"         {Report(); return NOT;}
"="         {yylval.opval=CRuleBase::kCompareEqual;return ASSIGN;}
"=="        {yylval.opval=CRuleBase::kCompareEqual;return EQUAL;}
"!="        {yylval.opval=CRuleBase::kCompareNotEqual;return NOT_EQUAL;}
">"         {yylval.opval=CRuleBase::kCompareGreater;return GREATER;}
">="        {yylval.opval=CRuleBase::kCompareGreaterOrEqual;return GREATER_EQUAL;}
"<"         {yylval.opval=CRuleBase::kCompareLess;return LESS;}
"<="        {yylval.opval=CRuleBase::kCompareLessOrEqual;return LESS_EQUAL;}
"{"         {return OPEN_BRACE;}
"}"         {return CLOSE_BRACE;}
"("         {return OPEN_PAREN;}
")"         {return CLOSE_PAREN;}
";"         {return END_STMT;}
"|"         {return BITWISE_OR;}
"//"        {EatComment();}             /* comment:    skip */
\n          {CRuleParser::NextLine();}                 /* newline:    count lines */
-?[0-9]+    {yylval.ival=atoi(yytext);return INTEGER_VALUE;}
{FLT}       {yylval.fval=atof(yytext);return FLOAT_VALUE;}
{HEX}       {yylval.str=CRuleParser::yystring(yytext);return HEX_VALUE;}
{STR}       {yylval.str=CRuleParser::yystring(yytext);return STRING_VALUE;}
{FLD}       {yylval.str=CRuleParser::yystring(yytext);return FIELD_VALUE;}
{DELIMIT}   {Report(); return DELIMITER;}
{WSPACE}    {}                          /* whitespace: (do nothing) */
.           {return ERROR_TOKEN;}       /* other char: error, illegal token */

%%

/* ------------------------------------------------------------------

   Additional code (again copied verbatim to the output file)
   ------------------------------------------------------------------ */

// The comment-skipping function: skip to end-of-line
void EatComment()  {
	char c;

   while ((c = yyinput()) != '\n' && c != 0);
	CRuleParser::NextLine();
}

// Pass the id name
void Identifier ()  {
   yylval.str = new char[strlen(yytext)+1];
   strcpy (yylval.str, yytext);
}

// Pass the string constant
void StringConstant()  {
   int l = strlen(yytext)-2;
   yylval.str = new char[l+1];
   strncpy (yylval.str, &yytext[1], l); yylval.str[l] = 0;
}

void Report()
{
    return;
    cout << "Line #" << CRuleParser::Line() << ": " << yytext << endl;
    CRuleParser::NextLine();
}
