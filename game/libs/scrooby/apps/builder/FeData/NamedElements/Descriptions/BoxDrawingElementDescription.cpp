//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the BoxDrawingElementDescription class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "BoxDrawingElementDescription.h"
#include "..\..\Helpers\TokenList.h"

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
// BoxDrawingElementDescription::BoxDrawingElementDescription
//===========================================================================
// Description: BoxDrawingElementDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

BoxDrawingElementDescription::BoxDrawingElementDescription() :
m_x(0),
m_y(0),
m_width(0),
m_height(0),
m_justificationHorizontal(Left),
m_justificationVertical(Top),
m_translucency(Normal),
m_rotation(0)
{
}


//===========================================================================
// BoxDrawingElementDescription::~BoxDrawingElementDescription
//===========================================================================
// Description: BoxDrawingElementDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

BoxDrawingElementDescription::~BoxDrawingElementDescription()
{
}


//===========================================================================
// BoxDrawingElementDescription::Gets
//===========================================================================
// Description: The following functions are used to get the data members of
//              BoxDrawingElementDescription.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The data member.
//
//===========================================================================

int BoxDrawingElementDescription::GetX()
{
    return m_x;
}

int BoxDrawingElementDescription::GetY()
{
    return m_y;
}

int BoxDrawingElementDescription::GetWidth()
{
    return m_width;
}

int BoxDrawingElementDescription::GetHeight()
{
    return m_height;
}

JustificationEnum BoxDrawingElementDescription::GetJustificationHorizontal()
{
    return m_justificationHorizontal;
}

JustificationEnum BoxDrawingElementDescription::GetJustificationVertical()
{
    return m_justificationVertical;
}

TranslucencyEnum BoxDrawingElementDescription::GetTranslucency()
{
    return m_translucency;
}

double BoxDrawingElementDescription::GetRotation()
{
    return m_rotation;
}

int BoxDrawingElementDescription::GetRed()
{
    return m_color.GetRed();
}

int BoxDrawingElementDescription::GetGreen()
{
    return m_color.GetGreen();
}

int BoxDrawingElementDescription::GetBlue()
{
    return m_color.GetBlue();
}

int BoxDrawingElementDescription::GetAlpha()
{
    return m_color.GetAlpha();
}

//===========================================================================
// BoxDrawingElementDescription::Sets
//===========================================================================
// Description: The following functions are used to set the data members of
//              BoxDrawingElementDescription.
//
// Constraints:    None
//
// Parameters:    The value the data member should be set to.
//
// Return:      Nothing
//
//===========================================================================

void BoxDrawingElementDescription::SetX( int x )
{
    m_x = x;
}

void BoxDrawingElementDescription::SetY( int y )
{
    m_y = y;
}

void BoxDrawingElementDescription::SetWidth( int width )
{
    m_width = width;
}

void BoxDrawingElementDescription::SetHeight( int height )
{
    m_height = height;
}

void BoxDrawingElementDescription::SetJustificationHorizontal( JustificationEnum justification )
{
    m_justificationHorizontal = justification;
}

void BoxDrawingElementDescription::SetJustificationVertical( JustificationEnum justification )
{
    m_justificationVertical = justification;
}

void BoxDrawingElementDescription::SetTranslucency( TranslucencyEnum translucency )
{
    m_translucency = translucency;
}

void BoxDrawingElementDescription::SetRotation( double rotation )
{
    m_rotation = rotation;
}

void BoxDrawingElementDescription::SetColor( int red, int green, int blue, int alpha )
{
    m_color.Set( red, green, blue, alpha );
}

//===========================================================================
// BoxDrawingElementDescription::AddToTokenList
//===========================================================================
// Description: This places the a tokenised version of the description after
//              the token list.
//
// Constraints:    None
//
// Parameters:    tokenList - token list to add to
//
// Return:      true  - if the copy was successfull,
//              false - otherwise
//
//===========================================================================
bool BoxDrawingElementDescription::AddToTokenList( TokenList& tokenList )
{
    if( !DrawingElementDescription::AddToTokenList( tokenList ) )
    {
        return false;
    }

    tokenList.Add( m_x );
    tokenList.Add( m_y );
    tokenList.Add( m_width );
    tokenList.Add( m_height );
    tokenList.Add( m_justificationHorizontal );
    tokenList.Add( m_justificationVertical );
    tokenList.Add( m_translucency );
    tokenList.Add( m_rotation );
    tokenList.Add( m_color.GetRed() );
    tokenList.Add( m_color.GetGreen() );
    tokenList.Add( m_color.GetBlue() );
    tokenList.Add( m_color.GetAlpha() );
    return true;
}


//===========================================================================
// BoxDrawingElementDescription::SetFromTokenList
//===========================================================================
// Description: This sets up the description from the passed token list.
//
// Constraints:    None
//
// Parameters:    tokenList - token list to use to make description
//
// Return:      true  - if the setting was successfull,
//              false - otherwise
//
//===========================================================================
bool BoxDrawingElementDescription::SetFromTokenList( TokenList& tokenList )
{
    if( !DrawingElementDescription::SetFromTokenList( tokenList ) )
    {
        return false;
    }
 
    int tempJustificationHorizontal;
    int tempJustificationVertical;
    int tempTranslucency;

    int tempRed;
    int tempGreen;
    int tempBlue;
    int tempAlpha;

    if( tokenList.GetNext( m_x ) &&
        tokenList.GetNext( m_y ) &&
        tokenList.GetNext( m_width ) &&
        tokenList.GetNext( m_height ) &&
        tokenList.GetNext( tempJustificationHorizontal ) &&
        tokenList.GetNext( tempJustificationVertical ) &&
        tokenList.GetNext( tempTranslucency ) &&
        tokenList.GetNext( m_rotation ) &&
        tokenList.GetNext( tempRed ) &&
        tokenList.GetNext( tempGreen ) &&
        tokenList.GetNext( tempBlue ) &&
        tokenList.GetNext( tempAlpha ) )
    {
        m_justificationHorizontal = (JustificationEnum)tempJustificationHorizontal;
        m_justificationVertical = (JustificationEnum)tempJustificationVertical;
        m_translucency = (TranslucencyEnum)tempTranslucency;

        m_color.Set( tempRed, tempGreen, tempBlue, tempAlpha );
        return true;
    }
    else
    {
        g_OutputMessage.Add( "BoxDrawingElementDescription::SetFromTokenList: Could not get the data from the token list!", 
                             DebugOutputMessage );
        return false;
    }
}


} // End NameSpace
