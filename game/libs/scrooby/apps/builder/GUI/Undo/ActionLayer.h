//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles ActionLayer actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ActionLayer_H
#define __ActionLayer_H

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
    class Layer;
}

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

enum ActionLayerEnum
{
    ACTION_LAYER_ADD,
    ACTION_LAYER_DELETE
};

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

class ActionLayer : public Action  
{
    public:
        ActionLayer( FeData::Page* page, 
                     FeData::Layer* layer,
                     int addIndex,
                     ActionLayerEnum actionType,
                     SelectionList* selectionList = NULL );
        virtual ~ActionLayer();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionLayer(const ActionLayer &right);
        const ActionLayer & operator = (const ActionLayer &right);

        FeData::Layer* m_Layer;
        int m_LayerIndex;
        ActionLayerEnum m_ActionType;

        bool m_LayerInHierarchy;

        SelectionList* m_SelectionList;
        SelectionList m_OldSelectionList;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
