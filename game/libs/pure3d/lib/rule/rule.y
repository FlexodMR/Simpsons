/* Parser for StringC */

%{

/* ------------------------------------------------------------------
   Initial code (copied verbatim to the output file)
   ------------------------------------------------------------------ */

// Includes
#include <malloc.h>  // _alloca is used by the parser
#include <string.h>  // strcpy
#include <stdlib.h>

#include "lex.h"         // the lexer
#include "ruleBase.hpp"
#include "ruleParser.hpp"
#include "parse.hpp"
#include <iostream.h>

// Some yacc (bison) defines
#define YYDEBUG 1	      // Generate debug code; needed for YYERROR_VERBOSE
#define YYERROR_VERBOSE // Give a more specific parse error message 

// Error-reporting function must be defined by the caller
void Error (char *format, ...);

// Forward references
void yyerror (char *msg);

%}

/* ------------------------------------------------------------------
   Yacc declarations
   ------------------------------------------------------------------ */

/* The structure for passing value between lexer and parser */
%union {
   char *str;
   enum CRuleBase::RuleCompareEnum opval;
   int ival;
   float fval;
}

%token RULE INCLUDE IF REQUIRE LABEL MESSAGE FILE_IDENT
%token TYPE EXISTS SEQUENCE SEVERITY 
%token SUM COUNT MIN MAX
%token SQRT
%token SCOPE PARENTS SIBLINGS CHILDREN SELF
%token NOCASE NOT OR AND BITWISE_OR
%token OPEN_BRACE CLOSE_BRACE
%token OPEN_PAREN CLOSE_PAREN
%token END_STMT 
%token ASSIGN EQUAL NOT_EQUAL GREATER GREATER_EQUAL LESS LESS_EQUAL
%token FIELD_VALUE STRING_VALUE HEX_VALUE INTEGER_VALUE FLOAT_VALUE
%token ERROR_TOKEN
%nonassoc DELIMITER

/*%type <type> type simple_type cast*/

%%

/* ------------------------------------------------------------------
   Yacc grammar rules
   ------------------------------------------------------------------ */

program
    : rule_list                                 
	;

rule_list
    : rule_list rule_or_include
    | /* empty */
    ;

rule_or_include
    : rule                                      {}
    | include                                   { CRuleParser::Include( $<str>2 ); }
    ;

rule
    : rule_start OPEN_BRACE rule_contents CLOSE_BRACE  { CRuleParser::AddRuleToCollection(); }
    ;

rule_contents
    : rule_contents rule_statement
    | /* empty */
    ;

rule_statement
    : severity                                  { CRuleParser::SetSeverity( $<ival>2 ); }                          
    | scope                                     { CRuleParser::AddScope( $<str>2 ); }
    | label                                     { CRuleParser::SetLabel( $<str>2 ); }
    | message                                   { CRuleParser::SetMessage( $<str>2 ); }
    | if_block                                  { CRuleParser::AddConditions(); }
    | require_block                             { CRuleParser::AddRequirements(); }
    | sequence_block                            { CRuleParser::AddSequence(); }
    | rule                                      { cout << " -> Sub-Rule {}" << endl; }
    ;

rule_start
    : RULE                                      { CRuleParser::StartRule(); }
    ;

severity
    : SEVERITY integer
    | SEVERITY integer END_STMT
    ;

label
    : LABEL STRING_VALUE
    | LABEL STRING_VALUE END_STMT
    ;

message
    : MESSAGE STRING_VALUE                        
    | MESSAGE STRING_VALUE END_STMT
    ;

scope
    : SCOPE scope_group
    ;

scope_group
    : scope_group BITWISE_OR scope_token        { CRuleParser::AddScope( $<str>3 ); }
    | scope_token                               { CRuleParser::SetScope( $<str>1 ); }
    ;

scope_token
    : PARENTS
    | SIBLINGS
    | CHILDREN
    | SELF
    ;

if_block    
    : IF compound_statement                     
    | IF statement
    ;

require_block
    : REQUIRE compound_statement                
    | REQUIRE statement
    ;

sequence_block
    : sequence_start compound_sequence
    ;

compound_sequence
    : OPEN_BRACE attribute_list CLOSE_BRACE
    ;

