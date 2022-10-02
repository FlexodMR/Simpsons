//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 26, 2001
//
// Component:   Rules system for Art Diagnostic Tools.
//
// Description: This class describes a collection of Rules and handles the
//              bulk-compare of multiple Rules against another.  The overall
//              status result is stored within this class as well.
//
// Creator:     Bryan Ewert
//
//===========================================================================

/* SEARCH STRINGS *

bool CRuleCollection::ApplyRules( const char
bool CRuleCollection::ProcessRule(
bSuccess &= pRule->PostProcess();

bool CRuleCollection::Parse( const char

bool CRuleCollection::ApplyRuleToSelf( CRule

this->CompareWith( compareRule );
CRuleCollection::RuleStatusEnum CRuleCollection::CompareWith( const CRule& compareRule )

*/

//===========================================================================
// Includes
//===========================================================================

#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include <stdio.h>                      // sscanf()
#include <stdlib.h>                     // __min()
#include <string.h>
#include <fstream>

#include "rule/inc/lex.h"

#include <toollib.hpp>
#include <tokenize/inc/tokenize.h>
#include "stack.hpp"

#ifdef RAD_WIN32  
   #define WIN32_LEAN_AND_MEAN
   #define WIN32_EXTRA_LEAN
   #include <windows.h>
   #include <io.h>
#else
   #include <unistd.h>
#endif

#include "../inc/ruleParser.hpp"
#include "../inc/ruleCollection.hpp"
#include "../inc/rule.hpp"      // CRuleCollection is a friend of this CRule

#include <bewert_debug.h>   // enables memory leak tracking

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

static const unsigned char ENTITY_OPEN_BRACE = 0x7B;
static const unsigned char ENTITY_CLOSE_BRACE = 0x7D;
static const unsigned char ENTITY_SEMI_COLON = 0x3B;

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CRuleCollection::CRuleCollection()
:   mWarnSeverity( 1 ),
    mErrorSeverity( 0 ),
    mSeverity( -1 ),
    mpP3dFile( NULL )
{
}

CRuleCollection::~CRuleCollection()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CRuleCollectoin::AddFile
//===========================================================================
// Description: Adds the path to the current Rules file to the list of
//              processed files.
//
// Constraints: 
//
// Parameters:  const char* file: NULL-terminated string for the file.
//
// Return:      (bool): TRUE if added successfully; else FALSE.
//
//===========================================================================
bool CRuleCollection::AddFile( const char* file )
{
    bool                                bAdded = false;

    if ( file != NULL )
    {
        char* newFile = new char [ strlen( file ) + 1 ];
        strcpy( newFile, file );
        mRuleFiles.AddItem( newFile );
    }

    return bAdded;
}

//===========================================================================
// CRuleCollection::HasFile
//===========================================================================
// Description: Determines if the specified Rules file already exists in
//              the list of processed files.  Use the results of this check
//              to determine if the current Rules file has already been
//              processed (thus preventing recursive "include" directives).
//
// Constraints: 
//
// Parameters:  const char* file: NULL-terminated string for file.
//
// Return:      (bool): TRUE if specified file already exists in list; 
//                      else FALSE.
//
//===========================================================================
bool CRuleCollection::HasFile( const char* file ) const
{
    bool                                bHasFile = false;

    unsigned int index = mRuleFiles.NumItems();

    while ( index-- )
    {
        if ( strcmp( file, mRuleFiles[index] ) == 0 )
        {
            bHasFile = true;
            break;
        }
    }

    return bHasFile;
}

//===========================================================================
// CRuleCollection::Clear
//===========================================================================
// Description: Clears all of the Rules from this Collection and resets
//              all Severity levels to defaults.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void CRuleCollection::Clear( void )
{
    unsigned int numItems;

    numItems = mRuleFiles.NumItems();
    while ( numItems-- )
    {
        delete [] mRuleFiles[numItems];
    }
    mRuleFiles.Clear();

    numItems = mRuleCollection.NumItems();
    while ( numItems-- )
    {
        delete mRuleCollection[numItems];
    }
    mRuleCollection.Clear();

    while ( !mDataChunkStack.IsEmpty() )
    {
        mDataChunkStack.Pop();
    }

    while ( !mDataChunkIndexStack.IsEmpty() )
    {
        mDataChunkIndexStack.Pop();
    }

    mWarnSeverity = 1;
    mErrorSeverity = 0;
    mSeverity = (-1);

    mpP3dFile = NULL;
}

