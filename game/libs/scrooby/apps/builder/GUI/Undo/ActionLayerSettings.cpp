//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles ActionLayer actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionLayerSettings.h"
#include "..\..\FeData\NamedElements\Layer.h"
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
// ActionLayerSettings::ActionLayerSettings
//===========================================================================
// Description: ActionLayerSettings's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionLayerSettings::ActionLayerSettings( FeData::Page* page, 
                                          FeData::Layer* layer,
                                          bool setting,
                                          ActionLayerSettingsEnum actionType ) :
Action( page, NULL, "", false, false, false ),
m_Layer( layer ),
m_ActionType( actionType ),
m_OldSetting( setting ),
m_NewSetting( setting )
{
    if( (m_Page == NULL) || (m_Layer == NULL) )
    {
        FeData::g_OutputMessage.Add( "ActionLayerSettings::ActionLayerSettings: Invalid paramators!",
                                     FeData::DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    switch( m_ActionType )
    {
        case ACTION_LAYER_SETTINGS_EDITABLE:
        {
            m_OldSetting = m_Layer->IsEditable();
            m_Type = "Layer Editable Flag Change";
            break;
        }

        case ACTION_LAYER_SETTINGS_VISIBLE:
        {
            m_OldSetting = m_Layer->IsVisible();
            m_Type = "Layer Visible Flag Change";
            m_HaveToRefreshLayoutView = true;
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionLayerSettings::ActionLayerSettings: Invalid action type!",
                                         FeData::DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }  // switch
}


//===========================================================================
// ActionLayerSettings::ActionLayerSettings
//===========================================================================
// Description: ActionLayerSettings's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionLayerSettings::~ActionLayerSettings()
{

}


//===========================================================================
// ActionLayerSettings::Do
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

void ActionLayerSettings::Do()
{
    switch( m_ActionType )
    {
        case ACTION_LAYER_SETTINGS_EDITABLE:
        {
            m_Layer->SetEditable( m_NewSetting );
            break;
        }

        case ACTION_LAYER_SETTINGS_VISIBLE:
        {
            m_Layer->SetVisible( m_NewSetting );
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionLayerSettings::Do: Invalid action type!",
                                         FeData::DebugOutputMessage );
            break;
        }
    }  // switch
}


//===========================================================================
// ActionLayerSettings::Undo
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

void ActionLayerSettings::Undo()
{
    switch( m_ActionType )
    {
        case ACTION_LAYER_SETTINGS_EDITABLE:
        {
            m_Layer->SetEditable( m_OldSetting );
            break;
        }

        case ACTION_LAYER_SETTINGS_VISIBLE:
        {
            m_Layer->SetVisible( m_OldSetting );
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionLayerSettings::Do: Invalid action type!",
                                         FeData::DebugOutputMessage );
            break;
        }
    }  // switch
}
