//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     26 March, 2002
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/ruleParser.hpp"
#include "../inc/ruleEnv.hpp"

#include "../inc/lex.h"

#include "bewert_debug.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

const char* RULE_PATH_VAR = "RULE_PATH";

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

CRuleCollection                 CRuleParser::mCollection;
CListArray<CRuleAttribute>      CRuleParser::mAttributes;
CStack<CRule*>                  CRuleParser::mpRuleStack;

char*                           CRuleParser::mMacroField = NULL;
CListArray<char*>               CRuleParser::mpFile;
CStack<char*>                   CRuleParser::mpYYstring;
unsigned int                    CRuleParser::mLine = 0;
bool                            CRuleParser::mbOr = false;
bool                            CRuleParser::mbNot = false;
bool                            CRuleParser::mbNoCase = false;

bool                            CRuleParser::mbOK = false;

// Function called by the parser when an error occurs while parsing
// (parse error or stack overflow)
void yyerror(char *msg) 
{
    fclose(yyin);
    CRuleParser::Error (msg);
}

// This function is called by the lexer when the end-of-file
// is reached; you can reset yyin (the input FILE*) and return 0
// if you want to process another file; otherwise just return 1.
extern "C" int yywrap(void) 
{
    return 1;
}


//===========================================================================
// Constructor / Destructor
//===========================================================================

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

CRuleParser::CRuleParser()
{
}

CRuleParser::CRuleParser( char* pFile, bool* pSuccess )
{
    bool bSuccess = Parse( pFile );

    if ( pSuccess != NULL )
    {
        *pSuccess = bSuccess;
    }
}

CRuleParser::~CRuleParser()
{
    Clear();
}

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CRuleParser::Clear
//===========================================================================
// Description: Clears the contents of the Parser object.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::Clear() 
{
    mbOK = false;

    mbNoCase = false;
    mbNot = false;
    mbOr = false;
    mLine = 0;

    while ( mpFile.NumItems() )
    {
        delete [] mpFile[0];
        mpFile.DeleteItem(0);
    }

    while ( !mpYYstring.IsEmpty() )
    {
        char* pString = mpYYstring.Pop();
        delete [] pString;
    }

    while ( !mpRuleStack.IsEmpty() )
    {
        CRule* pRule = mpRuleStack.Pop();
        delete pRule;
    }

    mAttributes.Clear();

    delete [] mMacroField;
    mMacroField = NULL;

    mCollection.Clear();
}

//===========================================================================
// CRuleParser::Parse
//===========================================================================
// Description: Starts processing the current file.  The file is added
//              to the file array to avoid recursive parsing (via the 
//              'include' token).
//
// Constraints: 
//
//  Parameters: char* pFile: NULL-terminated filepath.
//
//      Return: (bool): TRUE if parsed successfully; else FALSE.
//
//===========================================================================
bool CRuleParser::Parse( char* pFile )
{
    bool bSuccess = false;

    if ( pFile != NULL )
    {
        char* newFile = new char [ strlen( pFile ) + 1 ];
        strcpy( newFile, pFile );
        mpFile.AddItem( newFile );
        bSuccess = Parse();
    }

    return bSuccess;
}

//===========================================================================
// CRuleParser::Parse
//===========================================================================
// Description: Processes the first file in the file array.
//
//              "Included" files are added to the end of the list and
//              parsed _after_ the current file.  As such, "include" does
//              not specify an insertion point.  Currently the Rules syntax
//              has no dependencies where this matters.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (bool): TRUE if parse is successful; FALSE if it isn't.
//
//===========================================================================
bool CRuleParser::Parse( void )
{
    if ( !mpFile.NumItems() ) return true;

    char* pFile = mpFile[0];

    if ( mCollection.HasFile( pFile ) ) return false;

    mLine = 1;
    mbOK = false;

    // Set up a custom PATH env var to find files via 'include' token
    CreateLaunchEnvVar( RULE_PATH_VAR, pFile );

    yyin = fopen( pFile, "rt" );
    if ( yyin )
    {
        mbOK = true;

        yyrestart( yyin );
        yyparse();

        fclose( yyin );
    }

    if ( mbOK )
    {
        mCollection.AddFile( pFile );

        // MEMORY LEAK PATCH: 6 Jun 2002
        delete [] mpFile[0];
        // END MEMORY LEAK PATCH
        mpFile.DeleteItem(0);

        mbOK = Parse();
    }

    return mbOK;
}