//===========================================================================
// CRuleCollection::Parse
//===========================================================================
// Description: Reads and parses an input text file describing one or more
//              Rules.
//
// Constraints: No recovery for syntax errors.  If Rule is not syntactically
//              correct then the parse is aborted and this Rule Collection 
//              is cleared.
//
// Parameters:  const char* inFile: NULL-terminated string that describes the
//                                  fully qualified path to the Rule file.
//
// Return:      (bool): TRUE if parse was successful; else FALSE.
//
//===========================================================================
//bool CRuleCollection::Parse( const char* inFile )
//{
//    bool                                bSuccess = false;
//
//    if ( HasFile( inFile ) )
//    {
//        return false;
//    }
//
//    char                                *buf = NULL;
//
//    ifstream                            inStream;
//
//    inStream.open( inFile );
//    if ( inStream.good() )
//    {
//        inStream.seekg( 0, ios::end );
//        streampos pos = inStream.tellg();
//        inStream.seekg( 0, ios::beg );
// 
//        buf = new char[ pos + 1 ];
//        memset( buf, 0, ( pos + 1 ) );
//
//        inStream.read( buf, pos );
//
//        inStream.close();
//
//        AddFile( inFile );
//        bSuccess = true;
//    }
//
//    if ( buf )
//    {
//        CTokenize                               tokens( buf );
//
//        unsigned int                            index = 0;
//        bool                                    bNot = false;
//        bool                                    bNoCase = false;
//
//        CRule*                                  pRule = NULL;
//        const char*                             pToken = NULL;
//
//        CStack<CRule*>                          ruleStack;
//
//        CRuleAttribute*                         pCurrentRuleAttribute = NULL;
//
//        RuleContextEnum                         currentContext = CRuleCollection::kContextNone;
//        RuleContextEnum                         oneShotContext = CRuleCollection::kContextNone;
//        CStack<RuleContextEnum>                 contextStack;
//
//        bool                                    bOneShot = false;
//
////        clog << tokens << endl;
//
//        contextStack.Push( currentContext );
//
//        while ( bSuccess && ( index < tokens.NumTokens() ) )
//        {
//            pToken = tokens[index];
//
//            // Keyword "include" will recurse parse for a new file
//            // If a CRule is already in progress a parse error is flagged.
//            if ( strcmp( pToken, "include" ) == 0 )
//            {
//                if ( pRule == NULL )
//                {
//                    pToken = tokens[index+1];
//
//                    // Name is optional.
//                    if ( pToken != NULL )
//                    {
//                        index++;
//                        bSuccess = Parse( pToken );
//                    }
//                }
//                else
//                {
//                    bSuccess = false;
//                    break;   
//                }
//            }
//
//            // Keyword "rule" will allocate a new CRule.
//            // If a CRule is already in progress a parse error is flagged.
//            else if ( strcmp( pToken, "rule" ) == 0 )
//            {
//                // Check for syntax.. "rule{ rule }" is OK, but "rule rule" is not.
//                // If Rule is started AND ( stack is empty OR current stack is not current Rule ), then fail.
//                if ( ( pRule != NULL ) && ( ( ruleStack.IsEmpty() ) || ( ruleStack.Current() != pRule ) ) )
//                {
//                    bSuccess = false;
//                    break;
//                }
//
//                // New rule inherits properties of current Rule.
//                CRule* pNewRule = new CRule;
//                if ( pRule != NULL )
//                {
//                    pNewRule->SetLabel( pRule->Label() );
//                    pNewRule->SetSeverity( pRule->Severity() );
//                    pNewRule->SetMessage( pRule->Message() );
//                    pNewRule->SetScope( RULESCOPE_SELF_MASK );
//
//                    pRule->AddRule( pNewRule );
//                }
//                else
//                {
//                    this->AddRule( pNewRule );
//                }
//
//                pRule = pNewRule;
//
////                ruleStack.Push( pRule );
//
//                oneShotContext = CRuleCollection::kContextRule;
//
//            }
//
//            // Keyword "if" sets current context to kContextCondition
//            // If a CRule is not in progress a parse error is flagged.
//            else if ( strcmp( pToken, "if" ) == 0 )
//            {
//                if ( pRule != NULL )
//                {
//                    oneShotContext = kContextCondition;
//                }
//                else
//                // ERROR: if{} started without rule //
//                {
//                    bSuccess = false;
//                    break;
//                }
//
//                pCurrentRuleAttribute = NULL;
//                bNot = false;
//                bNoCase = false;
//            }
//
//            // Keyword "if" sets current context to kContextCondition
//            // If a CRule is not in progress a parse error is flagged.
//            else if ( strcmp( pToken, "scope" ) == 0 )
//            {
//                currentContext = oneShotContext;
//                if ( oneShotContext == kContextNone )
//                {
//                    currentContext = contextStack.Current();
//                }
//
//                if ( ( currentContext == kContextRule ) && ( pRule != NULL ) )
//                {
//                    pRule->SetScope( RULESCOPE_NONE );
//
//                    bool bMoreScope = true;
//                    pToken = tokens[index+1];
//
//                    while ( pToken && bMoreScope )
//                    {
//                        index++;
//                        pRule->AddScope( pToken );
//
//                        pToken = tokens[index+1];
//                        if ( *pToken == '|' )
//                        {
//                            index++;
//                            pToken = tokens[index+1];
//                        }
//                        else
//                        {
//                            bMoreScope = false;
//                        }
//                    }
//                }
//                else
//                // ERROR: severity defined outside of rule context.
//                {
//                    bSuccess = false;
//                    break;   
//                }
//
//                pCurrentRuleAttribute = NULL;
//                bNot = false;       // Not relevant to "severity", but deactivates just the same.
//                bNoCase = false;
//            }
//
//            // Keyword "require" sets current context to kContextRequirement
//            // If a CRule is not in progress a parse error is flagged.
//            else if ( strcmp( pToken, "require" ) == 0 )
//            {
//                if ( pRule != NULL )
//                {
//                    oneShotContext = kContextRequirement;
//                }
//                else
//                // ERROR: require{} started without rule //
//                {
//                    bSuccess = false;
//                    break;
//                }
//
//                pCurrentRuleAttribute = NULL;
//                bNot = false;
//                bNoCase = false;
//            }
//
//            // Keyword "require" sets current context to kContextRequirement
//            // If a CRule is not in progress a parse error is flagged.
//            else if ( strcmp( pToken, "macro" ) == 0 )
//            {
//                if ( pRule != NULL )
//                {
//                    oneShotContext = kContextMacro;
//                }
//                else
//                // ERROR: require{} started without rule //
//                {
//                    bSuccess = false;
//                    break;
//                }
//
//                pCurrentRuleAttribute = NULL;
//                bNot = false;
//                bNoCase = false;
//            }
//
//            // Variable operation (macro only)
//            else if ( strcmp( pToken, "$" ) == 0 )
//            {
//                currentContext = oneShotContext;
//                if ( oneShotContext == kContextNone )
//                {
//                    currentContext = contextStack.Current();
//                }
//
//                if  (
//                        // type not valid in kContextRule 
//                        ( pRule != NULL ) &&
//                        (
//                            ( currentContext == kContextMacro )
//                        )
//                    )
//                {
//                    const char* name = tokens[index];
//                    const char* op = tokens[index+1];
//                    const char* value = tokens[index+2];
//
//                    if ( pToken != NULL )
//                    {
//                        index+=2;
//
//                        CRuleAttribute      ruleAttribute;
//
//                        ruleAttribute.SetClass( CRuleAttribute::kClassUserVariable );
//
//                        ruleAttribute.SetName( name );
//                        ruleAttribute.SetCompareType( op );
//                        ruleAttribute.SetValue( value );
//
//                        pRule->AddMacro( ruleAttribute );
//                        pCurrentRuleAttribute = pRule->mRuleMacros.Last();
//                    }
//                }
//                else
//                // ERROR: macro defined outside of rule context.
//                {
//                    bSuccess = false;
//                    break;   
//                }
//
//                pCurrentRuleAttribute = NULL;
//                bNot = false; 
//                bNoCase = false;
//            }
//
//            // * Open brace identified via hex so MSDev editor doesn't use it for brace matching.
//            else if ( *pToken == ENTITY_OPEN_BRACE )     // Open brace
//            {
//                currentContext = oneShotContext;
//                if ( oneShotContext == kContextNone )
//                {
//                    currentContext = contextStack.Current();
//                }
//
//                // If this is a standalone open brace then just
//                // propogate the current context to the stack.
//                contextStack.Push( currentContext );
//
//                switch ( contextStack.Current() )
//                {
//                    case kContextRule:
//                    {
//                        ruleStack.Push( pRule );
//                        break;
//                    }
//                }
//
//                oneShotContext = kContextNone;
//            }
//
//            // Close brace will close a CRule and add it to the Collection.
//            // If a CRule is not in progress a parse error is flagged.
//            // * Close brace identified via hex so MSDev editor doesn't use it for brace matching.
//            else if ( *pToken == ENTITY_CLOSE_BRACE )     // Close brace
//            {
//                // Encountering a close brace implies an open brace;
//                // therefore the context will be derived from the stack,
//                // and not from the oneShotContext
//
//                if ( !contextStack.IsEmpty() )
//                {
//                    switch ( contextStack.Current() )
//                    {
//                        case kContextRule:
//                        {
//    // *** CHECK IF THIS IS WORKING ****
////                            this->AddRule( pRule );
//
////                            clog << "--- RULE AS PARSED -------------------------------" << endl;
////                            clog << *pRule << endl;
////                            clog << "==================================================" << endl;
//
//                            ruleStack.Pop();
//                            if ( ruleStack.IsEmpty() )
//                            {
//                                pRule = NULL;
//                            }
//                            else
//                            {
//                                pRule = ruleStack.Current();    // May be NULL!
//                            }
//
//                            break;
//                        }
//
//                        case kContextCondition:
//                        {
//                            break;
//                        }
//
//                        case kContextRequirement:
//                        {
//                            break;
//                        }
//                    }
//
//                    contextStack.Pop();
//                }
//                else
//                // ERROR: Closing brace without opening brace //
//                {
//                    bSuccess = false;
//                    break;
//                }
//
//                bNot = false;
//                bNoCase = false;
//            }
//
//            // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
//            // Keyword "label" sets the Label current CRule.
//            // If a CRule is not in progress a parse error is flagged.
//            else if ( strcmp( pToken, "label" ) == 0 )
//            {
//                currentContext = oneShotContext;
//                if ( oneShotContext == kContextNone )
//                {
//                    currentContext = contextStack.Current();
//                }
//
//                if ( ( currentContext == kContextRule ) && ( pRule != NULL ) )
//                {
//                    pToken = tokens[index+1];
//
//                    if ( pToken )
//                    {
//                        index++;
//
//                        pRule->SetLabel( pToken );
////                        clog << "Set Rule Severity to " << severity << endl;
//                    }
//                }
//                else
//                // ERROR: severity defined outside of rule context.
//                {
//                    bSuccess = false;
//                    break;   
//                }
//
//                pCurrentRuleAttribute = NULL;
//                bNot = false;       // Not relevant to "severity", but deactivates just the same.
//                bNoCase = false;
//            }
//
//            // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
//            // Keyword "severity" sets the Severity setting for the current CRule.
//            // If a CRule is not in progress a parse error is flagged.
//            else if ( strcmp( pToken, "severity" ) == 0 )
//            {
//                currentContext = oneShotContext;
//                if ( oneShotContext == kContextNone )
//                {
//                    currentContext = contextStack.Current();
//                }
//
//                if ( ( currentContext == kContextRule ) && ( pRule != NULL ) )
//                {
//                    pToken = tokens[index+1];
//
//                    if ( pToken )
//                    {
//                        index++;
//
//                        int                 severity;
//                        sscanf( pToken, "%d", &severity );
//                        pRule->SetSeverity( severity );
////                        clog << "Set Rule Severity to " << severity << endl;
//                    }
//                }
//                else
//                // ERROR: severity defined outside of rule context.
//                {
//                    bSuccess = false;
//                    break;   
//                }
//
//                pCurrentRuleAttribute = NULL;
//                bNot = false;       // Not relevant to "severity", but deactivates just the same.
//                bNoCase = false;
//            }
//
//            // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
//            // Keyword "message" adds the Message string to the current CRule.
//            // If a CRule is not in progress a parse error is flagged.
//            else if ( strcmp( pToken, "message" ) == 0 )
//            {
//                currentContext = oneShotContext;
//                if ( oneShotContext == kContextNone )
//                {
//                    currentContext = contextStack.Current();
//                }
//
//                if ( ( currentContext == kContextRule ) && ( pRule != NULL ) )
//                {
//                    pToken = tokens[index+1];
//
//                    if ( pToken != NULL )
//                    {
//                        index++;
//
//                        pRule->SetMessage( pToken );
//                    }
//                }
//                else
//                // ERROR: message defined outside of rule context.
//                {
//                    bSuccess = false;
//                    break;   
//                }
//
//                pCurrentRuleAttribute = NULL;
//                bNot = false;       // Not relevant to "message", but deactivates just the same.
//                bNoCase = false;
//            }
//
//            // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
//            // Keyword "not" sets a flag to indicate that the
//            // next Condition or Requirement will be negated when applied.
//            else if ( stricmp( pToken, "not" ) == 0 )
//            {
//                bNot = true;
//            }
//
//            // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
//            // Keyword "not" sets a flag to indicate that the
//            // next Condition or Requirement will be negated when applied.
//            else if ( stricmp( pToken, "nocase" ) == 0 )
//            {
//                bNoCase = true;
//            }
//
//            // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
//            // Keywords "or" and "and" set the Logic type used for the next 
//            // Condition or Attribute.  Note that the default logic
//            // is "and" so this keyword is not required.
//            // If a CRule is not in progress a parse error is flagged.
//            else if (
//                        ( stricmp( pToken, "or" ) == 0 ) ||
//                        ( stricmp( pToken, "and" ) == 0 )
//                    )
//            {
//                bool                            bOr = false;
//
//                if ( stricmp( pToken, "or" ) == 0 )
//                {
//                    bOr = true;
//                }
//
//                if  (
//                        // and/or not valid in kContextRule 
//                        ( pRule != NULL ) &&
//                        ( pCurrentRuleAttribute != NULL ) &&
//                        (
//                            ( currentContext == kContextCondition ) ||
//                            ( currentContext == kContextRequirement )
//                        )
//                    )
//                {
//                    pCurrentRuleAttribute->SetOrWithNext( bOr );
//                }
//                else
//                {
//                    bSuccess = false;
//                    break;   
//                }
//
//                // Subsequent OR tokens are ignored until a succeeding 
//                // Rule Type or Rule Attribute or Rule Condition is defined.
//                pCurrentRuleAttribute = NULL;
//                // 'not' flag must remain valid
//            }
//
//            // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
//            // Keyword "type" sets the Rule Type for the current CRule.
//            // If a CRule is not in progress a parse error is flagged.
//            else if ( strcmp( pToken, "type" ) == 0 )
//            {
//                currentContext = oneShotContext;
//                if ( oneShotContext == kContextNone )
//                {
//                    currentContext = contextStack.Current();
//                }
//
//                if  (
//                        // type not valid in kContextRule 
//                        ( pRule != NULL ) &&
//                        (
//                            ( currentContext == kContextCondition ) ||
//                            ( currentContext == kContextRequirement )
//                        )
//                    )
//                {
//                    pToken = tokens[index+1];
//
//                    if ( pToken != NULL )
//                    {
//                        index++;
//
//                        CRuleAttribute      ruleAttribute;
//
//                        ruleAttribute.SetClass( CRuleAttribute::kClassType );
//
//                        ruleAttribute.SetValue( pToken );
//                        ruleAttribute.SetCompareType( CRuleBase::kCompareEqual );
//
//                        ruleAttribute.SetNot( bNot );
//                        ruleAttribute.SetNoCase( bNoCase );
//
//                        switch ( currentContext )
//                        {
//                            case kContextCondition:
//                            {
//                                pRule->AddCondition( ruleAttribute );
//                                pCurrentRuleAttribute = pRule->mRuleConditions.Last();
//                                break;
//                            }
//                            case kContextRequirement:
//                            {
//                                pRule->AddAttribute( ruleAttribute );
//                                pCurrentRuleAttribute = pRule->mRuleAttributes.Last();
//                                break;
//                            }
//                        }
//                    }
//                }
//                else
//                {
//                    bSuccess = false;
//                    break;   
//                }
//
//                bNot = false;
//                bNoCase = false;
//            }
//
//            // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
//            // Keyword "type" sets the Rule Type for the current CRule.
//            // If a CRule is not in progress a parse error is flagged.
//            else if ( strcmp( pToken, "file" ) == 0 )
//            {
//                currentContext = oneShotContext;
//                if ( oneShotContext == kContextNone )
//                {
//                    currentContext = contextStack.Current();
//                }
//
//                if  (
//                        // type not valid in kContextRule 
//                        ( pRule != NULL ) &&
//                        (
//                            ( currentContext == kContextCondition ) ||
//                            ( currentContext == kContextRequirement )
//                        )
//                    )
//                {
//                    pToken = tokens[index+1];
//
//                    if ( pToken != NULL )
//                    {
//                        index++;
//
//                        CRuleAttribute      ruleAttribute;
//
//                        ruleAttribute.SetClass( CRuleAttribute::kClassFile );
//
//                        ruleAttribute.SetValue( pToken );
//                        ruleAttribute.SetCompareType( CRuleBase::kCompareEqual );
//
//                        ruleAttribute.SetNot( bNot );
//                        ruleAttribute.SetNoCase( bNoCase );
//
//                        switch ( currentContext )
//                        {
//                            case kContextCondition:
//                            {
//                                pRule->AddCondition( ruleAttribute );
//                                pCurrentRuleAttribute = pRule->mRuleConditions.Last();
//                                break;
//                            }
//                            case kContextRequirement:
//                            {
//                                pRule->AddAttribute( ruleAttribute );
//                                pCurrentRuleAttribute = pRule->mRuleAttributes.Last();
//                                break;
//                            }
//                        }
//                    }
//                }
//                else
//                {
//                    bSuccess = false;
//                    break;   
//                }
//
//                bNot = false;
//                bNoCase = false;
//            }
//
//            // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
//            // Keyword "exists" 
//            else if ( strcmp( pToken, "exists" ) == 0 )
//            {
//                currentContext = oneShotContext;
//                if ( oneShotContext == kContextNone )
//                {
//                    currentContext = contextStack.Current();
//                }
//
//                if  (
//                        // exists not valid in kContextRule 
//                        ( pRule != NULL ) &&
//                        (
//                            ( currentContext == kContextCondition ) ||
//                            ( currentContext == kContextRequirement )
//                        )
//                    )
//                {
//                    const char* name = tokens[index+1];
//
//                    if ( name != NULL )
//                    {
//                        index ++;
//
//                        CRuleAttribute      ruleAttribute;
//
//                        ruleAttribute.SetClass( CRuleAttribute::kClassExists );
//                        ruleAttribute.SetValue( name );
//
//                        ruleAttribute.SetNot( bNot );
//                        ruleAttribute.SetNoCase( bNoCase );
//
//                            // CRuleCollection is a friend of CRule.
//                            // "Borrow" the pointer to the newly added Rule Attribute.
//                        switch ( currentContext )
//                        {
//                            case kContextCondition:
//                            {
//                                pRule->AddCondition( ruleAttribute );
//                                pCurrentRuleAttribute = pRule->mRuleConditions.Last();
//                                break;
//                            }
//                            case kContextRequirement:
//                            {
//                                pRule->AddAttribute( ruleAttribute );
//                                pCurrentRuleAttribute = pRule->mRuleAttributes.Last();
//                                break;
//                            }
//                        }
//
////                        clog << "Add Condition: " << name << op << value << endl;
//                    }
//                }
//                else
//                {
//                    bSuccess = false;
//                    break;   
//                }
//
//                bNot = false;
//                bNoCase = false;
//            }
//
//            else if ( *pToken == ENTITY_SEMI_COLON )     // semi-colon
//            {
//                // No action
//            }
//
//            // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
//            // It was not a keyword.
//            // Must be a generic attribute.
//            else
//            {
//                currentContext = oneShotContext;
//                if ( oneShotContext == kContextNone )
//                {
//                    currentContext = contextStack.Current();
//                }
//
//                if ( pRule != NULL )
//                {
//                    const char* name = tokens[index];
//                    const char* op = tokens[index+1];
//                    const char* value = tokens[index+2];
//
//                    if ( ( name != NULL ) && ( op != NULL ) && ( value != NULL ) )
//                    {
//                        index += 2;
//
//                        CRuleAttribute      ruleAttribute;
//
//                        ruleAttribute.SetClass( CRuleAttribute::kClassAttribute );
//
//                        ruleAttribute.SetName( name );
//                        ruleAttribute.SetCompareType( op );
//                        ruleAttribute.SetValue( value );
//
//                        ruleAttribute.SetNot( bNot );
//                        ruleAttribute.SetNoCase( bNoCase );
//
//                            // CRuleCollection is a friend of CRule.
//                            // "Borrow" the pointer to the newly added Rule Attribute.
//                        switch ( currentContext )
//                        {
//                            case kContextCondition:
//                            {
//                                pRule->AddCondition( ruleAttribute );
//                                pCurrentRuleAttribute = pRule->mRuleConditions.Last();
//                                break;
//                            }
//                            case kContextRequirement:
//                            {
//                                pRule->AddAttribute( ruleAttribute );
//                                pCurrentRuleAttribute = pRule->mRuleAttributes.Last();
//                                break;
//                            }
//                        }
//                    }
//                }
//                else
//                {
//                    bSuccess = false;
//                    break;   
//                }
//
//                bNot = false;
//                bNoCase = false;
//                oneShotContext = kContextNone;
//            }
//
//            index++;
//        }
//
//        // Pop the explicit "None" context
//        contextStack.Pop();
//
//        delete [] buf;
//    }
//
//    if ( !bSuccess )
//    {
//        Clear();
//    }
//
//    return bSuccess;
//}

