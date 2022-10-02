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

// Recompilation protection flag.
#ifndef __CRULE_H  
#define __CRULE_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include "ruleAttribute.hpp"
#include "ruleLog.h"

#include <listarray/listarray.hpp>
#include <stack.hpp>

#include <string>

//===========================================================================
// Forward References
//===========================================================================

// Forward declaration only (avoids compiler warnings)
class tlDataChunk;

class CRuleCollection;
class CRuleLogEntry;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const unsigned int kDefaultSeverity = (-1);

enum RuleClassEnum
{
    kClassRule = 0,
    kClassMacroSequence
};

enum RuleScopeEnum
{
    kScopeSelf = 0,
    kScopeParents,
    kScopeSiblings,
    kScopeChildren,

    kNumRuleScopeEnums
};

static const char* RuleScopeDesc[kNumRuleScopeEnums] =
{
    "self",
    "parent",
    "sibling",
    "child"
};

const unsigned int RULESCOPE_NONE               = 0;
const unsigned int RULESCOPE_SELF_MASK          = ( 1 << kScopeSelf );
const unsigned int RULESCOPE_PARENTS_MASK       = ( 1 << kScopeParents );
const unsigned int RULESCOPE_SIBLINGS_MASK      = ( 1 << kScopeSiblings );
const unsigned int RULESCOPE_CHILDREN_MASK      = ( 1 << kScopeChildren );
const unsigned int RULESCOPE_ALL_MASK           = ( RULESCOPE_SELF_MASK | RULESCOPE_PARENTS_MASK | RULESCOPE_SIBLINGS_MASK | RULESCOPE_CHILDREN_MASK );
const unsigned int RULESCOPE_DEFAULT            = RULESCOPE_ALL_MASK;

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Description:
//
// Constraints:
//
//===========================================================================

class CRule
{
public:
    friend CRuleCollection;
    friend CRuleLogEntry;

public:

    void                                SetRuleClass( RuleClassEnum ruleClass );
    RuleClassEnum                       RuleClass( void ) const;

    void                                SetSeverity( unsigned int severity );
    unsigned int                        Severity( void ) const;

    void                                SetLabel( const char* ruleLabel );
    const char*                         Label( void ) const;
    bool                                HasLabel( void ) const;

    void                                SetMessage( const char* ruleMessage );
    const char*                         Message( void ) const;
    bool                                HasMessage( void ) const;

    void                                SetScope( unsigned int scope );
    unsigned int                        AddScope( unsigned int moreScope );
    unsigned int                        SetScope( const char* scopeDesc );
    unsigned int                        AddScope( const char* scopeDesc );
    unsigned int                        Scope( void ) const;

    void                                SetType( const char* ruleType );
    const char*                         Type( void ) const;
    bool                                HasType( void ) const;

    void                                SetFile( const char* p3dFile );
    const char*                         File( void ) const;
    bool                                HasFile( void ) const;

    bool                                FindAttribute( const char* name, CRuleAttribute& ruleAttribute, bool iCase = false ) const;

    void                                AddRule( CRule* pRule );
    unsigned int                        NumRules( void ) const;
    CRule*                              GetRule( unsigned int index );

    void                                AddCondition( CRuleAttribute& ruleCondition );
    void                                AddAttribute( CRuleAttribute& ruleAttribute );
    void                                AddMacro( CRuleAttribute& ruleAttribute );

    unsigned int                        NumConditions( void ) const;
    void                                GetCondition( unsigned int index, CRuleAttribute& ruleCondition ) const;
    unsigned int                        NumAttributes( void ) const;
    void                                GetAttribute( unsigned int index, CRuleAttribute& ruleAttribute ) const;
    unsigned int                        NumMacros( void ) const;
    void                                GetMacro( unsigned int index, CRuleAttribute& ruleAttribute ) const;

    bool                                MeetsConditions( const CRule& compareRule ) const;
    bool                                CompareWith( const CRule& compareRule );

    bool                                PostProcess( void );

    void                                Reset( void );                  // Resets Severity value to default (-1).
    void                                Clear( void );                  // Clears entire Rule.

    friend std::ostream&                operator << ( std::ostream& os, const CRule& rule );

// Constructor / Destructor
public:
    CRule();
    virtual ~CRule();

protected:
    void                                SetRootStack( void );
    void                                ClearCache( void );

private:
    char*                               mRuleLabel;                     // Label for this rule.
    char*                               mRuleType;                      // matches type of P3D chunk
    char*                               mRuleMessage;                   // Message describing this Rule.

    unsigned int                        mScope;                         // Scope that controls how this Rule will propogate.
    RuleClassEnum                       mRuleClass;                     // Rule Class = 0 for normal Rule, >0 for Macro.

    std::string                         mErrorBuf;                      // Buffer indicating errors during Match()

    // These are used during CRuleCollection::ProcessRules()
    char*                               mP3dFile;                       // Pointer to name of P3D file to which Rule is applied.
    CStack<tlDataChunk*>                mRootChunkStack;                // P3D navigation to the Chunk where this Rule started (used for macro logging).
    CStack<unsigned int>                mRootChunkIndexStack;           // Index of DataChunk within P3D file where this Rule started.
    CStack<tlDataChunk*>                mDataChunkStack;                // P3D navigation to the Chunk representing this Rule.
    CStack<unsigned int>                mDataChunkIndexStack;           // Index of DataChunk within P3D file.

    CListArray<CRule*>                  mRules;                         // Sub-Rules in this Rule.
    CListArray<CRuleAttribute>          mRuleConditions;                // Must satisfy all conditions to apply Rule.
    CListArray<CRuleAttribute>          mRuleAttributes;                // Attributes required for Rule to pass.
    CListArray<CRuleAttribute>          mRuleMacros;                    // Macros applied if condition met.

    unsigned int                        mSeverity;                      // Severity to apply if Rule fails.

    bool                                Matches( const CRule& compareRule );
};

//===========================================================================
// Inlines
//===========================================================================

//inline
//unsigned int CRule::DataChunkIndex( void ) const
//{
//    return mDataChunkIndex;
//}

#endif // __CRULE_H  
