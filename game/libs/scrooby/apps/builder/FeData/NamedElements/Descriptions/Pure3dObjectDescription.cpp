//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dObjectDescription class.
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "Pure3dObjectDescription.h"
#include "..\Pure3dObject.h"
#include "..\Page.h"
#include "..\Project.h"
#include "..\..\Helpers\OutputMessage.h"
#include "..\..\Helpers\TokenList.h"
#include "..\..\Factories\BaseFactory.h"

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
// Pure3dObjectDescription::Pure3dObjectDescription
//===========================================================================
// Description: Pure3dObjectDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
Pure3dObjectDescription::Pure3dObjectDescription()
{
}


//===========================================================================
// Pure3dObjectDescription::~Pure3dObjectDescription
//===========================================================================
// Description: Pure3dObjectDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Pure3dObjectDescription::~Pure3dObjectDescription()
{
}


//===========================================================================
// Pure3dObjectDescription::AddToTokenList
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
bool Pure3dObjectDescription::AddToTokenList( TokenList& tokenList )
{
    tokenList.Add( g_DescriptionHeader );
    
    if( !BoxDrawingElementDescription::AddToTokenList( tokenList ) )
    {
        return false;
    }
   
    return true;
}


//===========================================================================
// Pure3dObjectDescription::SetFromTokenList
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
bool Pure3dObjectDescription::SetFromTokenList( TokenList& tokenList )
{
    PascalCString temp;
    
    // Get the header
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "Pure3dObjectDescription::AddToTokenList: Cannot get header.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_DescriptionHeader )
    {
        g_OutputMessage.Add( "Pure3dObjectDescription::AddToTokenList: Invalid header.",
                             DebugOutputMessage );
        return false;
    }


    if( !BoxDrawingElementDescription::SetFromTokenList( tokenList ) )
    {
        return false;
    }



    // All done
    return true;
}


//===========================================================================
// Pure3dObjectDescription::CreateHierarchyElement
//===========================================================================
// Description: This create a new hierarchy element based on the description.
//              Note: The caller is responsible for deleting the element
//
// Constraints:    None
//
// Parameters:    objectFactory - object factory used to make the element.
//
// Return:      A pointer to the new element, or NULL if an error occurred.
//
//===========================================================================

DrawingElement* Pure3dObjectDescription::CreateHierarchyElement( Page* page )
{
    Project* project = page->GetProject();
    BaseFactory* objectFactory = project->GetObjectFactory();

    Pure3dObject* object = objectFactory->NewPure3dObject();
    if( object == NULL )
    {
        g_OutputMessage.Add( "Pure3dObjectDescription::CreateHierarchyElement: Out of Memory!",
                             DebugOutputMessage );
        return NULL;
    }

    object->SetPage( page );
    object->SetFromDescription( this );
    return object;
}

} // End NameSpace
