//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiTextDescription class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "MovieDescription.h"
#include "..\Movie.h"
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
// MovieDescription::MovieDescription
//===========================================================================
// Description: MovieDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MovieDescription::MovieDescription()
{
}


//===========================================================================
// MovieDescription::~MovieDescription
//===========================================================================
// Description: MovieDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MovieDescription::~MovieDescription()
{
}


//===========================================================================
// MovieDescription::AddToTokenList
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
bool MovieDescription::AddToTokenList( TokenList& tokenList )
{
    tokenList.Add( g_MovieDescriptionHeader );
    
    if( !BoxDrawingElementDescription::AddToTokenList( tokenList ) )
    {
        return false;
    }
    tokenList.Add( g_MovieDescriptionFooter );
    return true;
}


//===========================================================================
// MovieDescription::SetFromTokenList
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
bool MovieDescription::SetFromTokenList( TokenList& tokenList )
{
    PascalCString temp;
    
    // Get the header
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "MovieDescription::AddToTokenList: Cannot get header.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_MovieDescriptionHeader )
    {
        g_OutputMessage.Add( "MovieDescription::AddToTokenList: Invalid header.",
                             DebugOutputMessage );
        return false;
    }


    if( !BoxDrawingElementDescription::SetFromTokenList( tokenList ) )
    {
        return false;
    }


    // Get the footer
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "MovieDescription::AddToTokenList: Cannot get footer.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_MovieDescriptionFooter )
    {
        g_OutputMessage.Add( "MovieDescription::AddToTokenList: Invalid footer.",
                             DebugOutputMessage );
        return false;
    }

    // All done
    return true;
}


//===========================================================================
// MovieDescription::CreateHierarchyElement
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

DrawingElement* MovieDescription::CreateHierarchyElement( Page* page )
{
    Project* project = page->GetProject();
    BaseFactory* objectFactory = project->GetObjectFactory();

    Movie* movie = objectFactory->NewMovie();
    if( movie == NULL )
    {
        g_OutputMessage.Add( "MovieDescription::CreateHierarchyElement: Out of Memory!",
                             DebugOutputMessage );
        return NULL;
    }

    movie->SetPage( page );
    movie->SetFromDescription( this );
    return movie;
}

} // End NameSpace