//===========================================================================
// CRuleParser::Include
//===========================================================================
// Description: Called by the parser when an "include" token is found.
//
//              Adds the specified file to the end of the file array.
//
// Constraints: 
//
//  Parameters: char* pInclude: NULL-terminated filename to add to the array.
//
//      Return: (bool): TRUE if file was added (i.e. not already in list);
//                      FALSE if file was not added.
//
//===========================================================================
bool CRuleParser::Include( char* pInclude )
{
    bool bSuccess = false;

    char* pathbuffer = new char [_MAX_PATH];

    if ( FindInPath( pInclude, pathbuffer, RULE_PATH_VAR ) )
    {
        mpFile.AddItem( pathbuffer );
    }
    else
    {
        delete [] pathbuffer;
    }

    return bSuccess;
}

//===========================================================================
// CRuleParser::GetCollection
//===========================================================================
// Description: Returns the CRuleCollection used by the Parser to assemble
//              the Rules it creates.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (CRuleCollection*): Pointer to the CRuleCollection.  Will be
//                  NULL if no successful parse has been performed.
//
//===========================================================================
CRuleCollection* CRuleParser::GetCollection( void )
{
    if ( mbOK )
    {
        return &mCollection;
    }
    else
    {
        return NULL;
    }
}

//===========================================================================
// CRuleParser::Error
//===========================================================================
// Description: Called when a parse error is encountered.  Adds a description
//              of the parse error to the error log.
//
// Constraints: 
//
//  Parameters: char* format, ...: A printf() style argument list.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::Error( char* format, ... )
{
    char* pBuf = new char [1024];
    va_list args;

    mbOK = false;

    va_start(args, format);
    sprintf(pBuf, format, args);
    va_end(args);

    gRuleLog.Add( CRuleLogEntry( mpFile[0], pBuf, mLine ) );

    delete [] pBuf;
}

//===========================================================================
// CRuleParser::yystring
//===========================================================================
// Description: 'bison' conveniently offers a pointer to the current
//              token in the parse string to use when calling commands based
//              on grammar ($<1>, for example).  However, if the grammar
//              contains multiple tokens ("field op field" for example) 
//              the pointer to the first token would be the entire string
//              (i.e. all three tokens) as it really is just a pointer to
//              a character in the 'flex' input.
//
//              To be able to access tokens individually I allocate and copy
//              the 'flex' tokens into strings stored in the CRuleParser
//              class.  This ensures that the string pointers returned
//              by the 'bison' grammar are singular.
//
// Constraints:
//
//  Parameters: char* yytext: Pointer to the 'yytext' string currently 
//                            being parsed by 'flex'.
//
//      Return: (char*): Pointer to the newly allocated copy of the string.
//
//===========================================================================
char* CRuleParser::yystring( char* yytext )
{
    char* yydup = NULL;

    if ( yytext != NULL )
    {
        char* yystart = yytext;

        size_t len = strlen(yytext) + 1;

        if ( ( *yystart == '\"' ) && ( *(yystart+len-2) == '\"' ) )
        {
            yystart++;
            len -= 2;
        }
        
        yydup = new char [ len ];

        if ( yydup != NULL )
        {
            memset( yydup, 0, len );
            strncpy( yydup, yystart, (len-1) );
            mpYYstring.Push( yydup );
        }
    }

    return yydup;
}

//===========================================================================
// CRuleParser::NextLine
//===========================================================================
// Description: Called by the parser when a newline token is found.
//              Increments the line counter, used to identify the position 
//              of syntax errors within the parsed input.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::NextLine( void )
{
    mLine++;
}

//===========================================================================
// CRuleParser::SetOr
//===========================================================================
// Description: Called by the parser when an 'or' or 'and' token is found.
//
//              Sets the "OR" flag on the current attribute.
//
// Constraints: 
//
//  Parameters: bool bOr: TRUE for 'or' token; FALSE for 'and' token.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::SetOr( bool bOr )
{
    if ( mAttributes.NumItems() > 0 )
    {
        mAttributes.Last()->SetOrWithNext( bOr );
    }
}

