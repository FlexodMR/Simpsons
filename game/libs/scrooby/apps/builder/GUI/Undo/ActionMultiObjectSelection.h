//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles ActionMultiObjectSelection actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ActionMultiObjectSelection_H
#define __ActionMultiObjectSelection_H

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
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles Rename actions.
//
// Constraints: None
//
//=============================================================================

class ActionMultiObjectSelection : public Action  
{
    public:
        ActionMultiObjectSelection( FeData::Page* page, 
                                    FeData::DrawingElement* element,
                                    int newSelection );
        virtual ~ActionMultiObjectSelection();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionMultiObjectSelection(const ActionMultiObjectSelection &right);
        const ActionMultiObjectSelection & operator = (const ActionMultiObjectSelection &right);

        FeData::DrawingElement* m_Element;

        int m_OldSelection;
        int m_NewSelection;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
