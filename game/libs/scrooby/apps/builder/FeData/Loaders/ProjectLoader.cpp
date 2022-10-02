//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ProjectLoader class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "string.h"
#include "ProjectLoader.h"
#include "..\NamedElements\Project.h"
#include "..\Helpers\FileName.h"
#include "..\Helpers\OutputMessage.h"
#include "XML\XMLTree.h"
#include "..\Factories\BaseFactory.h"

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
// ProjectLoader::ProjectLoader
//===========================================================================
// Description: ProjectLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ProjectLoader::ProjectLoader()
{
}


//===========================================================================
// ProjectLoader::~ProjectLoader
//===========================================================================
// Description: ProjectLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ProjectLoader::~ProjectLoader()
{
}


//===========================================================================
// ProjectLoader::Load
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

Project* ProjectLoader::Load( XMLTree &loadTree, BaseFactory* objectFactory )
{
    PascalCString buffer;

    // Create the new project
    Project* newProject = objectFactory->NewProject();
    
    if( newProject == NULL )
    {
        g_OutputMessage.Add( "ProjectLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }


    // Set the ObjectFactory
    newProject->SetObjectFactory( objectFactory );


    // Save the filename
    PascalCString filename;
    if( loadTree.GetFilename( filename ) )
    {
        newProject->SetName( filename );
    }

    // Save the path
    FileName tempFileName;
    PascalCString pathName;
    tempFileName.Set( PascalCString( filename ) );
    tempFileName.GetPath( pathName );
    newProject->SetRootPath( pathName );

    // Load the version
    int version;
    if( loadTree.SetCurrentElementByName( g_ProjectTagVersion ) &&  
        loadTree.GetAttribute( g_ProjectTagVersionValue, &version ) )
    {
        newProject->SetVersion( version );
    }

    // Load the resolution
    int width;
    int height;
    if( loadTree.SetCurrentElementByName( g_ProjectTagResolution ) )
    {
        if( loadTree.GetAttribute( g_ProjectTagResolutionWidth, &width ) )
        {
            newProject->SetResolutionWidth( width );
        }

        if( loadTree.GetAttribute( g_ProjectTagResolutionHeight, &height ) )
        {
            newProject->SetResolutionHeight( height );
        }
    }
    

    // Load the platform
    if( loadTree.SetCurrentElementByName( g_ProjectTagPlatform ) &&  
        loadTree.GetAttribute( g_ProjectTagPlatformValue, buffer ) )
    {
        newProject->SetPlatform( buffer );
    }

    // Load the screen path
    if( loadTree.SetCurrentElementByName( g_ProjectTagScreenPath ) &&  
        loadTree.GetAttribute( g_ProjectTagScreenPathValue, buffer ) )
    {
        newProject->SetScreenPath( buffer );
    }

    // Load the page path
    if( loadTree.SetCurrentElementByName( g_ProjectTagPagePath ) &&  
        loadTree.GetAttribute( g_ProjectTagPagePathValue, buffer ) )
    {
        newProject->SetPagePath( buffer );
    }

    // Load the resource path
    if( loadTree.SetCurrentElementByName( g_ProjectTagResourcePath ) &&  
        loadTree.GetAttribute( g_ProjectTagResourcePathValue, buffer ) )
    {
        newProject->SetResourcePath( buffer );
    }


    // Load the list of screens
    XMLTree* screensTree = loadTree.GetSubTreeByName( g_ProjectTagScreens );
    int i = 0;
    if( screensTree != NULL )
    {
        while( screensTree->SetCurrentElementByIndex( i ) )
        {
            if( screensTree->GetAttribute( g_ProjectTagScreensFile, buffer ) > 0 )
            {
                tempFileName.Set( buffer );
                newProject->AddScreenFileName( tempFileName );
            }

            i++;
        }
        delete screensTree;
    }

    return newProject;
}


} // End NameSpace
