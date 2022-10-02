//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MoveInHierarchy actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONMoveInHierarchy_H
#define __ACTIONMoveInHierarchy_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"

//=============================================================================
// Forward References
//=============================================================================

namespace FeData
{
    class DrawingElement;
    class PageElement;
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles MoveInHierarchy actions.
//
// Constraints: None
//
//=============================================================================

class ActionMoveInHierarchy : public Action  
{
    public:
        ActionMoveInHierarchy( FeData::Page* page, 
                               FeData::DrawingElement* element, 
                               FeData::PageElement* oldParent, 
                               int oldIndex,
                               FeData::PageElement* newParent, 
                               int newIndex );
        virtual ~ActionMoveInHierarchy();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionMoveInHierarchy(const ActionMoveInHierarchy &right);
        const ActionMoveInHierarchy & operator = (const ActionMoveInHierarchy &right);

        FeData::DrawingElement* m_Element;

        FeData::PageElement* m_OldParent;
        int m_OldIndex;
        FeData::PageElement* m_NewParent;
        int m_NewIndex;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
