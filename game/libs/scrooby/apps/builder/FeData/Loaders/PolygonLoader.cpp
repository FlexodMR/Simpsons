//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PolygonLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "PolygonLoader.h"
#include "VertexLoader.h"
#include "..\NamedElements\Polygon.h"
#include "..\Helpers\Vertex.h"
#include "..\Helpers\EnumConversion.h"
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
// PolygonLoader::PolygonLoader
//===========================================================================
// Description: PolygonLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PolygonLoader::PolygonLoader()
{
}


//===========================================================================
// PolygonLoader::~PolygonLoader
//===========================================================================
// Description: PolygonLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PolygonLoader::~PolygonLoader()
{
}


//===========================================================================
// PolygonLoader::Load
//===========================================================================
// Description: This is used to load a Polygon from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created Polygon or NULL if an error
//              occured.
//
//===========================================================================

Polygon* PolygonLoader::Load( XMLTree &loadTree, Page* thePage )
{
    PascalCString buffer;

    // Get the project
    Project* theProject = thePage->GetProject();

    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new Polygon
    Polygon* newPolygon = objectFactory->NewPolygon();
    
    if( newPolygon == NULL )
    {
        g_OutputMessage.Add( "PolygonLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the page
    newPolygon->SetPage( thePage );


    // Load the version
    if( loadTree.GetAttribute( g_PolygonTagName, buffer ) )
    {
        newPolygon->SetName( buffer );
    }

    // Load the translucency
    if( loadTree.SetCurrentElementByName( g_PolygonTagTranslucency ) &&
        loadTree.GetAttribute( g_PolygonTagValue, buffer ) )
    {
        newPolygon->SetTranslucency( StringToTranslucencyEnum( buffer ) );
    }

    // Load the list of Vertexes
    XMLTree* vertexListTree = loadTree.GetSubTreeByName( g_PolygonTagVertexes );
    int i = 0;
    if( vertexListTree != NULL )
    {
        int i = 0;
        bool notDone = true;
        while( notDone )
        {
            // We need to get each vertexe's subtree and work with it
            XMLTree* vertexTree = vertexListTree->GetSubTreeByIndex( i );
            if( vertexTree != NULL )
            {
                VertexLoader vertexLoader;
                Vertex* vertex = vertexLoader.Load( *vertexTree, thePage ); 
                if( vertex == NULL )
                {
                    // Out of memory message already shown.
                    delete newPolygon;  // clean up
                    delete vertexListTree;
                    return NULL;
                }

                newPolygon->AddVertex( vertex );

                delete vertexTree;
                i++;
            }
            else
            {
                // No more Polygons
                notDone = false;
            }
        }
        delete vertexListTree;
    }

    return newPolygon;
}


} // End NameSpace
