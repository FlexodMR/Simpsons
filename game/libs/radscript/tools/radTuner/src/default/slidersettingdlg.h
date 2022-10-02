#if !defined(AFX_SLIDERSETTINGDLG_H__5FFCDA67_7FF6_4E1A_A076_5436C0268A2F__INCLUDED_)
#define AFX_SLIDERSETTINGDLG_H__5FFCDA67_7FF6_4E1A_A076_5436C0268A2F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// SliderSettingDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CSliderSettingDlg dialog

class CSliderSettingDlg : public CDialog
{
// Construction
public:
	CSliderSettingDlg(CWnd* pParent = NULL);   // standard constructor

    int     m_nParamIndex;

// Dialog Data
	//{{AFX_DATA(CSliderSettingDlg)
	enum { IDD = IDD_DIALOG_SLIDER_SETTING };
	CSliderCtrl	m_sldTest;
	float	m_fltMaxValue;
	float	m_fltMinValue;
	CString	m_strClass;
	CString	m_strMethod;
	CString	m_strName;
	CString	m_strType;
	float	m_fltStepValue;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSliderSettingDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CSliderSettingDlg)
	afx_msg void OnKillfocusEditMaxValue();
	afx_msg void OnKillfocusEditMinValue();
	afx_msg void OnKillfocusEditStep();
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SLIDERSETTINGDLG_H__5FFCDA67_7FF6_4E1A_A076_5436C0268A2F__INCLUDED_)
