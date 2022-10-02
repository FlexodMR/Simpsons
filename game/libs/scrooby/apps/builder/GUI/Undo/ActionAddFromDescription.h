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
#ifndef __ActionAddFromDescription_H
#define __ActionAddFromDescription_H

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

class ActionAddFromDescription : public Action  
{
    public:
        ActionAddFromDescription( FeData::Screen* screen,
                                  FeData::PageElement* parent,
                                  int addIndex,
                                  FeData::TokenList& tokenList,
                                  SelectionList* selectionList );
        virtual ~ActionAddFromDescription();

        virtual void Do();
        virtual void Undo();

    protected:
      
    private:
        // Create this methods as private so they can not be used
        ActionAddFromDescription(const ActionAddFromDescription &right);
        const ActionAddFromDescription & operator = (const ActionAddFromDescription &right);

        FeData::PageElement* m_Parent;
        int m_AddIndex;
        FeData::DrawingElementDescriptionList m_DescriptionList;

        FeData::ElementList< FeData::DrawingElement > m_DrawingElementList;
        bool m_DrawingElementsInHierarchy;
        bool m_DrawingElementListEmpty;

        SelectionList* m_SelectionList;
        SelectionList m_NewSelectionList;
        SelectionList m_OldSelectionList;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
