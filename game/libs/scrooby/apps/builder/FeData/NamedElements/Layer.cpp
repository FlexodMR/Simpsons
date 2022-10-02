//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Layer class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include <assert.h>
#include "Layer.h"
#include "Group.h"
#include "..\DrawingContexts\DrawingContext.h"
#include "..\Helpers\OutputMessage.h"
#include <tlScroobyProjectChunk.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================
static int g_LayerChunkVersion = 1;

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// Layer::Layer
//===========================================================================
// Description: Layer's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Layer::Layer() :
m_visible(true),
m_editable(true),
m_alpha(255)
{
}


//===========================================================================
// Layer::~Layer
//===========================================================================
// Description: Layer's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Layer::~Layer()
{
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements() ; i++ )
    {
        DrawingElement* drawingElement = m_DrawingElementList.GetElement( i );

        if( drawingElement != NULL )
        {
            delete drawingElement;
            drawingElement = NULL;
        }
    }
}


//===========================================================================
// Layer::GetNumberOfDrawingElements
//===========================================================================
// Description: Return the number of drawing elements
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      int - the number
//
//===========================================================================
int Layer::GetNumberOfDrawingElements() const
{
    return m_DrawingElementList.GetNumberOfElements();
}


//===========================================================================
// Layer::AddDrawingElement
//===========================================================================
// Description: Add given drawing element to list
//
// Constraints:    None
//
// Parameters:    newDrawingElement - the new drawing element to be added
//
// Return:      bool - whether action was successful
//
//===========================================================================

bool Layer::AddDrawingElement( DrawingElement* newDrawingElement )
{
    return m_DrawingElementList.AddElementToFront( newDrawingElement );
}


//===========================================================================
// Layer::AddDrawingElementBefore
//===========================================================================
// Description: Add a drawing element to list before another drawing element.
//
// Constraints:    None
//
// Parameters:    newDrawingElement - the new drawing element to be added
//              existingDrawingElement - the drawing element the new draw 
//                                       element should be placed before
//
// Return:      bool - whether action was successful
//
//===========================================================================

bool Layer::AddDrawingElementBefore( DrawingElement* newDrawingElement,
                                     const DrawingElement* existingDrawingElement)
{
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        if( existingDrawingElement == m_DrawingElementList.GetElement( i ) )
        {
            return m_DrawingElementList.AddElement( newDrawingElement, i );
        }
    }

    // Could not find existing drawing element.
    g_OutputMessage.Add( "Layer::AddDrawingElementBefore: Could not find before drawing element!",
                         DebugOutputMessage );
    return m_DrawingElementList.AddElementToFront( newDrawingElement );
}


//===========================================================================
// Layer::AddDrawingElementAtEnd
//===========================================================================
// Description: Add a drawing element to the end of the list
//
// Constraints:    None
//
// Parameters:    newDrawingElement - the new drawing element to be added
//
// Return:      bool - whether action was successful
//
//===========================================================================

bool Layer::AddDrawingElementAtEnd( DrawingElement* newDrawingElement )
{
    return m_DrawingElementList.AddElementToBack( newDrawingElement );
}


//===========================================================================
// Layer::AddDrawingElementAtIndex
//===========================================================================
// Description: Add a drawing element to the end of the list
//
// Constraints:    None
//
// Parameters:    newDrawingElement - the new drawing element to be added
//              index - the index to add the element at
//
// Return:      bool - whether action was successful
//
//===========================================================================

bool Layer::AddDrawingElementAtIndex( DrawingElement* newDrawingElement, int index )
{
    if( index > m_DrawingElementList.GetNumberOfElements() )
    {
        index = m_DrawingElementList.GetNumberOfElements();
    }

    return m_DrawingElementList.AddElement( newDrawingElement, index );
}

//===========================================================================
// Layer::MakeChunk
//===========================================================================
// Description: Makes a tlDatachunk
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the tlDataChunk
//
//===========================================================================
tlDataChunk* Layer::MakeChunk() const
{
    tlScroobyLayerChunk* chunk = new tlScroobyLayerChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( g_LayerChunkVersion );
    chunk->SetEditable( this->IsEditable() );
    chunk->SetVisible( this->IsVisible() );
    chunk->SetAlpha( this->GetAlpha() );
    
    int size = this->GetNumberOfDrawingElements();
    int i;
    for( i = size - 1; i >= 0; i-- )
    {
        const DrawingElement* element = this->GetDrawingElement( i );
        tlDataChunk* elementChunk = element->MakeChunk();
        assert( elementChunk != NULL );
        chunk->AppendSubChunk( elementChunk );
    }

    return chunk;
}

