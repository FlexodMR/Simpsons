// Enum.h: interface for the CIDLEnum class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_ENUM_H__9B0D7396_1B1E_482A_AFF7_DF5A4DD0B18D__INCLUDED_)
#define AFX_ENUM_H__9B0D7396_1B1E_482A_AFF7_DF5A4DD0B18D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CIDLEnum;

typedef TRef< CIDLEnum > CIDLEnumPtr;

class CIDLEnum :
    virtual public CMFCRefCount,
    public CObject
{
public:
    DECLARE_DYNCREATE( CIDLEnum )

    CIDLEnum();
	virtual ~CIDLEnum();

    CString GetName( ) const
    {
        return m_strName;
    }

    void SetName( const CString & strName )
    {
        m_strName = strName;
    }

    void AddEnumValue( const CString & strEnumValueName, int nValue )
    {
        SEnumValue oEnumValue;
        oEnumValue.strName = strEnumValueName;
        oEnumValue.nValue = nValue;
        m_vecIDLEnumValue.push_back( oEnumValue );
    }

    int GetEnumValueCount( ) const
    {
        return m_vecIDLEnumValue.size( );
    }

    CString GetEnumValueNameAt( int nIndex ) const
    {
        return m_vecIDLEnumValue.at( nIndex ).strName;
    }

    int GetEnumValueLiteralAt( int nIndex ) const
    {
        return m_vecIDLEnumValue.at( nIndex ).nValue;
    }


#if defined(_DEBUG) || defined(_AFXDLL)
	// Diagnostic Support
	virtual void Dump(CDumpContext& dc) const;
#endif

private:

    struct SEnumValue
    {
        CString strName;
        int     nValue;
    };

    CString     m_strName;

    vector< SEnumValue >    m_vecIDLEnumValue;
};

#endif // !defined(AFX_ENUM_H__9B0D7396_1B1E_482A_AFF7_DF5A4DD0B18D__INCLUDED_)
