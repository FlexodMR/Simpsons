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
#ifndef __ActionLayerSettings_H
#define __ActionLayerSettings_H

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

enum ActionLayerSettingsEnum
{
    ACTION_LAYER_SETTINGS_EDITABLE,
    ACTION_LAYER_SETTINGS_VISIBLE
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

class ActionLayerSettings : public Action  
{
    public:
        ActionLayerSettings( FeData::Page* page, 
                             FeData::Layer* layer,
                             bool setting,
                             ActionLayerSettingsEnum actionType );
        virtual ~ActionLayerSettings();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionLayerSettings(const ActionLayerSettings &right);
        const ActionLayerSettings & operator = (const ActionLayerSettings &right);


        FeData::Layer* m_Layer;
        ActionLayerSettingsEnum m_ActionType;

        bool m_OldSetting;
        bool m_NewSetting;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
