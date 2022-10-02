//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiText class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include <assert.h>
#include "Movie.h"
#include "Page.h"
#include "Descriptions\MovieDescription.h"
#include "..\Helpers\NameManager.h"
#include "..\Helpers\OutputMessage.h"
#include "..\Helpers\ResourceManager.h"
#include "..\Resources\MovieClip.h"

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
// Movie::Movie
//===========================================================================
// Description: Movie's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Movie::Movie():
    m_MovieClip( NULL )     
{
}

//===========================================================================
// Movie::~Movie
//===========================================================================
// Description: Movie's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Movie::~Movie()
{
}

//===========================================================================
// Movie::Movie
//===========================================================================
// Description: This returns a description of the object without any pointers
//              to other objects.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The pointer to a newly created description (this must be 
//              deleted by the caller),
//              or NULL if the description could not be made.
//
//===========================================================================

DrawingElementDescription* Movie::GetDescription()
{
    MovieDescription* description = new MovieDescription;
    if( description == NULL )
    {
        g_OutputMessage.Add( "Movie::GetDescription: Out of Memory!", 
                             ErrorOutputMessage );
        return NULL;
    }

    Movie::FillInDescription( description );
 
    return description;
}


//===========================================================================
// Movie::SetFromDescription
//===========================================================================
// Description: This sets the state of the element to match that of the
//              passed description.
//
// Constraints:    The page for this element must have been set before this can 
//              be called.
//
// Parameters:    description - Description to set from
//
// Return:      true  - if successful,
//              false - otherwize
//
//===========================================================================

bool Movie::SetFromDescription( DrawingElementDescription* description ) 
{
    MovieDescription* movieDescription = dynamic_cast< MovieDescription* >( description );
    if( movieDescription == NULL )
    {
        g_OutputMessage.Add( "Movie::SetFromDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    assert( false );    //IAN IMPROVE: finish writing this
    #pragma message( "Movie::SetFromDescription - finish writing this!" )
        
    // Set the parent settings
    if( !BoxDrawingElement::SetFromDescription( description ) )
    {
        return false;
    }

    // Set the Movie settings
    ResourceManager* resMan = GetPage()->GetResourceManager();

    return true;
}


//===========================================================================
// Movie::FillInDescription
//===========================================================================
// Description: This fills in the description with settings from this class.
//
// Constraints:    None
//
// Parameters:    description - description to fill.
//
// Return:      true  - if successful,
//              false - otherwize
//
//===========================================================================
bool Movie::FillInDescription( DrawingElementDescription* description )
{
    MovieDescription* movieDescription = dynamic_cast< MovieDescription* >( description );
    if( movieDescription == NULL )
    {
        g_OutputMessage.Add( "Movie::FillInDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    // Fill in parent settings
    BoxDrawingElement::FillInDescription( movieDescription );
    return true;
}

//===========================================================================
// Movie::GetMovieCLip
//===========================================================================
// Description: Gets the movie clip resource associtate with this movie
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      pointer to the movie clip
//
//===========================================================================
MovieClip* Movie::GetMovieClip()
{
    return this->m_MovieClip;
}


//===========================================================================
// Movie::SetMovieClip
//===========================================================================
// Description: sets the movie clip resource associtated with this movie
//
// Constraints:    None
//
// Parameters:    theMovieCLip - pointer ot the movie clip that we're setting
//
// Return:      t/f was this set
//
//===========================================================================
bool Movie::SetMovieClip( MovieClip* theMovieClip )
{
    this->m_MovieClip = theMovieClip;
    return true;
}

//===========================================================================
// Movie::GetMovieClipName
//===========================================================================
// Description: gets the name of the movie clip
//
// Constraints:    None
//
// Parameters:    name - the name of the clip gets put here
//
// Return:      t/f success flag
//
//===========================================================================
bool Movie::GetMovieClipName( PascalCString &name ) const
{
    if( this->m_MovieClip == NULL )
    {
        return false;
    }
    name = this->m_MovieClip->GetName();
    return true;
}

//===========================================================================
// Movie::MakeChunk
//===========================================================================
// Description: Makes a tlDataChunk out of the object
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the tlDataChunk
//
//===========================================================================
tlDataChunk* Movie::MakeChunk() const
{
    assert( false );
    return NULL;
}
} // End NameSpace