//===========================================================================
// CRuleCollection::SetWarnSeverity
//===========================================================================
// Description: Sets the level at which a Warn should be flagged.
//              A LOWER WarnSeverity catches more Rule failures;
//              a HIGHER WarnSeverity catches less.
//
// Constraints: Warn Severity cannot be greater than Error Severity;
//              The Error Severity will be adjusted automatically if
//              Warn is set greater than Error.
//
// Parameters:  unsigned int warnSeverity: The Severity at which a Warn 
//                                         should be flagged.
//
// Return:      (void)
//
//===========================================================================
void CRuleCollection::SetWarnSeverity( unsigned int warnSeverity )
{
    // Warn Severity cannot be less than Error Severity.
    // If it is, set Error Severity to match.
    if ( warnSeverity > mErrorSeverity )
    {
        mErrorSeverity = warnSeverity;
    }

    mWarnSeverity = warnSeverity;
}

//===========================================================================
// CRuleCollection::WarnSeverity          (const)
//===========================================================================
// Description: Returns the Warn Severity.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned int): The Warn Severity.
//
//===========================================================================
unsigned int CRuleCollection::WarnSeverity( void ) const
{
    return mWarnSeverity;
}

//===========================================================================
// CRuleCollection::SetErrorSeverity
//===========================================================================
// Description: Sets the level at which a Error should be flagged.
//              A LOWER ErrorSeverity catches more Rule failures;
//              a HIGHER ErrorSeverity catches less.
//
// Constraints: Error Severity cannot be less than Warn Severity;
//              The Warn Severity will be adjusted automatically if
//              Error is set less than Warn.
//
// Parameters:  unsigned int errorSeverity: The Severity at which an Error 
//                                          should be flagged.
//
// Return:      (void)
//
//===========================================================================
void CRuleCollection::SetErrorSeverity( unsigned int errorSeverity )
{
    // Error Severity cannot be greater than Warn Severity.
    // If it is, set Warn Severity equal.
    if ( errorSeverity < mWarnSeverity )
    {
        mWarnSeverity = errorSeverity;
    }

    mErrorSeverity = errorSeverity;
}

