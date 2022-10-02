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

#include "ActionAddFromDescription.h"
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
// ActionAddFromDescription::ActionAddFromDescription
//===========================================================================
// Description: ActionAddFromDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionAddFromDescription::ActionAddFromDescription( FeData::Screen* screen,
                                                    FeData::PageElement* parent,
                                                    int addIndex,
                                                    FeData::TokenList& tokenList,
                                                    SelectionList* selectionList ) :
Action( NULL, screen, "Paste Element", true, true, false ),
m_Parent( parent ),
m_AddIndex( addIndex ),
m_DescriptionList(),
m_DrawingElementList(),
m_DrawingElementsInHierarchy( false ),
m_DrawingElementListEmpty( true ),
m_SelectionList( selectionList ),
m_NewSelectionList(),
m_OldSelectionList()
{
    using namespace FeData;

    if( ( m_Screen == NULL ) || (m_Parent == NULL) || (selectionList == NULL) )
    {
        g_OutputMessage.Add( "ActionAddFromDescription::ActionAddFromDescription: Invalid parameters!",
                             DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    m_ActionValid = m_DescriptionList.SetFromTokenList( tokenList );

    m_OldSelectionList = *m_SelectionList;
    m_NewSelectionList.SetScreen( m_Screen );
}


//===========================================================================
// ActionAddFromDescription::ActionAddFromDescription
//===========================================================================
// Description: ActionAddFromDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionAddFromDescription::~ActionAddFromDescription()
{
    using namespace FeData;

    if( m_ActionValid && !m_DrawingElementsInHierarchy )
    {
        for( int i = 0; i < m_DrawingElementList.GetNumberOfElements() ; i++ )
        {
            DrawingElement* drawingElement = m_DrawingElementList.GetElement( i );

            if( drawingElement != NULL )
            {
                delete drawingElement;
                drawingElement = NULL;
            }
        }
    }
}


//===========================================================================
// ActionAddFromDescription::Do
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

void ActionAddFromDescription::Do()
{
    using namespace FeData;

    // Make the list of elements if we haven't already.
    if( m_DrawingElementListEmpty )
    {
        for( int i = 0; i < m_DescriptionList.GetNumberOfDescriptions(); i++ )
        {
            DrawingElement* newElement = m_DescriptionList.CreateHierarchyElement( i, m_Parent->GetPage() );
            if( newElement == NULL )
            {
                g_OutputMessage.Add( "ActionAddFromDescription::Do: Could not make the new hierarchy element!",
                                     ErrorOutputMessage );
                continue;
            }

            m_DrawingElementList.AddElementToFront( newElement );
            m_NewSelectionList.Add( newElement );
        }

        m_DrawingElementListEmpty = false;
    }

    // Add the elements to the hierarchy
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* newElement = m_DrawingElementList.GetElement( i );
        if( newElement == NULL )
        {
            g_OutputMessage.Add( "ActionAddFromDescription::Do: Could not get the hierarchy element!",
                                 ErrorOutputMessage );
            continue;
        }

        // Add the new drawing element to the hierarchy
        Layer* layer = NULL;
        Group* group = NULL;

        // Is the parent a layer or group?
        if( (layer = dynamic_cast<Layer*>( m_Parent )) != NULL )
        {
            layer->AddDrawingElementAtIndex( newElement, m_AddIndex );
        }
        else if( (group = dynamic_cast<Group*>( m_Parent )) != NULL )
        {
            group->AddDrawingElementAtIndex( newElement, m_AddIndex );
        }
        else
        {
            g_OutputMessage.Add( "ActionAddFromDescription::Do: Invalid m_Parent!",
                                 DebugOutputMessage );
        }
    }

    m_DrawingElementsInHierarchy = true;

     
    if( m_SelectionList != NULL )
    {
        *m_SelectionList = m_NewSelectionList;
    }
}


//===========================================================================
// ActionAddFromDescription::Undo
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

void ActionAddFromDescription::Undo()
{
    using namespace FeData;

    // Add the elements to the hierarchy
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* newElement = m_DrawingElementList.GetElement( i );
        if( newElement == NULL )
        {
            g_OutputMessage.Add( "ActionAddFromDescription::Undo: Could not get the hierarchy element!",
                                 ErrorOutputMessage );
            continue;
        }

        // Add the new drawing element to the hierarchy
        Layer* layer = NULL;
        Group* group = NULL;

        // Is the parent a layer or group?
        if( (layer = dynamic_cast<Layer*>( m_Parent )) != NULL )
        {
            layer->RemoveDrawingElementWithoutDelete( newElement );
        }
        else if( (group = dynamic_cast<Group*>( m_Parent )) != NULL )
        {
            group->RemoveDrawingElementWithoutDelete( newElement );
        }
        else
        {
            g_OutputMessage.Add( "ActionAddFromDescription::Undo: Invalid m_Parent!",
                                 DebugOutputMessage );
        }
    }

    m_DrawingElementsInHierarchy = false;

    if( m_SelectionList != NULL )
    {
        *m_SelectionList = m_OldSelectionList;
    }
}
