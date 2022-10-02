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
//===========================================================================
// Includes
//===========================================================================

#include "ruleContext.hpp"
#include "ruleAttribute.hpp"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CRuleContext::CRuleContext()
:   mpFailData( NULL )
{
}

CRuleContext::CRuleContext( CStack<tlDataChunk*> dataStack, CStack<unsigned int> dataIndexStack, CRuleAttribute* pFailData )
:   mpFailData( NULL )
{
    Set( dataStack, dataIndexStack, pFailData );
}

CRuleContext::~CRuleContext()
{
    delete mpFailData;
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

CRuleContext::CRuleContext( const CRuleContext& other )
:   mpFailData( NULL )
{
    *this = other;
}

CRuleContext& CRuleContext::operator = ( const CRuleContext& other )
{
    mDataStack = other.mDataStack;
    mDataIndexStack = other.mDataIndexStack;
    SetFailData( other.mpFailData );

    return *this;
}

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CRuleContext::Clear
//===========================================================================
// Description: Clears the contents of this object.  The Stacks are cleared
//              and the fail data attribute is set to NULL.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRuleContext::Clear( void )
{
    while ( !mDataStack.IsEmpty() )
    {
        mDataStack.Pop();
    }
    while ( !mDataIndexStack.IsEmpty() )
    {
        mDataIndexStack.Pop();
    }
    delete mpFailData;
    mpFailData = NULL;
}

//===========================================================================
// CRuleContext::Set
//===========================================================================
// Description: Copies the data stack, data index stack and fail data
//              attribute to this object's member variables.
//
// Constraints: 
//
//  Parameters: CStack<tlDataChunk*> mDataStack: Stack that describes a 
//                  hierarchy of P3D chunks.
//              CStack<unsigned int> mDataIndexStack: Stack that describes 
//                  the indices of the P3D chunks within the hierarchy.
//              CRuleAttribute* mpFailData: Pointer to the data from the 
//                  P3D chunk that caused an attribute to fail.
//
//      Return: (void)
//
//===========================================================================
void CRuleContext::Set( CStack<tlDataChunk*> dataStack, CStack<unsigned int> dataIndexStack, CRuleAttribute* pFailData )
{
    mDataStack = dataStack;
    mDataIndexStack = dataIndexStack;
    SetFailData( pFailData );
}

//===========================================================================
// CRuleContext::SetFailData
//===========================================================================
// Description: Safely copies the specified fail data attribute to this
//              object's member variable.  If the pointer is NULL then
//              the local data is simply cleared.
//
// Constraints: 
//
//  Parameters: const CRuleAttribute* pFailData: Pointer to the fail data
//                  attribute to copy.  May be NULL.
//
//      Return: (void)
//
//===========================================================================
void CRuleContext::SetFailData( const CRuleAttribute* pFailData )
{
    delete mpFailData;
    mpFailData = NULL;

    if ( pFailData != NULL )
    {
        mpFailData = new CRuleAttribute( *pFailData );
    }
}
