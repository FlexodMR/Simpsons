//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MoveLayerInPage actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ACTIONMoveLayerInPage_H
#define __ACTIONMoveLayerInPage_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"

//=============================================================================
// Forward References
//=============================================================================

namespace FeData
{
    class Layer;
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: This handles MoveLayerInPage actions.
//
// Constraints: None
//
//=============================================================================

class ActionMoveLayerInPage : public Action  
{
    public:
        ActionMoveLayerInPage( FeData::Page* page, 
                               FeData::Layer* layer, 
                               int oldIndex,
                               int newIndex );
        virtual ~ActionMoveLayerInPage();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionMoveLayerInPage(const ActionMoveLayerInPage &right);
        const ActionMoveLayerInPage & operator = (const ActionMoveLayerInPage &right);

        FeData::Layer* m_Layer;

        int m_OldIndex;
        int m_NewIndex;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
