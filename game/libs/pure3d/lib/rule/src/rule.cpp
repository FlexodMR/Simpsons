//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 21, 2001
//
// Component:   Rules system for Art Diagnostic Tools
//
// Description: This is a Base Rule for the Rule system.  Each Base Rule
//              can one zero or more Conditions which determine whether
//              the Rule is suitable to apply.  Each Base Rule can have
//              zero or more Attributes which compare against the user
//              data.  The Severity of the Base Rule is used to set an
//              overall status condition if the Base Rule fails.  Base Rules
//              are amassed and applied from CRuleCollection.
//
// Creator:     Bryan Ewert
//
//===========================================================================

/* SEARCH STRINGS

bool CRule::CompareWith( const CRule& compareRule )
bool CRule::Matches( const CRule &compareRule )
bool CRule::PostProcess( void )

*/

//===========================================================================
// Includes
//===========================================================================

#include <string.h>
#include <iostream>

#include <tlDataChunk.hpp>
#include <tlInventory.hpp>
#include <tlLoadManager.hpp>

#include "../inc/ruleParser.hpp"
#include "../inc/ruleLog.h"
#include "../inc/rule.hpp"

// #include "regex/regex2.h"
#include "regex++/include/regex"

#include <bewert_debug.h>   // enables memory leak tracking

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CRule::CRule()
:   mRuleClass( kClassRule ),
    mRuleLabel( NULL ),
    mRuleMessage( NULL ),
    mScope( RULESCOPE_DEFAULT ),
    mRuleType( NULL ),
    mP3dFile( NULL ),
    mSeverity( kDefaultSeverity )
{
}

CRule::~CRule()
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
// CRule::Clear
//===========================================================================
// Description: Clears all Attributes and Parameters from the Rule,
//              and resets settings to defaults. 
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void CRule::Clear( void )
{
    mRuleClass = kClassRule;

    if ( mRuleLabel )
    {
        delete [] mRuleLabel;
        mRuleLabel = NULL;
    }

    if ( mRuleMessage )
    {
        delete [] mRuleMessage;
        mRuleMessage = NULL;
    }

    if ( mRuleType )
    {
        delete [] mRuleType;
        mRuleType = NULL;
    }

    if ( mP3dFile )
    {
        delete [] mP3dFile;
        mP3dFile = NULL;
    }

    while ( mRules.NumItems() > 0 )
    {
        delete mRules[0];
        mRules.DeleteItem( 0 );
    }

    mScope = RULESCOPE_DEFAULT;

    mRuleConditions.Clear();
    mRuleAttributes.Clear();
    mRuleMacros.Clear();

    while ( !mRootChunkStack.IsEmpty() )
    {
        mRootChunkStack.Pop();
    }

    while ( !mRootChunkIndexStack.IsEmpty() )
    {
        mRootChunkIndexStack.Pop();
    }

    while ( !mDataChunkStack.IsEmpty() )
    {
        mDataChunkStack.Pop();
    }

    while ( !mDataChunkIndexStack.IsEmpty() )
    {
        mDataChunkIndexStack.Pop();
    }

    this->Reset();
}

//===========================================================================
// CRule::SetRootStack
//===========================================================================
// Description: Copies the data stack and data index stack to the two
//              stacks which represent the "root" chunk.
//
//              The "root" stack is used to identify the chunk from a P3D
//              file at which a Rule started its processing.  This is used
//              for logging macro attributes -- since macros have no single
//              chunk that can cause them to fail the error log uses the
//              starting chunk to identify to the user what failed.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRule::SetRootStack( void )
{
    mRootChunkStack = mDataChunkStack;
    mRootChunkIndexStack = mDataChunkIndexStack;
}

//===========================================================================
// CRule::ClearCache
//===========================================================================
// Description: Each attribute has a "cache" which is used to assess macro
//              values.. those which are evaluated over move than one chunk.
//
//              After each run a Rule must clear the cache values in each
//              of its attributes.  That's what this does.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRule::ClearCache( void )
{
    // Must clear the cache values for all attributes
    unsigned int                        index;

    for ( index = 0; index < mRuleAttributes.NumItems(); index++ )
    {
        mRuleAttributes[index].ClearCache();
    }

}

//===========================================================================
// CRule::Reset
//===========================================================================
// Description: Resets the Severity (status condition) to its default.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void CRule::Reset( void )
{
    mSeverity = (kDefaultSeverity);
}

//===========================================================================
// CRule::SetRuleClass
//===========================================================================
// Description: Sets the Class for this Rule.  This value identifies how
//              the Rule is processed internally.
//
//              For example, a "sequence" is in fact just a multi-attribute
//              Rule with only an implicit "require{}" block.  It is
//              distinguished from a normal Rule as a 'kClassMacroSequence'.
//
// Constraints: 
//
//  Parameters: RuleClassEnum ruleClass: An enumeration value that identifies
//                                       the Class for this Rule.
//
//      Return: (void)
//
//===========================================================================
void CRule::SetRuleClass( RuleClassEnum ruleClass )
{
    mRuleClass = ruleClass;
}

//===========================================================================
// CRule::RuleClass
//===========================================================================
// Description: Returns the Class for this Rule.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (RuleClassEnum): An enumeration value that identifies the
//                               Class for this Rule.
//
//===========================================================================
RuleClassEnum CRule::RuleClass( void ) const
{
    return mRuleClass;
}


//===========================================================================
// CRule::SetSeverity
//===========================================================================
// Description: Assigns the Severity to the specified value.
//              A HIGHER Severity is more critical; lower is less critical.
//              This severity is used to adjust the Rule Status if
//              this Base Rule fails.
//
// Constraints: 
//
// Parameters:  unsigned int severity: The Severity setting.
//
// Return:      (void)
//
//===========================================================================
void CRule::SetSeverity( unsigned int severity )
{
    mSeverity = severity;
}

//===========================================================================
// CRule::Severity          (const)
//===========================================================================
// Description: Returns the Severity setting.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned int): The Severity setting.
//
//===========================================================================
unsigned int CRule::Severity( void ) const
{
    return mSeverity;
}

