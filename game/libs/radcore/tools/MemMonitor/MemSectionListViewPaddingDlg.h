#if !defined(AFX_MEMSECTIONLISTVIEWPADDINGDLG_H__9F0843AF_854B_40A3_ACBE_5EC7FDA00DEF__INCLUDED_)
#define AFX_MEMSECTIONLISTVIEWPADDINGDLG_H__9F0843AF_854B_40A3_ACBE_5EC7FDA00DEF__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemSectionListViewPaddingDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMemSectionListViewPaddingDlg dialog

class CMemSectionListViewPaddingDlg :
    public CDialog
{
// Construction
public:
	CMemSectionListViewPaddingDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CMemSectionListViewPaddingDlg)
	enum { IDD = IDD_DIALOG_SECTION_LISTVIEW_PADDING };
	int		m_nPadding;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemSectionListViewPaddingDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CMemSectionListViewPaddingDlg)
	virtual void OnOK();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMSECTIONLISTVIEWPADDINGDLG_H__9F0843AF_854B_40A3_ACBE_5EC7FDA00DEF__INCLUDED_)
