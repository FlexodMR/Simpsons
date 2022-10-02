//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the SelectionList class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\stdafx.h"

#include "SelectionList.h"

#include "..\FeData\Helpers\OutputMessage.h"
#include "..\FeData\Helpers\Vertex.h"

#include "..\FeData\NamedElements\BoxDrawingElement.h"
#include "..\FeData\NamedElements\DrawingElement.h"
#include "..\FeData\NamedElements\Group.h"
#include "..\FeData\NamedElements\Page.h"
#include "..\FeData\NamedElements\Polygon.h"
#include "..\FeData\NamedElements\Screen.h"

#include "..\FeData\NamedElements\Descriptions\PolygonDescription.h"


//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// SelectionList::SelectionList
//===========================================================================
// Description: SelectionList's constructor
//
// Constraints:    None
//
// Parameters:    None.
//
// Return:      Nothing
//
//===========================================================================

SelectionList::SelectionList() :
m_List(),
m_Screen( NULL )
{
}


//===========================================================================
// SelectionList::~SelectionList
//===========================================================================
// Description: SelectionList's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

SelectionList::~SelectionList()
{
}


//===========================================================================
// SelectionList::SetScreen
//===========================================================================
// Description: SelectionList's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void SelectionList::SetScreen( FeData::Screen* screen )
{
    m_Screen = screen;
}


//===========================================================================
// SelectionList::operator =
//===========================================================================
// Description: SelectionList's equals operator.
//
// Constraints:    None
//
// Parameters:    right - The SelectionList to copy from.
//
// Return:      A copy of the this class
//
//===========================================================================

const SelectionList & SelectionList::operator = ( SelectionList &right )
{
    // Copy the screen
    m_Screen = right.m_Screen;

    // Clear the current list
    Clear();
    
    // Copy over right's list
    for( int i = 0; i < right.GetNumberOfElements(); i++ )
    {
        m_List.AddElementToBack( right.GetElement( i ) );
    }

    return *this;
}


//===========================================================================
// SelectionList::Add
//===========================================================================
// Description: This adds an element to the list.
//
// Constraints:    None
//
// Parameters:    newElement - A pointer to the new element to add.
//
// Return:      true  - if successfull,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::Add( FeData::DrawingElement* newElement )
{
    using namespace FeData;

    // Make sure we have a screen
    if( m_Screen == NULL )
    {
        g_OutputMessage.Add( "SelectionList::Add: Screen pointer is NULL!", 
                             DebugOutputMessage );
        return false;
    }

    // Is this the first element
    if( m_List.GetNumberOfElements() == 0 )
    {
        return m_List.AddElementToBack( newElement );
    }


    int i;

    // Make sure the drawing element is not already in the list.
    for( i = 0; i < m_List.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_List.GetElement( i );
        
        if( element == newElement )
        {
            return false;
        }
    }

    // Make sure the drawing element is not a child of any elements in the list.
    for( i = 0; i < m_List.GetNumberOfElements(); i++ )
    {
        Group* group = dynamic_cast< Group* >( m_List.GetElement( i ) );
        
        if( group != NULL )
        {
            if( group->Contains( newElement ) )
            {
                g_OutputMessage.Add( "The element cannot be selected because it is a child of a selected group.", 
                                     WarningOutputMessage );
                return false;
            }
        }
    }

    // If we are adding a group, make sure none of it's children are already selected.
    Group* group = dynamic_cast< Group* >( newElement );
    if( group != NULL )
    {
        for( i = 0; i < m_List.GetNumberOfElements(); i++ )
        {
            DrawingElement* element = m_List.GetElement( i );
        
            if( group->Contains( element ) )
            {
                g_OutputMessage.Add( "The group cannot be selected because it is the parent of a selected element.", 
                                     WarningOutputMessage );
                return false;
            }
        }
    }

    // Insert the new element into the correct location
    bool foundLocation = false;
    
    Page* newElementPage = newElement->GetPage();

    int currentListIndex = 0;
    DrawingElement* listElement = m_List.GetElement( currentListIndex );
    Page* listElementPage = listElement->GetPage();

    for( int pageIndex = 0;
         (!foundLocation) && (pageIndex < m_Screen->GetNumberOfPages());
         pageIndex++ )
    {
        Page* currentPage = m_Screen->GetPage( pageIndex );
        
        if( currentPage == newElementPage )
        {
            // Skip all list elements of this page
            while( (!foundLocation) && (currentPage == listElementPage) )
            {
                // Does the new element go before the list element
                if( currentPage->GetOrder( newElement, listElement ) == DrawingElementBefore )
                {
                    foundLocation = true;
                }
                else
                {
                    currentListIndex++;
                    if( currentListIndex < m_List.GetNumberOfElements() )
                    {
                        listElement = m_List.GetElement( currentListIndex );
                        listElementPage = listElement->GetPage();
                    }
                    else
                    {
                        // We reached the end of the list, place the new element at the end
                        foundLocation = true;
                    }
                }
            }

            // Make sure we place the element
            foundLocation = true;
        }
        else
        {
            // Skip all list elements of this page
            while( (!foundLocation) && (currentPage == listElementPage) )
            {
                currentListIndex++;
                if( currentListIndex < m_List.GetNumberOfElements() )
                {
                    listElement = m_List.GetElement( currentListIndex );
                    listElementPage = listElement->GetPage();
                }
                else
                {
                    // We reached the end of the list, place the new element at the end
                    foundLocation = true;
                }
            }
        }
    }


    if( foundLocation )
    {
        // Add the element and return
        return m_List.AddElement( newElement, currentListIndex );
    }
    else
    {
        // We should have never gotten here
        g_OutputMessage.Add( "SelectionList::Add: Could not find a place to put the drawing element!", 
                             DebugOutputMessage );
        return false;
    }
}


