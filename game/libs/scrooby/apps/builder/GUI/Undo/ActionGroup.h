//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Group actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONGroup_H
#define __ACTIONGroup_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "ActionDrawingElement.h"

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
// Description: This handles Group actions.
//
// Constraints: None
//
//=============================================================================

class ActionGroup : public ActionDrawingElement  
{
    public:
        ActionGroup( FeData::Page* page, 
                       FeData::DrawingElement* drawingElement,
                       FeData::PageElement* parent,
                       int elementIndex,
                       ActionDrawingElementEnum type );
        virtual ~ActionGroup();

    protected:

        virtual void DoModify();
        virtual void UndoModify();

        virtual bool MakeNewDrawingElement( FeData::BaseFactory* objectFactory );

    private:
        // Create this methods as private so they can not be used
        ActionGroup(const ActionGroup &right);
        const ActionGroup & operator = (const ActionGroup &right);
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
