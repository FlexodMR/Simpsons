// MFCRefCount.h: interface for the CMFCRefCount class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MFCREFCOUNT_H__605FE84C_9BAD_4AE2_82E0_FA5599327009__INCLUDED_)
#define AFX_MFCREFCOUNT_H__605FE84C_9BAD_4AE2_82E0_FA5599327009__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <assert.h>

class CMFCRefCount
{
protected:
    CMFCRefCount() :
         m_lRefCount( 0 )
    {
    }

	virtual ~CMFCRefCount()
    {
    }

public:

    virtual void AddRef( void )
    {
        InterlockedIncrement( & m_lRefCount );
    }

    virtual void Release( void )
    {
        InterlockedDecrement( & m_lRefCount );
        
        if ( m_lRefCount == 0 )
        {
            delete this;
        }
    }

private:
    long m_lRefCount;
};

template < class T >
class TRef
{
public:

	TRef( )
	{
		m_pInterface = NULL;
	}

	TRef( const T * pInterface )
	{
		m_pInterface = const_cast<T*>( pInterface );

		if ( m_pInterface != NULL )
		{
			m_pInterface->AddRef( );
		}
	}

    TRef( const TRef< T > & copy )
    { 
        m_pInterface = copy.m_pInterface;

        if ( m_pInterface != NULL )
        {
            m_pInterface->AddRef( );
        }
    }

	~TRef( )
	{
		if ( m_pInterface != NULL )
		{
			T * pIOld = m_pInterface;
			m_pInterface = NULL;
			pIOld->Release( );
		}
	}

    operator T*( ) const
    {
        return m_pInterface;
    }

    operator const T*( ) const
    {
        return m_pInterface;
    }

	T &  operator *( )
    {
        assert( m_pInterface != NULL );
        return *m_pInterface;
    }

	T &  operator *( ) const
    {
        assert( m_pInterface != NULL );
        return *m_pInterface;
    }

    T *  operator->( )
    {
        assert( m_pInterface != NULL );
        return m_pInterface;
    }

    const T *  operator->( ) const
    {
        assert( m_pInterface != NULL );
        return m_pInterface;
    }

    TRef< T > & operator = ( const TRef< T > & copy )
    {
        if ( copy != *this )
        {
            if ( m_pInterface != NULL )
            {
                m_pInterface->Release( );
            }
            
            m_pInterface = copy.m_pInterface;
            
            if ( m_pInterface != NULL )
            {
                m_pInterface->AddRef( );
            }
        }
        
        return *this;
    }
                 
	T* operator=( T * pInterface )
	{
		if ( m_pInterface != pInterface )
		{
            T * pOld = m_pInterface;
            m_pInterface = pInterface;

            if ( m_pInterface != NULL )
            {
                m_pInterface->AddRef( );
            }

			if ( pOld != NULL )
			{
				pOld->Release( );
			}
		}

		return m_pInterface;
	}

    bool operator != ( T * pInterface ) const
    {
        return ( m_pInterface != pInterface );
    }

    bool operator == ( T * pInterface ) const
    {
        return ( m_pInterface == pInterface );
    }

	mutable T * m_pInterface;
};


template < class T >
CDumpContext & operator << ( CDumpContext & dc, const TRef< T > pOb )
{
    pOb->Dump( dc );
    return dc;
}

template < class T >
CArchive & operator << ( CArchive & ar, TRef< T > & pOb )
{
    static_cast< CObject * >( static_cast< T * >( pOb ) )->Serialize( ar );
    return ar;
}

template < class T >
CArchive & operator >> ( CArchive & ar, TRef< T > & pOb )
{
    pOb = static_cast< T * >( T::CreateObject( ) );

    static_cast< CObject * >( static_cast< T * >( pOb ) )->Serialize( ar );
    return ar;
}

