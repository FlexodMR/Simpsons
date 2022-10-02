//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the SpriteLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "SpriteLoader.h"
#include "..\NamedElements\Sprite.h"
#include "..\Helpers\OutputMessage.h"
#include "XML\XMLTree.h"
#include "..\Factories\BaseFactory.h"
#include "..\NamedElements\Project.h"
#include "..\NamedElements\Page.h"
#include "..\Resources\Image.h"

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
// SpriteLoader::SpriteLoader
//===========================================================================
// Description: SpriteLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

SpriteLoader::SpriteLoader()
{
}


//===========================================================================
// SpriteLoader::~SpriteLoader
//===========================================================================
// Description: SpriteLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

SpriteLoader::~SpriteLoader()
{
}


//===========================================================================
// SpriteLoader::Load
//===========================================================================
// Description: This is used to load a Sprite from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created Sprite or NULL if an error
//              occured.
//
//===========================================================================

Sprite* SpriteLoader::Load( XMLTree &loadTree, Page* thePage )
{
    PascalCString buffer;

    // Get the project
    Project* theProject = thePage->GetProject();

    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new Sprite
    Sprite* newSprite = objectFactory->NewSprite();
    
    if( newSprite == NULL )
    {
        g_OutputMessage.Add( "SpriteLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the project
    newSprite->SetPage( thePage );


    // Load the image name
    PascalCString spriteName;
    ResourceManager* resourceManager = thePage->GetResourceManager();
    if( loadTree.SetCurrentElementByName( g_SpriteTagImage ) )
    {
        if( loadTree.GetAttribute( g_SpriteTagImageName, spriteName ) )
        {
            Image* image = resourceManager->GetImage( spriteName );
            newSprite->SetImage( image );
        }
    }

    return newSprite;
}


} // End NameSpace
