//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the NamedElementDescription class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "NamedElementDescription.h"
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
// NamedElementDescription::NamedElementDescription
//===========================================================================
// Description: NamedElementDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

NamedElementDescription::NamedElementDescription() :
m_Name( "" )
{
}


//===========================================================================
// NamedElementDescription::~NamedElementDescription
//===========================================================================
// Description: NamedElementDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

NamedElementDescription::~NamedElementDescription()
{
}


//===========================================================================
// NamedElementDescription::AddToTokenList
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
bool NamedElementDescription::AddToTokenList( TokenList& tokenList )
{
    tokenList.Add( m_Name );
    return true;
}


//===========================================================================
// NamedElementDescription::SetFromTokenList
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
bool NamedElementDescription::SetFromTokenList( TokenList& tokenList )
{
    PascalCString temp;
    
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "NamedElementDescription::SetFromTokenList: Cannot get name.",
                             DebugOutputMessage );
        return false;
    }
    
    m_Name = temp;
    return true;
}


//===========================================================================
// NamedElementDescription::SetName
//===========================================================================
// Description: Set the name for the named element
//
// Constraints:    None
//
// Parameters:    newName - the new name
//
// Return:      Nothing
//
//===========================================================================
void NamedElementDescription::SetName( PascalCString &newName )
{
    m_Name = newName;
}

//===========================================================================
// NamedElementDescription::GetName
//===========================================================================
// Description: Get the name of the named element
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      char* - the name
//
//===========================================================================
char* NamedElementDescription::GetName()
{
    return m_Name;
}

} // End NameSpace
