// Parameter.h: interface for the CIDLParameter class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PARAMETER_H__1E402625_702E_4425_BE04_E2BB6B46F5C0__INCLUDED_)
#define AFX_PARAMETER_H__1E402625_702E_4425_BE04_E2BB6B46F5C0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CIDLParameter;

typedef TRef< CIDLParameter > CIDLParameterPtr;

class CIDLParameter :
    public CObject,
    public CMFCRefCount
{
public:
    DECLARE_DYNCREATE( CIDLParameter )

	CIDLParameter();
	virtual ~CIDLParameter();

    void SetName( const CString & strName )
    {
        m_strName = strName;
    }

    CString GetName( ) const
    {
        return m_strName;
    }

    CString GetSpecifier( ) const
    {
        return m_strSpecifier;
    }

    void SetSpecifier( const CString & strSpecifier )
    {
        m_strSpecifier = strSpecifier;
    }

    CString GetDeclarator( ) const
    {
        return m_strDeclarator;
    }

    void SetDeclarator( const CString & strDeclarator )
    {
        m_strDeclarator = strDeclarator;
    }

    int GetIndLvl( ) const
    {
        return m_nIndLvl;
    }

    void SetIndLvl( int nIndLvl )
    {
        m_nIndLvl = nIndLvl;
    }

private:
    CString     m_strName;
    CString     m_strSpecifier;
    CString     m_strDeclarator;
    int         m_nIndLvl;
};

#endif // !defined(AFX_PARAMETER_H__1E402625_702E_4425_BE04_E2BB6B46F5C0__INCLUDED_)
