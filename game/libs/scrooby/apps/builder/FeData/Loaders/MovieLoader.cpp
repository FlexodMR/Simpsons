//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MovieLoader class.
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "MovieLoader.h"
#include "..\NamedElements\Movie.h"
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
// MovieLoader::MovieLoader
//===========================================================================
// Description: MovieLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MovieLoader::MovieLoader()
{
}


//===========================================================================
// MovieLoader::~MovieLoader
//===========================================================================
// Description: MovieLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MovieLoader::~MovieLoader()
{
}


//===========================================================================
// MovieLoader::Load
//===========================================================================
// Description: This is used to load a Movie from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created Movie or NULL if an error
//              occured.
//
//===========================================================================

Movie* MovieLoader::Load( XMLTree &loadTree, Page* thePage )
{
    PascalCString buffer;

    // Get the project
    Project* theProject = thePage->GetProject();

    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new Movie
    Movie* newMovie = objectFactory->NewMovie();
    
    if( newMovie == NULL )
    {
        g_OutputMessage.Add( "MovieLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the project
    newMovie->SetPage( thePage );

    // Load the resource name
    PascalCString resourceName;
    ResourceManager* resourceManager = thePage->GetResourceManager();
    if( loadTree.SetCurrentElementByName( g_MovieTagResource ) )
    {
        if( loadTree.GetAttribute( g_MovieTagResourceName, resourceName ) )
        {
            MovieClip* resource = resourceManager->GetMovieClip( resourceName );
            newMovie->SetMovieClip( resource );
        }
    }

    return newMovie;
}


} // End NameSpace
