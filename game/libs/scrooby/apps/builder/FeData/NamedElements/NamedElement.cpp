//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the NamedElement class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "NamedElement.h"


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
// NamedElement::NamedElement
//===========================================================================
// Description: NamedElement's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

NamedElement::NamedElement() :
m_Name( "" )
{
}


//===========================================================================
// NamedElement::~NamedElement
//===========================================================================
// Description: NamedElement's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

NamedElement::~NamedElement()
{
}

//===========================================================================
// NamedElement::SetName
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
void NamedElement::SetName( PascalCString &newName )
{
    m_Name = newName;
}

//===========================================================================
// NamedElement::GetName
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
const char* NamedElement::GetName() const
{
    return m_Name;
}

//===========================================================================
// NamedElement::GetName
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
char* NamedElement::GetName()
{
    return m_Name;
}

} // End NameSpace
