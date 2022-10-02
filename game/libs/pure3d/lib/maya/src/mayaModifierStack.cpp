//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 2, 2001
//
// Component:   mayaModifierStack
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/mayaModifierStack.hpp"

#include <maya/MStatus.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CMayaModifierStack::CMayaModifierStack()
:   m_stackPosition( 0 )
{
}

CMayaModifierStack::~CMayaModifierStack()
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
// CMayaModifierStack::Clear
//===========================================================================
// Description: Clears the modifier stack.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void CMayaModifierStack::Clear( void )
{
    while ( m_modifierStack.Count() )
    {
        delete m_modifierStack[0];
        m_modifierStack.Delete( 0, 1 );
    }

    m_stackPosition = 0;
}

//===========================================================================
// CMayaModifierStack::DGModifier
//===========================================================================
// Description: Issues a new MDGModifier object.  The MDGModifier is
//              allocated by the class, added to the modifier stack.
//              A pointer to the MDGModifier is returned to the user.
//
// Constraints: Do not delete the returned pointer!
//              
//              ** Once you invoke ::doIt() from the MDGModifier returned
//                 by this function _do not use it again_.  Request another.
//
//              Currently does not support inserting a modifier in the
//              middle of the stack (an attempt is simply refused).
//
// Parameters:  (void)
//
// Return:      (MDGModifier*): Pointer to the MDGModifier.
//
//===========================================================================
MDGModifier* CMayaModifierStack::DGModifier( void )
{
    // If Stack has Redo, cannot append.
    // (Eventually this will support discarding stack items above
    // the item being inserted.)
    if ( this->CanRedo() ) return NULL;

    CMayaModifier*                      mayaModifier;

    mayaModifier = new CMayaModifier( CMayaModifier::kDGModifier );
    m_modifierStack.Append( mayaModifier );

    m_stackPosition++;

    return mayaModifier->DGModifier();
}

//===========================================================================
// CMayaModifierStack::DagModifier
//===========================================================================
// Description: Issues a new MDagModifier object.  The MDagModifier is
//              allocated by the class, added to the modifier stack.
//              A pointer to the MDagModifier is returned to the user.
//
// Constraints: Do not delete the returned pointer!
//              
//              ** Once you invoke ::doIt() from the MDagModifier returned
//                 by this function _do not use it again_.  Request another.
//
//              Currently does not support inserting a modifier in the
//              middle of the stack (an attempt is simply refused).
//
// Parameters:  (void)
//
// Return:      (MDagModifier*): Pointer to the MDagModifier.
//
//===========================================================================
MDagModifier* CMayaModifierStack::DagModifier( void )
{
    // If Stack has Redo, cannot append.
    // (Eventually this will support discarding stack items above
    // the item being inserted.)
    if ( this->CanRedo() ) return NULL;

    CMayaModifier*                      mayaModifier;

    mayaModifier = new CMayaModifier( CMayaModifier::kDagModifier );
    m_modifierStack.Append( mayaModifier );

    m_stackPosition++;

    return mayaModifier->DAGModifier();
}

//===========================================================================
// CMayaModifierStack::Undo
//===========================================================================
// Description: Undo all modifiers on the stack.
//
//              It is safe to call this even if no Undo is available; be 
//              aware that if no Undo is available this will return MS::kFailure.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (MStatus): MS::kSuccess if Undo was successfully invoked.
//                         MS::kFailure if no Undo performed, or if something
//                           went wrong.
//
//===========================================================================
MStatus CMayaModifierStack::Undo( void )
{
    MStatus                             status = MS::kFailure;

    CMayaModifier*                      mayaModifier;
    MDGModifier*                        dgModifier;
    MDagModifier*                       dagModifier;

    while ( m_stackPosition-- )
    {
        mayaModifier = m_modifierStack[m_stackPosition];

        if ( mayaModifier->Type() == CMayaModifier::kDGModifier )
        {
            dgModifier = mayaModifier->DGModifier();
            status = dgModifier->undoIt();
        }

        if ( mayaModifier->Type() == CMayaModifier::kDagModifier )
        {
            dagModifier = mayaModifier->DAGModifier();
            status = dagModifier->undoIt();
        }

        if ( status != MS::kSuccess )
        {
            break;
        }
    }

    m_stackPosition = 0;

    return status;
}

//===========================================================================
// CMayaModifierStack::Redo
//===========================================================================
// Description: Redo all modifiers on the stack.
//
//              It is safe to call this even if no Redo is available; be 
//              aware that if no Redo is available this will return MS::kFailure.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (MStatus): MS::kSuccess if Redo was successfully invoked.
//                         MS::kFailure if no Redo performed, or if something
//                           went wrong.
//
//===========================================================================
MStatus CMayaModifierStack::Redo( void )
{
    MStatus                             status = MS::kFailure;

    CMayaModifier*                      mayaModifier;
    MDGModifier*                        dgModifier;
    MDagModifier*                       dagModifier;

    for ( /* nothing */ ; m_stackPosition < m_modifierStack.Count(); m_stackPosition++ )
    {
        mayaModifier = m_modifierStack[m_stackPosition];

        if ( mayaModifier->Type() == CMayaModifier::kDGModifier )
        {
            dgModifier = mayaModifier->DGModifier();
            status = dgModifier->doIt();
        }

        if ( mayaModifier->Type() == CMayaModifier::kDagModifier )
        {
            dagModifier = mayaModifier->DAGModifier();
            status = dagModifier->doIt();
        }

        if ( status != MS::kSuccess )
        {
            break;
        }
    }

    // This will fall through with m_stackPosition == m_modifierStack.Count().
    // This is what we want... the Position is a 1-based index.

    return status;
}

unsigned short CMayaModifierStack::NumUndo( void ) const
{
    return m_stackPosition;
}

unsigned short CMayaModifierStack::NumRedo( void ) const
{
    return m_modifierStack.Count() - m_stackPosition;
}
