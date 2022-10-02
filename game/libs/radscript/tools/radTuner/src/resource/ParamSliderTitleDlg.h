#if !defined(AFX_PARAMSLIDERTITLEDLG_H__D2974897_F6EA_4930_A49C_29EE8CE432FD__INCLUDED_)
#define AFX_PARAMSLIDERTITLEDLG_H__D2974897_F6EA_4930_A49C_29EE8CE432FD__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ParamSliderTitleDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CParamSliderTitleDlg dialog

class CParamSliderTitleDlg : public CDialog
{
// Construction
public:
	CParamSliderTitleDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CParamSliderTitleDlg)
	enum { IDD = IDD_DIALOG_PARAM_SLIDER_TITLE_TEXT };
	CString	m_strTitleText;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CParamSliderTitleDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	virtual LRESULT WindowProc(UINT message, WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CParamSliderTitleDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PARAMSLIDERTITLEDLG_H__D2974897_F6EA_4930_A49C_29EE8CE432FD__INCLUDED_)
