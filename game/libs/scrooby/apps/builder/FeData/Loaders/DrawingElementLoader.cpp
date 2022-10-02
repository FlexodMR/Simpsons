//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the DrawingElementLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "DrawingElementLoader.h"
#include "..\NamedElements\DrawingElement.h"
#include "..\NamedElements\BoxDrawingElement.h"
#include "..\NamedElements\Group.h"
#include "..\NamedElements\Polygon.h"
#include "GroupLoader.h"
#include "PolygonLoader.h"
#include "BoxDrawingElementLoader.h"
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
// DrawingElementLoader::DrawingElementLoader
//===========================================================================
// Description: DrawingElementLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DrawingElementLoader::DrawingElementLoader()
{
}


//===========================================================================
// DrawingElementLoader::~DrawingElementLoader
//===========================================================================
// Description: DrawingElementLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DrawingElementLoader::~DrawingElementLoader()
{
}


//===========================================================================
// DrawingElementLoader::Load
//===========================================================================
// Description: This is used to load a drawing element from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created drawing element or NULL if an error
//              occured.
//
//===========================================================================

DrawingElement* DrawingElementLoader::Load( XMLTree &loadTree, Page* thePage )
{
    PascalCString buffer;

    // Get the project
    Project* theProject = thePage->GetProject();

    loadTree.GetName( buffer );

    char string[500];
    PascalCString nameBuffer;
    loadTree.GetAttribute( "name", nameBuffer );
    if( stricmp( buffer, g_DrawingElementTagGroup ) == 0 )
    {
        GroupLoader groupLoader;
        Group* group = groupLoader.Load( loadTree, thePage ); 
    
        return group;
    }
    else if( ( stricmp( buffer, g_DrawingElementTagSprite ) == 0 ) ||
             ( stricmp( buffer, g_DrawingElementTagMultiSprite ) == 0 ) ||
             ( stricmp( buffer, g_DrawingElementTagText ) == 0 ) ||
             ( stricmp( buffer, g_DrawingElementTagMultiText ) == 0 ) ||
             ( stricmp( buffer, g_DrawingElementTagPure3dObject ) == 0 ) ||
             ( stricmp( buffer, g_DrawingElementTagMovie ) == 0 ))
    {
        BoxDrawingElementLoader boxDrawingElementLoader;
        BoxDrawingElement* boxDrawingElement = boxDrawingElementLoader.Load( loadTree, thePage ); 
    
        return boxDrawingElement;
    }
    else if( stricmp( buffer, g_DrawingElementTagPolygon ) == 0 )
    {
        PolygonLoader polygonLoader;
        Polygon* polygon = polygonLoader.Load( loadTree, thePage ); 
    
        return polygon;
    }
    else
    {
        sprintf( string, "Unknown object found!  Name(%s)", nameBuffer );
        g_OutputMessage.Add( string, ErrorOutputMessage );
    }

    return NULL;
}


} // End NameSpace
