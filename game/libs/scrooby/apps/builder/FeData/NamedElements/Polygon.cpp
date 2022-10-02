//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Polygon class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include <assert.h>
#include "Polygon.h"
#include "Descriptions\PolygonDescription.h"
#include <tlColour.hpp>
#include <tlScroobyProjectChunk.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================
static const int g_PolygonVersion = 1;

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// Polygon::Polygon
//===========================================================================
// Description: Polygon's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Polygon::Polygon() :
m_translucency( Normal )
{
}


//===========================================================================
// Polygon::~Polygon
//===========================================================================
// Description: Polygon's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Polygon::~Polygon()
{
    for( int i = 0; i < m_VertexList.GetNumberOfElements() ; i++ )
    {
        Vertex* vertex = m_VertexList.GetElement( i );

        if( vertex != NULL )
        {
            delete vertex;
            vertex = NULL;
        }
    }
}

//===========================================================================
// Polygon::GetNumberOfVertexes
//===========================================================================
// Description: Get the number of vertexes for this polygon
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      int - the number
//
//===========================================================================
int Polygon::GetNumberOfVertexes()
{
    return m_VertexList.GetNumberOfElements();
}

//===========================================================================
// Polygon::AddVertex
//===========================================================================
// Description: Add a vertex to the list
//
// Constraints:    None
//
// Parameters:    newVertex - the vertex object
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool Polygon::AddVertex( Vertex* newVertex )
{
    if (GetNumberOfVertexes() == 0)
    {
        m_left   = newVertex->GetX();
        m_right  = newVertex->GetX();
        m_top    = newVertex->GetY();
        m_bottom = newVertex->GetY();
    }
    else
    {
        if( newVertex->GetX() < m_left )
        {
            m_left = newVertex->GetX();
        }
        
        if( newVertex->GetY() > m_top )
        {
            m_top = newVertex->GetY();
        }
        
        if( newVertex->GetX() > m_right )
        {
            m_right = newVertex->GetX();
        }

        if( newVertex->GetY() < m_bottom )
        {
            m_bottom = newVertex->GetY();
        }
    }
    return m_VertexList.AddElementToBack( newVertex );
}

//===========================================================================
// Polygon::RemoveVertex
//===========================================================================
// Description: Remove a vertex from the list
//
// Constraints:    None
//
// Parameters:    index - the index
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool Polygon::RemoveVertex( int index )
{
    Vertex* vertex = m_VertexList.GetElement( index );

    bool rc = m_VertexList.RemoveElement( index );

    // update m_left, m_right, m_top, m_bottom
    if( vertex->GetY() == m_top || vertex->GetY() == m_bottom ||
        vertex->GetX() == m_left || vertex->GetX() == m_right )
    {
        RecalcBorder();
    }

    if( vertex != NULL )
    {
        delete vertex;
        vertex = NULL;
    }

    return rc;
}


//===========================================================================
// Polygon::RecalcBorder
//===========================================================================
// Description: Recalculate the border (m_left, m_right, m_top, m_bottom)
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      None
//
// Note:        Won't do anything if number of vertex < 1
//
//===========================================================================
void Polygon::RecalcBorder()
{
    int totalVertex = m_VertexList.GetNumberOfElements();
    Vertex* currentVertex;

    if( totalVertex != 0 )
    {
        currentVertex = m_VertexList.GetElement(0);
        m_left   = currentVertex->GetX();
        m_right  = currentVertex->GetX();
        m_top     = currentVertex->GetY();
        m_bottom = currentVertex->GetY();

        for( int n = 1; n < totalVertex; n++ )
        {
            currentVertex = m_VertexList.GetElement(n);
             
            if( currentVertex->GetX() < m_left )
            {
                m_left = currentVertex->GetX();
            }

            if( currentVertex->GetY() > m_top )
            {
                m_top = currentVertex->GetY();
            }

            if( currentVertex->GetX() > m_right )
            {
                m_right = currentVertex->GetX();
            }

            if( currentVertex->GetY() < m_bottom )
            {
                m_bottom = currentVertex->GetY();
            }

        }
    }
}


//===========================================================================
// Polygon::GetVertex
//===========================================================================
// Description: Get vertex from list
//
// Constraints:    None
//
// Parameters:    index - the index
//
// Return:      Vertex* - the pointer to vertex
//
//===========================================================================
const Vertex* Polygon::GetVertex( int index )
{
    return m_VertexList.GetElement( index );
}