//===========================================================================
// SelectionList::Remove (pointer)
//===========================================================================
// Description: This removes an element from the list.
//
// Constraints:    None
//
// Parameters:    removeElement - A pointer to the element to remove.
//
// Return:      true  - if successfull,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::Remove( FeData::DrawingElement* removeElement )
{
    using namespace FeData;
    for( int i = 0; i < m_List.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_List.GetElement( i );
        
        if( element == removeElement )
        {
            return m_List.RemoveElement( i );
        }
    }
    return false;
}


//===========================================================================
// SelectionList::Remove (index)
//===========================================================================
// Description: This removes an element from the list.
//
// Constraints:    None
//
// Parameters:    index - index of the element to remove
//
// Return:      true  - if successfull,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::Remove( int index )
{
    using namespace FeData;
    if( (index >= 0) && (index < m_List.GetNumberOfElements()) )
    {
        return m_List.RemoveElement( index );
    }
    return false;
}


//===========================================================================
// SelectionList::Clear
//===========================================================================
// Description: This clears the list.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void SelectionList::Clear()
{
    while( m_List.GetNumberOfElements() > 0 )
    {
        m_List.RemoveElement( 0 );
    }
}


//===========================================================================
// SelectionList::GetNumberOfElementss
//===========================================================================
// Description: This returns the number of element in the list.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The number of element in the list.
//
//===========================================================================

int SelectionList::GetNumberOfElements()
{
    return m_List.GetNumberOfElements();
}


//===========================================================================
// SelectionList::GetElement
//===========================================================================
// Description: This returns a pointer to an element in the list.
//
// Constraints:    None
//
// Parameters:    index - The index of the element to retrieve.
//
// Return:      A pointer to an element in the list,
//              or NULL if an error occured.
//
//===========================================================================

FeData::DrawingElement* SelectionList::GetElement( int index )
{
    return m_List.GetElement( index );
}

//===========================================================================
// SelectionList::PointInSelection
//===========================================================================
// Description: This determine whether a point in within the selection.
//
// Constraints:    None
//
// Parameters:    x - the X co-ordinate
//              y - the Y co-ordinate
//
// Return:      true  - if the point is in the selection,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::PointInSelection( int x, int y )
{
    using namespace FeData;
    for( int i = 0; i < m_List.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_List.GetElement( i );
        if( element->GetDrawingElementUnderLocation( x, y ) == element )
        {
            return true;
        }
    }
    return false;
}


//===========================================================================
// SelectionList::GetDrawingElementUnderLocation
//===========================================================================
// Description: This determine if a DrawingElement under the given point
//              is within the selection.
//
// Constraints:    None
//
// Parameters:    x - the X co-ordinate
//              y - the Y co-ordinate
//
// Return:      pointer to the DrawingElement under the location,
//              or NULL if no element was found.
//
//===========================================================================

FeData::DrawingElement* SelectionList::GetDrawingElementUnderLocation( int x, int y )
{
    using namespace FeData;
    for( int i = 0; i < m_List.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_List.GetElement( i );
        if( element->GetDrawingElementUnderLocation( x, y ) == element )
        {
            return element;
        }
    }
    return NULL;
}


