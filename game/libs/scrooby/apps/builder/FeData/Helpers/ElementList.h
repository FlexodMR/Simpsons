//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the ElementList class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __ELEMENTLIST_H
#define __ELEMENTLIST_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "OutputMessage.h"
#include <vector>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: The ElementList class is used to store a list of class 
//              pointers.  Templates are used to make this generic while
//              maintaining type checking.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    template< class T >
    class ElementList
    {
        public:
            ElementList();
            ~ElementList();

            int GetNumberOfElements() const;

            bool AddElement( T* newElement, int atIndex );
            T*   GetElement( int index ) const;
            T*   operator[]( const int index ) const;
            bool RemoveElement( int index );

            bool AddElementToFront( T* newElement );
            bool AddElementToBack( T* newElement );

            bool MoveElement( int fromIndex, int toIndex );

            bool MoveElementUp( int index );
            bool MoveElementDown( int index );

        protected:
            
        private:
            // Create this methods as private so they can not be used
            ElementList(const ElementList &right);
            const ElementList & operator = (const ElementList &right);

            // Data members
            std::vector< T* > m_Elements;
            int m_Size;
    };
}



//===========================================================================
//===========================================================================
//===========================================================================
//
//
// Class Implementation
//
//
//===========================================================================
//===========================================================================
//===========================================================================

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
// ElementList::ElementList
//===========================================================================
// Description: ElementList's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

template< class T >
ElementList<T>::ElementList() :
m_Elements(),
m_Size(0)
{
}


//===========================================================================
// ElementList::~ElementList
//===========================================================================
// Description: ElementList's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

template< class T >
ElementList<T>::~ElementList()
{
}


//===========================================================================
// ElementList::GetNumberOfElement
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

template< class T >
int ElementList<T>::GetNumberOfElements() const
{
    return m_Size;
}

//===========================================================================
// ElementList::AddElement
//===========================================================================
// Description: This is used to add an element to the list.
//
// Constraints:    None
//
// Parameters:    newElement - The element to be added.
//              atIndex    - The location in the list to add the element.
//                           When this is -1, the element will be added to
//                           the end of the list.
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

template< class T >
bool ElementList<T>::AddElement( T* newElement, int atIndex )
{
    // Add the new element
    m_Elements.push_back( newElement );
    m_Size++;


    // Set the elements position
    if( atIndex >= 0 )
    {
        return MoveElement( m_Size - 1, atIndex );
    }
    else
    {
        return true;
    }
}


//===========================================================================
// ElementList::GetElement
//===========================================================================
// Description: This is used to get an element from the list.
//
// Constraints:    None
//
// Parameters:    index - The index of the element.
//
// Return:      A pointer to the element or NULL if the element could not be
//              retrieved.
//
//===========================================================================

template< class T >
T*   ElementList<T>::GetElement( int index ) const
{
    if(( index < 0 ) || (index >= m_Size ))
    {
        g_OutputMessage.Add( "ElementList::GetElement: Bad Index!",
                             DebugOutputMessage );
        return NULL;
    }

    return m_Elements[index];
}

//===========================================================================
// ElementList::operator[]
//===========================================================================
// Description: This returns an element from the list
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the element in the list
//
//===========================================================================
template< class T >
T* ElementList<T>::operator[]( const int index ) const
{
    return this->GetElement( index );
}

//===========================================================================
// ElementList::RemoveElement
//===========================================================================
// Description: This is used to remove an element from the list.
//
// Constraints:    None
//
// Parameters:    index - The index of the element.
//
// Return:      true  - if the element could be removed
//              false - otherwise.
//
//===========================================================================

template< class T >
bool ElementList<T>::RemoveElement( int index )
{
    if(( index < 0 ) || (index >= m_Size ))
    {
        g_OutputMessage.Add( "ElementList::RemoveElement: Bad Index!",
                             DebugOutputMessage );
        return false;
    }
    
    // Move all the following elements.
    index++;
    while( index < m_Size )
    {
        MoveElementUp( index );
        index++;
    }

    // Remove the last element
    m_Elements.pop_back();
    m_Size--;

    return true;
}


