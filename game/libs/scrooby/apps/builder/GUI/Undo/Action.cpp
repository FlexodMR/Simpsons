//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This is the base class for all actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "Action.h"
#include "ActionManager.h"

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
// Action::Action
//===========================================================================
// Description: Action's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Action::Action( FeData::Page* page, 
                FeData::Screen* screen, 
                char* type,
                bool haveToRebuildTree,
                bool haveToRefreshLayoutView,
                bool haveToRefreshTreeSelection) :
m_Page( page ),
m_Screen( screen ),
m_Type( type ),
m_HaveToRebuildTree( haveToRebuildTree ),
m_HaveToRefreshLayoutView( haveToRefreshLayoutView ),
m_HaveToRefreshTreeSelection( haveToRefreshTreeSelection ),
m_ActionValid( true )
{
}


//===========================================================================
// Action::~Action
//===========================================================================
// Description: Action's Destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Action::~Action()
{

} 


//===========================================================================
// Action::GetType
//===========================================================================
// Description: This returns a string that discribes the kind of action.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A string that discribes the kind of action.
//
//===========================================================================

const PascalCString& Action::GetType()
{
    return m_Type;
}


//===========================================================================
// Action::GetPage
//===========================================================================
// Description: This returns the page
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to the page
//
//===========================================================================

FeData::Page* Action::GetPage()
{
    return m_Page;
}


//===========================================================================
// Action::GetScreen
//===========================================================================
// Description: This returns the screen
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to the screen
//
//===========================================================================

FeData::Screen* Action::GetScreen()
{
    return m_Screen;
}


//===========================================================================
// Action::HaveToRebuildTree
//===========================================================================
// Description: This returns whether the tree has to be rebuilt after the
//              action is done.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Whether the tree has to be rebuilt
//
//===========================================================================

bool Action::HaveToRebuildTree()
{
    return m_HaveToRebuildTree;
}


//===========================================================================
// Action::HaveToRefreshLayoutView
//===========================================================================
// Description: This returns whether the layout view has to be refreshed
//              after the action is done.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Whether the layout view has to be refreshed
//
//===========================================================================

bool Action::HaveToRefreshLayoutView()
{
    return m_HaveToRefreshLayoutView;
}


//===========================================================================
// Action::HaveToRefreshTreeSelection
//===========================================================================
// Description: This returns whether the tree selection has to be refreshed
//              after the action is done.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Whether the layout view has to be refreshed
//
//===========================================================================

bool Action::HaveToRefreshTreeSelection()
{
    return m_HaveToRefreshTreeSelection;
}


//===========================================================================
// Action::IsActionValid
//===========================================================================
// Description: This returns whether the action is valid and should be done
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Whether the action is valid and should be done.
//
//===========================================================================

bool Action::IsActionValid()
{
    return m_ActionValid;
}