//===========================================================================
// Layer::RemoveDrawingElement (index)
//===========================================================================
// Description: Removes the drawing element from list
//
// Constraints:    None
//
// Parameters:    index - the index in list
//
// Return:      bool - whether action was successful
//
//===========================================================================

bool Layer::RemoveDrawingElement( int index )
{
    DrawingElement* drawingElement = m_DrawingElementList.GetElement( index );

    if( drawingElement != NULL )
    {
        delete drawingElement;
        drawingElement = NULL;
    }

    return m_DrawingElementList.RemoveElement( index );
}


//===========================================================================
// Layer::RemoveDrawingElement (pointer)
//===========================================================================
// Description: Removes the drawing element from list
//
// Constraints:    None
//
// Parameters:    drawingElement - pointer to the drawing element
//
// Return:      bool - whether action was successful
//
//===========================================================================

bool Layer::RemoveDrawingElement( DrawingElement* existingDrawingElement )
{
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        if( existingDrawingElement == m_DrawingElementList.GetElement( i ) )
        {
            return RemoveDrawingElement( i );
        }
    }

    // Could not find existing drawing element.
    g_OutputMessage.Add( "Layer::RemoveDrawingElement: Could not find existing drawing element!",
                         DebugOutputMessage );
    return false;
}


//===========================================================================
// Layer::RemoveDrawingElementWithoutDelete
//===========================================================================
// Description: Removes the drawing element from list but does not delete
//              the drawing element.
//
// Constraints:    None
//
// Parameters:    drawingElement - pointer to the drawing element
//
// Return:      bool - whether action was successful
//
//===========================================================================

bool Layer::RemoveDrawingElementWithoutDelete( DrawingElement* existingDrawingElement )
{
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        if( existingDrawingElement == m_DrawingElementList.GetElement( i ) )
        {
            return m_DrawingElementList.RemoveElement( i );
        }
    }

    // Could not find existing drawing element.
    g_OutputMessage.Add( "Layer::RemoveDrawingElementWithoutDelete: Could not find existing drawing element!",
                         DebugOutputMessage );
    return false;
}


//===========================================================================
// Layer::GetDrawingElement
//===========================================================================
// Description: Retrieve the drawing element from list
//
// Constraints:    None
//
// Parameters:    index - the index in list
//
// Return:      DrawingElement* - the pointer to drawing element object
//
//===========================================================================
DrawingElement* Layer::GetDrawingElement( int index )
{
    return m_DrawingElementList.GetElement( index );
}

//===========================================================================
// Layer::GetDrawingElement
//===========================================================================
// Description: Retrieve the drawing element from list
//
// Constraints:    None
//
// Parameters:    index - the index in list
//
// Return:      DrawingElement* - the pointer to drawing element object
//
//===========================================================================
const DrawingElement* Layer::GetDrawingElement( int index ) const
{
    return m_DrawingElementList.GetElement( index );
}

//===========================================================================
// Layer::GetDrawingElementIndex
//===========================================================================
// Description: Retrieve the index of the drawing element
//
// Constraints:    None
//
// Parameters:    existingDrawingElement - drawing element to look for
//
// Return:      the index of the drawing element,
//              or -1 if the drawing element could not be found
//
//===========================================================================

int Layer::GetDrawingElementIndex( DrawingElement* existingDrawingElement )
{
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        if( existingDrawingElement == m_DrawingElementList.GetElement( i ) )
        {
            return i;
        }
    }

    // Could not find existing drawing element.
    g_OutputMessage.Add( "Layer::GetDrawingElementIndex: Could not find existing drawing element!",
                         DebugOutputMessage );
    return -1;
}


//===========================================================================
// Layer::IsVisible
//===========================================================================
// Description: Is layer visible?
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      bool - whether it is
//
//===========================================================================

