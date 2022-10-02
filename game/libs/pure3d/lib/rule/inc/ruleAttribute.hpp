//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 21, 2001
//
// Component:   Rules system for Art Diagnostic Tools
//
// Description: This is an Attribute for a Base Rule.  It
//              stores the name of the attribute that needs to match
//              if the Base Rule is to be applied.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __RULEATTRIBUTE_H  
#define __RULEATTRIBUTE_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include "ruleBase.hpp"
#include "ruleContext.hpp"

#include <listarray/listarray.hpp>

#include <iostream>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Description: This is an Attribute for a Base Rule.  It
//              stores the name of the attribute that needs to match
//              if the Base Rule is to be applied.
//
// Constraints:
//
//===========================================================================

class CRuleAttribute : public CRuleBase
{
public:

    enum RuleAttributeClassEnum
    {
        kClassAttribute,    // Compare Value of named attribute; e.g. "Version" = 0
        kClassType,         // Compare against the Type of a CRule
        kClassExists,       // Determine if named attribute exists; e.g. exists "Version"
        kClassField,        // Compare one attribute to another; e.g. "Width" > "Height"
        kClassOccurance,    // Check for 'n' occurances of the named attribute.
        kClassSequence,     // Check for a sequence of attributes.
        kClassFile,         // Compare the name of the P3D File being processed.
        kClassUserVariable, // This is a user variable.
        kClassMacroSum,     // SUM()
        kClassMacroCount,   // COUNT()
        kClassMacroMin,     // MIN()
        kClassMacroMax,     // MAX()
    };

    void                                SetName( const char* name );
    const char*                         Name( void ) const;
    bool                                HasName( void ) const;

    void                                SetClass( unsigned short classify );
    unsigned short                      Class( void ) const;        // inline

//  bool                                AppliesTo( const CRuleAttribute& compare ) const;
    bool                                CompareWith( const CRuleAttribute& compare ) const;
    bool                                CompareMacro( void ) const;
    void                                PerformMacro( const CRuleAttribute& compare );

    void                                AddFailContext( const CRuleContext& context );
    unsigned int                        NumFailContexts( void ) const;
    CRuleContext*                       GetFailContext( unsigned int index ) const;
    void                                ResetFailContext( void );

    virtual void                        Clear( void );

    CRuleAttribute&                     operator = ( const CRuleAttribute& other );
    bool                                operator == ( const CRuleAttribute& other ) const;

    friend std::ostream&                operator << ( std::ostream& os, const CRuleAttribute& ruleAttribute );

// Constructor / Destructor
public:
    CRuleAttribute();
    CRuleAttribute( const CRuleAttribute& other );
    virtual ~CRuleAttribute();

protected:

private:
    char*                               mName;              // Name of the attribute.
    unsigned short                      mClass;             // Class of this attribute

    CListArray<CRuleContext>            mFailContext;       // Context where Attribute has failed.
};

//===========================================================================
// Inlines
//===========================================================================

//===========================================================================
// CRuleAttribute::Class
//===========================================================================
// Description: Returns the class for this Rule Attribute.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned short): One of the RuleAttributeClassEnum.
//
//===========================================================================
inline
unsigned short CRuleAttribute::Class( void ) const
{
    return mClass;
}

#endif // __RULEATTRIBUTE_H  
