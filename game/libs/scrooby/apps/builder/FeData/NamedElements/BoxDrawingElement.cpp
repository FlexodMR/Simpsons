//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the BoxDrawingElement class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "BoxDrawingElement.h"
#include "Descriptions\BoxDrawingElementDescription.h"
#include "..\Helpers\OutputMessage.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// BoxDrawingElement::BoxDrawingElement
//===========================================================================
// Description: BoxDrawingElement's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
BoxDrawingElement::BoxDrawingElement() 
:
    m_x( 0 ),
    m_y( 0 ),
    m_width( 1 ),
    m_height( 1 ),
    m_justificationHorizontal( Left ),
    m_justificationVertical( Top ),
    m_translucency( Normal ),
    m_rotation( 0 ),
    m_color( 255, 255, 255, 255 )
{
    //Nothing
}


//===========================================================================
// BoxDrawingElement::~BoxDrawingElement
//===========================================================================
// Description: BoxDrawingElement's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

BoxDrawingElement::~BoxDrawingElement()
{
}


//===========================================================================
// BoxDrawingElement::Gets
//===========================================================================
// Description: The following functions are used to get the data members of
//              BoxDrawingElement.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The data member.
//
//===========================================================================

int BoxDrawingElement::GetX() const
{
    return m_x;
}

int BoxDrawingElement::GetY() const
{
    return m_y;
}

int BoxDrawingElement::GetWidth() const
{
    return m_width;
}

int BoxDrawingElement::GetHeight() const
{
    return m_height;
}

JustificationEnum BoxDrawingElement::GetJustificationHorizontal() const
{
    return m_justificationHorizontal;
}

JustificationEnum BoxDrawingElement::GetJustificationVertical() const
{
    return m_justificationVertical;
}

double BoxDrawingElement::GetRotation() const
{
    return m_rotation;
}

TranslucencyEnum BoxDrawingElement::GetTranslucency() const
{
    return m_translucency;
}

int BoxDrawingElement::GetRed() const
{
    return m_color.GetRed();
}

int BoxDrawingElement::GetGreen() const
{
    return m_color.GetGreen();
}

int BoxDrawingElement::GetBlue() const
{
    return m_color.GetBlue();
}

int BoxDrawingElement::GetAlpha() const
{
    return m_color.GetAlpha();
}

//===========================================================================
// BoxDrawingElement::Sets
//===========================================================================
// Description: The following functions are used to set the data members of
//              BoxDrawingElement.
//
// Constraints:    None
//
// Parameters:    The value the data member should be set to.
//
// Return:      Nothing
//
//===========================================================================

void BoxDrawingElement::SetX( int x )
{
    m_x = x;
}

void BoxDrawingElement::SetY( int y )
{
    m_y = y;
}

void BoxDrawingElement::SetWidth( int width )
{
    m_width = width;
}

void BoxDrawingElement::SetHeight( int height )
{
    m_height = height;
}

void BoxDrawingElement::SetJustificationHorizontal( JustificationEnum justification )
{
    m_justificationHorizontal = justification;
}

void BoxDrawingElement::SetJustificationVertical( JustificationEnum justification )
{
    m_justificationVertical = justification;
}

void BoxDrawingElement::SetTranslucency( TranslucencyEnum translucency )
{
    m_translucency = translucency;
}

void BoxDrawingElement::SetRotation( double rotation )
{
    m_rotation = rotation;
}

void BoxDrawingElement::SetColor( int red, int green, int blue, int alpha )
{
    m_color.Set( red, green, blue, alpha );
}

//===========================================================================
// BoxDrawingElement::GetDrawingElementUnderLocation
//===========================================================================
// Description: This is used to find the first drawing element that is under
//              the given location.
//
// Constraints:    None
//
// Parameters:    x - x co-ordinate of the location.
//              y - y co-ordinate of the location.
//
// Return:      A pointer to the first found drawing element or NULL if no 
//              elements are under the location.
//
//===========================================================================

DrawingElement* BoxDrawingElement::GetDrawingElementUnderLocation( int x, int y )
{
    if( (x >= m_x) && 
        (x <= (m_x + m_width)) &&
        (y >= m_y) && 
        (y <= (m_y + m_height)) )
    {
        return this;
    }
    return NULL;
}


//===========================================================================
// BoxDrawingElement::Move
//===========================================================================
// Description: This is used to move the box
//
// Constraints:    None
//
// Parameters:    dx, dy - amount to move by
//
// Return:      true if successful
//
//===========================================================================

bool BoxDrawingElement::Move( int dx, int dy )
{
    SetX( GetX() + dx );
    SetY( GetY() + dy );
    return true;
}



