//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles ScreenSettings actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionScreenSettings.h"
#include "..\..\FeData\NamedElements\Screen.h"
#include "..\..\FeData\Helpers\OutputMessage.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// ActionScreenSettings::ActionScreenSettings
//===========================================================================
// Description: ActionScreenSettings's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionScreenSettings::ActionScreenSettings( FeData::Screen* screen, 
                                            bool setting,
                                            int pageIndex,
                                            ActionScreenSettingsEnum actionType ) :
Action( NULL, screen, "", false, false, false ),
m_PageIndex( pageIndex ),
m_ActionType( actionType ),
m_OldSetting( setting ),
m_NewSetting( setting )
{
    if( m_Screen == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionScreenSettings::ActionScreenSettings: Invalid screen pointer!",
                                     FeData::DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    if( m_ActionType == ACTION_SCREEN_SETTINGS_PAGE_EXPORTABLE )
    {
        m_OldSetting = m_Screen->IsExportable( m_PageIndex );
        m_Type = "Page Export Flag Change";
    }
    else
    {
        FeData::g_OutputMessage.Add( "ActionScreenSettings::ActionScreenSettings: Invalid action type!",
                                     FeData::DebugOutputMessage );
        m_ActionValid = false;
    }
}


//===========================================================================
// ActionScreenSettings::ActionScreenSettings
//===========================================================================
// Description: ActionScreenSettings's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionScreenSettings::~ActionScreenSettings()
{

}


//===========================================================================
// ActionScreenSettings::Do
//===========================================================================
// Description: This does the action
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void ActionScreenSettings::Do()
{
    if( m_Screen != NULL )
    {
        m_Screen->SetExportable( m_PageIndex, m_NewSetting );
    }
}


//===========================================================================
// ActionScreenSettings::Undo
//===========================================================================
// Description: This undoes the action
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void ActionScreenSettings::Undo()
{
    if( m_Screen != NULL )
    {
        m_Screen->SetExportable( m_PageIndex, m_OldSetting );
    }
}
