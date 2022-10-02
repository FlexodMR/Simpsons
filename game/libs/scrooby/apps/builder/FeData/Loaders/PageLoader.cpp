//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PageLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "PageLoader.h"
#include "..\NamedElements\Page.h"
#include "LayerLoader.h"
#include "..\Helpers\OutputMessage.h"
#include "XML\XMLTree.h"
#include "..\Factories\BaseFactory.h"
#include "..\NamedElements\Project.h"

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
// PageLoader::PageLoader
//===========================================================================
// Description: PageLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PageLoader::PageLoader()
{
}


//===========================================================================
// PageLoader::~PageLoader
//===========================================================================
// Description: PageLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PageLoader::~PageLoader()
{
}


//===========================================================================
// PageLoader::Load
//===========================================================================
// Description: This is used to load a Page from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created Page or NULL if an error
//              occured.
//
//===========================================================================

Page* PageLoader::Load( XMLTree &loadTree, Project* theProject )
{
    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new Page
    Page* newPage = objectFactory->NewPage();
    
    if( newPage == NULL )
    {
        g_OutputMessage.Add( "PageLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the project
    newPage->SetProject( theProject );


    // Load the filename of the page
    PascalCString pageName;
    if( loadTree.GetFilename( pageName ) )
    {
        newPage->SetName( pageName );
    }

    // Load the version
    int version;
    if( loadTree.SetCurrentElementByName( g_PageTagVersion ) &&  
        loadTree.GetAttribute( g_PageTagVersionValue, &version ) )
    {
        newPage->SetVersion( version );
    }

    // Load the resolution
    int width;
    int height;
    if( loadTree.SetCurrentElementByName( g_PageTagResolution ) )
    {
        if( loadTree.GetAttribute( g_PageTagResolutionWidth, &width ) )
        {
            newPage->SetResolutionWidth( width );
        }

        if( loadTree.GetAttribute( g_PageTagResolutionHeight, &height ) )
        {
            newPage->SetResolutionHeight( height );
        }
    }

    // Resource loading
    XMLTree* resourcesTree = loadTree.GetSubTreeByName( g_PageTagResources );
    if( resourcesTree != NULL )
    {
        ResourceManager* resourceManager = newPage->GetResourceManager();
        PascalCString resourceName;
        PascalCString resourceData;
        FileName tempFileName;

        // Image loading
        XMLTree* imagesTree = resourcesTree->GetSubTreeByName( g_PageTagResourcesImages );
        if( imagesTree != NULL )
        {
            int i = 0;
            while( imagesTree->SetCurrentElementByIndex( i ) )
            {
                imagesTree->GetAttribute( g_PageTagResourcesName, resourceName );
                imagesTree->GetAttribute( g_PageTagResourcesData, resourceData );
                tempFileName.Set( resourceData );

                resourceManager->AddImage( resourceName, tempFileName, theProject );
                i++;
            }
            delete imagesTree;
        }

        // MovieClip loading
        XMLTree* movieClipTree = resourcesTree->GetSubTreeByName( g_PageTagResourcesMovieClips );
        if( movieClipTree != NULL )
        {
            int i = 0;
            while( movieClipTree->SetCurrentElementByIndex( i ) )
            {
                movieClipTree->GetAttribute( g_PageTagResourcesName, resourceName );
                movieClipTree->GetAttribute( g_PageTagResourcesData, resourceData );
                tempFileName.Set( resourceData );
                resourceManager->AddMovieClip( resourceName, tempFileName, theProject );
                i++;
            }
            delete movieClipTree;
        }

        // Pure3dFile loading
        XMLTree* Pure3dFileTree = resourcesTree->GetSubTreeByName( g_PageTagResourcesPure3dFiles );
        if( Pure3dFileTree != NULL )
        {
            int i = 0;
            while( Pure3dFileTree->SetCurrentElementByIndex( i ) )
            {
                PascalCString inventoryName;
                PascalCString cameraName;
                PascalCString animationName;
                Pure3dFileTree->GetAttribute( g_PageTagResourcesName, resourceName );
                Pure3dFileTree->GetAttribute( g_PageTagResourcesData, resourceData );
                Pure3dFileTree->GetAttribute( g_PageTagResourcesP3dInvent, inventoryName );
                Pure3dFileTree->GetAttribute( g_PageTagResourcesP3dCamera, cameraName );
                Pure3dFileTree->GetAttribute( g_PageTagResourcesP3dAnim, animationName );
                tempFileName.Set( resourceData );
                resourceManager->AddPure3dFile
                ( 
                    resourceName, 
                    inventoryName,
                    cameraName,
                    animationName,
                    tempFileName, 
                    theProject 
                );
                i++;
            }
            delete Pure3dFileTree;
        }

        // TextBible loading
        XMLTree* textBibleTree = resourcesTree->GetSubTreeByName( g_PageTagResourcesTextBibles );
        if( textBibleTree != NULL )
        {
            int i = 0;
            while( textBibleTree->SetCurrentElementByIndex( i ) )
            {
                textBibleTree->GetAttribute( g_PageTagResourcesName, resourceName );
                textBibleTree->GetAttribute( g_PageTagResourcesData, resourceData );
                tempFileName.Set( resourceData );

                resourceManager->AddTextBible( resourceName, tempFileName, theProject );

                i++;
            }
            delete textBibleTree;
        }

        // TextStyle loading
        XMLTree* textStyleTree = resourcesTree->GetSubTreeByName( g_PageTagResourcesTextStyles );
        if( textStyleTree != NULL )
        {
            int i = 0;
            while( textStyleTree->SetCurrentElementByIndex( i ) )
            {
                textStyleTree->GetAttribute( g_PageTagResourcesName, resourceName );
                textStyleTree->GetAttribute( g_PageTagResourcesData, resourceData );

                tempFileName.Set( resourceData );
                resourceManager->AddTextStyle( resourceName, tempFileName, theProject );

                i++;
            }
            delete textStyleTree;
        }


        delete resourcesTree;
    }


    // Load the list of layers
    XMLTree* layerListTree = loadTree.GetSubTreeByName( g_PageTagLayers );
    if( layerListTree != NULL )
    {
        int i = 0;
        bool notDone = true;
        while( notDone )
        {
            // We need to get each layer's subtree and work with it
            XMLTree* layerTree = layerListTree->GetSubTreeByIndex( i );
            if( layerTree != NULL )
            {
                LayerLoader layerLoader;
                Layer* layer = layerLoader.Load( *layerTree, newPage ); 
                if( layer == NULL )
                {
                    // Out of memory message already shown.
                    delete newPage;
                    delete layerListTree;
                    return NULL;
                }
                            
                newPage->AddLayer( layer );

                delete layerTree;
                i++;
            }
            else
            {
                // No more layers
                notDone = false;
            }
        }
        delete layerListTree;
    }

    return newPage;
}


} // End NameSpace
