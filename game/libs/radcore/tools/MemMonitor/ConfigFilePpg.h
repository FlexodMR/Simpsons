#if !defined(AFX_CONFIGFILEPPG_H__7CA8C0CB_D8E1_438E_8859_804075318ADA__INCLUDED_)
#define AFX_CONFIGFILEPPG_H__7CA8C0CB_D8E1_438E_8859_804075318ADA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ConfigFilePpg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CConfigFilePpg dialog

class CConfigFilePpg :
    public CPropertyPageEx
{
    DECLARE_DYNCREATE(CConfigFilePpg)

// Construction
public:
	CConfigFilePpg( );   // standard constructor
    ~CConfigFilePpg();

    void Initialize( const CString & strFileName );

    CString GetSessionDataFileName( ) const;

protected:

    CString GetTemplateDataFileName( );

    bool CopyTemplateDataFile( );

    bool IsFileNameAcceptable( const CString & strName );

// Dialog Data
	//{{AFX_DATA(CConfigFilePpg)
	enum { IDD = IDD_PROPPAGE_FILE };
	CEdit	m_edtFileName;
	CButton	m_butFileBrowser;
	CString	m_strSessionDataFileName;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CConfigFilePpg)
    public:
	virtual LRESULT OnWizardNext();
    virtual BOOL OnApply();
	virtual void OnOK( );
    virtual BOOL OnSetActive();
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CConfigFilePpg)
	afx_msg void OnButtonFileBrowser();
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CONFIGFILEPPG_H__7CA8C0CB_D8E1_438E_8859_804075318ADA__INCLUDED_)
