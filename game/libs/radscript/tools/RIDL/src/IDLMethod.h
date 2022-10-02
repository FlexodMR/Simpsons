// Method.h: interface for the CIDLMethod class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_METHOD_H__606B14E3_891D_4567_BF0E_3134E1447667__INCLUDED_)
#define AFX_METHOD_H__606B14E3_891D_4567_BF0E_3134E1447667__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "IDLParameter.h"

class CIDLMethod;

typedef TRef< CIDLMethod > CIDLMethodPtr;

class CIDLMethod :
    public CMFCRefCount,
    public CObject
{
public:
    DECLARE_DYNCREATE( CIDLMethod )

    CIDLMethod( );
	virtual ~CIDLMethod( );

    CString GetName( ) const;

    void SetName( const CString & strName );

    CIDLParameterPtr GetReturnType( ) const;

    void SetReturnType( const CIDLParameterPtr & pRetType );

    void AddParameter( const CIDLParameterPtr & pParameter );

    int GetParameterCount( ) const
    {
        return m_vecParameterPtr.size( );
    }

    CIDLParameterPtr GetParameterPtrAt( int nIndex ) const
    {
        return m_vecParameterPtr.at( nIndex );
    }

#if defined(_DEBUG) || defined(_AFXDLL)
	// Diagnostic Support
	virtual void Dump(CDumpContext& dc) const;
#endif

private:

    CString     m_strName;

    CIDLParameterPtr   m_pReturnType;

    vector< CIDLParameterPtr > m_vecParameterPtr;
};

#endif // !defined(AFX_METHOD_H__606B14E3_891D_4567_BF0E_3134E1447667__INCLUDED_)