//===========================================================================
// CRuleParser::SetNot
//===========================================================================
// Description: Called by the parser when a 'not' token is found.
//
//              Sets the "NOT" flag, which will be applied to the _next_
//              attribute that is created.
//
// Constraints: 
//
//  Parameters: bool bNot: For now, always TRUE.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::SetNot( bool bNot )
{
    mbNot = bNot;
}

//===========================================================================
// CRuleParser::SetNoCase
//===========================================================================
// Description: Called by the parser when a 'nocase' token is found.
//
//              Sets the "NO CASE" flag, which will be applied to the _next_
//              attribute that is created.
//
// Constraints: 
//
//  Parameters: bool bNoCase: For now, always TRUE.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::SetNoCase( bool bNoCase )
{
    mbNoCase = bNoCase;
}

//===========================================================================
// CRuleParser::StartRule
//===========================================================================
// Description: Called by the parser when a 'rule' token is found.
//
//              Creates a new CRule object and adds it to the stack.
//
//              If the new Rule is a secondary Rule (i.e. if another Rule
//              already exists on the stack), then it inherits the Severity
//              of the parent Rule and its Scope defaults to SELF.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::StartRule( void )
{
    CRule* pRule = new CRule;
    pRule->SetScope( RULESCOPE_ALL_MASK );

    if ( !mpRuleStack.IsEmpty() )
    {
        CRule* pCurrentRule = mpRuleStack.Current();
        pRule->SetScope( RULESCOPE_SELF_MASK );
        pRule->SetSeverity( pCurrentRule->Severity() );
    }

    mpRuleStack.Push( pRule );
}

//===========================================================================
// CRuleParser::StartSequence
//===========================================================================
// Description: Called by the parser when a 'sequence' token is found.
//
//              Allocates a new CRule as a "kClassMacroSequence" and pushes
//              it onto the stack.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::StartSequence( void )
{
    CRule* pRule = new CRule;
    pRule->SetScope( RULESCOPE_SIBLINGS_MASK );
    pRule->SetRuleClass( kClassMacroSequence );

    mpRuleStack.Push( pRule );
}

//===========================================================================
// CRuleParser::AddRuleToCollection
//===========================================================================
// Description: Called by the parser when the closing brace for a "rule"
//              token is found.
//
//              Pops the current Rule from the stack and stores it
//              appropriately.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddRuleToCollection( void )
{
    if ( !mpRuleStack.IsEmpty() )
    {
        CRule* pRule = mpRuleStack.Pop();

        // If stack is not empty, this is a sub-Rule
        if ( !mpRuleStack.IsEmpty() )
        {
            mpRuleStack.Current()->AddRule( pRule );
        }
        else
        {
            mCollection.AddRule( pRule );
        }
    }
}

//===========================================================================
// CRuleParser::AddAttribute
//===========================================================================
// Description: Sets the bool flags for the specified attribute and adds
//              it to the attribute list.
//
//              The bool flags are reset to defaults for the next attribute.
//
// Constraints: 
//
//  Parameters: CRuleAttribute& attribute: The attribute currently being
//                  added (started in one of the ::Add*Attribute() methods).
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddAttribute( CRuleAttribute& attribute )
{
    attribute.SetOrWithNext( mbOr );
    attribute.SetNot( mbNot );
    attribute.SetNoCase( mbNoCase );

    mAttributes.AddItem( attribute );

    mbNoCase = false;
    mbNot = false;
    mbOr = false;
}

//===========================================================================
// CRuleParser::AddConditions
//===========================================================================
// Description: Called by the parser when a completed if{} block is detected.
//
//              Adds all the queued condition attributes to the current Rule.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddConditions( void )
{
    if ( !mpRuleStack.IsEmpty() )
    {
        unsigned int i;
        for ( i = 0; i < mAttributes.NumItems(); i++ )
        {
            mpRuleStack.Current()->AddCondition( mAttributes[i] );
        }

        mAttributes.Clear();
    }
}

//===========================================================================
// CRuleParser::AddRequirements
//===========================================================================
// Description: Called by the parser when a completed require{} block is 
//              detected.
//
//              Adds all the queued require attributes to the current Rule.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddRequirements( void )
{
    if ( !mpRuleStack.IsEmpty() )
    {
        unsigned int i;
        for ( i = 0; i < mAttributes.NumItems(); i++ )
        {
            mpRuleStack.Current()->AddAttribute( mAttributes[i] );
        }

        mAttributes.Clear();
    }
}

