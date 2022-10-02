//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     26 March, 2002
// Modified:    26 March, 2002
// Version:     
//
// Component:   
//
// Description: 
//
// Constraints: Everything in here is (static) because it's all manipulated
//              from a lex scanner.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __CRULEPARSE_H  
#define __CRULEPARSE_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include "ruleCollection.hpp"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CRuleParser
{
public:
    enum openum
    {
        OP_ASSIGN = 0,
        OP_EQUAL,
        OP_NOT_EQUAL,
        OP_GREATER,
        OP_GREATER_EQUAL,
        OP_LESS,
        OP_LESS_EQUAL
    };

    static bool                                 Parse( char* pFile );
    static bool                                 Include( char* pFile );

    static CRuleCollection*                     GetCollection( void );

    static void                                 StartRule( void );
    static void                                 StartSequence( void );

    static void                                 AddRuleToCollection( void );
    static void                                 AddConditions( void );
    static void                                 AddRequirements( void );
    static void                                 AddSequence( void );

    static void                                 SetLabel( const char* pLabel );
    static void                                 SetMessage( const char* pMessage );
    static void                                 SetSeverity( const unsigned int severity );

    static void                                 AddFileAttribute( const char* pFile );
    static void                                 AddTypeAttribute( const char* pType );
    static void                                 AddExistsAttribute( const char* pField );
    static void                                 AddStringAttribute( const char* pField, CRuleBase::RuleCompareEnum compareEnum, const char* pString );
    static void                                 AddFieldAttribute( const char* pField1, CRuleBase::RuleCompareEnum compareEnum, const char* pField2 );
    static void                                 AddIntAttribute( const char* pField, CRuleBase::RuleCompareEnum compareEnum, const int iVal );
    static void                                 AddFloatAttribute( const char* pField, CRuleBase::RuleCompareEnum compareEnum, const float fVal );

    static void                                 SetMacroField( const char* pField );
    static void                                 AddMacroSum( CRuleBase::RuleCompareEnum compareEnum, const int iVal );
    static void                                 AddMacroSum( CRuleBase::RuleCompareEnum compareEnum, const float fVal );
    static void                                 AddMacroCount( CRuleBase::RuleCompareEnum compareEnum, const int iVal );
    static void                                 AddMacroMin( CRuleBase::RuleCompareEnum compareEnum, const int iVal );
    static void                                 AddMacroMin( CRuleBase::RuleCompareEnum compareEnum, const float fVal );
    static void                                 AddMacroMax( CRuleBase::RuleCompareEnum compareEnum, const int iVal );
    static void                                 AddMacroMax( CRuleBase::RuleCompareEnum compareEnum, const float fVal );

    static void                                 SetScope( const char* pScope );
    static void                                 AddScope( const char* pScope );

    static void                                 SetOr( bool bOr );
    static void                                 SetNot( bool bNot );
    static void                                 SetNoCase( bool bNoCase );

    static void                                 NextLine( void );
    static unsigned int                         Line( void );       // INLINE

    static void                                 Error( char* format, ... );

    static void                                 Clear( void );

    static char*                                yystring( char* yytext );

// Constructor / Destructor
public:
    CRuleParser();
    CRuleParser( char* pFile, bool *pSuccess = NULL );
    ~CRuleParser();

protected:
    // No protected members.
    static bool                                 Parse( void );

    static CRuleCollection                      mCollection;
    static CListArray<CRuleAttribute>           mAttributes;
    static CStack<CRule*>                       mpRuleStack;

private:
    static void                                 AddAttribute( CRuleAttribute& attribute );
    static char*                                mMacroField;    // The field which is to be used by a Macro.

    static CListArray<char*>                    mpFile;
    static CStack<char*>                        mpYYstring;
    static unsigned int                         mLine;
    static bool                                 mbOr;
    static bool                                 mbNot;
    static bool                                 mbNoCase;
    static bool                                 mbOK;
};

//===========================================================================
// Inlines
//===========================================================================

inline
unsigned int CRuleParser::Line( void )
{
    return mLine;
}

#endif // __CRULEPARSE_H  
