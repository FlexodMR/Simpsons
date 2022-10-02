#if !defined(AFX_UPDATEPERIODDLG_H__C2CCB7E3_2870_45AE_9C08_29D43E9CFCFC__INCLUDED_)
#define AFX_UPDATEPERIODDLG_H__C2CCB7E3_2870_45AE_9C08_29D43E9CFCFC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// UpdatePeriodDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CUpdatePeriodDlg dialog

class CUpdatePeriodDlg : public CDialog
{
// Construction
public:
	CUpdatePeriodDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CUpdatePeriodDlg)
	enum { IDD = IDD_PERIOD };
	UINT	m_Period;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CUpdatePeriodDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CUpdatePeriodDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_UPDATEPERIODDLG_H__C2CCB7E3_2870_45AE_9C08_29D43E9CFCFC__INCLUDED_)
