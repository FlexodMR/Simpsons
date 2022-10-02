//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MovePageInScreen actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionMovePageInScreen.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Screen.h"

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
// ActionMovePageInScreen::ActionMovePageInScreen
//===========================================================================
// Description: ActionMovePageInScreen's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMovePageInScreen::ActionMovePageInScreen( FeData::Screen* screen, 
                                                 FeData::Page* page, 
                                                 int oldIndex,
                                                 int newIndex ) :
Action( NULL, screen, "Move Page In Screen", true, true, false ),
m_MovePage( page ),
m_OldIndex( oldIndex ),
m_NewIndex( newIndex )
{
    if( (m_Screen == NULL) || (m_MovePage == NULL) )
    {
        m_ActionValid = false;
        return;
    }

    if( oldIndex == newIndex )
    {
        m_ActionValid = false;
        return;
    }
}


//===========================================================================
// ActionMovePageInScreen::ActionMovePageInScreen
//===========================================================================
// Description: ActionMovePageInScreen's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMovePageInScreen::~ActionMovePageInScreen()
{

}


//===========================================================================
// ActionMovePageInScreen::Do
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

void ActionMovePageInScreen::Do()
{
    m_Screen->MovePage( m_MovePage, m_NewIndex );
}


//===========================================================================
// ActionMovePageInScreen::Undo
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

void ActionMovePageInScreen::Undo()
{
    m_Screen->MovePage( m_MovePage, m_OldIndex );
}
