//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 2, 2001
//
// Component:   mayaModifierStack
//
// Description: Mechanism for issuing MDGModifier and MDagModifier objects.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MAYAMODIFIERSTACK_H  
#define __MAYAMODIFIERSTACK_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include "mayaModifier.hpp"
#include "tlTable.hpp"

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
// Description: Mechanism for issuing MDGModifier and MDagModifier objects.
//              These modifier objects are maintained on a stack and can be
//              undone and redone en masse.
//
//              NOTE that even though this is treated as a stack it is
//              implemented as a table.  To allow for Redo all items
//              above the current item in the stack must be maintained.
//
// Constraints:
//
//===========================================================================

class CMayaModifierStack
{
public:

    MDGModifier*                        DGModifier( void );             // Create DGModifier and add to stack
    MDagModifier*                       DagModifier( void );            // Create MDagModifier and add to stack

    MStatus                             Undo( void );                   // Undo entire stack.
    MStatus                             Redo( void );                   // Redo entire stack.

    unsigned short                      Size( void ) const;

    unsigned short                      NumUndo( void ) const;
    unsigned short                      NumRedo( void ) const;

    bool                                CanUndo( void ) const;          // inline
    bool                                CanRedo( void ) const;          // inline

    void                                Clear( void );                  // Clear stack.

// Constructor / Destructor
public:
    CMayaModifierStack();
    ~CMayaModifierStack();

protected:
    // No protected members.

private:
    tlTable<CMayaModifier*>             m_modifierStack;                // The modifier stack.
    unsigned short                      m_stackPosition;                // 1-based (!) index for current position on modifierStack.
};

//===========================================================================
// Inlines
//===========================================================================

inline
unsigned short CMayaModifierStack::Size( void ) const
{
    return m_modifierStack.Count();
}

//===========================================================================
// CMayaModifierStack::CanUndo          (inline)
//===========================================================================
// Description: Determines if Undo is available on the current stack.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if Undo is available; else FALSE.
//
//===========================================================================
inline
bool CMayaModifierStack::CanUndo( void ) const
{
    return ( m_stackPosition > 0 );
}

//===========================================================================
// CMayaModifierStack::CanRedo          (inline)
//===========================================================================
// Description: Determines if Redo is available on the current stack.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if Redo is available; else FALSE.
//
//===========================================================================
inline
bool CMayaModifierStack::CanRedo( void ) const
{
    return ( m_stackPosition < m_modifierStack.Count() );
}

#endif // __MAYAMODIFIERSTACK_H  
