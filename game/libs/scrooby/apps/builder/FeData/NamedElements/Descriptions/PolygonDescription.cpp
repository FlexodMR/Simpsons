//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PolygonDescription class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "PolygonDescription.h"
#include "..\Page.h"
#include "..\Polygon.h"
#include "..\Project.h"
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
// PolygonDescription::PolygonDescription
//===========================================================================
// Description: PolygonDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PolygonDescription::PolygonDescription() :
m_translucency( Normal )
{
}


//===========================================================================
// PolygonDescription::~PolygonDescription
//===========================================================================
// Description: PolygonDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PolygonDescription::~PolygonDescription()
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
// PolygonDescription::AddToTokenList
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
bool PolygonDescription::AddToTokenList( TokenList& tokenList )
{
    tokenList.Add( g_PolygonDescriptionHeader );
    
    if( !DrawingElementDescription::AddToTokenList( tokenList ) )
    {
        return false;
    }

    tokenList.Add( m_translucency );

    // Add the vertexs
    tokenList.Add( m_VertexList.GetNumberOfElements() );

    for( int i = 0; i < m_VertexList.GetNumberOfElements(); i++ )
    {
        Vertex* vertex = m_VertexList.GetElement( i );

        tokenList.Add( vertex->GetX() );
        tokenList.Add( vertex->GetY() );
        tokenList.Add( vertex->GetRed() );
        tokenList.Add( vertex->GetGreen() );
        tokenList.Add( vertex->GetBlue() );
        tokenList.Add( vertex->GetAlpha() );
    }

    tokenList.Add( g_PolygonDescriptionFooter );
    return true;
}


//===========================================================================
// PolygonDescription::SetFromTokenList
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
bool PolygonDescription::SetFromTokenList( TokenList& tokenList )
{
    PascalCString temp;
    int tempInt = 0;
    
    // Get the header
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "PolygonDescription::AddToTokenList: Cannot get header.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_PolygonDescriptionHeader )
    {
        g_OutputMessage.Add( "PolygonDescription::AddToTokenList: Invalid header.",
                             DebugOutputMessage );
        return false;
    }

    if( !DrawingElementDescription::SetFromTokenList( tokenList ) )
    {
        return false;
    }
 

    // Get the translucency
    if( !tokenList.GetNext( tempInt ) )
    {
        g_OutputMessage.Add( "PolygonDescription::AddToTokenList: Cannot get translucency.",
                             DebugOutputMessage );
        return false;
    }
    
    m_translucency = (TranslucencyEnum)tempInt;


    // Get the number of vertexs
    int numberOfVertexs = 0;
    if( !tokenList.GetNext( numberOfVertexs ) )
    {
        g_OutputMessage.Add( "PolygonDescription::AddToTokenList: Cannot get the number of vertexs.",
                             DebugOutputMessage );
        return false;
    }

    // Get the vertexs
    for( int i = 0; i < numberOfVertexs; i++ )
    {
        Vertex* vertex = new Vertex;

        int x = 0;
        int y = 0;
        int red = 0;
        int green = 0;
        int blue = 0;
        int alpha = 0;

        if( !tokenList.GetNext( x     ) || 
            !tokenList.GetNext( y     ) ||
            !tokenList.GetNext( red   ) ||
            !tokenList.GetNext( green ) ||
            !tokenList.GetNext( blue  ) ||
            !tokenList.GetNext( alpha ) )
        {
            g_OutputMessage.Add( "PolygonDescription::AddToTokenList: Cannot get the vertex information.",
                                 DebugOutputMessage );
            delete vertex;
            return false;
        }

        vertex->SetX( x );
        vertex->SetY( y );
        vertex->SetRed( red );
        vertex->SetGreen( green );
        vertex->SetBlue( blue );
        vertex->SetAlpha( alpha );

        m_VertexList.AddElementToBack( vertex );
    }

    // Get the footer
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "PolygonDescription::AddToTokenList: Cannot get footer.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_PolygonDescriptionFooter )
    {
        g_OutputMessage.Add( "PolygonDescription::AddToTokenList: Invalid footer.",
                             DebugOutputMessage );
        return false;
    }

    // All done
    return true;
}


//===========================================================================
// PolygonDescription::CreateHierarchyElement
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

DrawingElement* PolygonDescription::CreateHierarchyElement( Page* page )
{
    Project* project = page->GetProject();
    BaseFactory* objectFactory = project->GetObjectFactory();

    Polygon* polygon = objectFactory->NewPolygon();
    if( polygon == NULL )
    {
        g_OutputMessage.Add( "PolygonDescription::CreateHierarchyElement: Out of Memory!",
                             DebugOutputMessage );
        return NULL;
    }

    polygon->SetPage( page );
    polygon->SetFromDescription( dynamic_cast<DrawingElementDescription*>( this ) );
    return polygon;
}


//===========================================================================
// PolygonDescription::GetNumberOfVertexes
//===========================================================================
// Description: Get the number of vertexes for this PolygonDescription
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      int - the number
//
//===========================================================================
int PolygonDescription::GetNumberOfVertexes()
{
    return m_VertexList.GetNumberOfElements();
}

//===========================================================================
// PolygonDescription::AddVertex
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
bool PolygonDescription::AddVertex( Vertex* newVertex )
{
    return m_VertexList.AddElementToBack( newVertex );
}

//===========================================================================
// PolygonDescription::RemoveVertex
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
bool PolygonDescription::RemoveVertex( int index )
{
    Vertex* vertex = m_VertexList.GetElement( index );

    bool rc = m_VertexList.RemoveElement( index );

    if( vertex != NULL )
    {
        delete vertex;
        vertex = NULL;
    }

    return rc;
}

//===========================================================================
// PolygonDescription::GetVertex
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
const Vertex* PolygonDescription::GetVertex( int index )
{
    return m_VertexList.GetElement( index );
}

//===========================================================================
// PolygonDescription::GetTranslucency
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
TranslucencyEnum PolygonDescription::GetTranslucency()
{
    return m_translucency;
}

//===========================================================================
// PolygonDescription::SetTranslucency
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
void PolygonDescription::SetTranslucency( TranslucencyEnum translucency )
{
    m_translucency = translucency;
}


} // End NameSpace
