//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Group class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include <assert.h>
#include "Group.h"
#include "Descriptions\GroupDescription.h"
#include <tlScroobyProjectChunk.hpp>

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
// Group::Group
//===========================================================================
// Description: Group's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Group::Group() :
m_alpha(255)
{
}


//===========================================================================
// Group::~Group
//===========================================================================
// Description: Group's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Group::~Group()
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
// Group::GetNumberOfDrawingElements
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

int Group::GetNumberOfDrawingElements()
{
    return m_DrawingElementList.GetNumberOfElements();
}


//===========================================================================
// Group::AddDrawingElement
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

bool Group::AddDrawingElement( DrawingElement* newDrawingElement )
{
    return m_DrawingElementList.AddElementToFront( newDrawingElement );
}


//===========================================================================
// Group::AddDrawingElementBefore
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

bool Group::AddDrawingElementBefore( DrawingElement* newDrawingElement,
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
// Group::AddDrawingElementAtEnd
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

bool Group::AddDrawingElementAtEnd( DrawingElement* newDrawingElement )
{
    return m_DrawingElementList.AddElementToBack( newDrawingElement );
}


//===========================================================================
// Group::AddDrawingElementAtIndex
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

bool Group::AddDrawingElementAtIndex( DrawingElement* newDrawingElement, int index )
{
    if( index > m_DrawingElementList.GetNumberOfElements() )
    {
        index = m_DrawingElementList.GetNumberOfElements();
    }

    return m_DrawingElementList.AddElement( newDrawingElement, index );
}


//===========================================================================
// Group::RemoveDrawingElement (index)
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

bool Group::RemoveDrawingElement( int index )
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
// Group::RemoveDrawingElement (pointer)
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

bool Group::RemoveDrawingElement( DrawingElement* existingDrawingElement )
{
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        if( existingDrawingElement == m_DrawingElementList.GetElement( i ) )
        {
            return RemoveDrawingElement( i );
        }
    }

    // Could not find existing drawing element.
    g_OutputMessage.Add( "Group::RemoveDrawingElement: Could not find existing drawing element!",
                         DebugOutputMessage );
    return false;
}


//===========================================================================
// Group::RemoveDrawingElementWithoutDelete
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

bool Group::RemoveDrawingElementWithoutDelete( DrawingElement* existingDrawingElement )
{
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        if( existingDrawingElement == m_DrawingElementList.GetElement( i ) )
        {
            return m_DrawingElementList.RemoveElement( i );
        }
    }

    // Could not find existing drawing element.
    g_OutputMessage.Add( "Group::RemoveDrawingElementWithoutDelete: Could not find existing drawing element!",
                         DebugOutputMessage );
    return false;
}


//===========================================================================
// Group::GetDrawingElement
//===========================================================================
// Description: Retrieve the drawing element from list
//
// Constraints:    None
//
// Parameters:    index - the index in list
//
// Return:      DrawingElement* - the drawing element pointer
//
//===========================================================================

DrawingElement* Group::GetDrawingElement( int index )
{
    return m_DrawingElementList.GetElement( index );
}


//===========================================================================
// Group::GetDrawingElementIndex
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

int Group::GetDrawingElementIndex( DrawingElement* existingDrawingElement )
{
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        if( existingDrawingElement == m_DrawingElementList.GetElement( i ) )
        {
            return i;
        }
    }

    // Could not find existing drawing element.
    g_OutputMessage.Add( "Group::GetDrawingElementIndex: Could not find existing drawing element!",
                         DebugOutputMessage );
    return -1;
}


//===========================================================================
// Group::GetAlpha
//===========================================================================
// Description: get alpha value of group
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      alpha value
//
//===========================================================================

int Group::GetAlpha() const
{
    return m_alpha;
}

//===========================================================================
// Group::SetAlpha
//===========================================================================
// Description: Set group alpha
//
// Constraints:    None
//
// Parameters:    alpha - the result
//
// Return:      None
//
//===========================================================================

void Group::SetAlpha( int alpha )
{
    m_alpha = alpha;
}


//===========================================================================
// Group::Draw
//===========================================================================
// Description: This is used to draw the Group.
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

bool Group::Draw( DrawingContext* theDrawingContext )
{
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
// Group::MakeChunk
//===========================================================================
// Description: Makes a tlDataChunk out of the object
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      pointer ot the chunk
//
//===========================================================================
tlDataChunk* Group::MakeChunk() const
{
    tlScroobyGroupChunk* chunk = new tlScroobyGroupChunk;
    chunk->SetName( this->GetName() );
    chunk->SetAlpha( this->GetAlpha() );

    int size = m_DrawingElementList.GetNumberOfElements();
    int i;
    for( i = size - 1; i >= 0; i-- )
    {
        DrawingElement* element = m_DrawingElementList[ i ];
        tlDataChunk* subChunk = element->MakeChunk();
        chunk->AppendSubChunk( subChunk );
    }
    return chunk;
}

//===========================================================================
// Group::Move
//===========================================================================
// Description: This is used to Move the group and every drawing element in it
//
// Constraints:    None
//
// Parameters:    dx, dy - amount to move by
//
// Return:      true if successful
//
//===========================================================================
bool Group::Move( int dx, int dy )
{
    // Search the elements in normal order
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );
        
        if( element != NULL )
        {
            if ( !element->Move( dx, dy ) )
            {
                return false;
            }
        }
        else
        {
            FeData::g_OutputMessage.Add( "Group::Move: Invalid element detected!", 
                                         FeData::ErrorOutputMessage );
            return false;
        }
    }

    return true;
}


