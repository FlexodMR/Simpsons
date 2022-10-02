// MFCRefCount.h: interface for the CMFCRefCount class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MFCREFCOUNT_H__605FE84C_9BAD_4AE2_82E0_FA5599327009__INCLUDED_)
#define AFX_MFCREFCOUNT_H__605FE84C_9BAD_4AE2_82E0_FA5599327009__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CMFCRefCount  
{
protected:
    CMFCRefCount() :
         m_uRefCount( 0 )
    {
    }

	virtual ~CMFCRefCount()
    {
    }

public:
    void AddRef( ) const
    {
        m_uRefCount ++;
    }

    void Release( ) const
    {
        m_uRefCount --;

        if ( m_uRefCount == 0 )
        {
            delete this;
        }
    }

private:
    mutable unsigned int m_uRefCount;
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
        ASSERT( m_pInterface != NULL );
        return *m_pInterface;
    }

	T &  operator *( ) const
    {
        ASSERT( m_pInterface != NULL );
        return *m_pInterface;
    }

    T *  operator->( )
    {
        ASSERT( m_pInterface != NULL );
        return m_pInterface;
    }

    const T *  operator->( ) const
    {
        ASSERT( m_pInterface != NULL );
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

#endif // !defined(AFX_MFCREFCOUNT_H__605FE84C_9BAD_4AE2_82E0_FA5599327009__INCLUDED_)
