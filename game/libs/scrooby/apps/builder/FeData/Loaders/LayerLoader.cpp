//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the LayerLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "LayerLoader.h"
#include "..\NamedElements\Layer.h"
#include "DrawingElementLoader.h"
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
// LayerLoader::LayerLoader
//===========================================================================
// Description: LayerLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

LayerLoader::LayerLoader()
{
}


//===========================================================================
// LayerLoader::~LayerLoader
//===========================================================================
// Description: LayerLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

LayerLoader::~LayerLoader()
{
}


//===========================================================================
// LayerLoader::Load
//===========================================================================
// Description: This is used to load a Layer from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created Layer or NULL if an error
//              occured.
//
//===========================================================================

Layer* LayerLoader::Load( XMLTree &loadTree, Page* thePage )
{
    PascalCString buffer;

    // Get the project
    Project* theProject = thePage->GetProject();

    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new Layer
    Layer* newLayer = objectFactory->NewLayer();

    if( newLayer == NULL )
    {
        g_OutputMessage.Add( "LayerLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the page
    newLayer->SetPage( thePage );


    // Load the version
    if( loadTree.GetAttribute( g_LayerTagName, buffer ) )
    {
        newLayer->SetName( buffer );
    }

    bool visible;
    if( loadTree.GetAttribute( g_LayerTagVisible, &visible ) )
    {
        newLayer->SetVisible( visible );
    }

    bool editable;
    if( loadTree.GetAttribute( g_LayerTagEditable, &editable ) )
    {
        newLayer->SetEditable( editable );
    }

    int alpha;
    if( loadTree.GetAttribute( g_LayerTagAlpha, &alpha ) )
    {
        newLayer->SetAlpha( alpha );
    }

    // Load the list of layers
    XMLTree* drawingElementListTree = loadTree.GetSubTreeByName( g_LayerTagDrawingElements );

    if( drawingElementListTree != NULL )
    {
        int i = 0;
        bool notDone = true;
        while( notDone )
        {
            // We need to get each layer's subtree and work with it
            XMLTree* drawingElementTree = drawingElementListTree->GetSubTreeByIndex( i );
            if( drawingElementTree != NULL )
            {
                DrawingElementLoader drawingElementLoader;
                DrawingElement* drawingElement = drawingElementLoader.Load( *drawingElementTree, thePage ); 
                if( drawingElement == NULL )
                {
                    // Out of memory message already shown.
                    delete newLayer;
                    delete drawingElementTree;
                    delete drawingElementListTree;
                    return NULL;
                }

                newLayer->AddDrawingElement( drawingElement );

                delete drawingElementTree;
                i++;
            }
            else
            {
                // No more layers
                notDone = false;
            }
        }
        delete drawingElementListTree;
    }

    return newLayer;
}


} // End NameSpace
