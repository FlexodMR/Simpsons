//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBVECTOR_HPP
#define OBVECTOR_HPP

#include "obMemory.hpp"
template< class T > class obVector
{
    public:

        obVector( unsigned int size = 0, unsigned int grow = 1);
        ~obVector( void );

        void AddEnd( T & item );
        void AddAt( unsigned int i, T & item );

        void RemoveAt( unsigned int i );  
        void RemoveAll( void );

        unsigned int GetNumItems( void );
        T & GetAt( unsigned int i );
  
    private:

        void Grow( );
    
        T * m_pArray;
        unsigned int m_Items;
        unsigned int m_Size;
        unsigned int m_Grow;       
};
template< class T >
obVector< T >::obVector( unsigned int size, unsigned int grow )
    :
    m_Size( size ),
    m_Items( 0 ),
    m_Grow( grow > 0 ? grow : 1 )
{
    m_pArray = new T[ m_Size ];
}

template<class T>
obVector< T >::~obVector( void )
{
    delete [] m_pArray;
}

template< class T >
void obVector< T >::AddEnd( T & item )
{
    if ( m_Items >= m_Size )
    {
        Grow( );
    }
    
    m_pArray[ m_Items ] = item;

    m_Items++;
}

template< class T >
void obVector< T >::Grow( )
{
    T * pNewArray = new T[ m_Size + m_Grow ];

    for( unsigned int i = 0; i < m_Items; i ++ )
    {
        pNewArray[ i ] = m_pArray[ i ];
    }

    delete [] m_pArray;
    m_pArray = pNewArray;
    m_Size += m_Grow;
}

template< class T >
unsigned obVector< T >::GetNumItems( void )
{
    return m_Items;
}

template< class T >
void obVector< T >::RemoveAt( unsigned int i )
{
    if ( i < m_Items )
    {
        for( i; i < (m_Items - 1); i ++ )
        {
            m_pArray[ i ] = m_pArray[ i + 1 ];
        }
    }

    m_Items--;
}

template< class T >
void obVector< T >::AddAt( unsigned int index, T & item )
{
    if ( m_Items >= m_Size )
    {
        Grow( );
    }

    for( i = index; i < (m_Items-1); i ++ )
    {
        m_pArray[ i + 1 ] = index; 
    }

    m_pArray[ index ] = item;
    m_Items++;
}

template< class T >
void obVector< T >::RemoveAll( void )
{
    m_Items = 0;
}

template< class T >
T & obVector< T >::GetAt( unsigned int i )
{
    return m_pArray[ i ];
}
#endif // OBVECTOR_HPP