//===========================================================================
// CRule::SetLabel
//===========================================================================
// Description: Sets the Rule Label string.  This is an arbitrary name used
//              solely for identification in status displays.
//
// Parameters:  const char* ruleLabel: NULL-terminated string to copy to Rule Label,
//                                    or simply (NULL) to specify no Label.
//
// Return:      (void)
//
//===========================================================================
void CRule::SetLabel( const char* ruleLabel )
{
    if ( ruleLabel == mRuleLabel ) return;

    if ( mRuleLabel )
    {
        delete [] mRuleLabel;
        mRuleLabel = NULL;
    }

    // User may specify (NULL) to clear Label.
    if ( ruleLabel != NULL )
    {
        mRuleLabel = new char [ strlen( ruleLabel ) + 1 ];

        strcpy( mRuleLabel, ruleLabel );
    }
}

//===========================================================================
// CRule::Label      (const)
//===========================================================================
// Description: Returns a pointer to the Rule Label string.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (const char*): Pointer to a NULL-terminated string.
//
//===========================================================================
const char* CRule::Label( void ) const
{
    return mRuleLabel;
}

//===========================================================================
// CRule::HasLabel       (const)
//===========================================================================
// Description: Determines if a Rule Label has been set for this Rule.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if Rule Label is non-NULL; else FALSE.
//
//===========================================================================
bool CRule::HasLabel( void ) const
{
    return ( mRuleLabel != NULL );
}

//===========================================================================
// CRule::SetMessage
//===========================================================================
// Description: Sets the Rule Message string.  This is an arbitrary name used
//              solely for identification in status displays.
//
// Parameters:  const char* ruleMessage: NULL-terminated string to copy to 
//                                       Rule Message, or simply (NULL) to 
//                                       specify no Message.
//
// Return:      (void)
//
//===========================================================================
void CRule::SetMessage( const char* ruleMessage )
{
    if ( ruleMessage == mRuleMessage ) return;

    if ( mRuleMessage )
    {
        delete [] mRuleMessage;
        mRuleMessage = NULL;
    }

    // User may specify (NULL) to clear Message.
    if ( ruleMessage != NULL )
    {
        mRuleMessage = new char [ strlen( ruleMessage ) + 1 ];

        strcpy( mRuleMessage, ruleMessage );
    }
}

//===========================================================================
// CRule::Message      (const)
//===========================================================================
// Description: Returns a pointer to the Rule Message string.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (const char*): Pointer to a NULL-terminated string.
//
//===========================================================================
const char* CRule::Message( void ) const
{
    return mRuleMessage;
}

//===========================================================================
// CRule::HasMessage       (const)
//===========================================================================
// Description: Determines if a Rule Message has been set for this Rule.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if Rule Message is non-NULL; else FALSE.
//
//===========================================================================
bool CRule::HasMessage( void ) const
{
    return ( mRuleMessage != NULL );
}

//===========================================================================
// CRule::SetScope
//===========================================================================
// Description: Sets the Rule Scope.  This controls how this Rule will 
//              propogate through the P3D file.
//
//                  kScopeSelf     = Rule applies only to current chunk and
//                                   will not propogate to other chunks.
//                  kScopeParents  = Rule applies to parents of current chunk.
//                  kScopeSiblings = Rule applies to siblings of current chunk.
//                  kScopeChildren = Rule applies to children of current chunk.
//
// Constraints: 
//
// Parameters:  unsigned int ruleScope: Combination of one or more bits
//                                      enumerated in RuleScopeEnum.
//
// Return:      (void)
//
//===========================================================================
void CRule::SetScope( unsigned int scope )
{
    mScope = scope;
}

//===========================================================================
// CRule::SetScope
//===========================================================================
// Description: A convenience function to set the scope via its name, 
//              specifically used by the Parser.
//
//              See details in CRule::AddScope()
//
// Constraints: 
//
//  Parameters: const char* pScopeDesc: Text representation of scope.
//
//      Return: (unsigned int): The scope mask, after the specified value
//                              is added.
//
//===========================================================================
unsigned int CRule::SetScope( const char* pScopeDesc )
{
    mScope = 0;
    return AddScope( pScopeDesc );
}

//===========================================================================
// CRule::AddScope
//===========================================================================
// Description: Adds the specified scope to this Rule.  The bitflag used
//              to represent the scope is OR'd with the specified value.
//
// Constraints: Use the RULESCOPE_* values, not the RuleScopeEnum.
//
//  Parameters: unsigned int scope: Scope bit value(s) to add.
//
//      Return: (unsigned int): The scope mask, after the specified value
//                              is added.
//
//===========================================================================
unsigned int CRule::AddScope( unsigned int scope )
{
    mScope |= scope;
    return mScope;
}

//===========================================================================
// CRule::AddScope
//===========================================================================
// Description: A convenience function to add a scope via its name, 
//              specifically used by the Parser.
//
//              Expected text is one of:
//
//                  "all"
//                  "default"
//                  "self"
//                  "parent"
//                  "sibling"
//                  "child"
//
//              Note that some of these strings are defined in the 
//              RuleScopeDesc array (see rule.hpp).
//
// Constraints: 
//
//  Parameters: const char* pScopeDesc: Text representation of scope.
//
//      Return: (unsigned int): The scope mask, after the specified value
//                              is added.
//
//===========================================================================
unsigned int CRule::AddScope( const char* pScopeDesc )
{
    if ( pScopeDesc != NULL )
    {
        if ( strcmp( pScopeDesc, "all" ) == 0 )
        {
            mScope = RULESCOPE_ALL_MASK;
        }
        if ( strcmp( pScopeDesc, "default" ) == 0 )
        {
            mScope = RULESCOPE_DEFAULT;
        }
        if ( strncmp( pScopeDesc, RuleScopeDesc[kScopeSelf], strlen( RuleScopeDesc[kScopeSelf] ) ) == 0 )
        {
            mScope |= RULESCOPE_SELF_MASK;
        }
        if ( strncmp( pScopeDesc, RuleScopeDesc[kScopeParents], strlen( RuleScopeDesc[kScopeParents] ) ) == 0 )
        {
            mScope |= RULESCOPE_PARENTS_MASK;
        }
        if ( strncmp( pScopeDesc, RuleScopeDesc[kScopeSiblings], strlen( RuleScopeDesc[kScopeSiblings] ) ) == 0 )
        {
            mScope |= RULESCOPE_SIBLINGS_MASK;
        }
        if ( strncmp( pScopeDesc, RuleScopeDesc[kScopeChildren], strlen( RuleScopeDesc[kScopeChildren] ) ) == 0 )
        {
            mScope |= RULESCOPE_CHILDREN_MASK;
        }
    }

    return mScope;
}

