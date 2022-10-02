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

#include "ActionDeleteSelection.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\TokenList.h"
#include "..\..\FeData\NamedElements\DrawingElement.h"
#include "..\..\FeData\NamedElements\Descriptions\DrawingElementDescription.h"
#include "..\..\FeData\NamedElements\Group.h"
#include "..\..\FeData\NamedElements\Layer.h"
#include "..\..\FeData\NamedElements\Page.h"

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
// ActionDeleteSelection::ActionDeleteSelection
//===========================================================================
// Description: ActionDeleteSelection's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionDeleteSelection::ActionDeleteSelection( FeData::Screen* screen,
                                              SelectionList* selectionList ) :
Action( NULL, screen, "Delete Element", true, true, false ),
m_DrawingElementList(),
m_DrawingElementsInHierarchy( false ),
m_DrawingElementListEmpty( true ),
m_SelectionList( selectionList ),
m_OldSelectionList()
{
    using namespace FeData;

    if( ( m_Screen == NULL ) || (selectionList == NULL) )
    {
        g_OutputMessage.Add( "ActionDeleteSelection::ActionDeleteSelection: Invalid parameters!",
                             DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    m_OldSelectionList = *m_SelectionList;
}


//===========================================================================
// ActionDeleteSelection::ActionDeleteSelection
//===========================================================================
// Description: ActionDeleteSelection's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionDeleteSelection::~ActionDeleteSelection()
{
    using namespace FeData;

    if( m_ActionValid )
    {
        for( int i = 0; i < m_DrawingElementList.GetNumberOfElements() ; i++ )
        {
            InsertElementStruct* insertStruct = m_DrawingElementList.GetElement( i );

            if( insertStruct != NULL )
            {
                if( !m_DrawingElementsInHierarchy &&
                    (insertStruct->m_Element != NULL) )
                {
                    delete insertStruct->m_Element;
                    insertStruct->m_Element = NULL;
                }

                delete insertStruct;
                insertStruct = NULL;
            }
        }
    }
}


//===========================================================================
// ActionDeleteSelection::Do
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

void ActionDeleteSelection::Do()
{
    using namespace FeData;

    // Make the list of elements if we haven't already.
    if( m_DrawingElementListEmpty && m_SelectionList != NULL )
    {
        for( int i = 0; i < m_SelectionList->GetNumberOfElements(); i++ )
        {
            DrawingElement* element = m_SelectionList->GetElement( i );
            if( element == NULL )
            {
                continue;
            }

            PageElement* parent = element->GetPage()->GetParent( element );
            if( parent == NULL )
            {
                g_OutputMessage.Add( "ActionDeleteSelection::Do: Cannot get element's parent!",
                                     DebugOutputMessage );
                continue;
            }


            Layer* layer = NULL;
            Group* group = NULL;

            int addIndex = 0;

            // Is the parent a layer or group?
            if( (layer = dynamic_cast<Layer*>( parent )) != NULL )
            {
                addIndex = layer->GetDrawingElementIndex( element );
            }
            else if( (group = dynamic_cast<Group*>( parent )) != NULL )
            {
                addIndex = group->GetDrawingElementIndex( element );
            }
            else
            {
                g_OutputMessage.Add( "ActionDeleteSelection::Undo: Invalid parent!",
                                     DebugOutputMessage );
                continue;
            }


            InsertElementStruct* insertStruct = new InsertElementStruct;
            if( insertStruct == NULL )
            {
                g_OutputMessage.Add( "ActionDeleteSelection::Do: Out of Memory!",
                                     ErrorOutputMessage );
                return;
            }

            insertStruct->m_Element  = element;
            insertStruct->m_Parent   = parent;
            insertStruct->m_AddIndex = addIndex;

            m_DrawingElementList.AddElementToBack( insertStruct );
        }

        m_DrawingElementListEmpty = false;
    }

 
    // Delete the elements from the hierarchy
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        InsertElementStruct* insertStruct = m_DrawingElementList.GetElement( i );
        if( (insertStruct == NULL) && (insertStruct->m_Element == NULL) )
        {
            g_OutputMessage.Add( "ActionDeleteSelection::Do: Could not get the hierarchy element!",
                                 ErrorOutputMessage );
            continue;
        }

        // Add the new drawing element to the hierarchy
        Layer* layer = NULL;
        Group* group = NULL;

        // Is the parent a layer or group?
        if( (layer = dynamic_cast<Layer*>( insertStruct->m_Parent )) != NULL )
        {
            layer->RemoveDrawingElementWithoutDelete( insertStruct->m_Element );
        }
        else if( (group = dynamic_cast<Group*>( insertStruct->m_Parent )) != NULL )
        {
            group->RemoveDrawingElementWithoutDelete( insertStruct->m_Element );
        }
        else
        {
            g_OutputMessage.Add( "ActionDeleteSelection::Undo: Invalid m_Parent!",
                                 DebugOutputMessage );
        }
    }

    m_DrawingElementsInHierarchy = false;
    
    if( m_SelectionList != NULL )
    {
        m_SelectionList->Clear();
    }
}


//===========================================================================
// ActionDeleteSelection::Undo
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

void ActionDeleteSelection::Undo()
{
    using namespace FeData;

    // Add the elements to the hierarchy
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        InsertElementStruct* insertStruct = m_DrawingElementList.GetElement( i );
        if( (insertStruct == NULL) && (insertStruct->m_Element == NULL) )
        {
            g_OutputMessage.Add( "ActionDeleteSelection::Undo: Could not get the hierarchy element!",
                                 ErrorOutputMessage );
            continue;
        }

        // Add the new drawing element to the hierarchy
        Layer* layer = NULL;
        Group* group = NULL;

        // Is the parent a layer or group?
        if( (layer = dynamic_cast<Layer*>( insertStruct->m_Parent )) != NULL )
        {
            layer->AddDrawingElementAtIndex( insertStruct->m_Element, insertStruct->m_AddIndex );
        }
        else if( (group = dynamic_cast<Group*>( insertStruct->m_Parent )) != NULL )
        {
            group->AddDrawingElementAtIndex( insertStruct->m_Element, insertStruct->m_AddIndex );
        }
        else
        {
            g_OutputMessage.Add( "ActionDeleteSelection::Do: Invalid m_Parent!",
                                 DebugOutputMessage );
        }
    }

    m_DrawingElementsInHierarchy = true;

    if( m_SelectionList != NULL )
    {
        *m_SelectionList = m_OldSelectionList;
    }
}
