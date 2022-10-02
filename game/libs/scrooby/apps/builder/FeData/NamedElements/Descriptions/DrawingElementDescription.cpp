//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the DrawingElementDescription class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "DrawingElementDescription.h"
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
// DrawingElementDescription::DrawingElementDescription
//===========================================================================
// Description: DrawingElementDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DrawingElementDescription::DrawingElementDescription()
{
}

//===========================================================================
// DrawingElementDescription::~DrawingElementDescription
//===========================================================================
// Description: DrawingElementDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DrawingElementDescription::~DrawingElementDescription()
{
}


//===========================================================================
// DrawingElementDescription::AddToTokenList
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
bool DrawingElementDescription::AddToTokenList( TokenList& tokenList )
{
    return PageElementDescription::AddToTokenList( tokenList );
}


//===========================================================================
// DrawingElementDescription::SetFromTokenList
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
bool DrawingElementDescription::SetFromTokenList( TokenList& tokenList )
{
    return PageElementDescription::SetFromTokenList( tokenList );
}


} // End NameSpace
