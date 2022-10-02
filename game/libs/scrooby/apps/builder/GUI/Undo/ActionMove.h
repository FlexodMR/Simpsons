//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles move actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONMOVE_H
#define __ACTIONMOVE_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"

//=============================================================================
// Forward References
//=============================================================================

class SelectionList;

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles move actions.
//
// Constraints: None
//
//=============================================================================

class ActionMove : public Action  
{
    public:
        ActionMove( FeData::Screen* screen, 
                    SelectionList* selectionList, 
                    int moveX, int moveY );
        virtual ~ActionMove();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionMove(const ActionMove &right);
        const ActionMove & operator = (const ActionMove &right);
 
        SelectionList* m_SelectionList;
        int m_MoveX;
        int m_MoveY;

};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