//===========================================================================
// CRuleCollection::ErrorSeverity          (const)
//===========================================================================
// Description: Returns the Error Severity.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned int): The Error Severity.
//
//===========================================================================
unsigned int CRuleCollection::ErrorSeverity( void ) const
{
    return mErrorSeverity;
}

//===========================================================================
// CRuleCollection::Status            (const)
//===========================================================================
// Description: Compares the Severity (status condition) against the 
//              Warn and Error Severity levels, and returns an OK, Warn
//              or Error condition accordingly.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      CRule::RuleStatusEnum: The current status condition for
//                                     the Rule.
//
//===========================================================================
CRuleCollection::RuleStatusEnum CRuleCollection::Status( void ) const
{
    CRuleCollection::RuleStatusEnum     status = CRuleCollection::kStatusOK;

    if ( mSeverity == (-1) )
    {
        // do nothing
    }

    else if ( mSeverity >= mErrorSeverity )
    {
        status = CRuleCollection::kStatusError;
    }

    else if ( mSeverity >= mWarnSeverity )
    {
        status = CRuleCollection::kStatusWarn;
    }

    return status;
}

//===========================================================================
// CRuleCollection::AddRule         
//===========================================================================
// Description: Adds the specified Rule to this Collection.
//
// Constraints: Currently this is dead-simple and isn't exactly necessary.
//              I've implemented this as a method in case other housekeeping
//              becomes necessary for this operation.
//
//              Note: The incoming pointer for the Rule _must not_ be
//              deleted.  It will be freed with ::Clear().
//
// Parameters:  CRule* rule: Pointer to the Rule object to add.
//
// Return:      (void)
//
//===========================================================================
void CRuleCollection::AddRule( CRule* rule )
{
    mRuleCollection.AddItem( rule );
}

