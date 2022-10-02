//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ScreenLoader class.
//
// Authors:     Victor Medrano, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "string.h"
#include "ScreenLoader.h"
#include "..\NamedElements\Screen.h"
#include "..\Helpers\FileName.h"
#include "..\Helpers\OutputMessage.h"
#include "..\Helpers\ResourceFileManager.h"
#include "XML\XMLTree.h"
#include "..\Factories\BaseFactory.h"
#include "..\NamedElements\Project.h"
#include "..\ResourceFiles\PageFile.h"


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
// ScreenLoader::ScreenLoader
//===========================================================================
// Description: ScreenLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ScreenLoader::ScreenLoader()
{
}


//===========================================================================
// ScreenLoader::~ScreenLoader
//===========================================================================
// Description: ScreenLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ScreenLoader::~ScreenLoader()
{
}


//===========================================================================
// ScreenLoader::Load
//===========================================================================
// Description: This is used to load a project from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created project or NULL if an error
//              occured.
//
//===========================================================================

Screen* ScreenLoader::Load( XMLTree &loadTree, Project* theProject )
{
    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new screen
    Screen* newScreen = objectFactory->NewScreen();
    
    if( newScreen == NULL )
    {
        g_OutputMessage.Add( "ScreenLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the project
    newScreen->SetProject( theProject );

    // Load the filename of the screen
    PascalCString screenName;
    if( loadTree.GetFilename( screenName ) )
    {
        newScreen->SetName( screenName );
    }

    // Load the version
    int version;
    if( loadTree.SetCurrentElementByName( g_ScreenTagVersion ) &&  
        loadTree.GetAttribute( g_ScreenTagVersionValue, &version ) )
    {
        newScreen->SetVersion( version );
    }

 
    // Load the list of screens
    XMLTree* pagesTree = loadTree.GetSubTreeByName( g_ScreenTagPages );
    FileName tempFileName;
    PascalCString buffer;
    ResourceFileManager* resourceFileManager = theProject->GetResourceFileManager();

    int i = 0;
    if( pagesTree != NULL )
    {
        while( pagesTree->SetCurrentElementByIndex( i ) )
        {
            if( pagesTree->GetAttribute( g_ScreenTagPagesFile, buffer ) > 0 )
            {
                // Translate to real path before loading
                PascalCString fullPath;
                //fullPath = theProject->GetRootPath();
                //fullPath = theProject->GetPagePath();
                fullPath += buffer;
                tempFileName.Set( fullPath );

                bool pageExportValue;

                if( !pagesTree->GetAttribute( g_ScreenTagPagesExport, &pageExportValue ) )
                {
                    // Set default export to true
                    pageExportValue = true;
                }

                // load the page file.
                PageFile* pageFile = resourceFileManager->GetPageFile( tempFileName,
                                                                       theProject );
                if( pageFile == NULL )
                {
                    // show the out of memory message already.
                    delete newScreen;
                    delete pagesTree;
                    return NULL;
                }

                newScreen->AddPageFile( pageFile, pageExportValue );
            }

            i++;
        }
        delete pagesTree;
    }

    return newScreen;
}


} // End NameSpace