//===========================================================================
// CRule::Scope      (const)
//===========================================================================
// Description: Returns the full bitflag for the Rule Scope.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned int): The bitflag for the Rule Scope.
//
//===========================================================================
unsigned int CRule::Scope( void ) const
{
    return mScope;
}

//===========================================================================
// CRule::SetType
//===========================================================================
// Description: Sets the Rule Type string.  This is used to match to particular
//              chunk type within a Pure3D file, and dictates to which Pure3D chunk
//              type this Rule will apply.
//
// Constraints: If no Type is specified then this Rule will apply all Base Rules
//              against all other Types.
//
// Parameters:  const char* ruleType: NULL-terminated string to copy to Rule Type,
//                                    or simply (NULL) to specify no Type.
//
// Return:      (void)
//
//===========================================================================
void CRule::SetType( const char* ruleType )
{
    if ( ruleType == mRuleType ) return;

    if ( mRuleType )
    {
        delete [] mRuleType;
        mRuleType = NULL;
    }

    // User may specify (NULL) to clear Type.
    // If no Type is specified then this Rule will apply against all Types.
    if ( ruleType != NULL )
    {
        mRuleType = new char [ strlen( ruleType ) + 1 ];

        strcpy( mRuleType, ruleType );
    }
}

//===========================================================================
// CRule::Type      (const)
//===========================================================================
// Description: Returns a pointer to the Rule Type string.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (const char*): Pointer to a NULL-terminated string.
//
//===========================================================================
const char* CRule::Type( void ) const
{
    return mRuleType;
}

//===========================================================================
// CRule::HasType       (const)
//===========================================================================
// Description: Determines if a Rule Type has been set for this Rule.
//
// Constraints: If no Type is set then this Rule will apply all Base Rules
//              against all other Types.
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if Rule Type is non-NULL; else FALSE.
//
//===========================================================================
bool CRule::HasType( void ) const
{
    return ( mRuleType != NULL );
}

//===========================================================================
// CRule::SetFile
//===========================================================================
// Description: Sets the Rule File string.  This is used to match to particular
//              chunk type within a Pure3D file, and dictates to which Pure3D chunk
//              type this Rule will apply.
//
// Constraints: 
//
// Parameters:  const char* ruleFile: NULL-terminated string to copy to Rule File,
//                                    or simply (NULL) to specify no File.
//
// Return:      (void)
//
//===========================================================================
void CRule::SetFile( const char* p3dFile )
{
    if ( p3dFile == mP3dFile ) return;

    if ( mP3dFile )
    {
        delete [] mP3dFile;
        mP3dFile = NULL;
    }

    // User may specify (NULL) to clear File.
    // If no File is specified then this Rule will apply against all Files.
    if ( p3dFile != NULL )
    {
        mP3dFile = new char [ strlen( p3dFile ) + 1 ];

        strcpy( mP3dFile, p3dFile );
    }
}

//===========================================================================
// CRule::File      (const)
//===========================================================================
// Description: Returns a pointer to the Rule File string.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (const char*): Pointer to a NULL-terminated string.
//
//===========================================================================
const char* CRule::File( void ) const
{
    return mP3dFile;
}

//===========================================================================
// CRule::HasFile       (const)
//===========================================================================
// Description: Determines if a Rule File has been set for this Rule.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if Rule File is non-NULL; else FALSE.
//
//===========================================================================
bool CRule::HasFile( void ) const
{
    return ( mP3dFile != NULL );
}

//===========================================================================
// CRule::AddRule
//===========================================================================
// Description: Adds a secondary Rule to this Rule.
//
// Constraints: Do not free the memory for the added Rule.  The destructor
//              for this class will take care of freeing the object.
//
//  Parameters: CRule* pRule: Pointer to the secondary Rule.
//
//      Return: (void)
//
//===========================================================================
void CRule::AddRule( CRule* pRule )
{
    mRules.AddItem( pRule );
}

//===========================================================================
// CRule::NumRules
//===========================================================================
// Description: Returns the number of secondary Rules in this Rule.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (unsigned int): The number of secondary Rules.
//
//===========================================================================
unsigned int CRule::NumRules( void ) const
{
    return mRules.NumItems();
}

//===========================================================================
// CRule::GetRule
//===========================================================================
// Description: Returns the pointer to the specified secondary Rule.
//
// Constraints: 
//
//  Parameters: (unsigned int index): Zero-based index to the secondary Rule.
//
//      Return: (CRule*): Pointer to the specified secondary Rule.
//
//===========================================================================
CRule* CRule::GetRule( unsigned int index )
{
    if ( index >= mRules.NumItems() ) return NULL;

    return mRules[index];
}

//===========================================================================
// CRule::AddCondition
//===========================================================================
// Description: Adds the specified Attribute Condition to this Rule.
//              All Conditions must be satisfied in order to apply this Rule.

// Constraints: 
//
// Parameters:  CRuleAttribute& ruleCondition: The Attribute Condition 
//                                             to add to this Rule.
//
// Return:      (void)
//
//===========================================================================
void CRule::AddCondition( CRuleAttribute& ruleCondition )
{
    mRuleConditions.AddItem( ruleCondition );
}

//===========================================================================
// CRule::NumConditions         (const)
//===========================================================================
// Description: Provides the number of Condition Attributes in this Rule.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned int): Number of Condition Attributes.
//
//===========================================================================
unsigned int CRule::NumConditions( void ) const
{
    return mRuleConditions.NumItems();
}

