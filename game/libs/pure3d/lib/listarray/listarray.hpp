//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 27, 2001
//
// Component:   List Array template class declaration / implementation.
//
// Description: A const-correct C++-aware list array template class.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __LISTARRAY_HPP
#define __LISTARRAY_HPP

//===========================================================================
// Nested Includes
//===========================================================================

#include <stdio.h>

#include <assert.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const unsigned int               gListArrayGrowBy = 8;

enum
{
    LISTARRAY_GROWRATE_LINEAR = 0,
    LISTARRAY_GROWRATE_EXPONENTIAL
};

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Description: A const-correct C++-aware list array template class.
//
// Constraints:
//
//===========================================================================

template <class Type> class CListArray
{
// //////////////////////////////////////////////
//  PUBLIC MEMBER FUNCTIONS
public:
    bool                                AddItem( const Type & item, unsigned int growBy = 0 );
    bool                                AddUniqueItem( const Type & item, unsigned int growBy = 0 );

    bool                                FindItem( const Type & item, unsigned int * pIndex = NULL ) const;

    bool                                DeleteItem( unsigned int index = 0 );

    unsigned int                        NumItems() const;
    unsigned int                        NumAllocated() const;

    void                                SetGrowBy( unsigned int growBy );
    void                                SetGrowRate( unsigned char growRate );

    // SORTING
//    void                                Sort( void );
//    void                                Swap( unsigned int indexA, unsigned int indexB );
//    unsigned int                        GetItemIndex( const Type & item );

    void                                Clear();

    Type*                               First( void ) const;
    Type*                               Last( void ) const;

    Type&                               operator [] ( unsigned int index );           // non-const; r-value or l-value
    Type                                operator [] ( unsigned int index ) const;     // const; r-value only

    Type*                               operator () ( unsigned int index ) const;

    CListArray<Type>&                   operator = ( const CListArray<Type> & other );

// //////////////////////////////////////////////
//  CONSTRUCTOR / DESTRUCTOR
public:
    CListArray( unsigned int ulInitialCount = 0, unsigned int growBy = gListArrayGrowBy, unsigned char growRate = LISTARRAY_GROWRATE_LINEAR );
    CListArray( const CListArray<Type> & other );
    ~CListArray(void);

private:
    bool                                Grow( unsigned int growBy );

//    void                                Quicksort( unsigned int ulP, unsigned int ulR );
//    unsigned int                        Partition( unsigned int ulP, unsigned int ulR );

// //////////////////////////////////////////////
//  PRIVATE DATA MEMBERS
private:
    Type**                              mppItems;                       // Array of pointers to items in the list.
    unsigned int                        mNumItems;                      // Number of items stored in the list.
    unsigned int                        mNumAllocated;                  // Number of pointers allocated for space in the list.

    unsigned int                        mGrowBy;                        // The number of items by which to inflate the array when necessary.
    unsigned char                       mGrowRate;                      // If LINEAR array is expanded by adding GrowBy items; if EXPONENTIAL array is expanded by doubling the item count.
};

//===========================================================================
// Template Implementation
//===========================================================================

template <class Type>
CListArray<Type>::CListArray( unsigned int ulInitialCount, unsigned int growBy, unsigned char growRate )
{
    mppItems = NULL;
    mNumItems = 0;
    mNumAllocated = 0;

    SetGrowBy( growBy );
    SetGrowRate( growRate );

    if ( ulInitialCount )
    {
        Grow( ulInitialCount );
    }
}

template <class Type>
CListArray<Type>::CListArray( const CListArray<Type> & other )
{
    *this = other;
}

template <class Type>
CListArray<Type>::~CListArray()
{
    Clear();
}

template <class Type>
CListArray<Type>& CListArray<Type>::operator = ( const CListArray<Type> & other )
{
    Clear();

    // Allocate
    mppItems = new Type * [ other.mNumAllocated ];
    mNumAllocated = other.mNumAllocated;

    // Clear the array
    memset( mppItems, NULL, sizeof( Type * ) * ( mNumAllocated ) );

    // Copy items
    unsigned int index;
    for ( index = 0; index < other.mNumItems; index ++ )
    {
        mppItems[index] = new Type( *other.mppItems[index] );
    }

    // Assign member variables
    mNumItems   = other.mNumItems;
    mGrowBy     = other.mGrowBy;
    mGrowRate   = other.mGrowRate;

    return *this;
}

template <class Type>
Type* CListArray<Type>::First( void ) const
{
    if ( mNumItems == 0 ) return NULL;
    return mppItems[0];
}