//===========================================================================
// CRuleCollection::Rule            (const)
//===========================================================================
// Description: Returns a pointer to a Rule at the specified index.
//
// Constraints: 
//
// Parameters:  unsigned int index: Zero-based index to the Rule in this Collection.
//
// Return:      (const CRule*): Pointer to the corresponding Rule; if the 
//                              specified index is invalid this will be NULL.
//
//===========================================================================
const CRule* CRuleCollection::Rule( unsigned int index ) const
{
    if ( index <= mRuleCollection.NumItems() ) return NULL;

    return mRuleCollection[index];
}

//===========================================================================
// CRuleCollection::ApplyRules
//===========================================================================
// Description: This is the "initialize and run" method that will be called
//              by the user.  It parses the specified Rules file(s) and 
//              populated the Rules for this Collection, then reads the
//              specified Pure3D file and applies the Rules against its
//              contents.
//
//              Note: This prepends a History Chunk to the specified Pure3D 
//                    file.  If this library is called from a Pure3D
//                    command-line tool then you need simply provide the
//                    Param->WriteHistory flag as an argument to this
//                    function.
//
// Constraints: The return value does _not_ indicate the success
//              or failure of the applied Rules.  Use ::Status() for that.
//
// Parameters:  const char* rulesFile: The Rules file.  And text file will do.
//              const char* pure3dFile: The Pure3D file.
//              bool bAddHistory: TRUE to write-back a History chunk into
//                                the specified Pure3D file; FALSE to
//                                leave Pure3D file unmodified.
//
// Return:      (bool): TRUE if Rules parsed correctly and the Pure3D file 
//                      opened successfully.  FALSE if the arguments are invalid.
//                      Note: This return value does _not_ indicate the success
//                      or failure of the applied Rules.  Use ::Status() for that.
//
//===========================================================================
bool CRuleCollection::ApplyRules( const char* pure3dFile, bool bAddHistory )
{
    bool                                bSuccess = true;

    assert( mDataChunkStack.IsEmpty() );

    mpP3dFile = pure3dFile;

//    gRuleLog.Clear();

//    bSuccess = Parse( rulesFile );

    if ( bSuccess )
    {
//        clog << "Rules " << rulesFile << " parsed." << endl;

        tlDataChunk::RegisterDefaultChunks();

        tlFile input(new tlFileByteStream( pure3dFile, omREAD ), tlFile::FROMFILE );
        if( input.IsOpen() ) 
        {
//            clog << "File " << pure3dFile << " opened." << endl;

            // make a tlDataChunk from the file
            // this is the wrapper chunk for the input

            tlDataChunk* inchunk = new tlDataChunk(&input);

            // we don't need the tlFile anymore
            // this cleans up the tlFile object including the
            // tlFileByteStream
            input.Close();

            mDataChunkStack.Push( inchunk );

            // Failure of Rules does not imply failure of Apply()
            ProcessRules();

            mDataChunkStack.Pop();

            if( bAddHistory )
            {
                // build an output chunk
                tlDataChunk* outchunk = new tlDataChunk;
                // Put a history chunk in the output.
                // The destructor for 'outchunk' will handle the
                // freeing of memory for the added history chunk.
                outchunk->AppendSubChunk( HistoryChunk() );
                outchunk->AppendSubChunks( inchunk, FALSE );

                // create the new output file
                tlFile output(new tlFileByteStream( pure3dFile, omWRITE), tlFile::CHUNK32);

                if( output.IsOpen() )
                {
                    outchunk->Write(&output);
                }
                else
                {
                    bSuccess = false;
                }


                delete outchunk;
            }

            delete inchunk;

//            if ( Status() == CRuleCollection::kStatusError )
//            {
//                cerr << "!! ERROR !!" << endl;
//            }
//            else if ( Status() == CRuleCollection::kStatusWarn )
//            {
//                cerr << "? WARN ?" << endl;
//            }
//            else
//            {
//                cout << "OK." << endl;
//            }
        }
        else        // Pure3D file failed to open.
        {
            bSuccess = false;
        }
    }

    mpP3dFile = NULL;

    return bSuccess;
}

