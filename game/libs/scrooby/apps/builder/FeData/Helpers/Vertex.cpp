//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Vertex class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "Vertex.h"


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
// Vertex::Vertex
//===========================================================================
// Description: Vertex's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Vertex::Vertex() :
m_x(0),
m_y(0),
m_red(255),
m_blue(255),
m_green(0),
m_alpha(255)
{
}

//===========================================================================
// Vertex::Vertex
//===========================================================================
// Description: Vertex's copy constructor
//
// Constraints:    None
//
// Parameters:    right - The Vertex to copy from.
//
// Return:      Nothing
//
//===========================================================================

Vertex::Vertex( Vertex &right )
{
    m_x = right.GetX();
    m_y = right.GetY();
    m_red = right.GetRed();
    m_blue = right.GetBlue();
    m_green = right.GetGreen();
    m_alpha = right.GetAlpha();
}

//===========================================================================
// Vertex::~Vertex
//===========================================================================
// Description: Vertex's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Vertex::~Vertex()
{
}

//===========================================================================
// Vertex::operator =
//===========================================================================
// Description: Vertex's equals operator
//
// Constraints:    None
//
// Parameters:    right - The Vertex to copy from.
//
// Return:      Nothing
//
//===========================================================================

const Vertex & Vertex::operator = ( const Vertex &right )
{
    m_x = right.GetX();
    m_y = right.GetY();
    m_red = right.GetRed();
    m_blue = right.GetBlue();
    m_green = right.GetGreen();
    m_alpha = right.GetAlpha();
    
    return *this;
}

//===========================================================================
// Vertex::Gets
//===========================================================================
// Description: The following functions are used to get the data members of
//              Vertex.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The data member.
//
//===========================================================================

int Vertex::GetX() const
{
    return m_x;
}

int Vertex::GetY() const
{
    return m_y;
}

int Vertex::GetRed() const
{
    return m_red;
}

int Vertex::GetBlue() const
{
    return m_blue;
}

int Vertex::GetGreen() const
{
    return m_green;
}

int Vertex::GetAlpha() const
{
    return m_alpha;
}

//===========================================================================
// Vertex::Sets
//===========================================================================
// Description: The following functions are used to set the data members of
//              Vertex.
//
// Constraints:    None
//
// Parameters:    The value the data member should be set to.
//
// Return:      Nothing
//
//===========================================================================

void Vertex::SetX( int x )
{
    m_x = x;
}

void Vertex::SetY( int y )
{
    m_y = y;
}

void Vertex::SetRed( int red )
{
    m_red = red;
}

void Vertex::SetBlue( int blue )
{
    m_blue = blue;
}

void Vertex::SetGreen( int green )
{
    m_green = green;
}

void Vertex::SetAlpha( int alpha )
{
    m_alpha = alpha;
}

} // End NameSpace
