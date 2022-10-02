//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Group actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionGroup.h"

#include "..\..\FeData\NamedElements\Group.h"
#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceManager.h"
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
// ActionGroup::ActionGroup
//===========================================================================
// Description: ActionGroup's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionGroup::ActionGroup( FeData::Page* page, 
                          FeData::DrawingElement* drawingElement,
                          FeData::PageElement* parent,
                          int elementIndex,
                          ActionDrawingElementEnum type ) :
ActionDrawingElement( page, drawingElement, parent, elementIndex, type )
{
    using namespace FeData;
    
    switch( m_ActionType )
    {
        case ACTION_DRAWINGELEMENT_ADD:
        {
            if( (m_Page == NULL) || (drawingElement != NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionGroup::ActionGroup: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Group Add";
           
            NameManager nameManager;
            nameManager.GenerateUniqueGroupName( m_NewName, m_Page );
            break;
        }

        case ACTION_DRAWINGELEMENT_MODIFY:
        {
            g_OutputMessage.Add( "ActionGroup::ActionGroup: Cannot modify a group!",
                                  DebugOutputMessage );
            m_ActionValid = false;
            break;
        }

        case ACTION_DRAWINGELEMENT_DELETE:
        {
            if( (m_Page == NULL) || (drawingElement == NULL) || (parent == NULL) )
            {
                g_OutputMessage.Add( "ActionGroup::ActionGroup: Invalid parameters!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            Group* group = dynamic_cast<Group*>( m_DrawingElement );
            if( group == NULL )
            {
                g_OutputMessage.Add( "ActionGroup::ActionGroup: Invalid drawing element type!",
                                      DebugOutputMessage );
                m_ActionValid = false;
                return;
            }

            m_Type = "Group Delete";
            m_OldName = m_DrawingElement->GetName();
            break;
        }

        case ACTION_DRAWINGELEMENT_DUPLICATE:
        {
            g_OutputMessage.Add( "ActionGroup::ActionGroup: Cannot duplicate a group!",
                                  DebugOutputMessage );
            m_ActionValid = false;
            break;
        }

        default:
        {
            g_OutputMessage.Add( "ActionGroup::ActionGroup: Invalid drawing element action type!",
                                  DebugOutputMessage );
            m_ActionValid = false;
            break;
        }
    }
}


//===========================================================================
// ActionGroup::ActionGroup
//===========================================================================
// Description: ActionGroup's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionGroup::~ActionGroup()
{

}


void ActionGroup::DoModify()
{
    m_DrawingElement->SetName( m_NewName );
}


void ActionGroup::UndoModify()
{
    m_DrawingElement->SetName( m_OldName );
}


bool ActionGroup::MakeNewDrawingElement( FeData::BaseFactory* objectFactory )
{
    m_DrawingElement = objectFactory->NewGroup();
    if( m_DrawingElement == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionGroup::MakeNewDrawingElement: Out of Memory!",
                                     FeData::ErrorOutputMessage );
        return false;
    }

    return true;
}