//===========================================================================
// CRuleCollection::ProcessRules
//===========================================================================
// Description: Loops through all Rules in the Collection, sets the file
//              and starting data chunk and index stacks, and processes
//              each Rule.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (bool): TRUE if all Rules passed; FALSE if at least one
//                      Rule generated a fail condition.
//
//===========================================================================
bool CRuleCollection::ProcessRules( void )
{
    bool                    bSuccess = true;

    unsigned int index;
    for ( index = 0; index < mRuleCollection.NumItems(); index++ )
    {
        CRule* pRule = mRuleCollection[index];

        // DataChunkStack should contain ONE entry.
        pRule->mDataChunkStack = mDataChunkStack;

        // DataChunkIndexStack should be empty.
        pRule->mDataChunkIndexStack = mDataChunkIndexStack;

        pRule->SetFile( this->mpP3dFile );

        bSuccess &= ProcessRule( pRule );
    }

    return bSuccess;
}

//===========================================================================
// CRuleCollection::ProcessRule
//===========================================================================
// Description: Prepares the specified Rule for a clean run, and uses its
//              Scope value to determine how it should be processed.
//
//              After the Rule has been processed its PostProcess method 
//              is initiated.
//
//              If the Rule fails then the Severity is propogated into
//              this Collection.
//
// Constraints: Note that all secondary Rule processing also calls this
//              function directly; this it is not necessary to consider
//              secondary Rules within this method.
//
//  Parameters: CRule* pRule: Pointer to the Rule being processed.
//
//      Return: (bool): TRUE if Rule passed; FALSE if a fail condition
//                      was encountered.
//
//===========================================================================
bool CRuleCollection::ProcessRule( CRule* pRule )
{
    bool                        bSuccess = true;

    // Set starting position for Rule
    pRule->SetRootStack();

    // Must clear cached values, so as to start macro processing with a clean slate.
    pRule->ClearCache();

    if ( ( pRule->Scope() & RULESCOPE_ALL_MASK ) == RULESCOPE_ALL_MASK )
    {
        // Process ALL.
        bSuccess &= ApplyRuleToAll( pRule );
    }
    else
    {
        if ( pRule->Scope() & RULESCOPE_SELF_MASK )
        {
            // Process Self.
            bSuccess &= ApplyRuleToSelf( pRule );
        }
        if ( pRule->Scope() & RULESCOPE_PARENTS_MASK )
        {
            // Process Parents.
            bSuccess &= ApplyRuleToParents( pRule );
        }
        if ( pRule->Scope() & RULESCOPE_SIBLINGS_MASK )
        {
            // Process Siblings.
            bSuccess &= ApplyRuleToSiblings( pRule );
        }
        if ( pRule->Scope() & RULESCOPE_CHILDREN_MASK )
        {
            // Process Children.
            bSuccess &= ApplyRuleToChildren( pRule );
        }
    }

        bSuccess &= pRule->PostProcess();

        if ( !bSuccess )
        {
            mSeverity = __max( mSeverity, pRule->Severity() );

            // If Severity Level is at default, set to 0 (zero).
            // The compareRule has already failed, so this should
            // be setting a severity of at _least_ 0 (zero) anyway.
            if ( mSeverity == (-1) )
            {
                mSeverity = 0;
            }
        }

    return bSuccess;
}

//===========================================================================
// CRuleCollection::ProcessSequence
//===========================================================================
// Description: A "sequence" is actually just a Rule that has only an
//              implicit "require{}" block with multiple attributes.
//              However, it must be processed specifically as a sequence
//              so chunks are evaluated on a 1:1 basis.
//
//              This method performs a "sequence" comparison against
//              the current P3D chunk.
//
// Constraints: 
//
//  Parameters: CRule* pRule: Pointer to the sequence Rule to process.
//
//      Return: (bool): TRUE if sequence test passed; else FALSE.
//
//===========================================================================
bool CRuleCollection::ProcessSequence( CRule* pRule )
{
    bool        bSuccess = true;

    // If no Rule specified, or if no valid P3D Chunk, just return.
    if ( pRule == NULL ) return bSuccess;
    if ( pRule->mDataChunkStack.IsEmpty() ) return bSuccess;

    // Get all immediate children Chunks for this Rule
    CRule*                      pSeqRule = new CRule;
    CRuleAttribute              seqAttribute;

    // Get Current Chunk - We start here.
    tlDataChunk* pDataChunk = pRule->mDataChunkStack.Current();

    unsigned int ch;
    // go through all the sub-chunks of the input and
    // process the ones you care about
    for(ch=0; ch < pDataChunk->SubChunkCount(); ch++)
    {
        pSeqRule->Clear();
        pSeqRule->mDataChunkStack = pRule->mDataChunkStack;
        pSeqRule->mDataChunkIndexStack = pRule->mDataChunkIndexStack;

        // More attributes in Chunk than specified in Sequence
        if ( ch >= pRule->NumAttributes() )
        {
            bSuccess = false;
            // Build some sort of log error here.
            gRuleLog.Add( CRuleLogEntry( pRule, "More attributes in Chunk than specified in Sequence." ) );
            break;
        }

        pRule->GetAttribute( ch, seqAttribute );
        pSeqRule->AddAttribute( seqAttribute );

        int                     array_idx = 0;
        int                     attrib_idx = 0;
        int                     param_idx = 0;

        bool                    bHasParamChunks = false;

        // create the next sub-chunk
        tlDataChunk* sub = pDataChunk->GetSubChunk(ch);

        // Push the dataChunk info onto the Rule stack.
        pSeqRule->mDataChunkStack.Push( sub );
        pSeqRule->mDataChunkIndexStack.Push( ch );

        pSeqRule->SetScope( RULESCOPE_SELF_MASK );

//        bSuccess &= ApplyRuleToSelf( pSeqRule, &bHasParamChunks );
        bSuccess &= this->ProcessRule( pSeqRule );

        // Done processing children.. Pop the stack and 
        // continue to sibling.
        pSeqRule->mDataChunkIndexStack.Pop();
        pSeqRule->mDataChunkStack.Pop();

    }       // for ( subChunkCount )

    // Longer Sequence specified than what was found.
    if ( ch < pRule->NumAttributes() )
    {
        bSuccess = false;
        // Build some sort of lot error here.
        gRuleLog.Add( CRuleLogEntry( pRule, "Longer Sequence specified than what was found." ) );
    }

    delete pSeqRule;

    return bSuccess;

}

//===========================================================================
// CRuleCollection::ApplyRuleToAll
//===========================================================================
// Description: Apply the specified Rule to the entire P3D file.
//
//              This explicitly 'pops' the chunk stack back to the root
//              and starts (or restarts) processing from the top.
//
// Constraints: 
//
//  Parameters: CRule* pRule: Pointer to the Rule to process.
//
//      Return: (bool): TRUE if Rule passes; else FALSE.
//
//===========================================================================
bool CRuleCollection::ApplyRuleToAll( CRule* pRule )
{
    bool        bSuccess = true;

    if ( pRule == NULL ) return bSuccess;

    // Pop stack back to Root Chunk
    tlDataChunk* pDataChunk = NULL;
    while ( !pRule->mDataChunkStack.IsEmpty() )
    {
        pDataChunk = pRule->mDataChunkStack.Pop();
    }

    // We're at the Root chunk.. any stacked indices are discarded.
    while ( !pRule->mDataChunkIndexStack.IsEmpty() )
    {
        pRule->mDataChunkIndexStack.Pop();
    }

    if ( pDataChunk != NULL )
    {
        // Stack will be empty here.. Push the root back on.
        pRule->mDataChunkStack.Push( pDataChunk );
        bSuccess &= ApplyRuleToChildren( pRule, true );  // TRUE == recurse to children of children.
    }

    return bSuccess;
}

