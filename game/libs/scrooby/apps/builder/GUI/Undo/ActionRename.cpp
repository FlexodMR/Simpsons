//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles Rename actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionRename.h"
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
// ActionRename::ActionRename
//===========================================================================
// Description: ActionRename's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionRename::ActionRename( FeData::Page* page, 
                            FeData::NamedElement* element, 
                            PascalCString& newName ) :
Action( page, NULL, "Rename Element", true, false, false ),
m_Element( element ),
m_NewName( newName ),
m_OldName( "" )
{
    if( m_Element != NULL )
    {
        m_OldName = m_Element->GetName();
    }
}


//===========================================================================
// ActionRename::ActionRename
//===========================================================================
// Description: ActionRename's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionRename::~ActionRename()
{

}


//===========================================================================
// ActionRename::Do
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

void ActionRename::Do()
{
    if( m_Element != NULL )
    {
        m_Element->SetName( m_NewName );
    }
}


//===========================================================================
// ActionRename::Undo
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

void ActionRename::Undo()
{
    if( m_Element != NULL )
    {
        m_Element->SetName( m_OldName );
    }
}