//===========================================================================
// CRuleParser::AddSequence
//===========================================================================
// Description: Called by the parser when a completed sequence{} block is
//              detected.
//
//              Adds all require attributes to the current Rule (which is,
//              in fact, the sequence), and adds the "sequence" Rule to
//              the Rule Collection.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddSequence( void )
{
    // Attributes must be added as Requirements to current Rule.
    AddRequirements();

    // And this Sequence Rule must be added to the current Rule.
    AddRuleToCollection();
}

//===========================================================================
// CRuleParser::SetLabel
//===========================================================================
// Description: Called by the parser when a 'label' token is found.
//
//              Sets the Label for the current Rule.
//
// Constraints: 
//
//  Parameters: const char* pLabel: Label token from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::SetLabel( const char* pLabel )
{
    if ( !mpRuleStack.IsEmpty() )
    {
        mpRuleStack.Current()->SetLabel( pLabel );
    }
}

//===========================================================================
// CRuleParser::SetMessage
//===========================================================================
// Description: Called by the parser when a 'message' token is found.
//
//              Sets the Message for the current Rule.
//
// Constraints: 
//
//  Parameters: const char* pMessage: Message token from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::SetMessage( const char* pMessage )
{
    if ( !mpRuleStack.IsEmpty() )
    {
        mpRuleStack.Current()->SetMessage( pMessage );
    }
}

//===========================================================================
// CRuleParser::SetSeverity
//===========================================================================
// Description: Called by the parser when a 'severity' token is found.
//
//              Sets the severity for the current Rule.
//
// Constraints: 
//
//  Parameters: const unsigned int severity: Severity value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::SetSeverity( const unsigned int severity )
{
    if ( !mpRuleStack.IsEmpty() )
    {
        mpRuleStack.Current()->SetSeverity( severity );
    }
}

//===========================================================================
// CRuleParser::AddFileAttribute
//===========================================================================
// Description: Called by the parser when a completed 'file' attribute is
//              found.
//
//              Creates a new CRuleAttribute of class 'kClassFile', sets
//              the "file" value and compare type.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: const char* pFile: File token from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddFileAttribute( const char* pFile )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassFile );
    attribute.SetValue( pFile );
    attribute.SetCompareType( CRuleBase::kCompareEqual );

    AddAttribute( attribute );
}

//===========================================================================
// CRuleParser::AddTypeAttribute
//===========================================================================
// Description: Called by the parser when a completed 'type' attribute is
//              found.
//
//              Creates a new CRuleAttribute of class 'kClassType', sets
//              the "type" value and compare type.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: const char* pType: Type token from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddTypeAttribute( const char* pType )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassType );
    attribute.SetValue( pType );
    attribute.SetCompareType( CRuleBase::kCompareEqual );

    AddAttribute( attribute );
}

//===========================================================================
// CRuleParser::AddExistsAttribute
//===========================================================================
// Description: Called by the parser when a completed 'exists' attribute is
//              found.
//
//              Creates a new CRuleAttribute of class 'kClassExists' and sets
//              the "field" value.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: const char* pField: Field token from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddExistsAttribute( const char* pField )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassExists );
    attribute.SetValue( pField );

    AddAttribute( attribute );
}

//===========================================================================
// CRuleParser::AddStringAttribute
//===========================================================================
// Description: Called by the parser when a completed attribute is
//              found, and the attribute has a string value type.
//
//              Creates a new CRuleAttribute of class 'kClassAttribute', 
//              sets the field name, compare type and string value.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: const char* pField: Field token from the parser.
//              CRuleBase::RuleCompareEnum compareEnum: Compare type from
//                                                      the parser.
//              const char* pString: String value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddStringAttribute( const char* pField, CRuleBase::RuleCompareEnum compareEnum, const char* pString )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassAttribute );
    attribute.SetName( pField );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( pString );

    AddAttribute( attribute );
    
}

