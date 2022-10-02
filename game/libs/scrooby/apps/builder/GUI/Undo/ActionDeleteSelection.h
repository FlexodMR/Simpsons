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
#ifndef __ActionDeleteSelection_H
#define __ActionDeleteSelection_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"
#include "..\SelectionList.h"
#include "..\..\FeData\Helpers\DrawingElementDescriptionList.h"
#include "..\..\FeData\Helpers\ElementList.h"
#include "..\..\FeData\NamedElements\DrawingElement.h"

//=============================================================================
// Forward References
//=============================================================================

namespace FeData
{
    class DrawingElementDescription;
    class PageElement;
    class TokenList;
}


struct InsertElementStruct
{
    FeData::DrawingElement* m_Element;
    FeData::PageElement* m_Parent;
    int m_AddIndex;
};

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

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

class ActionDeleteSelection : public Action  
{
    public:
        ActionDeleteSelection( FeData::Screen* screen,
                               SelectionList* selectionList );
        virtual ~ActionDeleteSelection();

        virtual void Do();
        virtual void Undo();

    protected:
      
    private:
        // Create this methods as private so they can not be used
        ActionDeleteSelection(const ActionDeleteSelection &right);
        const ActionDeleteSelection & operator = (const ActionDeleteSelection &right);

        FeData::ElementList< InsertElementStruct > m_DrawingElementList;
        bool m_DrawingElementsInHierarchy;
        bool m_DrawingElementListEmpty;

        SelectionList* m_SelectionList;
        SelectionList m_OldSelectionList;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