template< class TYPE1 >
CArchive& AFXAPI operator << ( CArchive& ar, const vector< TYPE1 > & aryObject )
{
	ar << aryObject.size( );
    for ( vector< TYPE1 >::const_iterator p = aryObject.begin( ); p != aryObject.end( ); p++ )
    {
        ar << (*p);
    }
    return ar;
}

template< class TYPE1 >
CArchive& AFXAPI operator >> ( CArchive& ar, vector< TYPE1 > & aryObject )
{
    unsigned int uSize = 0;
    ar >> uSize;
    TYPE1 item1;
    for ( unsigned int i = 0; i < uSize; i ++ )
    {
        ar >> item1;
        aryObject.push_back( item1 );
    }
    return ar;
}


template< class TYPE1, class TYPE2 >
CArchive& AFXAPI operator << ( CArchive& ar, const map< TYPE1, TYPE2 > & aryObject )
{
	ar << aryObject.size( );
    for ( map< TYPE1, TYPE2 >::const_iterator p = aryObject.begin( ); p != aryObject.end( ); p++ )
    {
        ar << p->first;
        ar << p->second;
    }
    return ar;
}

template< class TYPE1, class TYPE2 >
CArchive& AFXAPI operator >> ( CArchive& ar, map< TYPE1, TYPE2 > & aryObject )
{
    unsigned int uSize = 0;
    ar >> uSize;
    TYPE1 item1;
    TYPE2 item2;
    for ( unsigned int i = 0; i < uSize; i ++ )
    {
        ar >> item1;
        ar >> item2;
        aryObject.insert( pair< TYPE1, TYPE2 >( item1, item2 ) );
    }
    return ar;
}

namespace stdex
{
    //
    // STL extension for record like array usage
    //
    template< class ListObject, class ListIterator >
    bool MoveNext( const ListObject & Objects, ListIterator & p )
    {
        //
        // if array zero size, return false, and enforce the end() rule
        // and return false
        //
        if ( Objects.size( ) == 0 )
        {
            p = Objects.end( );
            return false;
        }

        //
        // if array not empty and we pointing at end(),
        // However, return false.
        //
        if ( p == Objects.end( ) && Objects.size( ) > 0 )
        {
            return false;
        }

        //
        // normally just move to the next element and return true
        //
        if ( p != Objects.end( ) )
        {
            p ++;

            //
            // another special case, move beyond the last element,
            // enforce rule and point to the last element
            //
            if ( p == Objects.end( ) )
            {
                return false;
            }
            return true;
        }
        else
        {
            return false;
        }
    }

    template< class ListObject, class ListIterator >
    bool MovePrev( const ListObject & Objects, ListIterator & p )
    {
        //
        // if array zero size, return false, and enforce the end() rule
        //
        if ( Objects.size( ) == 0 )
        {
            p = Objects.end( );
            return false;
        }

        //
        // if array not empty and we pointing at end(),
        // and return true. (different from MoveNext( ))
        //
        if ( p == Objects.end( ) && Objects.size( ) > 0 )
        {
            return true;
        }

        //
        // normally just move to the prev element and return true
        //
        if ( p != Objects.begin( ) )
        {
            p --;
            return true;
        }
        else
        {
            return false;
        }
    }

    template< class ListObject, class ListIterator >
    bool MoveFirst( const ListObject & Objects, ListIterator & p )
    {
        if ( Objects.size( ) > 0 )
        {
            p = Objects.begin( );
            return true;
        }
        else
        {
            p = Objects.end( );
            return false;
        }
    }

    template< class ListObject, class ListIterator >
    bool MoveLast( const ListObject & Objects, ListIterator & p )
    {
        if ( Objects.size( ) > 0 )
        {
            p = Objects.end( );
            p--;
            return true;
        }
        else
        {
            p = Objects.end( );
            return false;
        }
    }
}


#endif // !defined(AFX_MFCREFCOUNT_H__605FE84C_9BAD_4AE2_82E0_FA5599327009__INCLUDED_)
