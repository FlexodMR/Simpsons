#if !defined(AFX_MEMCONFIGURATION_H__96B09D8D_9978_4004_B48C_D4BDF59BF5C4__INCLUDED_)
#define AFX_MEMCONFIGURATION_H__96B09D8D_9978_4004_B48C_D4BDF59BF5C4__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
#include <mfcrefcount.h>
// MemConfiguration.h : header file
//
//============================================================================
// class CMemConfiguration
//============================================================================
class CMemConfiguration;
typedef TRef< CMemConfiguration > CMemConfigurationPtr;

//============================================================================
// CMemConfiguration :
//
// Description:
//      - document contain all configuration global to the session
//
// Requirement:
//      - Memory Group ID Colour Table
//
// Dependency:
//      - None
//
// Association
//      - None
//============================================================================
class CMemConfiguration :
    public CDocument,
    public CSubject,
    public CMFCRefCount
{
protected:
	CMemConfiguration();           // protected constructor used by dynamic creation
	virtual ~CMemConfiguration();
	DECLARE_SERIAL(CMemConfiguration)

public:

    typedef map< CString, COLORREF > MemColourTable;
    typedef map< MM_ClientPlatform, CString > MemSymbolFileTable;

    void Initialize( );

    //
    // group id colour lookup table
    //
    const CMemConfiguration::MemColourTable & GetGroupIDColourLookupTable( ) const;

    CMemConfiguration::MemColourTable & GetGroupIDColourLookupTable( );

    void SetGroupIDColourLookupTable( const MemColourTable & aryGroupIDColour );

    COLORREF GetMemColourByGroupID( const CString & strGroupID ) const;

    //
    // symbol lookup tool table
    //
    const CMemConfiguration::MemSymbolFileTable & GetSymbolLookupToolTable( ) const;
    CMemConfiguration::MemSymbolFileTable & GetSymbolLookupToolTable( );

    void GetSymbolLookupTool( const MM_ClientPlatform ePlatform, CString & strExeFile ) const;

    void SetSymbolLookupTool( const MM_ClientPlatform ePlatform, const CString & strExeFile );

    const CString GetPlatformExecutablePath( const MM_ClientPlatform ePlatform ) const;

    //
    // platform symbol table lookup executable file name
    //
    const CString GetClientExecutablePath( ) const;

#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

private:

    MemColourTable                  m_aryGroupIDColour;
    MemSymbolFileTable              m_arySymbolFileTable;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemConfiguration)
	public:
	virtual void Serialize(CArchive& ar);   // overridden for document i/o
	virtual BOOL OnSaveDocument(LPCTSTR lpszPathName);
	virtual BOOL OnOpenDocument(LPCTSTR lpszPathName);
	virtual void OnCloseDocument();
	protected:
	virtual BOOL OnNewDocument();
	virtual BOOL SaveModified();
	//}}AFX_VIRTUAL

	// Generated message map functions
protected:
	//{{AFX_MSG(CMemConfiguration)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMCONFIGURATION_H__96B09D8D_9978_4004_B48C_D4BDF59BF5C4__INCLUDED_)
