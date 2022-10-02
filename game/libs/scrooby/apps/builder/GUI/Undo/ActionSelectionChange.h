//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles SelectionChange actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONSELECTIONCHANGE_H
#define __ACTIONSELECTIONCHANGE_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"
#include "..\SelectionList.h"

//=============================================================================
// Forward References
//=============================================================================

namespace FeData
{
    class DawingElement;
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

enum ActionSelectionChangeEnum
{
    ACTION_SELECTION_CHANGE_CLEAR,
    ACTION_SELECTION_CHANGE_SET,
    ACTION_SELECTION_CHANGE_ADD,
    ACTION_SELECTION_CHANGE_REMOVE
};

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles SelectionChange actions.
//
// Constraints: None
//
//=============================================================================

class ActionSelectionChange : public Action  
{
    public:
        ActionSelectionChange( FeData::Screen* screen, 
                               SelectionList* selectionList,
                               FeData::DrawingElement* element,
                               ActionSelectionChangeEnum type );
        virtual ~ActionSelectionChange();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionSelectionChange(const ActionSelectionChange &right);
        const ActionSelectionChange & operator = (const ActionSelectionChange &right);

        SelectionList* m_SelectionList;
        SelectionList m_NewSelectionList;
        SelectionList m_OldSelectionList;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