//===========================================================================
// CRule::GetCondition          (const)
//===========================================================================
// Description: Retrieves a copy of an Condition Base Rule.
//
// Constraints: 
//
// Parameters:  unsigned int index: Zero-based index for the Condition.
//              CRuleAttribute& ruleCondition: Storage for the Condition.
//
// Return:      (void)
//
//===========================================================================
void CRule::GetCondition( unsigned int index, CRuleAttribute& ruleCondition ) const
{
    if ( index >= mRuleConditions.NumItems() ) return;

    ruleCondition = mRuleConditions[index];
}

//===========================================================================
// CRule::AddAttribute
//===========================================================================
// Description: Adds the specified Attribute Base Rule to this Rule.
//
// Constraints: 
//
// Parameters:  CRuleAttribute& ruleAttribute: The Attribute to add to this 
//                                             Rule.
//
// Return:      (void)
//
//===========================================================================
void CRule::AddAttribute( CRuleAttribute& ruleAttribute )
{
    mRuleAttributes.AddItem( ruleAttribute );
}

//===========================================================================
// CRule::NumAttributes         (const)
//===========================================================================
// Description: Provides the number of Attribute Base Rules in this Rule.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned int): Number of Attribute Base Rules.
//
//===========================================================================
unsigned int CRule::NumAttributes( void ) const
{
    return mRuleAttributes.NumItems();
}

//===========================================================================
// CRule::GetAttribute          (const)
//===========================================================================
// Description: Retrieves a copy of an Attribute Base Rule.
//
// Constraints: 
//
// Parameters:  unsigned int index: Zero-based index for the Attribute.
//              CRuleAttribute& ruleAttribute: Storage for the Attribute.
//
// Return:      (void)
//
//===========================================================================
void CRule::GetAttribute( unsigned int index, CRuleAttribute& ruleAttribute ) const
{
    if ( index >= mRuleAttributes.NumItems() ) return;

    ruleAttribute = mRuleAttributes[index];
}

//===========================================================================
// CRule::AddMacro
//===========================================================================
// Description: Adds the specified Macro Base Rule to this Rule.
//
// Constraints: 
//
// Parameters:  CRuleMacro& ruleMacro: The Macro to add to this 
//                                             Rule.
//
// Return:      (void)
//
//===========================================================================
void CRule::AddMacro( CRuleAttribute& ruleMacro )
{
    mRuleMacros.AddItem( ruleMacro );
}

//===========================================================================
// CRule::NumMacros         (const)
//===========================================================================
// Description: Provides the number of Macro Base Rules in this Rule.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned int): Number of Macro Base Rules.
//
//===========================================================================
unsigned int CRule::NumMacros( void ) const
{
    return mRuleMacros.NumItems();
}

//===========================================================================
// CRule::GetMacro          (const)
//===========================================================================
// Description: Retrieves a copy of an Macro Base Rule.
//
// Constraints: 
//
// Parameters:  unsigned int index: Zero-based index for the Macro.
//              CRuleMacro& ruleMacro: Storage for the Macro.
//
// Return:      (void)
//
//===========================================================================
void CRule::GetMacro( unsigned int index, CRuleAttribute& ruleMacro ) const
{
    if ( index >= mRuleMacros.NumItems() ) return;

    ruleMacro = mRuleMacros[index];
}

//===========================================================================
// CRule::FindAttribute         (const)
//===========================================================================
// Description: Determines if a Attribute exists within this Rule
//              that has the specified name.  If so it is copied into the
//              provided CRuleAttribute object.
//
// Constraints: This should really return an array of matches, since a
//              regular expression could yield more than one.
//
// Parameters:  const char* name: NULL-terminated string for name to match.
//              CRuleAttribute& ruleAttribute: Storage for matching Attribute.
//
// Return:      TRUE if match found; else FALSE.
//
//===========================================================================
bool CRule::FindAttribute( const char* name, CRuleAttribute& ruleAttribute, bool iCase ) const
{
    bool                                bFound  = false;

    if ( name != NULL )
    {
        unsigned int                        index;

        for ( index = 0; index < mRuleAttributes.NumItems(); index++ )
        {
//            if ( mRuleAttributes[index].HasName() && ( regperform( name, mRuleAttributes[index].Name() ) == 0 ) )
            if ( mRuleAttributes[index].HasName() )
            {
                // Special case if specified expression is an empty string
                bool            bMatch = ( ( strlen( name ) == 0 ) && ( strlen( mRuleAttributes[index].Name() ) == 0 ) );

                // John Maddock's regex++ library bombs creating RE from empty string.. protect with this wrapper.
                if ( !bMatch && ( strlen( name ) > 0 ) && ( strlen( mRuleAttributes[index].Name() ) > 0 ) )
                {
                    RegEx           regEx( name, iCase );
                    bMatch = regEx.Match( mRuleAttributes[index].Name() );
                }

                if ( bMatch )
                {
                    ruleAttribute = mRuleAttributes[index];
                    bFound = true;
                    break;
                }
            }
        }
    }

    return bFound;
}

