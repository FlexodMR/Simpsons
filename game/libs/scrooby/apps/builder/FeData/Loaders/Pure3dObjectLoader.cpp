//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dObjectLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "Pure3dObjectLoader.h"
#include "..\NamedElements\Pure3dObject.h"
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
// Pure3dObjectLoader::Pure3dObjectLoader
//===========================================================================
// Description: Pure3dObjectLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Pure3dObjectLoader::Pure3dObjectLoader()
{
}


//===========================================================================
// Pure3dObjectLoader::~Pure3dObjectLoader
//===========================================================================
// Description: Pure3dObjectLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Pure3dObjectLoader::~Pure3dObjectLoader()
{
}


//===========================================================================
// Pure3dObjectLoader::Load
//===========================================================================
// Description: This is used to load a Pure3dObject from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created Pure3dObject or NULL if an error
//              occured.
//
//===========================================================================

Pure3dObject* Pure3dObjectLoader::Load( XMLTree &loadTree, Page* thePage )
{
    PascalCString buffer;

    // Get the project
    Project* theProject = thePage->GetProject();

    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new Pure3dObject
    Pure3dObject* newObject = objectFactory->NewPure3dObject();
    
    if( newObject == NULL )
    {
        g_OutputMessage.Add( "Pure3dObjectLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the project
    newObject->SetPage( thePage );

    // Load the resource name
    PascalCString resourceName;
    ResourceManager* resourceManager = thePage->GetResourceManager();
    if( loadTree.SetCurrentElementByName( g_Pure3dObjectTagResource ) )
    {
        if( loadTree.GetAttribute( g_Pure3dObjectTagResourceName, resourceName ) )
        {
            Pure3dFile* resource = resourceManager->GetPure3dFile( resourceName );
            newObject->SetPure3dFile( resource );
        }
    }

    return newObject;
}


} // End NameSpace