//===========================================================================
// CRuleParser::AddFieldAttribute
//===========================================================================
// Description: Called by the parser when a completed attribute is
//              found, and the attribute has a field value type
//              (e.g. field compared against field).
//
//              Creates a new CRuleAttribute of class 'kClassField', 
//              sets the field names and compare type.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: const char* pField1: Left-hand field token from the parser.
//              CRuleBase::RuleCompareEnum compareEnum: Compare type from
//                                                      the parser.
//              const char* pField2: Right-hand field token from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddFieldAttribute( const char* pField1, CRuleBase::RuleCompareEnum compareEnum, const char* pField2 )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassField );
    attribute.SetName( pField1 );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( pField2 );

    AddAttribute( attribute );
    
}

//===========================================================================
// CRuleParser::AddIntAttribute
//===========================================================================
// Description: Called by the parser when a completed attribute is
//              found, and the attribute has an integer value type.
//
//              Creates a new CRuleAttribute of class 'kClassAttribute', 
//              sets the field name, compare type and integer value.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: const char* pField: Field token from the parser.
//              CRuleBase::RuleCompareEnum compareEnum: Compare type from
//                                                      the parser.
//              const int iVal: Integer value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddIntAttribute( const char* pField, CRuleBase::RuleCompareEnum compareEnum, const int iVal )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassAttribute );
    attribute.SetName( pField );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( iVal );

    AddAttribute( attribute );
    
}

//===========================================================================
// CRuleParser::AddFloatAttribute
//===========================================================================
// Description: Called by the parser when a completed attribute is
//              found, and the attribute has a float value type.
//
//              Creates a new CRuleAttribute of class 'kClassAttribute', 
//              sets the field name, compare type and float value.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: const char* pField: Field token from the parser.
//              CRuleBase::RuleCompareEnum compareEnum: Compare type from
//                                                      the parser.
//              const float fVal: Float value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddFloatAttribute( const char* pField, CRuleBase::RuleCompareEnum compareEnum, const float fVal )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassAttribute );
    attribute.SetName( pField );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( fVal );

    AddAttribute( attribute );
    
}


//===========================================================================
// CRuleParser::SetScope
//===========================================================================
// Description: Called by the parser when the first 'scope' value is found.
//
//              Resets the Scope for the current Rule to that represented
//              by the current token (as a string).
//
// Constraints: 
//
//  Parameters: const char* pScope: String representing scope state.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::SetScope( const char* pScope )
{
    if ( !mpRuleStack.IsEmpty() )
    {
        mpRuleStack.Current()->SetScope( pScope );
    }
}

//===========================================================================
// CRuleParser::AddScope
//===========================================================================
// Description: Called by the parser when additional 'scope' values are found.
//
//              Adds the Scope to the current Rule to include that represented
//              by the current token (as a string).
//
// Constraints: 
//
//  Parameters: const char* pScope: String representing scope state.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddScope( const char* pScope )
{
    if ( !mpRuleStack.IsEmpty() )
    {
        mpRuleStack.Current()->AddScope( pScope );
    }
}

//===========================================================================
// CRuleParser::SetMacroField
//===========================================================================
// Description: Called by the parser when a macro is found.
//
//              Sets the Field that will be assessed by the macro which is
//              currently being parsed.  This is called prior to the parser
//              detecting a complete macro, and the Field set here is used
//              when adding the Macro to the Rule.
//
// Constraints: 
//
//  Parameters: const char* pField: The Field token from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::SetMacroField( const char* pField )
{
    if ( ( pField == NULL ) || ( pField == mMacroField ) ) return;
    delete [] mMacroField;
    mMacroField = new char [ strlen( pField ) + 1 ];
    strcpy( mMacroField, pField );
}

//===========================================================================
// CRuleParser::AddMacroSum
//===========================================================================
// Description: Called by the parser when a SUM() macro is found that has
//              an integer value type.
//
//              Creates a new attribute of class kClassMacroSum and sets its
//              Name to the Field stored in ::SetMacroField().  The
//              type and integer value for the comparison is obtained from 
//              the parser.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: CRuleBase::RuleCompareEnum compareEnum: The compare type
//                                                      from the parser.
//              const int iVal: The integer value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddMacroSum( CRuleBase::RuleCompareEnum compareEnum, const int iVal )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassMacroSum );
    attribute.SetName( mMacroField );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( iVal );

    AddAttribute( attribute );
}

