//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MoveInHierarchy actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionMoveInHierarchy.h"
#include "..\..\FeData\NamedElements\DrawingElement.h"
#include "..\..\FeData\NamedElements\Group.h"
#include "..\..\FeData\NamedElements\Layer.h"

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
// ActionMoveInHierarchy::ActionMoveInHierarchy
//===========================================================================
// Description: ActionMoveInHierarchy's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMoveInHierarchy::ActionMoveInHierarchy( FeData::Page* page, 
                                              FeData::DrawingElement* element, 
                                              FeData::PageElement* oldParent, 
                                              int oldIndex,
                                              FeData::PageElement* newParent, 
                                              int newIndex ) :
Action( page, NULL, "Move Element In Hierarchy", true, true, false ),
m_Element( element ),
m_OldParent( oldParent ),
m_OldIndex( oldIndex ),
m_NewParent( newParent ),
m_NewIndex( newIndex )
{
    if( (m_Element == NULL) ||
        (m_OldParent == NULL) ||
        (m_NewParent == NULL) )
    {
        m_ActionValid = false;
        return;
    }

    if( (m_OldParent == m_NewParent) &&
        (m_OldIndex == m_NewIndex) )
    {
        m_ActionValid = false;
        return;
    }
}


//===========================================================================
// ActionMoveInHierarchy::ActionMoveInHierarchy
//===========================================================================
// Description: ActionMoveInHierarchy's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMoveInHierarchy::~ActionMoveInHierarchy()
{

}


//===========================================================================
// ActionMoveInHierarchy::Do
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

void ActionMoveInHierarchy::Do()
{
    using namespace FeData;

    Layer* layer = NULL;
    Group* group = NULL;

    // Is the old parent a layer or group?
    if( (layer = dynamic_cast<Layer*>( m_OldParent )) != NULL )
    {
        layer->RemoveDrawingElementWithoutDelete( m_Element );
    }
    else if( (group = dynamic_cast<Group*>( m_OldParent )) != NULL )
    {
        group->RemoveDrawingElementWithoutDelete( m_Element );
    }
    else
    {
        g_OutputMessage.Add( "ActionMoveInHierarchy::Do: Invalid old parent!",
                             DebugOutputMessage );
        return;
    }

    // Is the new parent a layer or group?
    if( (layer = dynamic_cast<Layer*>( m_NewParent )) != NULL )
    {
        layer->AddDrawingElementAtIndex( m_Element, m_NewIndex );
    }
    else if( (group = dynamic_cast<Group*>( m_NewParent )) != NULL )
    {
        group->AddDrawingElementAtIndex( m_Element, m_NewIndex );
    }
    else
    {
        g_OutputMessage.Add( "ActionMoveInHierarchy::Do: Invalid new parent!",
                             DebugOutputMessage );
        return;
    }
}


//===========================================================================
// ActionMoveInHierarchy::Undo
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

void ActionMoveInHierarchy::Undo()
{
    using namespace FeData;

    Layer* layer = NULL;
    Group* group = NULL;

    // Is the new parent a layer or group?
    if( (layer = dynamic_cast<Layer*>( m_NewParent )) != NULL )
    {
        layer->RemoveDrawingElementWithoutDelete( m_Element );
    }
    else if( (group = dynamic_cast<Group*>( m_NewParent )) != NULL )
    {
        group->RemoveDrawingElementWithoutDelete( m_Element );
    }
    else
    {
        g_OutputMessage.Add( "ActionMoveInHierarchy::Do: Invalid new parent!",
                             DebugOutputMessage );
        return;
    }

    // Is the old parent a layer or group?
    if( (layer = dynamic_cast<Layer*>( m_OldParent )) != NULL )
    {
        layer->AddDrawingElementAtIndex( m_Element, m_NewIndex );
    }
    else if( (group = dynamic_cast<Group*>( m_OldParent )) != NULL )
    {
        group->AddDrawingElementAtIndex( m_Element, m_NewIndex );
    }
    else
    {
        g_OutputMessage.Add( "ActionMoveInHierarchy::Do: Invalid old parent!",
                             DebugOutputMessage );
        return;
    }
}
