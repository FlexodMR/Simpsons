//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Undo/Redo System
//
// Description: This handles BoxDrawingElement actions.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ActionBoxDrawingElement.h"

#include "..\..\FeData\NamedElements\BoxDrawingElement.h"
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
// ActionBoxDrawingElement::ActionBoxDrawingElement
//===========================================================================
// Description: ActionBoxDrawingElement's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionBoxDrawingElement::ActionBoxDrawingElement( FeData::Page* page, 
                                                  FeData::DrawingElement* drawingElement,
                                                  FeData::PageElement* parent,
                                                  int elementIndex,
                                                  ActionDrawingElementEnum type ) :
ActionDrawingElement( page, drawingElement, parent, elementIndex, type ),
m_OldX( 0 ),
m_OldY( 0 ),
m_OldWidth( 1 ),
m_OldHeight( 1 ),
m_OldJustificationHorizontal( FeData::Center ),
m_OldJustificationVertical( FeData::Center ),
m_OldRed( 0 ),
m_OldGreen( 0 ),
m_OldBlue( 0 ),
m_OldAlpha( 0 ),
m_OldTranslucency( FeData::Normal ),
m_OldRotation( 0 ),
m_NewX( 0 ),
m_NewY( 0 ),
m_NewWidth( 1 ),
m_NewHeight( 1 ),
m_NewJustificationHorizontal( FeData::Center ),
m_NewJustificationVertical( FeData::Center ),
m_NewRed( 0 ),
m_NewGreen( 0 ),
m_NewBlue( 0 ),
m_NewAlpha( 0 ),
m_NewTranslucency( FeData::Normal ),
m_NewRotation( 0 )
//
// All of these default values should be overwritten by what is in the constructed objects
//
{

}


//===========================================================================
// ActionBoxDrawingElement::ActionBoxDrawingElement
//===========================================================================
// Description: ActionBoxDrawingElement's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ActionBoxDrawingElement::~ActionBoxDrawingElement()
{

}


//===========================================================================
// ActionBoxDrawingElement::Do
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


//===========================================================================
// ActionBoxDrawingElement::GetDefaultBoxDrawingElementSettings
//===========================================================================
// Description: Gets the settings for a default element
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      None
//
//===========================================================================
void ActionBoxDrawingElement::GetDefaultBoxDrawingElementSettings( const FeData::BoxDrawingElement* box )
{
    if( box != NULL )
    {
        //
        // Don't get the name - the default name is set correctly
        //
        //m_OldName = box->GetName();

        m_OldX = box->GetX();               
        m_OldY = box->GetY();
        m_OldWidth = box->GetWidth();
        m_OldHeight = box->GetHeight();
        m_OldJustificationHorizontal = box->GetJustificationHorizontal();
        m_OldJustificationVertical = box->GetJustificationVertical();
        m_OldRed = box->GetRed();
        m_OldGreen = box->GetGreen();
        m_OldBlue = box->GetBlue();
        m_OldAlpha = box->GetAlpha();
        m_OldTranslucency = box->GetTranslucency();
        m_OldRotation = box->GetRotation();
    }
}

//===========================================================================
// ActionBoxDrawingElement::GetOldBoxDrawingElementSettings
//===========================================================================
// Description: Gets the settings from the exising element
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      None
//
//===========================================================================
void ActionBoxDrawingElement::GetOldBoxDrawingElementSettings()
{
    FeData::BoxDrawingElement* box = dynamic_cast<FeData::BoxDrawingElement*>( m_DrawingElement );
    if( box != NULL )
    {
        m_OldName = box->GetName();

        m_OldX = box->GetX();               
        m_OldY = box->GetY();
        m_OldWidth = box->GetWidth();
        m_OldHeight = box->GetHeight();
        m_OldJustificationHorizontal = box->GetJustificationHorizontal();
        m_OldJustificationVertical = box->GetJustificationVertical();
        m_OldRed = box->GetRed();
        m_OldGreen = box->GetGreen();
        m_OldBlue = box->GetBlue();
        m_OldAlpha = box->GetAlpha();
        m_OldTranslucency = box->GetTranslucency();
        m_OldRotation = box->GetRotation();
    }
}


void ActionBoxDrawingElement::SetOldBoxDrawingElementSettings()
{
    FeData::BoxDrawingElement* box = dynamic_cast<FeData::BoxDrawingElement*>( m_DrawingElement );
    if( box != NULL )
    {
        box->SetName( m_OldName );

        box->SetX( m_OldX );               
        box->SetY( m_OldY );
        box->SetWidth( m_OldWidth );
        box->SetHeight( m_OldHeight );
        box->SetJustificationHorizontal( m_OldJustificationHorizontal );
        box->SetJustificationVertical( m_OldJustificationVertical );
        box->SetColor( m_OldRed, m_OldGreen, m_OldBlue, m_OldAlpha );
        box->SetTranslucency( m_OldTranslucency );
        box->SetRotation( m_OldRotation );
    }
}


void ActionBoxDrawingElement::SetNewBoxDrawingElementSettings()
{
    FeData::BoxDrawingElement* box = dynamic_cast<FeData::BoxDrawingElement*>( m_DrawingElement );
    if( box != NULL )
    {
        box->SetName( m_NewName );

        box->SetX( m_NewX );               
        box->SetY( m_NewY );
        box->SetWidth( m_NewWidth );
        box->SetHeight( m_NewHeight );
        box->SetJustificationHorizontal( m_NewJustificationHorizontal );
        box->SetJustificationVertical( m_NewJustificationVertical );
        box->SetColor( m_NewRed, m_NewGreen, m_NewBlue, m_NewAlpha );
        box->SetTranslucency( m_NewTranslucency );
        box->SetRotation( m_NewRotation );
    }
}