//===========================================================================
// CRuleParser::AddMacroSum
//===========================================================================
// Description: Called by the parser when a SUM() macro is found that has
//              a float value type.
//
//              Creates a new attribute of class kClassMacroSum and sets its
//              Name to the Field stored in ::SetMacroField().  The
//              type and float value for the comparison is obtained from 
//              the parser.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: CRuleBase::RuleCompareEnum compareEnum: The compare type
//                                                      from the parser.
//              const float fVal: The float value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddMacroSum( CRuleBase::RuleCompareEnum compareEnum, const float fVal )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassMacroSum );
    attribute.SetName( mMacroField );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( fVal );

    AddAttribute( attribute );
}

//===========================================================================
// CRuleParser::AddMacroCount
//===========================================================================
// Description: Called by the parser when a COUNT() macro is found.  It must
//              have an integer value type.
//
//              Creates a new attribute of class kClassMacroCount.  No
//              field name is used here; the count is implicit. The
//              type and integer value for the comparison is obtained from 
//              the parser.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: CRuleBase::RuleCompareEnum compareEnum: The compare type
//                                                      from the parser.
//              const int iVal: The integer value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddMacroCount( CRuleBase::RuleCompareEnum compareEnum, const int iVal )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassMacroCount );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( iVal );

    AddAttribute( attribute );
}

//===========================================================================
// CRuleParser::AddMacroMin
//===========================================================================
// Description: Called by the parser when a MIN() macro is found that has
//              an integer value type.
//
//              Creates a new attribute of class kClassMacroMin and sets its
//              Name to the Field stored in ::SetMacroField().  The
//              type and integer value for the comparison is obtained from 
//              the parser.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: CRuleBase::RuleCompareEnum compareEnum: The compare type
//                                                      from the parser.
//              const int iVal: The integer value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddMacroMin( CRuleBase::RuleCompareEnum compareEnum, const int iVal )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassMacroMin );
    attribute.SetName( mMacroField );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( iVal );

    AddAttribute( attribute );
}

//===========================================================================
// CRuleParser::AddMacroMin
//===========================================================================
// Description: Called by the parser when a MIN() macro is found that has
//              a float value type.
//
//              Creates a new attribute of class kClassMacroMin and sets its
//              Name to the Field stored in ::SetMacroField().  The
//              type and float value for the comparison is obtained from 
//              the parser.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: CRuleBase::RuleCompareEnum compareEnum: The compare type
//                                                      from the parser.
//              const float fVal: The float value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddMacroMin( CRuleBase::RuleCompareEnum compareEnum, const float fVal )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassMacroMin );
    attribute.SetName( mMacroField );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( fVal );

    AddAttribute( attribute );
}

//===========================================================================
// CRuleParser::AddMacroMax
//===========================================================================
// Description: Called by the parser when a MAX() macro is found that has
//              an integer value type.
//
//              Creates a new attribute of class kClassMacroMax and sets its
//              Name to the Field stored in ::SetMacroField().  The
//              type and integer value for the comparison is obtained from 
//              the parser.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: CRuleBase::RuleCompareEnum compareEnum: The compare type
//                                                      from the parser.
//              const int iVal: The integer value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddMacroMax( CRuleBase::RuleCompareEnum compareEnum, const int iVal )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassMacroMax );
    attribute.SetName( mMacroField );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( iVal );

    AddAttribute( attribute );
}

//===========================================================================
// CRuleParser::AddMacroMax
//===========================================================================
// Description: Called by the parser when a MAX() macro is found that has
//              a float value type.
//
//              Creates a new attribute of class kClassMacroMax and sets its
//              Name to the Field stored in ::SetMacroField().  The
//              type and float value for the comparison is obtained from 
//              the parser.
//
//              Common processing is then handled by ::AddAttribute().
//
// Constraints: 
//
//  Parameters: CRuleBase::RuleCompareEnum compareEnum: The compare type
//                                                      from the parser.
//              const float fVal: The float value from the parser.
//
//      Return: (void)
//
//===========================================================================
void CRuleParser::AddMacroMax( CRuleBase::RuleCompareEnum compareEnum, const float fVal )
{
    CRuleAttribute              attribute;

    attribute.SetClass( CRuleAttribute::kClassMacroMax );
    attribute.SetName( mMacroField );
    attribute.SetCompareType( compareEnum );
    attribute.SetValue( fVal );

    AddAttribute( attribute );
}


