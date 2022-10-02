#if !defined(AFX_MEMSECTIONCREATEPROGRESSDLG_H__2680C6A2_F8B2_451A_82FF_7D625B26A4B4__INCLUDED_)
#define AFX_MEMSECTIONCREATEPROGRESSDLG_H__2680C6A2_F8B2_451A_82FF_7D625B26A4B4__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemSectionCreateProgressDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMemSectionCreateProgressDlg dialog

class CMemSectionCreateProgressDlg :
    public CDialog
{
// Construction
public:
	CMemSectionCreateProgressDlg( );   // standard constructor

    void SetProgress( float fPercentDone );

    void Initialize( );

// Dialog Data
	//{{AFX_DATA(CMemSectionCreateProgressDlg)
	enum { IDD = IDD_DIALOG_PROGRESS };
	CProgressCtrl	m_prgLoading;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemSectionCreateProgressDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CMemSectionCreateProgressDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnTimer(UINT nIDEvent);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMSECTIONCREATEPROGRESSDLG_H__2680C6A2_F8B2_451A_82FF_7D625B26A4B4__INCLUDED_)
