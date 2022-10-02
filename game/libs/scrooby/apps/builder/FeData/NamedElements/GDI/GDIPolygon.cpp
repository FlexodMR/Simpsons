//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDIPolygon class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "stdafx.h"
#include "GDIPolygon.h"
#include "..\..\Helpers\OutputMessage.h"
#include "..\..\DrawingContexts\GDIDrawingContext.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

namespace FeData
{
    const int GDIPolygon::m_maxVertexesToDraw = 10;
}

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// GDIPolygon::GDIPolygon
//===========================================================================
// Description: GDIPolygon's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIPolygon::GDIPolygon()
{    
}


//===========================================================================
// GDIPolygon::~GDIPolygon
//===========================================================================
// Description: GDIPolygon's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GDIPolygon::~GDIPolygon()
{
}


//===========================================================================
// GDIPolygon::Draw
//===========================================================================
// Description: This is used to draw the drawing element.
//
// Constraints:    None
//
// Parameters:    theDrawingContext - The drawing context used to draw the
//                                  element.
//
// Return:      true  - if successful
//              false - otherwise.
//
//===========================================================================

bool GDIPolygon::Draw( DrawingContext* theDrawingContext )
{
    GDIDrawingContext* theGDI = dynamic_cast<GDIDrawingContext*>(theDrawingContext);

    // Make sure the Drawing Context is the correct kind.
    if( theGDI != NULL )
    {
        // Do the drawing
        CDC *theCDC = theGDI->GetCDC();

        const Vertex* vertex0 = GetVertex( 0 );
        if( vertex0 == NULL )
        {
            g_OutputMessage.Add( "GDIPolygon::Draw: Invalid vertex detected!", 
                                 ErrorOutputMessage );
        }
        else
        {
            DWORD vertex0RGB = RGB( vertex0->GetRed(), vertex0->GetGreen(), vertex0->GetBlue() );
            CPen pen(PS_SOLID, 0, vertex0RGB );
            CBrush brush( vertex0RGB );

            theCDC->SetPolyFillMode(WINDING);
            CPen* oldPen = theCDC->SelectObject( &pen );
            CBrush* oldBrush = theCDC->SelectObject( &brush );

            CPoint tempVertexes[m_maxVertexesToDraw];
            int numVertexesToDraw = min( GetNumberOfVertexes(), m_maxVertexesToDraw );

            int i;
            for( i = 0; i < numVertexesToDraw; i++ )
            {
                int iPlusOne = ( ( (i+1) == numVertexesToDraw ) ? 0 : i+1 );
                const Vertex* vertex = GetVertex( i );
                const Vertex* vertexNext = GetVertex( iPlusOne );
                if( (vertex != NULL) && (vertexNext != NULL) )
                {
                    tempVertexes[i].x = vertex->GetX();
                    tempVertexes[i].y = GetYResolution() - vertex->GetY();
                }
                else
                {
                    g_OutputMessage.Add( "GDIPolygon::Draw: Invalid vertex detected!", 
                                         ErrorOutputMessage );
                }
            }

            theCDC->Polygon( tempVertexes, GetNumberOfVertexes() );
            theCDC->SelectObject( oldPen );
            theCDC->SelectObject( oldBrush );


            for( i = 0; i < numVertexesToDraw; i++ )
            {
                int iPlusOne = ( ( (i+1) == numVertexesToDraw ) ? 0 : i+1 );
                const Vertex* vertex = GetVertex( i );
                const Vertex* vertexNext = GetVertex( iPlusOne );
                if( (vertex != NULL) && (vertexNext != NULL) )
                {
                    // Draw first half
                    CPen linePen1( PS_SOLID, 1, RGB( vertex->GetRed(), vertex->GetGreen(), vertex->GetBlue() ) );
                    CPen* savePen = theCDC->SelectObject( &linePen1 );
                    
                    theCDC->MoveTo( vertex->GetX(), GetYResolution() - vertex->GetY() );
                    theCDC->LineTo( ( vertex->GetX() + vertexNext->GetX() ) / 2,
                                    ( GetYResolution() - vertex->GetY() + GetYResolution() - vertexNext->GetY() ) / 2 );

                    // Draw second half
                    CPen linePen2( PS_SOLID, 1, RGB( vertexNext->GetRed(), vertexNext->GetGreen(), vertexNext->GetBlue() ) );
                    theCDC->SelectObject( &linePen2 );

                    theCDC->MoveTo( ( vertex->GetX() + vertexNext->GetX() ) / 2,
                                    ( GetYResolution() - vertex->GetY() + GetYResolution() - vertexNext->GetY() ) / 2 );
                    theCDC->LineTo( vertexNext->GetX(), GetYResolution() - vertexNext->GetY() );

                    theCDC->SelectObject( savePen );
                }
                else
                {
                    g_OutputMessage.Add( "GDIPolygon::Draw: Invalid vertex detected!", 
                                         ErrorOutputMessage );
                }
            }
        }
        return true;
    }
    else
    {
        g_OutputMessage.Add( "GDIPolygon::Draw: Bad GDIDrawingContext!", 
                             ErrorOutputMessage );
        return false;
    }
}


//===========================================================================
// GDIPolygon::GetDrawingElementUnderLocation
//===========================================================================
// Description: This is used to find the first drawing element that is under
//              the given location.
//
// Constraints:    None
//
// Parameters:    x - x co-ordinate of the location.
//              y - y co-ordinate of the location.
//
// Return:      A pointer to the first found drawing element or NULL if no 
//              elements are under the location.
//
//===========================================================================

DrawingElement* GDIPolygon::GetDrawingElementUnderLocation( int x, int y )
{
    CRgn polygonRegion;

    POINT* points = new POINT[ GetNumberOfVertexes() ];
    if( points == NULL )
    {
        g_OutputMessage.Add( "GDIPolygon::GetDrawingElementUnderLocation: Out of Memory!", 
                             ErrorOutputMessage );
        return NULL;
    }

    for( int i = 0; i < GetNumberOfVertexes(); i++ )
    {
        const Vertex* vertex = GetVertex( i );
        if( vertex != NULL )
        {
            points[i].x = vertex->GetX();
            points[i].y = vertex->GetY();
        }
    }

    if( !polygonRegion.CreatePolygonRgn( points, 
                                         GetNumberOfVertexes(),
                                         WINDING ) )
    {
        g_OutputMessage.Add( "GDIPolygon::GetDrawingElementUnderLocation: Out of Memory!", 
                             ErrorOutputMessage );
        return NULL;
    }
    
    if( polygonRegion.PtInRegion( x, y ) )
    {
        delete [] points;
        return this;
    }
    else
    {
        delete [] points;
        return NULL;
    }
    
}


} // End NameSpace
