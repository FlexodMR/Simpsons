//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles DrawingElement actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionDrawingElement.h"
#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\NamedElements\DrawingElement.h"
#include "..\..\FeData\NamedElements\Group.h"
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
// ActionDrawingElement::ActionDrawingElement
//===========================================================================
// Description: ActionDrawingElement's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionDrawingElement::ActionDrawingElement( FeData::Page* page, 
                                            FeData::DrawingElement* drawingElement,
                                            FeData::PageElement* parent,
                                            int elementIndex,
                                            ActionDrawingElementEnum actionType ) :
Action( page, NULL, "", true, true, false ),
m_DrawingElement( drawingElement ),
m_Parent( parent ),
m_ElementIndex( elementIndex ),
m_ActionType( actionType ),
m_OldName( "" ),
m_NewName( "" ),
m_DrawingElementInHierarchy( true )
{
    if( (m_ActionType == ACTION_DRAWINGELEMENT_ADD) ||
        (m_ActionType == ACTION_DRAWINGELEMENT_DUPLICATE) )
    {
        m_DrawingElementInHierarchy = false;
    }
}


//===========================================================================
// ActionDrawingElement::ActionDrawingElement
//===========================================================================
// Description: ActionDrawingElement's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionDrawingElement::~ActionDrawingElement()
{
    if( m_ActionValid &&
        !m_DrawingElementInHierarchy && 
        (m_DrawingElement != NULL) )
    {
        delete m_DrawingElement;
        m_DrawingElement = NULL;
    }
}


//===========================================================================
// ActionDrawingElement::Do
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

void ActionDrawingElement::Do()
{
    switch( m_ActionType )
    {
        case ACTION_DRAWINGELEMENT_ADD:
        case ACTION_DRAWINGELEMENT_DUPLICATE:
        {
            Add();
            break;
        }

        case ACTION_DRAWINGELEMENT_MODIFY:
        {
            DoModify();
            break;
        }

        case ACTION_DRAWINGELEMENT_DELETE:
        {
            Delete();
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionDrawingElement::Do: Invalid drawing element action type!",
                                         FeData::DebugOutputMessage );
            break;
        }
    }
}


//===========================================================================
// ActionDrawingElement::Undo
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

void ActionDrawingElement::Undo()
{
    switch( m_ActionType )
    {
        case ACTION_DRAWINGELEMENT_ADD:
        case ACTION_DRAWINGELEMENT_DUPLICATE:
        {
            Delete();
            break;
        }

        case ACTION_DRAWINGELEMENT_MODIFY:
        {
            UndoModify();
            break;
        }

        case ACTION_DRAWINGELEMENT_DELETE:
        {
            Add();
            UndoModify();
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionDrawingElement::Do: Invalid drawing element action type!",
                                         FeData::DebugOutputMessage );
            break;
        }
    }
}



//===========================================================================
// ActionDrawingElement::Add
//===========================================================================
// Description: This adds the element to the hierarchy.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void ActionDrawingElement::Add()
{
    using namespace FeData;

    if( m_Parent == NULL )
    {
        g_OutputMessage.Add( "ActionDrawingElement::Add: m_Parent is NULL!",
                             DebugOutputMessage );
        return;
    }


    // Do we have to make the new drawing element
    if( m_DrawingElement == NULL )
    {
        Project* project = m_Page->GetProject();
        if( project == NULL )
        {
            g_OutputMessage.Add( "ActionDrawingElement::Add: Cannot get the project!",
                                  DebugOutputMessage );
            return;
        }

        BaseFactory* objectFactory = project->GetObjectFactory();
        if( objectFactory == NULL )
        {
            g_OutputMessage.Add( "ActionDrawingElement::Add: Cannot get the objectFactory!",
                                  DebugOutputMessage );
            return;
        }


        // Make the new drawing element
        if( !MakeNewDrawingElement( objectFactory ) )
        {
            return;
        }
        m_DrawingElement->SetPage( m_Page );

        // Fill in the values
        if( m_ActionType == ACTION_DRAWINGELEMENT_ADD )
        {
            // Copy over the new settings
            DoModify();
        }
        else
        {
            // Copy over the old settings
            UndoModify();
        }
    }


    // Add the new drawing element to the hierarchy
    Layer* layer = NULL;
    Group* group = NULL;

    // Is the parent a layer or group?
    if( (layer = dynamic_cast<Layer*>( m_Parent )) != NULL )
    {
        layer->AddDrawingElementAtIndex( m_DrawingElement, m_ElementIndex );
    }
    else if( (group = dynamic_cast<Group*>( m_Parent )) != NULL )
    {
        group->AddDrawingElementAtIndex( m_DrawingElement, m_ElementIndex );
    }
    else
    {
        g_OutputMessage.Add( "ActionDrawingElement::Add: Invalid m_Parent!",
                             DebugOutputMessage );
    }

    m_DrawingElementInHierarchy = true;
}


//===========================================================================
// ActionDrawingElement::Delete
//===========================================================================
// Description: This deletes the element to the hierarchy.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void ActionDrawingElement::Delete()
{
    using namespace FeData;

    if( m_Parent == NULL )
    {
        g_OutputMessage.Add( "ActionDrawingElement::Delete: m_Parent is NULL!",
                             DebugOutputMessage );
        return;
    }

    Layer* layer = NULL;
    Group* group = NULL;

    // Is the parent a layer or group?
    if( (layer = dynamic_cast<Layer*>( m_Parent )) != NULL )
    {
        layer->RemoveDrawingElementWithoutDelete( m_DrawingElement );
    }
    else if( (group = dynamic_cast<Group*>( m_Parent )) != NULL )
    {
        group->RemoveDrawingElementWithoutDelete( m_DrawingElement );
    }
    else
    {
        g_OutputMessage.Add( "ActionDrawingElement::Delete: Invalid m_Parent!",
                             DebugOutputMessage );
    }

    m_DrawingElementInHierarchy = false;
}