//===========================================================================
// SelectionList::DrawSelection
//===========================================================================
// Description: This draws the selection boxes.
//
// Constraints:    None
//
// Parameters:    theCDC - A pointer to the CDC used to draw the selection.
//              zoom - The current zoom amount
//
// Return:      true  - if successfull,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::DrawSelection( CDC* theCDC, float zoom )
{
    using namespace FeData;
    for( int i = 0; i < m_List.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_List.GetElement( i );
        
        if( !DrawElement( theCDC, element, zoom ) )
        {
            return false;
        }
    }
    return true;
}


//===========================================================================
// SelectionList::MoveSelection
//===========================================================================
// Description: This move the selection.
//
// Constraints:    None
//
// Parameters:    moveX - the amount the selection has been moved in X
//              moveY - the amount the selection has been moved in Y
//
// Return:      true  - if successfull,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::MoveSelection( int moveX, int moveY )
{
    using namespace FeData;
    for( int i = 0; i < m_List.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_List.GetElement( i );
        
        if( !element->Move( moveX, moveY ) )
        {
            return false;
        }
    }
    return true;
}


//===========================================================================
// SelectionList::DrawElement
//===========================================================================
// Description: This is used to determine how to draw the selection of a
//              DrawingElement.
//
// Constraints:    None
//
// Parameters:    theCDC - A pointer to the CDC used to draw the selection.
//              element - The element to draw the selection for
//              zoom - The current zoom amount
//
// Return:      true  - if successfull,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::DrawElement( CDC* theCDC, FeData::DrawingElement* element, float zoom )
{
    using namespace FeData;

    FeData::Polygon* polygon = dynamic_cast<FeData::Polygon*>( element );
    if( polygon != NULL )
    {
        return DrawElementPolygon( theCDC, polygon, zoom );
    }
    else
    {
        return DrawElementBox( theCDC, element, zoom );
    }

    // Invalid type
    return false;
}


//===========================================================================
// SelectionList::DrawElementBox
//===========================================================================
// Description: This is used to draw the selection for a BoxDrawingElement.
//
// Constraints:    None
//
// Parameters:    theCDC - A pointer to the CDC used to draw the selection.
//              box - The element to draw the selection for
//              zoom - The current zoom amount
//
// Return:      true  - if successfull,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::DrawElementBox( CDC* theCDC, FeData::DrawingElement* box, float zoom )
{ 
    // Draw the bounding box
    CPen pen( PS_DOT, 1, RGB( 255, 255, 255) );
    CPen* oldPen = theCDC->SelectObject( &pen );
    COLORREF oldColor = theCDC->SetBkColor( RGB( 0, 0, 0 ) );

    int boundingLeft = box->GetXResolution();
    int boundingTop = 0;
    int boundingRight = 0;
    int boundingBottom = box->GetYResolution();

    if( (box->GetBoundingLeft( boundingLeft )) &&
        (box->GetBoundingTop( boundingTop )) &&
        (box->GetBoundingRight( boundingRight )) &&
        (box->GetBoundingBottom( boundingBottom )) )
    {
        int left   = boundingLeft * zoom;
        int top    = boundingTop * zoom;
        int right  = boundingRight * zoom;
        int bottom = boundingBottom * zoom;

        top    = box->GetYResolution() * zoom - top;
        bottom = box->GetYResolution() * zoom - bottom;

        // Shrink the box because the width and height are 1 based.
        right--;
        top--;

        theCDC->MoveTo( left,  top    );
        theCDC->LineTo( right, top    );
        theCDC->LineTo( right, bottom );
        theCDC->LineTo( left,  bottom );
        theCDC->LineTo( left,  top    );

        theCDC->SelectObject( oldPen );
        theCDC->SetBkColor( oldColor );
    }
    return true;
}


//===========================================================================
// SelectionList::DrawElementGroup
//===========================================================================
// Description: This is used to draw the selection for a Group.
//
// Constraints:    None
//
// Parameters:    theCDC - A pointer to the CDC used to draw the selection.
//              group - The element to draw the selection for
//              zoom - The current zoom amount
//
// Return:      true  - if successfull,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::DrawElementGroup( CDC* theCDC, FeData::Group* group, float zoom )
{
    /*
    using namespace FeData;
    for( int i = 0; i < group->GetNumberOfDrawingElements(); i++ )
    {
        DrawingElement* element = group->GetDrawingElement( i );
        
        if( !DrawElement( theCDC, element, zoom ) )
        {
            return false;
        }
    }*/
    return true;
}


