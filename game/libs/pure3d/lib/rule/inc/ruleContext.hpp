//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     08 April, 2002
//
// Component:   Art Diagnostic Tool - Rules
//
// Description: This class stores a "fail context."  When a Rule Attribute
//              (as written in a Rule script) fails against the data stored
//              in a P3D file it cannot be immediately added to the error
//              log.  This evaluation must be deferred until all OR'd 
//              attributes are considered, and the results for all macro 
//              attributes are compounded.
//
//              Essentially this object stores the "where and why" when an 
//              attribute fails so it may be described in a meaningful 
//              way from CRuleLog.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __RULECONTEXT_H  
#define __RULECONTEXT_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <stack.hpp>

//===========================================================================
// Forward References
//===========================================================================

// Doing a forward declaration here, instead of #including <toollib.hpp>,
// avoids those nasty "truncating debug information" warnings.
// #include is in "ruleCollection.cpp" instead.
class tlDataChunk;
class CRuleAttribute;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CRuleContext
{
public:

    void                        Set( CStack<tlDataChunk*> dataStack, CStack<unsigned int> dataIndexStack, CRuleAttribute* pFailData = NULL );

    CRuleAttribute*             Attribute( void ) const;
    CStack<tlDataChunk*>        DataStack( void ) const;
    CStack<unsigned int>        DataIndexStack( void ) const;

    void                        Clear( void );

    CRuleContext&               operator = ( const CRuleContext& other );

// Constructor / Destructor
public:
    CRuleContext();
    CRuleContext( CStack<tlDataChunk*> dataStack, CStack<unsigned int> dataIndexStack, CRuleAttribute* pFailData = NULL );
    CRuleContext( const CRuleContext& other );
    ~CRuleContext();

protected:
    void                        SetFailData( const CRuleAttribute* pFailData );

private:
    CStack<tlDataChunk*>        mDataStack;         // Stack that describes a hierarchy of P3D chunks.
    CStack<unsigned int>        mDataIndexStack;    // Stack that describes the indices of the P3D chunks within the hierarchy.
    CRuleAttribute*             mpFailData;         // Pointer to the data from the P3D chunk that caused an attribute to fail.
};

//===========================================================================
// Inlines
//===========================================================================

//===========================================================================
// CRuleContext::Attribute      (const)
//===========================================================================
// Description: Returns the pointer to the CRuleAttribute that represents
//              the data from which this Context is derived.  This is the
//              data from the P3D file against which an attribute from a 
//              user-defined Rule failed.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: CRuleAttribute*: Pointer to the attribute data.
//
//===========================================================================
inline
CRuleAttribute* CRuleContext::Attribute( void ) const
{
    return mpFailData;
}

//===========================================================================
// CRuleContext::DataStack
//===========================================================================
// Description: Returns a copy of the tlDataChunk stack stored in this
//              context.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (CStack<tlDataChunk*>): A copy of the tlDataChunk stack.
//
//===========================================================================
inline
CStack<tlDataChunk*> CRuleContext::DataStack( void ) const
{
    return mDataStack;
}

//===========================================================================
// CRuleContext::DataIndexStack
//===========================================================================
// Description: Returns a copy of the tlDataChunk index stack.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (CStack<unsigned int>): A copy of the tlDataChunk index
//                                      stack.
//
//===========================================================================
inline
CStack<unsigned int> CRuleContext::DataIndexStack( void ) const
{
    return mDataIndexStack;
}

#endif // __RULECONTEXT_H  
