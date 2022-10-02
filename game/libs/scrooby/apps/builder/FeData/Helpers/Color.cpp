//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the Color class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "Color.h"


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
// Color::Color
//===========================================================================
// Description: Color's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Color::Color() :
m_red(255),
m_green(0),
m_blue(255),
m_alpha(255)
{
}


//===========================================================================
// Color::Color
//===========================================================================
// Description: Color's constructor with set.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Color::Color( int red, int green, int blue, int alpha ) :
m_red(red),
m_green(green),
m_blue(blue),
m_alpha(alpha)
{

}


//===========================================================================
// Color::Color
//===========================================================================
// Description: Color's copy constructor
//
// Constraints:    None
//
// Parameters:    right - The Color to copy from.
//
// Return:      Nothing
//
//===========================================================================

Color::Color( Color &right )
{
    m_red = right.GetRed();
    m_green = right.GetGreen();
    m_blue = right.GetBlue();
    m_alpha = right.GetAlpha();
}

//===========================================================================
// Color::~Color
//===========================================================================
// Description: Color's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Color::~Color()
{
}

//===========================================================================
// Color::operator =
//===========================================================================
// Description: Color's equals operator
//
// Constraints:    None
//
// Parameters:    right - The Color to copy from.
//
// Return:      Nothing
//
//===========================================================================

const Color & Color::operator = ( const Color &right )
{
    m_red = right.GetRed();
    m_green = right.GetGreen();
    m_blue = right.GetBlue();
    m_alpha = right.GetAlpha();
    
    return *this;
}

//===========================================================================
// Color::Gets
//===========================================================================
// Description: The following functions are used to get the data members of
//              Color.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The data member.
//
//===========================================================================

int Color::GetRed() const
{
    return m_red;
}

int Color::GetBlue() const
{
    return m_blue;
}

int Color::GetGreen() const
{
    return m_green;
}

int Color::GetAlpha() const
{
    return m_alpha;
}

//===========================================================================
// Color::Sets
//===========================================================================
// Description: The following functions are used to set the data members of
//              Color.
//
// Constraints:    None
//
// Parameters:    The value the data member should be set to.
//
// Return:      Nothing
//
//===========================================================================

void Color::Set( int red, int green, int blue, int alpha )
{
    m_red = red;
    m_green = green;
    m_blue = blue;
    m_alpha = alpha;
}


void Color::SetRed( int red )
{
    m_red = red;
}

void Color::SetBlue( int blue )
{
    m_blue = blue;
}

void Color::SetGreen( int green )
{
    m_green = green;
}

void Color::SetAlpha( int alpha )
{
    m_alpha = alpha;
}

} // End NameSpace
