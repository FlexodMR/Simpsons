//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles SelectionChange actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionSelectionChange.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\NamedElements\NamedElement.h"

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
// ActionSelectionChange::ActionSelectionChange
//===========================================================================
// Description: ActionSelectionChange's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionSelectionChange::ActionSelectionChange( FeData::Screen* screen, 
                                              SelectionList* selectionList,
                                              FeData::DrawingElement* element,
                                              ActionSelectionChangeEnum type ) :
Action( NULL, screen, "", false, true, true ),
m_SelectionList( selectionList ),
m_NewSelectionList(),
m_OldSelectionList()
{
    if( selectionList == NULL )
    {
        FeData::g_OutputMessage.Add( "ActionSelectionChange::ActionSelectionChange: selectionList is NULL!",
                                     FeData::DebugOutputMessage );
        return;
    }

    // Copy the selection list
    m_OldSelectionList = *m_SelectionList;
    m_NewSelectionList = *m_SelectionList;

    // Modify the new selection list
    switch( type )
    {
        case ACTION_SELECTION_CHANGE_CLEAR:
        {
            m_Type = "Clear Selection";
            m_NewSelectionList.Clear();
            break;
        }

        case ACTION_SELECTION_CHANGE_SET:
        {
            m_Type = "Set Selection";
            m_NewSelectionList.Clear();
            m_NewSelectionList.Add( element );
            break;
        }

        case ACTION_SELECTION_CHANGE_ADD:
        {
            m_Type = "Add to Selection";
            m_ActionValid = m_NewSelectionList.Add( element );
            break;
        }

        case ACTION_SELECTION_CHANGE_REMOVE:
        {
            m_Type = "Remove from Selection";
            m_NewSelectionList.Remove( element );
            break;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "ActionSelectionChange::ActionSelectionChange: Invalid type!",
                                         FeData::DebugOutputMessage );
            break;
        }
    }
}


//===========================================================================
// ActionSelectionChange::ActionSelectionChange
//===========================================================================
// Description: ActionSelectionChange's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionSelectionChange::~ActionSelectionChange()
{

}


//===========================================================================
// ActionSelectionChange::Do
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

void ActionSelectionChange::Do()
{
    if( m_SelectionList != NULL )
    {
        *m_SelectionList = m_NewSelectionList;
    }
}


//===========================================================================
// ActionSelectionChange::Undo
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

void ActionSelectionChange::Undo()
{
    if( m_SelectionList != NULL )
    {
        *m_SelectionList = m_OldSelectionList;
    }
}