//===========================================================================
// Polygon::GetTranslucency
//===========================================================================
// Description: Get translucency value
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      TranslucencyEnum - the tranluceny
//
//===========================================================================
TranslucencyEnum Polygon::GetTranslucency()
{
    return m_translucency;
}

//===========================================================================
// Polygon::SetTranslucency
//===========================================================================
// Description: Get vertex from list
//
// Constraints:    None
//
// Parameters:    translucency - the translucency
//
// Return:      None
//
//===========================================================================
void Polygon::SetTranslucency( TranslucencyEnum translucency )
{
    m_translucency = translucency;
}

//===========================================================================
// Polygon::MakeChunk
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
tlDataChunk* Polygon::MakeChunk() const
{
    tlScroobyPolygonChunk* chunk = new tlScroobyPolygonChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( g_PolygonVersion );

    //set the actual array of points for
    const int numberOfVertexes = this->m_VertexList.GetNumberOfElements();
    chunk->SetNumPoints( numberOfVertexes );

    tlPoint* points = new tlPoint[ numberOfVertexes ];
    tlColour* colours = new tlColour[ numberOfVertexes ];
    int i;
    for( i = 0; i < numberOfVertexes; i++ )
    {
        Vertex* v = this->m_VertexList[ i ];
        points[ i ].x = v->GetX();
        points[ i ].y = v->GetY();
        points[ i ].z = 0.0;
        colours[ i ].red = v->GetRed() / 255.0;
        colours[ i ].green = v->GetGreen() / 255.0 ;
        colours[ i ].blue = v->GetBlue() / 255.0;
        colours[ i ].alpha = v->GetAlpha() / 255.0;
    }
    chunk->SetPoints( points, numberOfVertexes );
    chunk->SetColors( colours, numberOfVertexes );
    return chunk;
}
//===========================================================================
// Polygon::Move
//===========================================================================
// Description: This is used to move the element by dx and dy
//
// Constraints:    None
//
// Parameters:    dx, dy - amount to move by
//
// Return:      true if successful
//
//===========================================================================
bool Polygon::Move( int dx, int dy )
{
     for( int i = 0; i < GetNumberOfVertexes(); i++ )
    {
        Vertex* vertex = m_VertexList.GetElement( i );

        if( vertex != NULL )
        {
            vertex->SetX( vertex->GetX() + dx );
            vertex->SetY( vertex->GetY() + dy );
        }
        else
        {
            g_OutputMessage.Add( "Polygon::Move: Invalid vertex detected!", 
                                 ErrorOutputMessage );
            return false;
        }
    }
    m_left   += dx;
    m_right  += dx;
    m_top    += dy;
    m_bottom += dy;

    return true;
}


//===========================================================================
// Polygon::SetVertexXY
//===========================================================================
// Description: This is used to set a vertex to x and y
//
// Constraints:    None
//
// Parameters:    index - vertex to set
//                x, y - new vertex location
//
// Return:      true if successful
//
//===========================================================================

