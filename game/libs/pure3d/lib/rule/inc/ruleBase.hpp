//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 21, 2001
//
// Component:   Rules system for Art Diagnostic Tools.
//
// Description: This class is the base class from which RuleAttribute
//              and RuleParameter are derived.  It provides the "Value"
//              comparison for these two subclasses.
//
// Creator:     Bryan Ewert
//
//===========================================================================
        
// Recompilation protection flag.
#ifndef __RULEBASE_H  
#define __RULEBASE_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <stdio.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

// Strings corresponding to RuleValueTypeEnum.
// Used by CRuleAttribute::operator<<
static const char* gRuleValueTypes[] =
{
    "string",
    "ULONG",
    "float",
    "colour"
};

static char cacheValueAsString[ 32 ];

//===========================================================================
// Interface Definitions
//===========================================================================

class CRuleBase
{
public:

    // ENUM to define how this value will be compared 
    // against the incoming value.
    enum RuleCompareEnum
    {
        kCompareEqual,
        kCompareNotEqual,
        kCompareLess,
        kCompareGreater,
        kCompareLessOrEqual,
        kCompareGreaterOrEqual
    };

    // ENUM to define how the Value is to be converted
    // prior to the comparison.
    enum RuleValueTypeEnum
    {
        kString,
        kULong,
        kFloat,
        kColour
    };

    void                                SetValue( const char* value );
    void                                SetValue( const int value );
    void                                SetValue( const float value );

    bool                                HasValue( void ) const;         // inline
    const char*                         Value( void ) const;            // inline
    const char*                         CacheValue( void ) const;

    double                              AsDouble( void ) const;
    int                                 AsInt( void ) const;
    float                               AsFloat( void ) const;

    void                                SetValueType( RuleValueTypeEnum type );
    void                                SetValueType( const char* type );

    void                                SetCompareType( RuleCompareEnum compare );
    void                                SetCompareType( const char* compare );
    RuleCompareEnum                     CompareType( void ) const;      // inline
    RuleCompareEnum                     InclusiveCompareType( void ) const;

    virtual void                        SetOrWithNext( bool bOrWithNext );
    virtual bool                        OrWithNext( void ) const;       // inline

    virtual void                        SetNot( bool bNot );
    virtual bool                        Not( void ) const;              // inline

    virtual void                        SetNoCase( bool bNoCase );
    virtual bool                        NoCase( void ) const;           // inline

    bool                                AppliesTo( const CRuleBase& compare ) const;
    bool                                CompareWith( const CRuleBase& compare ) const;

    void                                ClearCache( void );

    virtual void                        Clear( void );

    CRuleBase&                          operator = ( const CRuleBase& other );
    bool                                operator == ( const CRuleBase& other ) const;

// Constructor / Destructor
public:
    CRuleBase();
    CRuleBase( const CRuleBase& other );
    virtual ~CRuleBase();

protected:
    char*                               mValue;         // Value of attribute, parameter, whatever.
    float                               mCacheValue;    // Value used in the processing of macro functions.
    bool                                mCacheStarted;  // First pass at cache value must assign, not compound.
    RuleValueTypeEnum                   mValueType;     // Type of Value; mValue is converted to this type prior to compare.
    bool                                mbOrWithNext;   // Specify whether to OR this result with the following result.
    bool                                mbNot;          // If TRUE, negate the comparison.
    bool                                mbNoCase;       // If TRUE, comparison is case-insensitive.

    RuleCompareEnum                     mCompareType;   // How to compare this value to the incoming value.

private:
    float                               hextofloat( const char hex[2] ) const;
    bool                                ishex( const char* value ) const;
    bool                                isnumeric( const char* value ) const;
    void                                AutoValueType( void );

};

//===========================================================================
// Inlines
//===========================================================================

//===========================================================================
// CRuleBase::HasValue      (const)     (inline)
//===========================================================================
// Description: Determines whether a Value has been specified.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if Value is non-NULL; else FALSE.
//
//===========================================================================
inline
bool CRuleBase::HasValue( void ) const
{
    return ( mValue != NULL );
}

//===========================================================================
// CRuleBase::Value     (const)     (inline)
//===========================================================================
// Description: Returns a pointer to the Value data.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (const char*): Pointer to NULL-terminated string.
//
//===========================================================================
inline
const char* CRuleBase::Value( void ) const
{
    return mValue;
}

inline
CRuleBase::RuleCompareEnum CRuleBase::CompareType( void ) const
{
    return mCompareType;
}

//===========================================================================
// CRuleBase::OrWithNext            (const)     (inline)
//===========================================================================
// Description: Returns the Logic Type (AND or OR) used to adjust the success
//              of the current Rule.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if this Base Rule should be OR'd with the
//                      succeeding Base Rule; FALSE if Base Rule should be
//                      AND'd with the succeeding Base Rule.
//
//===========================================================================
inline
bool CRuleBase::OrWithNext( void ) const
{
    return mbOrWithNext;
}


//===========================================================================
// CRuleBase::Not           (const)
//===========================================================================
// Description: Returns the state of the Not flag.
//
//              If TRUE, the Not flag negates the results of the Compare()
//              test.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      
//
//===========================================================================
inline 
bool CRuleBase::Not( void ) const
{
    return mbNot;
}

//===========================================================================
// CRuleBase::NoCase           (const)
//===========================================================================
// Description: Returns the state of the NoCase flag.
//
//              If TRUE, the NoCase signals that the Rule shall perform
//              case-insensitive comparison.  By default comparisons are
//              case-sensitive.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      
//
//===========================================================================
inline 
bool CRuleBase::NoCase( void ) const
{
    return mbNoCase;
}

#endif // __RULEBASE_H  