template <class Type>
Type* CListArray<Type>::Last( void ) const
{
    if ( mNumItems == 0 ) return NULL;
    return mppItems[ mNumItems - 1 ];
}

//===========================================================================
// Operator Overloads
//===========================================================================

template <class Type>
Type& CListArray<Type>::operator [] ( unsigned int index )
{
    assert ( index < mNumItems );
    return *mppItems[index];
}

template <class Type>
Type CListArray<Type>::operator [] ( unsigned int index ) const
{
    assert ( index < mNumItems );
    return *mppItems[index];
}

template <class Type>
Type* CListArray<Type>::operator () ( unsigned int index ) const
{
    assert ( index < mNumItems );
    return mppItems[index];
}

//===========================================================================
// Member Functions
//===========================================================================

template <class Type>
void CListArray<Type>::Clear( void )
{
    while ( mNumItems-- )
    {
        delete mppItems[mNumItems];
        mppItems[mNumItems] = NULL;
    }

    delete [] mppItems;
    mppItems = NULL;
    mNumItems = 0;
    mNumAllocated = 0;

    // NOTE: Do NOT reset GrowBy and GrowRate settings.
}

template <class Type>
bool CListArray<Type>::Grow( unsigned int growBy )
{
    bool                                bSuccess = false;

    if ( growBy == 0 )
    {
        // Grow by characteristics of list
        if ( mGrowRate == LISTARRAY_GROWRATE_EXPONENTIAL )
        {
            growBy = mNumAllocated;
        }
        else
        {
            growBy = mGrowBy;
        }

        // Can't grow by zero.
        if ( growBy == 0 )
        {
            growBy = gListArrayGrowBy;
        }
    }

    Type** newTypes = new Type* [ mNumAllocated + growBy ];
    if ( newTypes != NULL )
    {
        memset( newTypes, 0, ( sizeof( Type* ) * ( mNumAllocated + growBy ) ) );
        memcpy( newTypes, mppItems, ( sizeof( Type* ) * mNumAllocated ) );
        delete [] mppItems;
        mppItems = newTypes;
        mNumAllocated += growBy;

        bSuccess = true;
    }

    return bSuccess;
}

template <class Type>
bool CListArray<Type>::AddItem( const Type & item, unsigned int growBy )
{
    bool                                bSuccess = true;

    if ( mNumAllocated == mNumItems )
    {
        bSuccess = Grow( growBy );
    }

    if ( bSuccess )
    {
        mppItems[mNumItems] = new Type ( item );

        bSuccess = ( mppItems[mNumItems] != NULL );

        if ( bSuccess )
        {
            mNumItems++;
        }
    }

    return bSuccess;
}

template <class Type>
bool CListArray<Type>::AddUniqueItem( const Type & item, unsigned int growBy )
{
    bool                                bAdd = false;

    unsigned int                        index;
    if ( !FindItem( item, &index ) )
    {
        bAdd = AddItem( item, growBy );
    }

    return bAdd;
}

template <class Type>
bool CListArray<Type>::FindItem( const Type & item, unsigned int * pIndex ) const
{
    bool                                bFound = false;

    unsigned int                        scan = mNumItems;

    while ( scan-- )
    {
        if ( *mppItems[scan] == item )
        {
            if ( pIndex != NULL )
            {
                *pIndex = scan;
            }
            bFound = true;
            break;
        }
    }

    return bFound;
}

template <class Type>
bool CListArray<Type>::DeleteItem( unsigned int index )
{
    bool                                bDeleted = false;

    if ( index < mNumItems )
    {
        delete mppItems[index];

        // Decrement the item count
        --mNumItems;

        // Re-pack
        while( index < mNumItems )
        {
            mppItems[ index ] = mppItems[ index + 1 ];
            index++;
        }

        // NULL the now-empty item at the top of the list
        mppItems[mNumItems] = NULL;

        bDeleted = true;
    }

    return bDeleted;
}

template <class Type>
unsigned int CListArray<Type>::NumItems( void ) const
{
    return mNumItems;
}

template <class Type>
unsigned int CListArray<Type>::NumAllocated( void ) const
{
    return mNumAllocated;
}

template <class Type>
void CListArray<Type>::SetGrowBy( unsigned int growBy )
{
    if ( growBy == 0 )
    {
        growBy = gListArrayGrowBy;
    }

    mGrowBy = growBy;
}

template <class Type>
void CListArray<Type>::SetGrowRate( unsigned char growRate )
{
    if ( growRate != LISTARRAY_GROWRATE_EXPONENTIAL )
    {
        growRate = LISTARRAY_GROWRATE_LINEAR;
    }

    mGrowRate = growRate;
}

#endif // __LISTARRAY_HPP
