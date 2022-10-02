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

#include "ActionLayer.h"
#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\NamedElements\Layer.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Project.h"


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
// ActionLayer::ActionLayer
//===========================================================================
// Description: ActionLayer's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionLayer::ActionLayer( FeData::Page* page, 
                          FeData::Layer* layer,
                          int addIndex,
                          ActionLayerEnum actionType,
                          SelectionList* selectionList ) :
Action( page, NULL, "", true, true, false ),
m_Layer( layer ),
m_LayerIndex( addIndex ),
m_ActionType( actionType ),
m_LayerInHierarchy( false ),
m_SelectionList( selectionList ),
m_OldSelectionList()
{
    using namespace FeData;

    if( m_Page == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionLayer::ActionLayer: Page pointer is NULL!",
                                     FeData::DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    switch( m_ActionType )
    {
        case ACTION_LAYER_ADD:
        {
            if( m_Layer != NULL )
            {
                FeData::g_OutputMessage.Add( "ActionLayer::ActionLayer: Layer pointer should be NULL!",
                                             FeData::DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            Project* project = m_Page->GetProject();
            if( project == NULL )
            {
                g_OutputMessage.Add( "ActionLayer::ActionLayer: Cannot get the project!",
                                      DebugOutputMessage );
                m_ActionValid = false;                
                return;
            }

            BaseFactory* objectFactory = project->GetObjectFactory();
            if( objectFactory == NULL )
            {
                g_OutputMessage.Add( "ActionLayer::ActionLayer: Cannot get the objectFactory!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Layer = objectFactory->NewLayer();
            if( m_Layer == NULL )
            {
                g_OutputMessage.Add( "ActionLayer::ActionLayer: Out of Memory!",
                                      DebugOutputMessage );
                m_ActionValid = false;                
                return;
            }

            // Set up the new layer's info
            NameManager nameManager;
            PascalCString layerName;
            nameManager.GenerateUniqueLayerName( layerName, m_Page );
            m_Layer->SetName( layerName );
            m_Layer->SetPage( m_Page );

            m_Type = "Layer Addition";
            break;
        }

        case ACTION_LAYER_DELETE:
        {
            if( (m_Layer == NULL) || (m_SelectionList == NULL) )
            {
                FeData::g_OutputMessage.Add( "ActionLayer::ActionLayer: Invalid parameters for delete!",
                                             FeData::DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_OldSelectionList = *m_SelectionList;

            m_LayerInHierarchy = true;
            m_Type = "Layer Deletion";
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionLayer::ActionLayer: Invalid action type!",
                                         FeData::DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }  // switch
}


//===========================================================================
// ActionLayer::ActionLayer
//===========================================================================
// Description: ActionLayer's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionLayer::~ActionLayer()
{
    if( m_ActionValid &&
        !m_LayerInHierarchy && 
        (m_Layer != NULL) )
    {
        delete m_Layer;
        m_Layer = NULL;
    }
}


//===========================================================================
// ActionLayer::Do
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

void ActionLayer::Do()
{
    switch( m_ActionType )
    {
        case ACTION_LAYER_ADD:
        {
            m_Page->AddLayerAtIndex( m_Layer, m_LayerIndex );
            m_LayerInHierarchy = true;
            break;
        }

        case ACTION_LAYER_DELETE:
        {
            m_Page->RemoveLayerWithoutDelete( m_Layer );
            m_LayerInHierarchy = false;

            if( m_SelectionList != NULL )
            {
                m_SelectionList->Clear();
            }
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionLayer::Do: Invalid action type!",
                                         FeData::DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }  // switch
}


//===========================================================================
// ActionLayer::Undo
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

void ActionLayer::Undo()
{
    switch( m_ActionType )
    {
        case ACTION_LAYER_ADD:
        {
            m_Page->RemoveLayerWithoutDelete( m_Layer );
            m_LayerInHierarchy = false;
            break;
        }

        case ACTION_LAYER_DELETE:
        {
            m_Page->AddLayerAtIndex( m_Layer, m_LayerIndex );
            m_LayerInHierarchy = true;

            if( m_SelectionList != NULL )
            {
                *m_SelectionList = m_OldSelectionList;
            }
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionLayer::Undo: Invalid action type!",
                                         FeData::DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }  // switch
}
