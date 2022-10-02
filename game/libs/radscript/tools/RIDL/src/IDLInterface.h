// Interface.h: interface for the CIDLInterface class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_INTERFACE_H__94A5AFA4_3D80_4685_B6BC_E2F170EAEF68__INCLUDED_)
#define AFX_INTERFACE_H__94A5AFA4_3D80_4685_B6BC_E2F170EAEF68__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "IDLMethod.h"
#include "IDLEnum.h"

class CIDLInterface;

typedef TRef< CIDLInterface > CIDLInterfacePtr;

class CIDLInterface :
    virtual public CMFCRefCount,
    public CObject
{
public:
    DECLARE_DYNCREATE( CIDLInterface )

    CIDLInterface();
	virtual ~CIDLInterface();

    CString GetName( ) const;

    void SetName( const CString & strName );

    void SetBaseClass( const CString & strBaseClass );

    void SetBaseClass( const CIDLInterfacePtr & pBaseClass );

    CString GetBaseClass( ) const;

    CIDLInterfacePtr GetBaseClassPtr( ) const;

    void Evaluate( vector< CIDLInterfacePtr >& vecInterfacesPtr );

    bool GetEvaluated( ) const
    {
        return m_bEvaluated;
    }

    void AddMethodPtr( const CIDLMethodPtr & pMethod );

    void AddEnumPtr( const CIDLEnumPtr & pEnum );

    int GetMethodCount( ) const
    {
        return m_vecMethodPtr.size( );
    }

    CIDLMethodPtr FindMethodPtr( const CString & strName )
    {
        for ( unsigned int i = 0; i < m_vecMethodPtr.size( ); i ++ )
        {
            if ( m_vecMethodPtr.at( i )->GetName( ) == strName )
            {
                return m_vecMethodPtr.at( i );
            }
        }
        return NULL;
    }

    CIDLMethodPtr GetMethodPtrAt( int i ) const
    {
        return m_vecMethodPtr.at( i );
    }

    int GetEnumCount( ) const
    {
        return m_veCIDLEnumPtr.size( );
    }

    CIDLEnumPtr GetEnumPtrAt( int i ) const
    {
        return m_veCIDLEnumPtr.at( i );
    }

#if defined(_DEBUG) || defined(_AFXDLL)
	// Diagnostic Support
	virtual void Dump(CDumpContext& dc) const;
#endif

private:

    bool                    m_bEvaluated;

    CString                 m_strName;

    // if ( m_bEvaluated == false ) use m_strBaseClass;
    CString                 m_strBaseClass;
    // if ( m_bEvaluated == true ) use m_pBaseClass;
    CIDLInterfacePtr           m_pBaseClass;

    vector< CIDLMethodPtr >    m_vecMethodPtr;
    vector< CIDLEnumPtr >      m_veCIDLEnumPtr;
};

#endif // !defined(AFX_INTERFACE_H__94A5AFA4_3D80_4685_B6BC_E2F170EAEF68__INCLUDED_)
