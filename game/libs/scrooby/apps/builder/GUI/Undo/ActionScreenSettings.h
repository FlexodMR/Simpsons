//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles ScreenSettings actions.
//
// Authors:     Ryan Bedard
//
//=============================================================================

// Recompilation protection flag.
#ifndef __ActionScreenSettings_H
#define __ActionScreenSettings_H

//=============================================================================
// Nested Includes
//=============================================================================

#include "Action.h"

//=============================================================================
// Forward References
//=============================================================================

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

enum ActionScreenSettingsEnum
{
    ACTION_SCREEN_SETTINGS_PAGE_EXPORTABLE
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

class ActionScreenSettings : public Action  
{
    public:
        ActionScreenSettings( FeData::Screen* screen, 
                              bool setting,
                              int pageIndex,
                              ActionScreenSettingsEnum actionType );
        virtual ~ActionScreenSettings();

        virtual void Do();
        virtual void Undo();

    private:
        // Create this methods as private so they can not be used
        ActionScreenSettings(const ActionScreenSettings &right);
        const ActionScreenSettings & operator = (const ActionScreenSettings &right);

        int m_PageIndex;
        ActionScreenSettingsEnum m_ActionType;

        bool m_OldSetting;
        bool m_NewSetting;
};

//=============================================================================
// Inlines
//=============================================================================


#endif                                        // End Conditional inclusion