//===========================================================================
// CRule::MeetsConditions       (const)
//===========================================================================
// Description: 
//
// Constraints: 
//
// Parameters:  
//
// Return:      
//
//===========================================================================
bool CRule::MeetsConditions( const CRule& compareRule ) const
{
    bool                        bMeetsConditions = true;
    bool                        bDeferred = false;

    CRuleAttribute                      compareAttribute;
    unsigned int                        idx, idxCompare;

    for ( idx = 0; idx < mRuleConditions.NumItems(); idx++ )
    {
        bool    bMatch = false;

        switch ( mRuleConditions(idx)->Class() )
        {
            case CRuleAttribute::kClassType:
            {
//                bDeferred |= ( regperform( mRuleConditions(idx)->Value(), compareRule.Type() ) == 0 );

                // Special case if specified expression is an empty string
                bMatch = ( ( strlen( mRuleConditions(idx)->Value() ) == 0 ) && ( strlen( compareRule.Type() ) == 0 ) );

                // John Maddock's regex++ library bombs creating RE from empty string.. protect with this wrapper.
                if ( !bMatch && ( strlen( mRuleConditions(idx)->Value() ) > 0 ) && ( strlen( compareRule.Type() ) > 0 ) )
                {
                    RegEx           regEx( mRuleConditions(idx)->Value(), mRuleConditions(idx)->NoCase() );
                    bMatch = regEx.Match( compareRule.Type() );
                }

                break;
            }       // kClassType

            case CRuleAttribute::kClassFile:
            {
//                bDeferred |= ( regperform( mRuleConditions(idx)->Value(), compareRule.Type() ) == 0 );

                // Doesn't match if incoming Rule data doesn't originate from a File.
                if ( compareRule.HasFile() )
                {
                    // Special case if specified expression is an empty string
                    bMatch = ( ( strlen( mRuleConditions(idx)->Value() ) == 0 ) && ( strlen( compareRule.File() ) == 0 ) );

                    // John Maddock's regex++ library bombs creating RE from empty string.. protect with this wrapper.
                    if ( !bMatch && ( strlen( mRuleConditions(idx)->Value() ) > 0 ) && ( strlen( compareRule.File() ) > 0 ) )
                    {
                        RegEx           regEx( mRuleConditions(idx)->Value(), mRuleConditions(idx)->NoCase() );
                        bMatch = regEx.Match( compareRule.File() );
                    }
                }

                break;
            }       // kClassFile

            case CRuleAttribute::kClassExists:
            {
                bMatch = compareRule.FindAttribute( mRuleConditions(idx)->Value(), compareAttribute, mRuleConditions(idx)->NoCase() );

                break;
            }       // kClassExists

            case CRuleAttribute::kClassField:
            {
                bMatch = compareRule.FindAttribute( mRuleConditions(idx)->Name(), compareAttribute, mRuleConditions(idx)->NoCase() );

                bMatch &= compareRule.FindAttribute( mRuleConditions(idx)->Value(), compareAttribute, mRuleConditions(idx)->NoCase() );

                break;
            }

            default:
            {
                // If a Label has been specified in the Rule,
                // the contents must have an attribute of that name to meet the Condition.
                if ( mRuleConditions(idx)->HasName() )
                {
                    if ( compareRule.FindAttribute( mRuleConditions(idx)->Name(), compareAttribute, mRuleConditions(idx)->NoCase() ) )
                    {
                        bMatch = mRuleConditions(idx)->CompareWith( compareAttribute );
                    }
                    else
                    // If the matching attribute name is not found,
                    // then bMeetConditions is FALSE and everything
                    // comes to a grinding halt.
                    {
                        bMatch = false;
                    }
                }

                else        // No name specified.. loop through all comparing values
                {
                    for ( idxCompare = 0; idxCompare < compareRule.NumAttributes(); idxCompare++ )
                    {
                        compareRule.GetAttribute( idxCompare, compareAttribute );

        //                    clog << " -> Compare " << mRuleConditions[idx] << " to " << compareAttribute;

        //                // The Condition Rule must be applicable to the P3D data;
        //                // else the P3D data doesn't match the Condition.
        //                bDeferred &= ( mRuleConditions(idx)->AppliesTo( compareAttribute ) );

                        bMatch |= ( mRuleConditions(idx)->CompareWith( compareAttribute ) );
                    }
                }
            }       // Class() default
        }       // switch ( Class() )

        if ( mRuleConditions(idx)->Not() )
        {
            bMatch = !bMatch;
        }

        bDeferred |= bMatch;

        if ( !mRuleConditions(idx)->OrWithNext() )
        {
            bMeetsConditions &= bDeferred;
        }

        if ( !bMeetsConditions )
        {
            break;
        }

        // If this Rule is OR'd with the next one we wish to preserve the
        // deferred status.  If it is NOT OR'd with the next one
        // then reset the default state of bDeferred to FALSE.
        if ( !mRuleConditions(idx)->OrWithNext() )
        {
            bDeferred = false;
        }
    }

    return bMeetsConditions;
}

