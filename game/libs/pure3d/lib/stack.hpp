//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     January 17, 2002
// Modified:    January 17, 2002
// Version:     
//
// Component:   
//
// Description: Simple stack template class description.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __STACK_HPP_ 
#define __STACK_HPP_  

//===========================================================================
// Nested Includes
//===========================================================================
#include <stdio.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

template <class Type> class CStack
{
public:
    void                        Push( const Type & item );
    Type                        Pop( void );

    Type                        Current( void ) const;

    bool                        IsEmpty( void ) const;
    unsigned int                Size( void ) const;

    CStack<Type>&               operator = ( const CStack<Type> & other );

// Constructor / Destructor
public:
    CStack();
    CStack( const CStack<Type> & other );
    ~CStack(void);
    
protected:
    // No protected members.

private:

    class CStackNode 
    {
    public:
        Type                    element;
        CStackNode*             next;

//        CStackNode()
//          : element(), next( NULL ) { }

        CStackNode( const Type& theElement, CStackNode* pNode = NULL )
          : element( theElement ), next( pNode ) { }
    };

    CStackNode*                 mpTop;
    unsigned int                mSize;

};

//===========================================================================
// Inlines
//===========================================================================

template <class Type>
CStack<Type>::CStack()
:   mpTop( NULL ),
    mSize( 0 )
{
}

template <class Type>
CStack<Type>::~CStack()
{
    while( mpTop )
    {
        Pop();
    }
    // falls through with mpTop == NULL.
}

template <class Type>
CStack<Type>::CStack( const CStack<Type>& other )
:   mpTop( NULL ),
    mSize( 0 )
{
    *this = other;
}

template <class Type>
CStack<Type>& CStack<Type>::operator = ( const CStack<Type>& other )
{
    // Empty stack
    while ( this->mpTop ) this->Pop();

    // Allocate an array of CStackNodes and
    // assign mpTop, elements and next pointers.
    if ( other.mpTop != NULL )
    {
        Type* pArray = new Type [ other.mSize ];
        CStackNode* pOtherStack = other.mpTop;
        unsigned s = 0;

        while ( pOtherStack )
        {
            pArray[s++] = pOtherStack->element;
            pOtherStack = pOtherStack->next;
        }

        while ( s-- )
        {
            Push( pArray[s] );
        }

        delete [] pArray;
    }

    mSize = other.mSize;

    return *this;
}

template <class Type>
void CStack<Type>::Push( const Type & item )
{
    mpTop = new CStackNode( item, mpTop );
    mSize++;
}

template <class Type>
Type CStack<Type>::Pop( void )
{
    if ( IsEmpty() ) throw;

    Type top = mpTop->element;

    CStackNode*   pOldTop = mpTop;
    mpTop = mpTop->next;
    delete pOldTop;

    --mSize;

    return top;
}

template <class Type>
Type CStack<Type>::Current( void ) const
{
    if ( IsEmpty() ) throw;

    return mpTop->element;
}

template <class Type>
inline
bool CStack<Type>::IsEmpty( void ) const
{
    return ( mpTop == NULL );
}

template <class Type>
inline
unsigned int CStack<Type>::Size( void ) const
{
    return mSize;
}


#endif // __STACK_HPP_
