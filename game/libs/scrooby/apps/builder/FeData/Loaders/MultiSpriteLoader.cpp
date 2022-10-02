//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiSpriteLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "MultiSpriteLoader.h"
#include "..\NamedElements\MultiSprite.h"
#include "..\Helpers\OutputMessage.h"
#include "XML\XMLTree.h"
#include "..\Factories\BaseFactory.h"
#include "..\NamedElements\Project.h"
#include "..\NamedElements\Page.h"

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
// MultiSpriteLoader::MultiSpriteLoader
//===========================================================================
// Description: MultiSpriteLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiSpriteLoader::MultiSpriteLoader()
{
}


//===========================================================================
// MultiSpriteLoader::~MultiSpriteLoader
//===========================================================================
// Description: MultiSpriteLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiSpriteLoader::~MultiSpriteLoader()
{
}


//===========================================================================
// MultiSpriteLoader::Load
//===========================================================================
// Description: This is used to load a MultiSprite from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created MultiSprite or NULL if an error
//              occured.
//
//===========================================================================

MultiSprite* MultiSpriteLoader::Load( XMLTree &loadTree, Page* thePage )
{
    PascalCString buffer;

    // Get the project
    Project* theProject = thePage->GetProject();

    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new MultiSprite
    MultiSprite* newMultiSprite = objectFactory->NewMultiSprite();
    
    if( newMultiSprite == NULL )
    {
        g_OutputMessage.Add( "MultiSpriteLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the page
    newMultiSprite->SetPage( thePage );
   

    // Load the list of images
    PascalCString spriteName;
    ResourceManager* resourceManager = thePage->GetResourceManager();
    XMLTree* imagesTree = loadTree.GetSubTreeByName( g_MultiSpriteTagImages );
    if( imagesTree != NULL )
    {
        int i = 0;
        while( imagesTree->SetCurrentElementByIndex( i ) )
        {
            if( imagesTree->GetAttribute( g_MultiSpriteTagImageName, spriteName ) )
            {
                Image* image = resourceManager->GetImage( spriteName );
                newMultiSprite->AddImage( image );
            }

            i++;
        }

        delete imagesTree;
    }

    // Load the current index
    int currentIndex;
    if( loadTree.SetCurrentElementByName( g_MultiSpriteTagCurrentIndex ) )
    {
        if( loadTree.GetAttribute( g_MultiSpriteTagCurrentIndexValue, &currentIndex ) )
        {
            newMultiSprite->SetCurrentImage( currentIndex );
        }
    }

    return newMultiSprite;
}


} // End NameSpace