//===========================================================================
// BoxDrawingElement::GetBoundingLeft
//===========================================================================
// Description: This is used to get the left most point of the bounding box.
//
// Constraints:    None
//
// Parameters:    left - the paramater to compare with and change.
//
// Return:      true  - if the element had a posible bounding box value.
//
//===========================================================================

bool BoxDrawingElement::GetBoundingLeft( int& left )
{
    if( m_x < left )
    {
        left = m_x;
    }
    return true;
}


//===========================================================================
// BoxDrawingElement::GetBoundingTop
//===========================================================================
// Description: This is used to get the top most point of the bounding box.
//
// Constraints:    None
//
// Parameters:    top - the paramater to compare with and change.
//
// Return:      true  - if the element had a posible bounding box value.
//
//===========================================================================

bool BoxDrawingElement::GetBoundingTop( int& top )
{
    if( (m_y + m_height) > top )
    {
        top = m_y + m_height;
    }
    return true;
}


//===========================================================================
// BoxDrawingElement::GetBoundingRight
//===========================================================================
// Description: This is used to get the right most point of the bounding box.
//
// Constraints:    None
//
// Parameters:    right - the paramater to compare with and change.
//
// Return:      true  - if the element had a posible bounding box value.
//
//===========================================================================

bool BoxDrawingElement::GetBoundingRight( int& right )
{
    if( (m_x + m_width) > right )
    {
        right = (m_x + m_width);
    }
    return true;
}


//===========================================================================
// BoxDrawingElement::GetBoundingBottom
//===========================================================================
// Description: This is used to get the bottom most point of the bounding box.
//
// Constraints:    None
//
// Parameters:    bottom - the paramater to compare with and change.
//
// Return:      true  - if the element had a posible bounding box value.
//
//===========================================================================

bool BoxDrawingElement::GetBoundingBottom( int& bottom )
{
    if( m_y < bottom )
    {
        bottom = m_y;
    }
    return true;
}


//===========================================================================
// BoxDrawingElement::SetFromDescription
//===========================================================================
// Description: This sets the state of the element to match that of the
//              passed description.
//
// Constraints:    The page for this element must have been set before this can 
//              be called.
//
// Parameters:    description - Description to set from
//
// Return:      true  - if successful,
//              false - otherwize
//
//===========================================================================

bool BoxDrawingElement::SetFromDescription( DrawingElementDescription* description )
{
    BoxDrawingElementDescription* boxDescription = dynamic_cast<BoxDrawingElementDescription*>( description );
    if( boxDescription == NULL )
    {
        g_OutputMessage.Add( "BoxDrawingElement::SetFromDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    // Set the parent settings
    if( !DrawingElement::SetFromDescription( boxDescription ) )
    {
        return false;
    }

    // Set the BoxDrawingElement settings
    SetX( boxDescription->GetX() );
    SetY( boxDescription->GetY() );
    SetWidth( boxDescription->GetWidth() );
    SetHeight( boxDescription->GetHeight() );
    SetJustificationHorizontal( boxDescription->GetJustificationHorizontal() );
    SetJustificationVertical( boxDescription->GetJustificationVertical() );
    SetTranslucency( boxDescription->GetTranslucency() );
    SetRotation( boxDescription->GetRotation() );
    SetColor( boxDescription->GetRed(), 
              boxDescription->GetGreen(), 
              boxDescription->GetBlue(), 
              boxDescription->GetAlpha() );

    return true;
}

//===========================================================================
// DrawingElement::FillInDescription
//===========================================================================
// Description: This fills in the description with settings from this class.
//
// Constraints:    None
//
// Parameters:    description - description to fill.
//
// Return:      true  - if successful,
//              false - otherwize
//
//===========================================================================
bool BoxDrawingElement::FillInDescription( DrawingElementDescription* description )
{
    BoxDrawingElementDescription* boxDescription = dynamic_cast<BoxDrawingElementDescription*>( description );
    if( boxDescription == NULL )
    {
        g_OutputMessage.Add( "BoxDrawingElement::FillInDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    // Fill in parent settings
    DrawingElement::FillInDescription( boxDescription );

    // Set this class's settings
    boxDescription->SetX( m_x );
    boxDescription->SetY( m_y );
    boxDescription->SetWidth( m_width );
    boxDescription->SetHeight( m_height );
    boxDescription->SetJustificationHorizontal( m_justificationHorizontal );
    boxDescription->SetJustificationVertical( m_justificationVertical );
    boxDescription->SetTranslucency( m_translucency );
    boxDescription->SetRotation( m_rotation );
    boxDescription->SetColor( m_color.GetRed(), 
                              m_color.GetGreen(), 
                              m_color.GetBlue(), 
                              m_color.GetAlpha() );

    return true;
}


} // End NameSpace
