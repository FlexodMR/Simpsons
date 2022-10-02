//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MovePageInScreen actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONMovePageInScreen_H
#define __ACTIONMovePageInScreen_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"

//=============================================================================
// Forward References
//=============================================================================

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles MovePageInScreen actions.
//
// Constraints: None
//
//=============================================================================

class ActionMovePageInScreen : public Action  
{
    public:
        ActionMovePageInScreen( FeData::Screen* screen, 
                                FeData::Page* page, 
                                int oldIndex,
                                int newIndex );
        virtual ~ActionMovePageInScreen();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionMovePageInScreen(const ActionMovePageInScreen &right);
        const ActionMovePageInScreen & operator = (const ActionMovePageInScreen &right);

        FeData::Page* m_MovePage;

        int m_OldIndex;
        int m_NewIndex;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
