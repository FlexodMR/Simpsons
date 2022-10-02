#if !defined(AFX_CONFIGSYMBOLFILEPPG_H__D4446CD8_912C_46F1_905D_552309FB0E3D__INCLUDED_)
#define AFX_CONFIGSYMBOLFILEPPG_H__D4446CD8_912C_46F1_905D_552309FB0E3D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ConfigSymbolFilePpg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CConfigSymbolFilePpg dialog

class CConfigSymbolFilePpg :
    public CPropertyPageEx
{
	DECLARE_DYNCREATE(CConfigSymbolFilePpg)

// Construction
public:
	CConfigSymbolFilePpg();
	~CConfigSymbolFilePpg();

    void Initialize( CMemConfiguration * pConfig );

    CMemConfiguration * m_pConfig;
// Dialog Data
	//{{AFX_DATA(CConfigSymbolFilePpg)
	enum { IDD = IDD_PROPPAGE_PDBLIST };
	CString	m_strGCNExeFileName;
	CString	m_strPCExeFileName;
	CString	m_strPS2ExeFileName;
	CString	m_strXboxExeFileName;
	//}}AFX_DATA


// Overrides
	// ClassWizard generate virtual function overrides
	//{{AFX_VIRTUAL(CConfigSymbolFilePpg)
	public:
	virtual BOOL OnSetActive();
	virtual BOOL OnApply();
	virtual void OnOK();
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	// Generated message map functions
	//{{AFX_MSG(CConfigSymbolFilePpg)
	afx_msg void OnButtonGcnExeFile();
	afx_msg void OnButtonPcExeFile();
	afx_msg void OnButtonPs2ExeFile();
	afx_msg void OnButtonXboxExeFile();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CONFIGSYMBOLFILEPPG_H__D4446CD8_912C_46F1_905D_552309FB0E3D__INCLUDED_)
