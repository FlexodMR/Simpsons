#if !defined(AFX_RCFINFODLG_H__AE80BFDE_EEBE_44F6_AF97_BBB2F93192D1__INCLUDED_)
#define AFX_RCFINFODLG_H__AE80BFDE_EEBE_44F6_AF97_BBB2F93192D1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// RCFInfoDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CRCFInfoDlg dialog

class CRCFInfoDlg : public CDialog
{
// Construction
public:
	CRCFInfoDlg(CWnd* pParent = NULL);   // standard constructor

    // Set the info text
    void SetInfoText( const char* pText, unsigned int maxsize );

// Dialog Data
	//{{AFX_DATA(CRCFInfoDlg)
	enum { IDD = IDD_RCFINFODLG_DIALOG };
	CEdit	m_InfoText;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRCFInfoDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    CFont m_font;
    char m_InfoTextBuf[ 1024 ];

	// Generated message map functions
	//{{AFX_MSG(CRCFInfoDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnDestroy();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RCFINFODLG_H__AE80BFDE_EEBE_44F6_AF97_BBB2F93192D1__INCLUDED_)
