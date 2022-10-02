// rwrDlg.h : header file
//

#if !defined(AFX_RWRDLG_H__37D6BCDA_FB9C_4E73_A740_A4EABB967198__INCLUDED_)
#define AFX_RWRDLG_H__37D6BCDA_FB9C_4E73_A740_A4EABB967198__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CRwrDlg dialog

class CRwrDlg : public CDialog
{
// Construction
public:
	CRwrDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CRwrDlg)
	enum { IDD = IDD_RENAMEWAVREGIONS_GUI_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRwrDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

private:

    void TestDropTarget( UINT resource, CPoint & point, CString & text );
    void HandleFindFile( UINT resource, const char * pFilter );

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CRwrDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
    afx_msg void OnDropFiles( HDROP hDropInfo );
	afx_msg void OnSourceButton();
	afx_msg void OnTargetButton();
	afx_msg void OnScriptButton();
	afx_msg void OnGo();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RWRDLG_H__37D6BCDA_FB9C_4E73_A740_A4EABB967198__INCLUDED_)
