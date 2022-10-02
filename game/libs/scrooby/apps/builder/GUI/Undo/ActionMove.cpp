//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles move actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionMove.h"
#include "..\SelectionList.h"
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
// ActionMove::ActionMove
//===========================================================================
// Description: ActionMove's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMove::ActionMove( FeData::Screen* screen, 
                        SelectionList* selectionList, 
                        int moveX, int moveY ):
Action( NULL, screen, "Move Selection", false, true, false ),
m_SelectionList( selectionList ),
m_MoveX( moveX ),
m_MoveY( moveY )
{

}


//===========================================================================
// ActionMove::~ActionMove
//===========================================================================
// Description: ActionMove's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMove::~ActionMove()
{

}


//===========================================================================
// ActionMove::Do
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

void ActionMove::Do()
{
    if( m_SelectionList != NULL )
    {
        m_SelectionList->MoveSelection( m_MoveX, m_MoveY );
    }
}


//===========================================================================
// ActionMove::Undo
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

void ActionMove::Undo()
{
    if( m_SelectionList != NULL )
    {
        m_SelectionList->MoveSelection( -m_MoveX, -m_MoveY );
    }
}