//===========================================================================
// Group::GetBoundingLeft
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

bool Group::GetBoundingLeft( int& left )
{
    bool toReturn = false;
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );
        
        if( element != NULL )
        {
            toReturn |= element->GetBoundingLeft( left );
        }
        else
        {
            g_OutputMessage.Add( "Group::GetBoundingLeft: Invalid element detected!", 
                                  ErrorOutputMessage );
        }
    }
    return toReturn;
}


//===========================================================================
// Group::GetBoundingTop
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

bool Group::GetBoundingTop( int& top )
{
    bool toReturn = false;
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );
        
        if( element != NULL )
        {
            toReturn |= element->GetBoundingTop( top );
        }
        else
        {
            g_OutputMessage.Add( "Group::GetBoundingTop: Invalid element detected!", 
                                  ErrorOutputMessage );
        }
    }
    return toReturn;
}


//===========================================================================
// Group::GetBoundingRight
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

bool Group::GetBoundingRight( int& right )
{
    bool toReturn = false;
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );
        
        if( element != NULL )
        {
            toReturn |= element->GetBoundingRight( right );
        }
        else
        {
            g_OutputMessage.Add( "Group::GetBoundingRight: Invalid element detected!", 
                                  ErrorOutputMessage );
        }
    }
    return toReturn;
}


//===========================================================================
// Group::Group
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

bool Group::GetBoundingBottom( int& bottom )
{
    bool toReturn = false;
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );
        
        if( element != NULL )
        {
            toReturn |= element->GetBoundingBottom( bottom );
        }
        else
        {
            g_OutputMessage.Add( "Group::GetBoundingBottom: Invalid element detected!", 
                                  ErrorOutputMessage );
        }
    }
    return toReturn;
}


//===========================================================================
// Group::GetDrawingElementUnderLocation
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

DrawingElement* Group::GetDrawingElementUnderLocation( int x, int y )
{
    // Search the elements in normal order
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );

        DrawingElement* foundElement = element->GetDrawingElementUnderLocation( x, y );
        if( foundElement != NULL )
        {
            // If an element in the group has been selected, the group is
            // selected.
            return this;
        }
    }

    return NULL;
}


//===========================================================================
// Group::Contains
//===========================================================================
// Description: This will search the group and all subgroups to determine if
//              the given element is contained within the group
//
// Constraints:    None
//
// Parameters:    element - the drawing element to look for
//
// Return:      true  - if the element was found,
//              false - otherwise
//
//===========================================================================

bool Group::Contains( DrawingElement* element )
{
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements(); i++ )
    {
        DrawingElement* existingElement = m_DrawingElementList.GetElement( i );
        if( existingElement == element )
        {
            return true;
        }

        Group* childGroup = dynamic_cast<Group*>( existingElement );
        if( childGroup != NULL )
        {
            if( childGroup->Contains( element ) )
            {
                return true;
            }
        }
    }

    return false;
}

//===========================================================================
// Group::GetOrder
//===========================================================================
// Description: This is used to determine if one drawing element is before 
//              another drawing element in the group.
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

DrawingElementOrderEnum Group::GetOrder( DrawingElement* first, DrawingElement* second )
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
// Group::GetDescription
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

DrawingElementDescription* Group::GetDescription()
{
    GroupDescription* description = new GroupDescription;
    if( description == NULL )
    {
        g_OutputMessage.Add( "Group::GetDescription: Out of Memory!", 
                             ErrorOutputMessage );
        return NULL;
    }

    // Fill in parent settings
    DrawingElement::FillInDescription( description );

    // Set this class's settings
    description->SetAlpha( GetAlpha() );
    
    // Add all the descriptions
    for( int i = 0; i < m_DrawingElementList.GetNumberOfElements() ; i++ )
    {
        DrawingElement* element = m_DrawingElementList.GetElement( i );

        if( element != NULL )
        {
            description->AddDescription( element->GetDescription() );
        }
    }
    
    return description;
}


//===========================================================================
// Group::SetFromDescription
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

bool Group::SetFromDescription( DrawingElementDescription* description )
{
    GroupDescription* groupDescription = dynamic_cast< GroupDescription* >( description );
    if( groupDescription == NULL )
    {
        g_OutputMessage.Add( "Group::SetFromDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    // Remove the old drawing elements
    while( m_DrawingElementList.GetNumberOfElements() > 0)
    {
        DrawingElement* drawingElement = m_DrawingElementList.GetElement( 0 );
        if( drawingElement != NULL )
        {
            delete drawingElement;
            drawingElement = NULL;
        }

        m_DrawingElementList.RemoveElement( 0 );
    }

    // Set the parent settings
    if( !DrawingElement::SetFromDescription( description ) )
    {
        return false;
    }

    // Set the group settings
    SetAlpha( groupDescription->GetAlpha() );

    for( int i = 0; i < groupDescription->GetNumberOfDescriptions(); i++ )
    {
        DrawingElement* newElement = groupDescription->CreateHierarchyChildElement( i, GetPage() );
        m_DrawingElementList.AddElementToBack( newElement );
    }
    return true;
}


//===========================================================================
// Group::GetParent
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

PageElement* Group::GetParent( DrawingElement* child )
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
