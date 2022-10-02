//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MovieSaver class.
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "MovieSaver.h"
#include "BoxDrawingElementSaver.h"
#include "..\Loaders\MovieLoader.h"
#include "..\Loaders\BoxDrawingElementLoader.h"
#include "..\NamedElements\Movie.h"
#include "XMLSaver.h"

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
// MovieSaver::MovieSaver
//===========================================================================
// Description: MovieSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MovieSaver::MovieSaver()
{
}


//===========================================================================
// MovieSaver::~MovieSaver
//===========================================================================
// Description: MovieSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MovieSaver::~MovieSaver()
{
}


//===========================================================================
// MovieSaver::Save
//===========================================================================
// Description: This is used to save a Sprite to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool MovieSaver::Save( Movie* theObject, XMLSaver& theSaver )
{
    bool returnValue = true;

    theSaver.PushElement( g_MovieTag );

    theSaver.AddAttribute( g_BoxDrawingElementTagName, theObject->GetName() );

    // Save the common settings
    BoxDrawingElementSaver saver;
    saver.Save( theObject, theSaver );

    // Save the resource name
    PascalCString resourceName;
    
    theSaver.PushElement( g_MovieTagResource );
    if( !theObject->GetMovieClipName( resourceName ) )
    {
        g_OutputMessage.Add( "MovieSaver::Save - Could not get movieClip name, default to blank!", ErrorOutputMessage );
        theSaver.AddAttribute( g_MovieTagResourceName, "" );
        returnValue = false;
    }
    else
    {
        theSaver.AddAttribute( g_MovieTagResourceName, resourceName );
    }
    theSaver.PopElement();

    theSaver.PopElement(); // End movie

    return returnValue;
}


} // End NameSpace
