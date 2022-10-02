//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the SpriteDescription class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "SpriteDescription.h"
#include "..\Sprite.h"
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
// SpriteDescription::SpriteDescription
//===========================================================================
// Description: SpriteDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

SpriteDescription::SpriteDescription()
{
}


//===========================================================================
// SpriteDescription::~SpriteDescription
//===========================================================================
// Description: SpriteDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

SpriteDescription::~SpriteDescription()
{
}


//===========================================================================
// SpriteDescription::AddToTokenList
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
bool SpriteDescription::AddToTokenList( TokenList& tokenList )
{
    tokenList.Add( g_SpriteDescriptionHeader );
    
    if( !MultiSpriteDescription::AddToTokenList( tokenList ) )
    {
        return false;
    }

    tokenList.Add( g_SpriteDescriptionFooter );
    return true;
}


//===========================================================================
// SpriteDescription::SetFromTokenList
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
bool SpriteDescription::SetFromTokenList( TokenList& tokenList )
{
    PascalCString temp;
    
    // Get the header
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "SpriteDescription::AddToTokenList: Cannot get header.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_SpriteDescriptionHeader )
    {
        g_OutputMessage.Add( "SpriteDescription::AddToTokenList: Invalid header.",
                             DebugOutputMessage );
        return false;
    }


    // Get the parent description
    if( !MultiSpriteDescription::SetFromTokenList( tokenList ) )
    {
        return false;
    }


    // Get the footer
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "SpriteDescription::AddToTokenList: Cannot get footer.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_SpriteDescriptionFooter )
    {
        g_OutputMessage.Add( "SpriteDescription::AddToTokenList: Invalid footer.",
                             DebugOutputMessage );
        return false;
    }

    // All done
    return true;
}


//===========================================================================
// SpriteDescription::CreateHierarchyElement
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

DrawingElement* SpriteDescription::CreateHierarchyElement( Page* page )
{
    Project* project = page->GetProject();
    BaseFactory* objectFactory = project->GetObjectFactory();

    Sprite* sprite = objectFactory->NewSprite();
    if( sprite == NULL )
    {
        g_OutputMessage.Add( "SpriteDescription::CreateHierarchyElement: Out of Memory!",
                             DebugOutputMessage );
        return NULL;
    }

    sprite->SetPage( page );
    sprite->SetFromDescription( this );
    return sprite;
}


} // End NameSpace