bool Layer::IsVisible() const
{
    return m_visible;
}


//===========================================================================
// Layer::IsEditable
//===========================================================================
// Description: Is layer editable?
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      bool - whether it is
//
//===========================================================================

bool Layer::IsEditable() const
{
    return m_editable;
}

//===========================================================================
// Layer::GetAlpha
//===========================================================================
// Description: get alpha value of layer
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      alpha value
//
//===========================================================================

int Layer::GetAlpha() const
{
    return m_alpha;
}

//===========================================================================
// Layer::SetVisible
//===========================================================================
// Description: Set layer visibility
//
// Constraints:    None
//
// Parameters:    visible - the boolean
//
// Return:      None
//
//===========================================================================

void Layer::SetVisible( bool visible )
{
    m_visible = visible;
}


//===========================================================================
// Layer::SetEditable
//===========================================================================
// Description: Set layer editability
//
// Constraints:    None
//
// Parameters:    editable - the result
//
// Return:      None
//
//===========================================================================

void Layer::SetEditable( bool editable )
{
    m_editable = editable;
}


//===========================================================================
// Layer::SetAlpha
//===========================================================================
// Description: Set layer alpha
//
// Constraints:    None
//
// Parameters:    alpha - the result
//
// Return:      None
//
//===========================================================================

void Layer::SetAlpha( int alpha )
{
    m_alpha = alpha;
}

//===========================================================================
// Layer::Draw
//===========================================================================
// Description: This is used to draw the Layer.
//
// Constraints:    None
//
// Parameters:    theDrawingContext - The drawing context used to draw the
//                                  elements.
//
// Return:      true  - if successful
//              false - otherwise.
//
//===========================================================================

bool Layer::Draw( DrawingContext* theDrawingContext )
{
    if( !m_visible )
    {
        return true;
    }

    // Draw all the elements in the reverse order
    for( int i = m_DrawingElementList.GetNumberOfElements() - 1; i >= 0; i-- )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );
        
        if( !element->Draw( theDrawingContext ) )
        {
            return false;
        }
    }

    return true;
}


//===========================================================================
// Layer::GetDrawingElementUnderLocation
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

DrawingElement* Layer::GetDrawingElementUnderLocation( int x, int y )
{
    if( !m_editable || !m_visible )
    {
        return NULL;
    }

    // Search the elements in normal order
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );

        DrawingElement* foundElement = element->GetDrawingElementUnderLocation( x, y );
        if( foundElement != NULL )
        {
            return foundElement;
        }
    }

    return NULL;
}


//===========================================================================
// Layer::GetOrder
//===========================================================================
// Description: This is used to determine if one drawing element is before 
//              another drawing element in the layer.
//
// Constraints:    None
//
// Parameters:    first  - Element to check if it is first.
//              second - Element to check if it is second.
//
// Return:      A DrawingElementOrderEnum indicating the order of the drawing
//              elements.
//
//===========================================================================

DrawingElementOrderEnum Layer::GetOrder( DrawingElement* first, DrawingElement* second )
{
    // Search the elements in normal order
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );

        if( element == first )
        {
            return DrawingElementBefore;
        }
        else if( element == second )
        {
            return DrawingElementAfter;            
        }
        
        Group* group = dynamic_cast< Group* >( element );
        if( group != NULL )
        {
            DrawingElementOrderEnum order = group->GetOrder( first, second );
            if( order != DrawingElementNotFound )
            {
                return order;
            }
        }
    }

    return DrawingElementNotFound;
}


//===========================================================================
// Layer::GetParent
//===========================================================================
// Description: This gets the parent of the given drawing element.
//
// Constraints:    None
//
// Parameters:    child - The drawing element to find the parent for.
//
// Return:      Pointer to the parent element,
//              or NULL if the child could not be found.
//
//===========================================================================

PageElement* Layer::GetParent( DrawingElement* child )
{
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );

        if( element == child )
        {
            return this;
        }
        
        Group* group = dynamic_cast< Group* >( element );
        if( group != NULL )
        {
            PageElement* parent = group->GetParent( child );
            if( parent != NULL )
            {
                return parent;
            }
        }
    }

    return NULL;
}


} // End NameSpace
