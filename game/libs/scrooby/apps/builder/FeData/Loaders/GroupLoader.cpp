//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GroupLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "GroupLoader.h"
#include "..\NamedElements\Group.h"
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
// GroupLoader::GroupLoader
//===========================================================================
// Description: GroupLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GroupLoader::GroupLoader()
{
}


//===========================================================================
// GroupLoader::~GroupLoader
//===========================================================================
// Description: GroupLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GroupLoader::~GroupLoader()
{
}


//===========================================================================
// GroupLoader::Load
//===========================================================================
// Description: This is used to load a Group from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created Group or NULL if an error
//              occured.
//
//===========================================================================

Group* GroupLoader::Load( XMLTree &loadTree, Page* thePage )
{
    PascalCString buffer;

    // Get the project
    Project* theProject = thePage->GetProject();

    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new Group
    Group* newGroup = objectFactory->NewGroup();
    
    if( newGroup == NULL )
    {
        g_OutputMessage.Add( "GroupLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the page
    newGroup->SetPage( thePage );


    // Load the version
    if( loadTree.GetAttribute( g_GroupTagName, buffer ) )
    {
        newGroup->SetName( buffer );
    }

    int alpha;
    if( loadTree.GetAttribute( g_GroupTagAlpha, &alpha ) )
    {
        newGroup->SetAlpha( alpha );
    }

    // Load the list of Groups
    XMLTree* drawingElementListTree = loadTree.GetSubTreeByName( g_GroupTagDrawingElements );

    if( drawingElementListTree != NULL )
    {
        int i = 0;
        bool notDone = true;
        while( notDone )
        {
            // We need to get each Group's subtree and work with it
            XMLTree* drawingElementTree = drawingElementListTree->GetSubTreeByIndex( i );
            if( drawingElementTree != NULL )
            {
                DrawingElementLoader drawingElementLoader;
                DrawingElement* drawingElement = drawingElementLoader.Load( *drawingElementTree, thePage ); 
                if( drawingElement == NULL )
                {
                    // Out of memory message already shown.
                    delete newGroup;
                    delete drawingElementTree;
                    delete drawingElementListTree;
                    return NULL;
                }

                newGroup->AddDrawingElement( drawingElement );

                delete drawingElementTree;
                i++;
            }
            else
            {
                // No more Groups
                notDone = false;
            }
        }
        delete drawingElementListTree;
    }

    return newGroup;
}


} // End NameSpace