bool Polygon::SetVertexXY( int index, int x, int y )
{
    Vertex* vertex = m_VertexList.GetElement( index );
    
    if( vertex != NULL )
    {
        vertex->SetX(x);
        vertex->SetY(y);

        RecalcBorder();
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// Polygon::SetVertexRed
//===========================================================================
// Description: This is used to set a vertex Red value
//
// Constraints:    None
//
// Parameters:    index - vertex to set
//                red - new vertex red value
//
// Return:      true if successful
//
//===========================================================================

bool Polygon::SetVertexRed( int index, int red )
{
    Vertex* vertex = m_VertexList.GetElement( index );
    
    if( vertex != NULL )
    {
        vertex->SetRed(red);
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// Polygon::SetVertexGreen
//===========================================================================
// Description: This is used to set a vertex Green value
//
// Constraints:    None
//
// Parameters:    index - vertex to set
//                red - new vertex green value
//
// Return:      true if successful
//
//===========================================================================

bool Polygon::SetVertexGreen( int index, int green )
{
    Vertex* vertex = m_VertexList.GetElement( index );
    
    if( vertex != NULL )
    {
        vertex->SetGreen( green );
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// Polygon::SetVertexBlue
//===========================================================================
// Description: This is used to set a vertex Blue value
//
// Constraints:    None
//
// Parameters:    index - vertex to set
//                red - new vertex blue value
//
// Return:      true if successful
//
//===========================================================================

bool Polygon::SetVertexBlue( int index, int blue )
{
    Vertex* vertex = m_VertexList.GetElement( index );
    
    if( vertex != NULL )
    {
        vertex->SetBlue( blue );
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// Polygon::SetVertexAlpha
//===========================================================================
// Description: This is used to set a vertex Alpha value
//
// Constraints:    None
//
// Parameters:    index - vertex to set
//                red - new vertex alpha value
//
// Return:      true if successful
//
//===========================================================================

bool Polygon::SetVertexAlpha( int index, int alpha )
{
    Vertex* vertex = m_VertexList.GetElement( index );
    
    if( vertex != NULL )
    {
        vertex->SetAlpha( alpha );
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// Polygon::GetBoundingLeft
//===========================================================================
// Description: This is used to get the left most point of the bounding box.
//
// Constraints:    None
//
// Parameters:    left - the paramater to compare with and change.
//
// Return:      true  - if the element had a posible bounding box value.
//
//===========================================================================

bool Polygon::GetBoundingLeft( int& left )
{
    if( m_left < left )
    {
        left = m_left;
    }
    return true;
}


//===========================================================================
// Polygon::GetBoundingTop
//===========================================================================
// Description: This is used to get the top most point of the bounding box.
//
// Constraints:    None
//
// Parameters:    top - the paramater to compare with and change.
//
// Return:      true  - if the element had a posible bounding box value.
//
//===========================================================================

bool Polygon::GetBoundingTop( int& top )
{
    if( m_top > top )
    {
        top = m_top;
    }
    return true;
}


//===========================================================================
// Polygon::GetBoundingRight
//===========================================================================
// Description: This is used to get the right most point of the bounding box.
//
// Constraints:    None
//
// Parameters:    right - the paramater to compare with and change.
//
// Return:      true  - if the element had a posible bounding box value.
//
//===========================================================================

bool Polygon::GetBoundingRight( int& right )
{
    if( (m_right + 1) > right )
    {
        right = m_right + 1;
    }
    return true;
}


//===========================================================================
// Polygon::GetBoundingBottom
//===========================================================================
// Description: This is used to get the bottom most point of the bounding box.
//
// Constraints:    None
//
// Parameters:    bottom - the paramater to compare with and change.
//
// Return:      true  - if the element had a posible bounding box value.
//
//===========================================================================

bool Polygon::GetBoundingBottom( int& bottom )
{
    if( (m_bottom - 1) < bottom )
    {
        bottom = (m_bottom - 1);
    }
    return true;
}


//===========================================================================
// Polygon::GetDescription
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

DrawingElementDescription* Polygon::GetDescription()
{
    PolygonDescription* description = new PolygonDescription;
    if( description == NULL )
    {
        g_OutputMessage.Add( "Polygon::GetDescription: Out of Memory!", 
                             ErrorOutputMessage );
        return NULL;
    }

    // Fill in parent settings
    DrawingElement::FillInDescription( description );

    // Set this class's settings
    description->SetTranslucency( GetTranslucency() );
    
    // Copy all the vertexs over
    for( int i = 0; i < m_VertexList.GetNumberOfElements() ; i++ )
    {
        Vertex* vertex = m_VertexList.GetElement( i );

        Vertex* newVertex = new Vertex( *vertex );
        if( newVertex == NULL )
        {
            g_OutputMessage.Add( "Polygon::GetDescription: Out of Memory!", 
                                 ErrorOutputMessage );
            delete description;
            return NULL;
        }

        description->AddVertex( newVertex );
    }
    
    return description;
}


//===========================================================================
// Polygon::SetFromDescription
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

bool Polygon::SetFromDescription( DrawingElementDescription* description ) 
{
    PolygonDescription* polygonDescription = dynamic_cast< PolygonDescription* >( description );
    if( polygonDescription == NULL )
    {
        g_OutputMessage.Add( "Polygon::SetFromDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    // Remove the old vertexes
    while( GetNumberOfVertexes() > 0 )
    {
        RemoveVertex( 0 );
    }

    // Set the parent settings
    if( !DrawingElement::SetFromDescription( description ) )
    {
        return false;
    }

    // Set the polygon settings
    SetTranslucency( polygonDescription->GetTranslucency() );

    for( int i = 0; i < polygonDescription->GetNumberOfVertexes(); i++ )
    {
        Vertex* newVertex = new Vertex();
        if( newVertex == NULL )
        {
            g_OutputMessage.Add( "Polygon::SetFromDescription: Out of Memory!", 
                                  ErrorOutputMessage );
            return false;
        }

        *newVertex = *(polygonDescription->GetVertex( i ));
        AddVertex( newVertex );
    }
    return true;
}


} // End NameSpace