//===========================================================================
// SelectionList::DrawElementPolygon
//===========================================================================
// Description: This is used to draw the selection for a Polygon.
//
// Constraints:    None
//
// Parameters:    theCDC - A pointer to the CDC used to draw the selection.
//              polygon - The element to draw the selection for
//              zoom - The current zoom amount
//
// Return:      true  - if successfull,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::DrawElementPolygon( CDC* theCDC, FeData::Polygon* polygon, float zoom )
{
    // Draw the polygon border
    using namespace FeData;

    const Vertex* vertex0 = polygon->GetVertex( 0 );
    if( vertex0 == NULL )
    {
        g_OutputMessage.Add( "SelectionList::DrawElementPolygon: Invalid vertex detected!", 
                             ErrorOutputMessage );
        return false;
    }

    CPen pen( PS_DOT, 1, RGB( 255, 255, 255) );
    CPen* oldPen = theCDC->SelectObject( &pen );
    COLORREF oldColor = theCDC->SetBkColor( RGB( 0, 0, 0 ) );

     for( int i = 0; i < polygon->GetNumberOfVertexes(); i++ )
    {
        int iPlusOne = ( ( (i+1) == polygon->GetNumberOfVertexes() ) ? 0 : i+1 );

        const Vertex* vertex = polygon->GetVertex( i );
        const Vertex* vertexNext = polygon->GetVertex( iPlusOne );

        if( (vertex != NULL) && (vertexNext != NULL) )
        {
            float x = ((float)vertex->GetX() + 0.5f) * zoom;
            float y = ((float)(polygon->GetYResolution() - vertex->GetY()) + 0.5f) * zoom;

            float nextX = ((float)vertexNext->GetX() + 0.5f) * zoom;
            float nextY = ((float)(polygon->GetYResolution() - vertexNext->GetY()) + 0.5f) * zoom;

            theCDC->MoveTo( x, y );
            theCDC->LineTo( nextX, nextY );
        }
        else
        {
            g_OutputMessage.Add( "SelectionList::DrawElementPolygon: Invalid vertex detected!", 
                                 ErrorOutputMessage );
            theCDC->SelectObject( oldPen );
            theCDC->SetBkColor( oldColor );
            return false;
        }
    }

    theCDC->SelectObject( oldPen );
    theCDC->SetBkColor( oldColor );
    return true;
}

//===========================================================================
// SelectionList::AlignSelection
//===========================================================================
// Description: This is used to align the selection for Drawing Elements.
//
// Constraints:    None
//
// Parameters:    
//
// Return:      true  - if successful,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::AlignSelection( FeData::ElementList< AlignDelta >& m_AlignList, bool bReverse )
{
    using namespace FeData;

    for( int i = 0; i < m_List.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_List.GetElement( i );
        AlignDelta* align = m_AlignList.GetElement( i );
        if( align != NULL )
        {
            if( bReverse )
            {
                element->Move( -align->dx, -align->dy );
            }
            else
            {
                element->Move( align->dx, align->dy );
            }
        }
        else
        {
            return false;
        }
    }
    return true;
}


//===========================================================================
// SelectionList::AddToTokenList
//===========================================================================
// Description: This adds the selection to the given token list.
//
// Constraints:    None
//
// Parameters:    tokenList - token list to add the selection to
//
// Return:      true  - if successful,
//              false - otherwise.
//
//===========================================================================

bool SelectionList::AddToTokenList( FeData::TokenList& tokenList )
{
    using namespace FeData;

    for( int i = 0; i < m_List.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_List.GetElement( i );
        
        DrawingElementDescription* elementDesc = element->GetDescription();
        if( elementDesc == NULL )
        {
            return false;
        }

        bool success = elementDesc->AddToTokenList( tokenList );
        delete elementDesc;

        if( !success )
        {
            return false;
        }

/*
        FeData::Polygon* polygon = dynamic_cast< FeData::Polygon* >( element );
        if( polygon == NULL )
        {
            continue;
        }
    
        PolygonDescription* polygonDesc = polygon->GetDescription();
        if( polygonDesc == NULL )
        {
            return false;
        }
    
        bool success = polygonDesc->AddToTokenList( tokenList );
        delete polygonDesc;

        if( !success )
        {
            return false;
        }
        */
    }

    return true;
}
