//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles MoveLayerInPage actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionMoveLayerInPage.h"
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
// ActionMoveLayerInPage::ActionMoveLayerInPage
//===========================================================================
// Description: ActionMoveLayerInPage's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMoveLayerInPage::ActionMoveLayerInPage( FeData::Page* page, 
                                              FeData::Layer* layer, 
                                              int oldIndex,
                                              int newIndex ) :
Action( page, NULL, "Move Layer In Page", true, true, false ),
m_Layer( layer ),
m_OldIndex( oldIndex ),
m_NewIndex( newIndex )
{
    if( (layer == NULL) || (page == NULL) )
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
// ActionMoveLayerInPage::ActionMoveLayerInPage
//===========================================================================
// Description: ActionMoveLayerInPage's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMoveLayerInPage::~ActionMoveLayerInPage()
{

}


//===========================================================================
// ActionMoveLayerInPage::Do
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

void ActionMoveLayerInPage::Do()
{
    m_Page->RemoveLayerWithoutDelete( m_Layer );
    m_Page->AddLayerAtIndex( m_Layer, m_NewIndex );
}


//===========================================================================
// ActionMoveLayerInPage::Undo
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

void ActionMoveLayerInPage::Undo()
{
    m_Page->RemoveLayerWithoutDelete( m_Layer );
    m_Page->AddLayerAtIndex( m_Layer, m_OldIndex );
}