sequence_start
    : SEQUENCE                                  { CRuleParser::StartSequence(); }
    ;

compound_statement
    : OPEN_BRACE statement_list CLOSE_BRACE
    ;

statement_list
    : statement_list statement
    | /* empty */
    ;

statement
    : END_STMT                    {puts ("Empty statement");}
    | modified_condition
    | modified_attribute
    ;

attribute_list
    : attribute_list modified_attribute
    | /* empty */
    ;

modified_condition
    : condition
    | modifier modified_condition
    ;

modified_attribute
    : attribute
    | modifier modified_attribute
    ;

modifier
    : NOCASE                                    { CRuleParser::SetNoCase( true ); }
    | NOT                                       { CRuleParser::SetNot( true ); }
    | AND                                       { CRuleParser::SetOr( false ); }
    | OR                                        { CRuleParser::SetOr( true ); }
    ;

condition
    : FILE_IDENT string                         { CRuleParser::AddFileAttribute( $<str>2 ); }
    | type                                      { CRuleParser::AddTypeAttribute( $<str>2 ); }
    | exists                                    { CRuleParser::AddExistsAttribute( $<str>2 ); }
    ;

attribute
    : field op HEX_VALUE
    | field op string                           { CRuleParser::AddStringAttribute( $<str>1, $<opval>2, $<str>3 ); }
    | field op integer                          { CRuleParser::AddIntAttribute( $<str>1, $<opval>2, $<ival>3 ); }
    | field op float                            { CRuleParser::AddFloatAttribute( $<str>1, $<opval>2, $<fval>3 ); }
    | field op field                            { CRuleParser::AddFieldAttribute( $<str>1, $<opval>2, $<str>3 ); }
    | min_macro op integer                      { CRuleParser::AddMacroMin( $<opval>2, $<ival>3 ); }
    | min_macro op float                        { CRuleParser::AddMacroMin( $<opval>2, $<fval>3 ); }
    | max_macro op integer                      { CRuleParser::AddMacroMax( $<opval>2, $<ival>3 ); }
    | max_macro op float                        { CRuleParser::AddMacroMax( $<opval>2, $<fval>3 ); }
    | sum_macro op integer                      { CRuleParser::AddMacroSum( $<opval>2, $<ival>3 ); }
    | sum_macro op float                        { CRuleParser::AddMacroSum( $<opval>2, $<fval>3 ); }
    | count_macro op integer                    { CRuleParser::AddMacroCount( $<opval>2, $<ival>3 ); }
    ;

include
    : INCLUDE string
    | INCLUDE string END_STMT
    ;

type
    : TYPE string
    | TYPE field
    ;

exists
    : EXISTS field
    | EXISTS string
    ;

op
    : ASSIGN
    | EQUAL
    | NOT_EQUAL
    | GREATER
    | GREATER_EQUAL
    | LESS
    | LESS_EQUAL
    ;

count_macro
    : COUNT OPEN_PAREN CLOSE_PAREN
    ;

sum_macro
    : SUM OPEN_PAREN field CLOSE_PAREN          { CRuleParser::SetMacroField( $<str>3 ); }
    | SUM OPEN_PAREN string CLOSE_PAREN         { CRuleParser::SetMacroField( $<str>3 ); }
    ;

min_macro
    : MIN OPEN_PAREN field CLOSE_PAREN          { CRuleParser::SetMacroField( $<str>3 ); }
    | MIN OPEN_PAREN string CLOSE_PAREN         { CRuleParser::SetMacroField( $<str>3 ); }
    ;

max_macro
    : MAX OPEN_PAREN field CLOSE_PAREN          { CRuleParser::SetMacroField( $<str>3 ); }
    | MAX OPEN_PAREN string CLOSE_PAREN         { CRuleParser::SetMacroField( $<str>3 ); }
    ;

integer
    : INTEGER_VALUE             { $<ival>$ = $<ival>1; }
    ;

float 
    : FLOAT_VALUE               { $<fval>$ = $<fval>1; }
    ;

string
    : STRING_VALUE              {}
    ;

field
      : FIELD_VALUE             {}
      ;

%%
/* ------------------------------------------------------------------
   Additional code (again copied verbatim to the output file)
   ------------------------------------------------------------------ */

