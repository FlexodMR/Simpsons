#if !defined(AFX_GOTOLINEDIALOG_H__D92B7F02_0F28_41CA_89A2_113BD66D8783__INCLUDED_)
#define AFX_GOTOLINEDIALOG_H__D92B7F02_0F28_41CA_89A2_113BD66D8783__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// GoToLineDialog.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CGoToLineDialog dialog

class CGoToLineDialog : public CDialog
{
// Construction
public:
	CGoToLineDialog(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CGoToLineDialog)
	enum { IDD = IDD_GO_TO_LINE };
	UINT	m_LineNumber;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CGoToLineDialog)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CGoToLineDialog)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_GOTOLINEDIALOG_H__D92B7F02_0F28_41CA_89A2_113BD66D8783__INCLUDED_)