//===========================================================================
// CRule::Matches
//===========================================================================
// Description: Determines if this Rule (that parsed from the Rule script)
//              matches the data in the compareRule (the Pure3D file).
//
// Constraints: 
//
//  Parameters: const CRule& compareRule: The data read from the P3D file,
//                  represented in the form of a CRule.
//
//      Return: (bool): TRUE if the Rules match; else FALSE.
//
//===========================================================================
bool CRule::Matches( const CRule &compareRule )
{
    bool                        bPass = true;
    bool                        bDeferred = false;

    CRuleAttribute              compareAttribute;
    CRuleAttribute              failAttribute;
    unsigned int                idx, idxFail;
//    unsigned int                idxCompare;
    bool                        bOrFromLast = false;

    idxFail = 0;

    for ( idx = 0; idx < mRuleAttributes.NumItems(); idx++ )
    {
        // bDeferred comes in FALSE here.
        // On subsequent runs it will be cleared to FALSE if the
        // successive rule is AND'd, or preserved if the successive
        // rule is OR'd.

        bool    bMatch = true;

        switch ( mRuleAttributes(idx)->Class() )
        {
            case CRuleAttribute::kClassType:
            {
                // Attempt to find a field whose name matches the Rule's Value
//                bDeferred |= ( regperform( mRuleAttributes(idx)->Value(), compareRule.Type() ) == 0 );

                // Special case if specified expression is an empty string
                bMatch = ( ( strlen( mRuleAttributes(idx)->Value() ) == 0 ) && ( strlen( compareRule.Type() ) == 0 ) );

                // John Maddock's regex++ library bombs creating RE from empty string.. protect with this wrapper.
                if ( !bMatch && ( strlen( mRuleAttributes(idx)->Value() ) > 0 ) && ( strlen( compareRule.Type() ) > 0 ) )
                {
                    RegEx           regEx( mRuleAttributes(idx)->Value(), mRuleAttributes(idx)->NoCase() );
                    bMatch = regEx.Match( compareRule.Type() );
                }

                break;
            }

            case CRuleAttribute::kClassFile:
            {
                // Attempt to find a field whose name matches the Rule's Value
//                bDeferred |= ( regperform( mRuleAttributes(idx)->Value(), compareRule.File() ) == 0 );

                // Special case if specified expression is an empty string
                bMatch = ( ( strlen( mRuleAttributes(idx)->Value() ) == 0 ) && ( strlen( compareRule.File() ) == 0 ) );

                // John Maddock's regex++ library bombs creating RE from empty string.. protect with this wrapper.
                if ( !bMatch && ( strlen( mRuleAttributes(idx)->Value() ) > 0 ) && ( strlen( compareRule.File() ) > 0 ) )
                {
                    RegEx           regEx( mRuleAttributes(idx)->Value(), mRuleAttributes(idx)->NoCase() );
                    bMatch = regEx.Match( compareRule.File() );
                }

                break;
            }

            case CRuleAttribute::kClassExists:
            {
                // Attempt to find a field whose name matches the Rule's Value
                bMatch = compareRule.FindAttribute( mRuleAttributes(idx)->Value(), compareAttribute, mRuleAttributes(idx)->NoCase() );

//                clog << "EXISTS test for " << compareRule.Type() << ": " << ( bDeferred ? "PASS" : "FAIL" ) << endl;

                break;
            }

            case CRuleAttribute::kClassField:
            {
                CRuleAttribute                  fieldAttribute;

                if ( mRuleAttributes(idx)->HasName() && ( compareRule.FindAttribute( mRuleAttributes(idx)->Name(), compareAttribute, mRuleAttributes(idx)->NoCase() ) ) )
                {
                    // Now get attribute for comparison field
                    if ( mRuleAttributes(idx)->HasValue() && ( compareRule.FindAttribute( mRuleAttributes(idx)->Value(), fieldAttribute, mRuleAttributes(idx)->NoCase() ) ) )
                    {
                        // Rules system expects comparing attributes to have the same name.
                        fieldAttribute.SetName( compareAttribute.Name() );
                        // Inherit the comparison type from the original Rule.
                        fieldAttribute.SetCompareType( mRuleAttributes(idx)->CompareType() );

                        // Finally, compare the two.
                        bMatch = ( fieldAttribute.CompareWith( compareAttribute ) );
                    }
                }

                break;
            }

            case CRuleAttribute::kClassMacroSum:
            case CRuleAttribute::kClassMacroMin:
            case CRuleAttribute::kClassMacroMax:
            {
                // Rule Attribute MUST have a name -- it specifies the field to be processed by the Macro.
                if ( mRuleAttributes(idx)->HasName() && ( compareRule.FindAttribute( mRuleAttributes(idx)->Name(), compareAttribute, mRuleAttributes(idx)->NoCase() ) ) )
                {
                    // Perform the macro operation
                    mRuleAttributes(idx)->PerformMacro( compareAttribute );
                }

                // Match is implicitly true - deferred until post-processing step, 
                // at which time value in Rule Attribute is compared against tallied result.
//                bMatch = true;
                break;
            }

            case CRuleAttribute::kClassMacroCount:
            {
                // Perform the macro operation
                mRuleAttributes(idx)->PerformMacro( compareAttribute );

                break;
            }

            default:
            {
                // If the Rule's Attribute doesn't have a name, all values must be compared, OR
                // If the Rule's Attribute has a Name, a Compare Attribute of that name must exist to even warrant comparison.
                if ( !mRuleAttributes(idx)->HasName() || ( compareRule.FindAttribute( mRuleAttributes(idx)->Name(), compareAttribute, mRuleAttributes(idx)->NoCase() ) ) )
                {
                    bMatch = ( mRuleAttributes(idx)->CompareWith( compareAttribute ) );
                }
//                else if ( !bOrFromLast )
//                // The Rule's Attribute has a Name, but no matching Name was found..
//                // implicit pass ONLY if this is not OR'd with the previous comparison.
//                {
//                    bMatch = true;
//                }

                break;
            }       // default Class

        }       // switch ( Class() )


//                    clog << "Compare " << mRuleAttributes[idx] << " with " << compareAttribute << endl;

        // Store results into this attribute, and if fails store compareAttribute data
        // ** Do I do this BEFORE or AFTER calculating NOT and OR flags? **

        if ( mRuleAttributes(idx)->Not() )
        {
            bMatch = !bMatch;
        }

        // If this caused the Rule to fail, add failure to log.
        if ( !bMatch ) //  && bDeferred ) )
        {
//            failAttribute = compareAttribute;

            // Flag that this attribute fails, and store failAttribute data
            mRuleAttributes(idx)->AddFailContext( CRuleContext( this->mDataChunkStack, this->mDataChunkIndexStack, &compareAttribute ) );
//            gRuleLog.Add( CRuleLogEntry( this, mRuleAttributes(idx), &failAttribute ) );
        }       // if ( !bPass ) (Logging failure)

        bDeferred |= bMatch;

        // If this Rule is the first Rule, or if it is AND'd with the previous,
        // then bDeferred will start as FALSE and will be assigned to the
        // result of the compare (TRUE if compare succeeds; FALSE if it doesn't).

        // If this Rule is OR'd with the previous then bDeferred will start as
        // the OR'd result of all previous compares, and will here be OR'd
        // with the results of this compare.


        // If this Rule will not be OR'd with the next then AND the 
        // compounded OR'd result with the overall bPass status.
        if ( !mRuleAttributes(idx)->OrWithNext() )
        {
            bPass &= bDeferred;
        }

        if ( !bPass )
        {
            break;
        }

        // If this Rule is OR'd with the next one we wish to preserve the
        // deferred status.  If it is NOT OR'd with the next one
        // then reset the default state of bDeferred to FALSE.
        if ( !mRuleAttributes(idx)->OrWithNext() )
        {
            bDeferred = false;
        }

        bOrFromLast = mRuleAttributes(idx)->OrWithNext();

    }       // for ( Rule Attributes )

    return bPass;
}