//===========================================================================
// CRuleCollection::ApplyRuleToSelf
//===========================================================================
// Description: Eventually all Rule processing makes it here - to test
//              the contents of the current P3D chunk against itself.
//
// Constraints: 
//
//  Parameters: CRule* pRule: Pointer to the current Rule being processed.
//              bool* pbHasParamChunks: Pointer to a bool in which is stored
//                  whether the current chunk as Parameter sub-chunks. 
//                  These are processed specially and will not recurse.
//
//      Return: (bool): TRUE if Rule passes; else FALSE.
//
//===========================================================================
bool CRuleCollection::ApplyRuleToSelf( CRule* pRule, bool* pbHasParamChunks )
{
    bool        bSuccess = true;

    // If no Rule specified, or if no valid P3D Chunk, just return.
    if ( pRule == NULL ) return bSuccess;
    if ( pRule->mDataChunkStack.IsEmpty() ) return bSuccess;

    // Find Start Chunk
    tlDataChunk* pDataChunk = pRule->mDataChunkStack.Current();

    // Build a "Rule" that summarizes this Chunk
    CRule                           compareRule;
    int                             numFields = 0;
    int                             field_idx = 0;
    bool                            bHasParamChunks = false;

    compareRule.SetType( pDataChunk->GetType() );
    compareRule.SetFile( this->mpP3dFile );

    // Now process all fields
    numFields = pDataChunk->GetFieldCount();

    for ( field_idx = 0; field_idx < numFields; field_idx++ )
    {
        char                            fieldValue[P3DMAXNAME];
        fieldValue[0] = '\0';

        if ( strcmp( pDataChunk->GetFieldName( field_idx ), "NumParams" ) == 0 )
        {
            bHasParamChunks = true;
            ProcessChunkParams( pDataChunk, compareRule );
        }
        else
        {
            pDataChunk->GetFieldValue( field_idx, fieldValue, P3DMAXNAME );

            CRuleAttribute              ruleAttribute;

            ruleAttribute.SetName( pDataChunk->GetFieldName( field_idx ) );

            ruleAttribute.SetValueType(  pDataChunk->GetFieldType( field_idx ) );
            ruleAttribute.SetValue( fieldValue );

            compareRule.AddAttribute( ruleAttribute );
        }
    }

    if ( pRule->MeetsConditions( compareRule ) )
    {
        bSuccess &= pRule->CompareWith( compareRule );

        // Process sub-Rules.
        unsigned int subRule;
        for ( subRule = 0; subRule < pRule->NumRules(); subRule++ )
        {
            CRule* pSubRule = pRule->GetRule( subRule );

            pSubRule->mDataChunkStack = pRule->mDataChunkStack;
            pSubRule->mDataChunkIndexStack = pRule->mDataChunkIndexStack;
            pSubRule->SetFile( pRule->File() );

            switch ( pSubRule->RuleClass() )
            {
                case kClassRule:
                {
                    bSuccess &= ProcessRule( pSubRule );
                    break;
                }

                case kClassMacroSequence:
                {
                    bSuccess &= ProcessSequence( pSubRule );
                    break;
                }
            }

        }
    }

    if ( pbHasParamChunks != NULL )
    {
        *pbHasParamChunks = bHasParamChunks;
    }

    return bSuccess;
}

//===========================================================================
// CRuleCollection::ApplyRuleToChildren
//===========================================================================
// Description: Applies the specified Rule against all Children of the
//              current P3D Chunk.
//
//              The bool argument allows you to specify whether the
//              children of the children will be processed as well; in other
//              words, whether this will be called recursively.
//
//              The skipped chunk is typically NULL, unless this function
//              is called from ::ApplyRuleToSiblings().
//
// Constraints: 
//
//  Parameters: CRule* pRule: Pointer to the current Rule being processed.
//              bool bRecurse: TRUE to process children of children; FALSE
//                  to process only one level of children.
//              const tlDataChunk* pSkipChunk: If this chunk is found as
//                  a child chunk it will be skipped.  May be NULL to
//                  process all chunks.
//
//      Return: (bool): TRUE if Rule passes; else FALSE.
//
//===========================================================================
bool CRuleCollection::ApplyRuleToChildren( CRule* pRule, bool bRecurse, const tlDataChunk* pSkipChunk )
{
    bool        bSuccess = true;

    // If no Rule specified, or if no valid P3D Chunk, just return.
    if ( pRule == NULL ) return bSuccess;
    if ( pRule->mDataChunkStack.IsEmpty() ) return bSuccess;

    // Get Current Chunk - We start here.
    tlDataChunk* pDataChunk = pRule->mDataChunkStack.Current();

    // Note: Current chunk is NOT processed.. just its children.

    unsigned int ch;
    // go through all the sub-chunks of the input and
    // process the ones you care about
    for(ch=0; ch < pDataChunk->SubChunkCount(); ch++)
    {
        int                     array_idx = 0;
        int                     attrib_idx = 0;
        int                     param_idx = 0;

        bool                    bHasParamChunks = false;

        // create the next sub-chunk
        tlDataChunk* sub = pDataChunk->GetSubChunk(ch);

        // If called to process Siblings then we don't want
        // to process the original calling Chunk.
        if ( sub == pSkipChunk ) continue;

        // Push the dataChunk info onto the Rule stack.
        pRule->mDataChunkStack.Push( sub );
        pRule->mDataChunkIndexStack.Push( ch );

        bSuccess &= ApplyRuleToSelf( pRule, &bHasParamChunks );

        // If this Chunk has a "NumParams" field then the child
        // Chunks are all parameter chunks.. skip these.
        if ( bRecurse && !bHasParamChunks )
        {
            // If the current Rule was applied only to Siblings
            // then the Recurse flag would be FALSE and we
            // would not nest here.
            bSuccess &= ApplyRuleToChildren( pRule, bRecurse );
        }

        // Done processing children.. Pop the stack and 
        // continue to sibling.
        pRule->mDataChunkIndexStack.Pop();
        pRule->mDataChunkStack.Pop();

    }       // for ( subChunkCount )

    return bSuccess;
}

