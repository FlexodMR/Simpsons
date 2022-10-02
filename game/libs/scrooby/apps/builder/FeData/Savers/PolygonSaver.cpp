//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PolygonSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "PolygonSaver.h"
#include "..\Loaders\PolygonLoader.h"
#include "..\Loaders\VertexLoader.h"
#include "..\Helpers\EnumConversion.h"
#include "..\NamedElements\Polygon.h"
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
// PolygonSaver::PolygonSaver
//===========================================================================
// Description: PolygonSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PolygonSaver::PolygonSaver()
{
}


//===========================================================================
// PolygonSaver::~PolygonSaver
//===========================================================================
// Description: PolygonSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PolygonSaver::~PolygonSaver()
{
}


//===========================================================================
// PolygonSaver::Save
//===========================================================================
// Description: This is used to save a Polygon to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool PolygonSaver::Save( Polygon* thePolygon, XMLSaver& theSaver )
{
    theSaver.PushElement( g_PolygonTag );

    theSaver.AddAttribute( g_PolygonTagName, thePolygon->GetName() );

    theSaver.PushElement( g_PolygonTagTranslucency );
    theSaver.AddAttribute( g_PolygonTagValue, 
                           TranslucencyEnumToString( thePolygon->GetTranslucency() ) );
    theSaver.PopElement();

    // Save the vertexs
    theSaver.PushElement( g_PolygonTagVertexes );
    int numVertexes = thePolygon->GetNumberOfVertexes();
    for( int i=0; i<numVertexes; i++ )
    {
        theSaver.PushElement( g_VertexTag );

        const Vertex* vertex = thePolygon->GetVertex( i );
        if( vertex != NULL )
        {
            theSaver.PushElement( g_VertexTagPosition );
            theSaver.AddAttribute( g_VertexTagPositionX, vertex->GetX() );
            theSaver.AddAttribute( g_VertexTagPositionY, vertex->GetY() );
            theSaver.PopElement();

            theSaver.PushElement( g_VertexTagColor );
            theSaver.AddAttribute( g_VertexTagColorRed, vertex->GetRed() );
            theSaver.AddAttribute( g_VertexTagColorGreen, vertex->GetGreen() );
            theSaver.AddAttribute( g_VertexTagColorBlue, vertex->GetBlue() );
            theSaver.AddAttribute( g_VertexTagColorAlpha, vertex->GetAlpha() );
            theSaver.PopElement();
        }
        else
        {
            g_OutputMessage.Add( "Invalid vertex for polygon!  Abort saving this vertex!", ErrorOutputMessage );
        }
        
        theSaver.PopElement();  // End vertex
    }
    theSaver.PopElement();  // End Vertexes

    theSaver.PopElement();  // End polygon

    return true;
}


} // End NameSpace