//===========================================================================
// CRule::CompareWith
//===========================================================================
// Description: Compares this Rule with another Rule.
//
//              The Rules may be applied using the following technique: 
//              Construct a "Rule" from chunk data in a Pure3D file, creating
//              and populating Attribute or Parameter Base Rule(s) to describe
//              the contents of the Pure3D chunk.  Use the constructed "Rule"
//              as the comparison for this Rule.  If the specifications in
//              this Rule match the constructed Rule, then the Attribute or
//              Parameter values are compared.  If these values clash then
//              the Rule fails and the Severity is adjusted to match that in
//              the Base Rule.
//
// Constraints: THIS Rule is that which is parsed from the Rules file.
//              The COMPARE Rule represents the contents from the Pure3D file.
//
// Parameters:  const CRule& compareRule: The Rule against which to compare
//                                        this Rule.
//
// Return:      (bool): TRUE if the test passed; else FALSE.
//
//===========================================================================
bool CRule::CompareWith( const CRule& compareRule )
{
    bool                                bPass = true;

//        clog << "COMPARE RULE MATCH: " << ( HasType() ? mRuleType : "(NULL)" ) << endl;
//    this->mDataChunkStack = compareRule.mDataChunkStack;
//    this->mDataChunkIndexStack = compareRule.mDataChunkIndexStack;
//    this->SetFile( compareRule.File() );

    if ( this->MeetsConditions( compareRule ) )
    {
//            clog << " -> Condition OK: " << mRuleAttributes.NumItems() << " attributes." << endl;

        bPass &= this->Matches( compareRule );

//        unsigned int subRule;
//        for ( subRule = 0; subRule < this->mRules.NumItems(); subRule++ )
//        {
//            CDEBUG << "    -> Next to Sub-Rule..." << endl;
//            bPass &= this->mRules[0]->CompareWith( compareRule );
//        }

    }       // if ( bMeetsConditions )

//        else
//        {
//            clog << "This Rule does not meet the specified conditions." << endl;
//        }

    return bPass;
}

//===========================================================================
// CRule::PostProcess
//===========================================================================
// Description: After all of the Rules have been processed, this is called
//              to do two things:
//             
//              1. Perform a comparison against any deferred results, such
//                 as those cached for a macro command (such as SUM()).
//
//              2. If any Attributes caused this Rule to fail (including 
//                 those from (1) above) then create a log entry.  The 
//                 context for the failure is stored in the individual
//                 CRuleAttribute objects to allow extraction of the 
//                 P3D data which caused the failure.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (bool): TRUE if everything succeeds; FALSE if at least one
//                      Rule fails.
//
//===========================================================================
bool CRule::PostProcess( void )
{
    bool                        bPass = true;
    bool                        bDeferred = false;

    // An attribute may not fail on its own .. it may be OR'd with one or more
    // other attributes.  Thus, when I detect a failure I add it to this array.
    // When all OR'd comparisons are completed I have a list of all failures
    // that need to be reported.  Alternately, if the OR evaluated successfully
    // then I don't bother the user with any errors.
    CListArray<CRuleAttribute*> potentialFailedAttributes;

    unsigned int                idx, idxFail;

    idxFail = 0;

    for ( idx = 0; idx < mRuleAttributes.NumItems(); idx++ )
    {
        bool                    bMatch = true;

        // if this rule is Macro, determine if it fails.
        switch ( mRuleAttributes(idx)->Class() )
        {
            case CRuleAttribute::kClassMacroSum:
            case CRuleAttribute::kClassMacroCount:
            case CRuleAttribute::kClassMacroMin:
            case CRuleAttribute::kClassMacroMax:
            {
                if ( !mRuleAttributes(idx)->CompareMacro() )
                {
                    // Add a Fail Context to this CRuleAttribute.  No particular chunk failed - all of them did -
                    // but for information purposes the log should be rooted at the chunk where this Rule started processing.
                    // This is stored in the "root chunk stack" in the CRule class.
                    mRuleAttributes(idx)->AddFailContext( CRuleContext( mRootChunkStack, this->mRootChunkIndexStack ) );
                    potentialFailedAttributes.AddItem( mRuleAttributes(idx) );
                    bMatch = false;
                }

                break;
            }

            default:
            {
                if ( mRuleAttributes(idx)->NumFailContexts() > 0 )
                {
                    // The Fail Context(s) have already been added to the CRuleAttribute.  Just need to
                    // add it to the array of "potentially failed."
                    potentialFailedAttributes.AddItem( mRuleAttributes(idx) );
                    bMatch = false;
                }
            }
        }

        // If failed and OR'd with next, defer results

        bDeferred |= bMatch;

        // If this Rule is the first Rule, or if it is AND'd with the previous,
        // then bDeferred will start as FALSE and will be assigned to the
        // result of the compare (TRUE if compare succeeds; FALSE if it doesn't).

        // If this Rule is OR'd with the previous then bDeferred will start as
        // the OR'd result of all previous compares, and will here be OR'd
        // with the results of this compare.

        // If this Rule will not be OR'd with the next then AND the 
        // compounded OR'd result with the overall bPass status.
        if ( !mRuleAttributes(idx)->OrWithNext() )
        {
            unsigned int a, f;
            bool bIsSevere = true;

            CRuleCollection* pCollection = CRuleParser::GetCollection();
            if ( pCollection != NULL )
            {
                bIsSevere = ( this->Severity() >= pCollection->WarnSeverity() );
            }

            // If this Attribute (or group of Attributes, if OR'd) failed, add failure to log.
            if ( bIsSevere && !bDeferred )
            {
                for ( a = 0; a < potentialFailedAttributes.NumItems(); a++ )
                {
                    // This may have failed against more than one data chunk.
                    // If so there will be more than one FailContext to report.
                    for ( f = 0; f < potentialFailedAttributes[a]->NumFailContexts(); f++ )
                    {
                        CRuleContext* pContext = potentialFailedAttributes[a]->GetFailContext( f );

                        // Need a context for the Rule Log reporting system.  This is stored
                        // in the CRuleAttribute at the point at which it failed.
                        // Copy this context stack into the CRule for the CRuleLog.
                        this->mDataChunkStack = pContext->DataStack();
                        this->mDataChunkIndexStack = pContext->DataIndexStack();

                        // Finally, add it to the log.
                        gRuleLog.Add( CRuleLogEntry( this, potentialFailedAttributes[a], pContext->Attribute() ) );
                    }
                }

            }       // if ( !bPass ) (Logging failure)

            // Regardless if (a) errors were added to log, or (b) errors were
            // deemed as not critical, clear the fail contexts for all attributes.
            for ( a = 0; a < potentialFailedAttributes.NumItems(); a++ )
            {
                // Clear the fail contexts on this CRuleAttribute so they don't get in the way later on.
                potentialFailedAttributes[a]->ResetFailContext();
            }        

            potentialFailedAttributes.Clear();
        }

        // If this Rule is OR'd with the next one we wish to preserve the
        // deferred status.  If it is NOT OR'd with the next one
        // then reset the default state of bDeferred to FALSE.
        if ( !mRuleAttributes(idx)->OrWithNext() )
        {
            bPass &= bDeferred;
            bDeferred = false;
        }
    }

    // It would seem logical to Post-Process all sub-rules of a rule here.
    // However, all rule processing is done from CRuleCollection::ProcessRule()
    // and sub-rules call this iteratively.  CRule::PostProcess() is also
    // called from CRuleCollection::ProcessRule(), so it is not necessary
    // to call this from here.
//    unsigned int subRule;
//    for ( subRule = 0; subRule < this->NumRules(); subRule++ )
//    {
//        CRule* pSubRule = this->GetRule( subRule );
//        bPass &= pSubRule->PostProcess();
//    }

    return bPass;
}