//===========================================================================
// ElementList::AddElementToFront
//===========================================================================
// Description: This is used to add an element to the front of list.
//
// Constraints:    None
//
// Parameters:    newElement - The element to be added.
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

template< class T >
bool ElementList<T>::AddElementToFront( T* newElement )
{
    // Add the new element
    m_Elements.push_back( newElement );
    m_Size++;
    return MoveElement( m_Size - 1, 0 );
}


//===========================================================================
// ElementList::AddElementToBack
//===========================================================================
// Description: This is used to add an element to the end of list.
//
// Constraints:    None
//
// Parameters:    newElement - The element to be added.
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

template< class T >
bool ElementList<T>::AddElementToBack( T* newElement )
{
    // Add the new element
    m_Elements.push_back( newElement );
    m_Size++;
    return true;
}


//===========================================================================
// ElementList::MoveElement
//===========================================================================
// Description: This is used to move an element in the list.
//
// Constraints:    None
//
// Parameters:    fromIndex - The starting index of the element.
//              toIndex   - The ending index of the element.
//
// Return:      true  - if the element could be moved
//              false - otherwise.
//
//===========================================================================

template< class T >
bool ElementList<T>::MoveElement( int fromIndex, int toIndex )
{
    // Make sure our indexs are valid
    if( (fromIndex < 0) || (fromIndex >= m_Size) ||
        (toIndex   < 0) || (toIndex   >= m_Size) )
    {
        g_OutputMessage.Add( "ElementList::MoveElement: Bad Index!",
                             DebugOutputMessage );
        return false;
    }



    // Make sure we really have to move the element
    if( fromIndex == toIndex )
    {
        return true;
    }

    // Are we moving up or down
    if( fromIndex > toIndex )
    {
        // Going up
        while( fromIndex != toIndex )
        {
            if( !MoveElementUp( fromIndex ) )
            {
                return false;
            }
            fromIndex--;
        }
    }
    else
    {
        // Going down
        while( fromIndex != toIndex )
        {
            if( !MoveElementDown( fromIndex ) )
            {
                return false;
            }
            fromIndex++;
        }
    }  // if

    return true;
}


//===========================================================================
// ElementList::MoveElementUp
//===========================================================================
// Description: This is used to move an element up one spot in the list.
//
// Constraints:    None
//
// Parameters:    index - The index of the element to move.
//
// Return:      true  - if the element could be moved
//              false - otherwise.
//
//===========================================================================

template< class T >
bool ElementList<T>::MoveElementUp( int index )
{
    if(( index < 0 ) || (index >= m_Size ))
    {
        g_OutputMessage.Add( "ElementList::MoveElementUp: Bad Index!",
                             DebugOutputMessage );
        return false;
    }

    if( index > 0 )
    {
        T* temp = m_Elements[ index - 1];
        m_Elements[ index - 1] = m_Elements[ index ];
        m_Elements[ index ] = temp;
    }

    return true;
}


//===========================================================================
// ElementList::MoveElementDown
//===========================================================================
// Description: This is used to move an element down one spot in the list.
//
// Constraints:    None
//
// Parameters:    index - The index of the element to move.
//
// Return:      true  - if the element could be moved
//              false - otherwise.
//
//===========================================================================

template< class T >
bool ElementList<T>::MoveElementDown( int index )
{
    if(( index < 0 ) || (index >= m_Size ))
    {
        g_OutputMessage.Add( "ElementList::MoveElementDown: Bad Index!",
                             DebugOutputMessage );
        return false;
    }

    if( index < m_Size - 1 )
    {
        T* temp = m_Elements[ index + 1];
        m_Elements[ index + 1] = m_Elements[ index ];
        m_Elements[ index ] = temp;
    }

    return true;
}


}  // End Namespace


#endif                                  // End conditional inclusion