//===========================================================================
// CRuleCollection::ApplyRuleToSiblings
//===========================================================================
// Description: Apply the specified Rule to all Siblings of the current
//              P3D chunk, excluding the current P3D chunk.
//
//              This uses the "skip chunk" feature of ::ApplyRuleToChildren().
//
// Constraints: The current P3D chunk is not included as a Sibling.
//
//  Parameters: CRule* pRule: Pointer to the current Rule being processed.
//
//      Return: (bool): TRUE if Rule passes; else FALSE.
//
//===========================================================================
bool CRuleCollection::ApplyRuleToSiblings( CRule* pRule )
{
    bool        bSuccess = true;

    // If no Rule specified, or if no valid P3D Chunk, just return.
    if ( pRule == NULL ) return bSuccess;
    if ( pRule->mDataChunkStack.IsEmpty() ) return bSuccess;

    // Must guarantee Stack is preserved
    CStack<tlDataChunk*> dataChunkStack = pRule->mDataChunkStack;
    CStack<unsigned int> dataChunkIndexStack = pRule->mDataChunkIndexStack;

    // If no Parent (and thus no siblings) return.
    const tlDataChunk* pSkipChunk = pRule->mDataChunkStack.Current();
    pRule->mDataChunkStack.Pop();
    if ( !pRule->mDataChunkStack.IsEmpty() ) 
    {
        pRule->mDataChunkIndexStack.Pop();

        // Get Current Chunk - We start here.
        tlDataChunk* pDataChunk = pRule->mDataChunkStack.Current();

        // Note: Current chunk is NOT processed.. just its children.

        bSuccess &= ApplyRuleToChildren( pRule, false, pSkipChunk );     // FALSE means don't recurse to children, just process siblings.
    }

    // Restore stacks.
    pRule->mDataChunkStack = dataChunkStack;
    pRule->mDataChunkIndexStack = dataChunkIndexStack;

    return bSuccess;
}

//===========================================================================
// CRuleCollection::ApplyRuleToParents
//===========================================================================
// Description: Apply the specified Rule to all Parent chunks.
//
// Constraints: 
//
//  Parameters: CRule* pRule: Pointer to the current Rule being processed.
//
//      Return: (bool): TRUE if Rule passes; else FALSE.
//
//===========================================================================
bool CRuleCollection::ApplyRuleToParents( CRule* pRule )
{
    bool        bSuccess = true;

    // If no Rule specified, or if no parent for P3D Chunk, just return.
    if ( pRule == NULL ) return bSuccess;
    if ( pRule->mDataChunkStack.IsEmpty() ) return bSuccess;

    // Must guarantee Stack is preserved
    CStack<tlDataChunk*> dataChunkStack = pRule->mDataChunkStack;
    CStack<unsigned int> dataChunkIndexStack = pRule->mDataChunkIndexStack;

    // Note: Current chunk is NOT processed.. just its parent(s).
    pRule->mDataChunkStack.Pop();

    while ( !pRule->mDataChunkStack.IsEmpty() )
    {
        // Get Parent of Current Chunk - We start here.
        pRule->mDataChunkIndexStack.Pop();
        bSuccess &= ApplyRuleToSelf( pRule );
        pRule->mDataChunkStack.Pop();
    }

    // Restore stacks.
    pRule->mDataChunkStack = dataChunkStack;
    pRule->mDataChunkIndexStack = dataChunkIndexStack;

    return bSuccess;
}

//===========================================================================
// CRuleCollection::ProcessChunkParams           (private)
//===========================================================================
// Description: Used to read and store the "Params" data from a Pure3D file.
//              When the Pure3D field "NumParams" is found it is assumed that
//              a single sub-chunk exists what lists all parameters for the
//              current chunk.  This function is called to process this
//              sub-chunk.
//
// Constraints: Called from ::ProcessRules().
//
// Parameters:  const tlDataChunk* inChunk: Pointer to the Pure3D sub-chunk
//                                          containing the Parameter data.
//              CRule& compareRule: The Parameters will be added as
//                                  Attributes to this Base Rule.
//
// Return:      (void)
//
//===========================================================================
void CRuleCollection::ProcessChunkParams( tlDataChunk* inChunk, CRule& compareRule )
{
    int ch;
    // go through all the sub-chunks of the input and
    // process the ones you care about
    for(ch=0; ch < inChunk->SubChunkCount(); ch++)
    {
        int                             numFields = 0;
        int                             field_idx = 0;
        int                             array_idx = 0;
        int                             attrib_idx = 0;
        int                             param_idx = 0;

        char                            fieldValue[P3DMAXNAME];
        fieldValue[0] = '\0';

        // create the next sub-chunk
        tlDataChunk* sub = inChunk->GetSubChunk(ch);

        // Now process all fields
        numFields = sub->GetFieldCount();
        assert( numFields > 1 );

        // Build a "Rule" that summarizes this Chunk

        CRuleAttribute                  ruleAttribute;

        ruleAttribute.SetValueType( sub->GetFieldType( 1 ) );

        sub->GetFieldValue( 0, fieldValue, P3DMAXNAME );
        ruleAttribute.SetName( fieldValue );
        sub->GetFieldValue( 1, fieldValue, P3DMAXNAME );
        ruleAttribute.SetValue( fieldValue );

        compareRule.AddAttribute( ruleAttribute );

    }       // for ( subChunkCount )
}

//===========================================================================
// CRuleCollection::HistoryChunk
//===========================================================================
// Description: Creates the History Chunk to prepend to the Pure3D file.
//
// Constraints: Returned pointer is immediated appended to tlDataChunk.
//              The destructor for the tlDataChunk will handle the freeing
//              of the memory for this chunk.
//
// Parameters:  (void)
//
// Return:      (tlDataChunk*): Pointer to the History Chunk.
//
//===========================================================================
tlDataChunk* CRuleCollection::HistoryChunk( void ) const
{
   char buf[512];
   tlHistory history;

   sprintf(buf,"%s (ATG %s)", gRuleCollectionVersion, ATG_VERSION);
   history.AddLine(buf);

    if ( mRuleFiles.NumItems() > 0 )
    {
        sprintf( buf, "Rules file: %s (%s)", mRuleFiles[0], gRuleStatus[Status()] );
        history.AddLine(buf);
    }

   // Logon name and date info
   time_t ltime;
   struct tm *now;
   time(&ltime);
   now = localtime(&ltime);
   strftime(buf, 256, "Run at %B %d, %Y, %H:%M:%S by ", now);

#ifdef RAD_WIN32
   DWORD size = 256;
   char lbuf[256];
   GetUserName(lbuf, &size);

   strcat(buf, lbuf);
#else
   char* loginname = getlogin();
   if(loginname)
   {
      strcat(buf, loginname);
   } else {
      strcat(buf, "Unknown");
   }
#endif

   history.AddLine(buf);
   
   return history.Chunk();
}

//===========================================================================
// operator <<
//===========================================================================
// Description: Extraction ostream operator overload for CRuleCollection.
//
//===========================================================================
std::ostream& operator << ( std::ostream& os, const CRuleCollection& rules )
{
    unsigned int                u;

    for ( u = 0; u < rules.mRuleCollection.NumItems(); u++ )
    {
        os << *rules.mRuleCollection[u] << std::endl;
    }

    return os;
}