//===========================================================================
// operator <<
//===========================================================================
// Description: Extraction operator overload for CRule class.
//
//              This can be used to examine the parse for this rule.  The
//              text generated here reflects the syntax that generate the
//              contents of this Rule.
//
//===========================================================================
std::ostream& operator << ( std::ostream& os, const CRule& rule)
{
    unsigned int                u;
    bool                        bHasOrBrace = false;

    os << "rule" << std::endl << "{" << std::endl;

    if ( rule.mRuleLabel != NULL )
    {
        os << "\tlabel " << rule.mRuleLabel << std::endl;
    }

    if ( rule.mSeverity != kDefaultSeverity )
    {
        os << "\tseverity " << rule.mSeverity << std::endl;
    }

    if ( rule.mRuleConditions.NumItems() > 0 )
    {
        bool                    bOr = false;

        os << "\tif" << std::endl << "\t{" << std::endl;

        for ( u = 0; u < rule.mRuleConditions.NumItems(); u++ )
        {
            CRuleAttribute*         pAttribute = rule.mRuleConditions(u);

            os << "\t\t";

            if ( pAttribute->OrWithNext() && !bHasOrBrace )
            {
                os << "{" << std::endl << "\t\t";
                bHasOrBrace = true;
            }

            if ( bHasOrBrace )
            {
                os << "\t";
            }

            if ( bOr )
            {
                os << "or ";
            }

            if ( pAttribute->Not() )
            {
                os << "not ";
            }

            switch ( pAttribute->Class() )
            {
                case CRuleAttribute::kClassAttribute:
                {
                    os << pAttribute->Name() << " ";
                    os << "=";
                    os << " \"" << pAttribute->Value() << "\"";
                    os << "\t // kClassAttribute";
                    os << std::endl;
                    break;
                }
                case CRuleAttribute::kClassType:
                {
                    os << "type " << pAttribute->Value();
                    os << "\t // kClassType";
                    os << std::endl;
                    break;
                }
                case CRuleAttribute::kClassFile:
                {
                    os << "type " << pAttribute->Value();
                    os << "\t // kClassFile";
                    os << std::endl;
                    break;
                }
                case CRuleAttribute::kClassExists:
                {
                    os << "exists " << pAttribute->Value();
                    os << "\t // kClassExists";
                    os << std::endl;
                    break;
                }
            }

            if ( bHasOrBrace && !pAttribute->OrWithNext() )
            {
                os << "\t\t}" << std::endl;
                bHasOrBrace = false;
            }

            bOr = pAttribute->OrWithNext();
        }

        os << "\t}" << std::endl;
    }

    if ( rule.mRuleAttributes.NumItems() > 0 )
    {
        bool                    bOr = false;

        os << "\trequire" << std::endl << "\t{" << std::endl;

        for ( u = 0; u < rule.mRuleAttributes.NumItems(); u++ )
        {
            CRuleAttribute*         pAttribute = rule.mRuleAttributes(u);

            os << "\t\t";

            if ( pAttribute->OrWithNext() && !bHasOrBrace )
            {
                os << "{" << std::endl << "\t\t";
                bHasOrBrace = true;
            }

            if ( bHasOrBrace )
            {
                os << "\t";
            }

            if ( bOr )
            {
                os << "or ";
            }

            if ( pAttribute->Not() )
            {
                os << "not ";
            }

            switch ( pAttribute->Class() )
            {
                case CRuleAttribute::kClassAttribute:
                {
                    os << pAttribute->Name() << " ";
                    os << "=";
                    os << " \"" << pAttribute->Value() << "\"";
                    os << "\t // kClassAttribute";
                    os << std::endl;
                    break;
                }
                case CRuleAttribute::kClassType:
                {
                    os << "type " << pAttribute->Value();
                    os << "\t // kClassType";
                    os << std::endl;
                    break;
                }
                case CRuleAttribute::kClassFile:
                {
                    os << "type " << pAttribute->Value();
                    os << "\t // kClassFile";
                    os << std::endl;
                    break;
                }
                case CRuleAttribute::kClassExists:
                {
                    os << "exists " << pAttribute->Value();
                    os << "\t // kClassExists";
                    os << std::endl;
                    break;
                }
            }

            if ( bHasOrBrace && !pAttribute->OrWithNext() )
            {
                os << "\t\t}" << std::endl;
                bHasOrBrace = false;
            }

            bOr = pAttribute->OrWithNext();
        }

        os << "\t}" << std::endl;
    }

    os << "}" << std::endl;

    return os;
}
