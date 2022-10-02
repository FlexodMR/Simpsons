//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles DrawingElement actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONDrawingElement_H
#define __ACTIONDrawingElement_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"

//=============================================================================
// Forward References
//=============================================================================

namespace FeData
{
    class BaseFactory;
    class DrawingElement;
    class PageElement;
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

enum ActionDrawingElementEnum
{
    ACTION_DRAWINGELEMENT_ADD,
    ACTION_DRAWINGELEMENT_MODIFY,
    ACTION_DRAWINGELEMENT_DELETE,
    ACTION_DRAWINGELEMENT_DUPLICATE
};

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles DrawingElement actions.
//
// Constraints: None
//
//=============================================================================

class ActionDrawingElement : public Action  
{
    public:
        ActionDrawingElement( FeData::Page* page, 
                              FeData::DrawingElement* drawingElement,
                              FeData::PageElement* parent,
                              int elementIndex,
                              ActionDrawingElementEnum actionType );
        virtual ~ActionDrawingElement();

        virtual void Do();
        virtual void Undo();

    protected:
        void Add();
        void Delete();

        virtual void DoModify() = 0;
        virtual void UndoModify() = 0;

        virtual bool MakeNewDrawingElement( FeData::BaseFactory* objectFactory ) = 0;

        FeData::DrawingElement* m_DrawingElement;
        FeData::PageElement* m_Parent;
        int m_ElementIndex;
        ActionDrawingElementEnum m_ActionType;

        PascalCString m_OldName;
        PascalCString m_NewName;

        bool m_DrawingElementInHierarchy;

    private:
        // Create this methods as private so they can not be used
        ActionDrawingElement(const ActionDrawingElement &right);
        const ActionDrawingElement & operator = (const ActionDrawingElement &right);
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
