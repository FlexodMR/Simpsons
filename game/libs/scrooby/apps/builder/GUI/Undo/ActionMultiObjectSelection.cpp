//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles ActionMultiObjectSelection actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionMultiObjectSelection.h"
#include "..\..\FeData\NamedElements\DrawingElement.h"
#include "..\..\FeData\NamedElements\MultiSprite.h"
#include "..\..\FeData\NamedElements\MultiText.h"
#include "..\..\FeData\Helpers\OutputMessage.h"

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
// ActionMultiObjectSelection::ActionMultiObjectSelection
//===========================================================================
// Description: ActionMultiObjectSelection's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMultiObjectSelection::ActionMultiObjectSelection( FeData::Page* page, 
                                                        FeData::DrawingElement* element,
                                                        int newSelection ) :
Action( page, NULL, "", true, true, false ),
m_Element( element ),
m_OldSelection( 0 ),
m_NewSelection( newSelection )
{
    using namespace FeData;

    if( (m_Page == NULL) || (m_Element == NULL) )
    {
        FeData::g_OutputMessage.Add( "ActionMultiObjectSelection::ActionMultiObjectSelection: Invalid paramators!",
                                     FeData::DebugOutputMessage );
        m_ActionValid = false;
        return;
    }

    // Do we have a MultiSprite
    MultiSprite* multiSprite = dynamic_cast<MultiSprite*>( m_Element );
    if( multiSprite != NULL )
    {
        m_OldSelection = multiSprite->GetCurrentImage();
        return;
    }

    // Do we have a MultiText
    MultiText* multiText = dynamic_cast<MultiText*>( m_Element );
    if( multiText != NULL )
    {
        m_OldSelection = multiText->GetCurrentText();
        return;
    }

    // Should never get here
    FeData::g_OutputMessage.Add( "ActionMultiObjectSelection::ActionMultiObjectSelection: Element is not a MultiObject!",
                                 FeData::DebugOutputMessage );
    m_ActionValid = false;
}


//===========================================================================
// ActionMultiObjectSelection::ActionMultiObjectSelection
//===========================================================================
// Description: ActionMultiObjectSelection's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionMultiObjectSelection::~ActionMultiObjectSelection()
{

}


//===========================================================================
// ActionMultiObjectSelection::Do
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

void ActionMultiObjectSelection::Do()
{
    using namespace FeData;

    // Do we have a MultiSprite
    MultiSprite* multiSprite = dynamic_cast<MultiSprite*>( m_Element );
    if( multiSprite != NULL )
    {
        multiSprite->SetCurrentImage( m_NewSelection );
        return;
    }

    // Do we have a MultiText
    MultiText* multiText = dynamic_cast<MultiText*>( m_Element );
    if( multiText != NULL )
    {
        multiText->SetCurrentText( m_NewSelection );
        return;
    }
}


//===========================================================================
// ActionMultiObjectSelection::Undo
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

void ActionMultiObjectSelection::Undo()
{
    using namespace FeData;

    // Do we have a MultiSprite
    MultiSprite* multiSprite = dynamic_cast<MultiSprite*>( m_Element );
    if( multiSprite != NULL )
    {
        multiSprite->SetCurrentImage( m_OldSelection );
        return;
    }

    // Do we have a MultiText
    MultiText* multiText = dynamic_cast<MultiText*>( m_Element );
    if( multiText != NULL )
    {
        multiText->SetCurrentText( m_OldSelection );
        return;
    }
}
