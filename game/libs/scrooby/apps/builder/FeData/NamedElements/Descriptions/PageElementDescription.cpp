//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PageElement class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "PageElementDescription.h"
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
// PageElement::PageElement
//===========================================================================
// Description: PageElement's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PageElementDescription::PageElementDescription()
{
}


//===========================================================================
// PageElement::~PageElement
//===========================================================================
// Description: PageElement's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PageElementDescription::~PageElementDescription()
{
}


//===========================================================================
// PageElementDescription::AddToTokenList
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
bool PageElementDescription::AddToTokenList( TokenList& tokenList )
{
    return NamedElementDescription::AddToTokenList( tokenList );
}


//===========================================================================
// PageElementDescription::SetFromTokenList
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
bool PageElementDescription::SetFromTokenList( TokenList& tokenList )
{
    return NamedElementDescription::SetFromTokenList( tokenList );
}


} // End NameSpace
