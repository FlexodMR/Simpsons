//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the VertexLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "VertexLoader.h"
#include "..\Helpers\Vertex.h"
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
// VertexLoader::VertexLoader
//===========================================================================
// Description: VertexLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

VertexLoader::VertexLoader()
{
}


//===========================================================================
// VertexLoader::~VertexLoader
//===========================================================================
// Description: VertexLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

VertexLoader::~VertexLoader()
{
}


//===========================================================================
// VertexLoader::Load
//===========================================================================
// Description: This is used to load a Vertex from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created Vertex or NULL if an error
//              occured.
//
//===========================================================================

Vertex* VertexLoader::Load( XMLTree &loadTree, Page* thePage )
{
    // Get the project
    Project* theProject = thePage->GetProject();
    
    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new Vertex
    Vertex* newVertex = objectFactory->NewVertex();
  
    if( newVertex == NULL )
    {
        g_OutputMessage.Add( "VertexLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    
    // Load the position
    int x;
    int y;
    if( loadTree.SetCurrentElementByName( g_VertexTagPosition ) )
    {
        if( loadTree.GetAttribute( g_VertexTagPositionX, &x ) )
        {
            newVertex->SetX( x );
        }
        
        if( loadTree.GetAttribute( g_VertexTagPositionY, &y ) )
        {
            newVertex->SetY( y );
        }
    }

    // Load the position
    int red;
    int green;
    int blue;
    int alpha;
    if( loadTree.SetCurrentElementByName( g_VertexTagColor ) )
    {
        if( loadTree.GetAttribute( g_VertexTagColorRed, &red ) )
        {
            newVertex->SetRed( red );
        }
        
        if( loadTree.GetAttribute( g_VertexTagColorGreen, &green ) )
        {
            newVertex->SetGreen( green );
        }

        if( loadTree.GetAttribute( g_VertexTagColorBlue, &blue ) )
        {
            newVertex->SetBlue( blue );
        }

        if( loadTree.GetAttribute( g_VertexTagColorAlpha, &alpha ) )
        {
            newVertex->SetAlpha( alpha );
        }
    }

    return newVertex;
}


} // End NameSpace
