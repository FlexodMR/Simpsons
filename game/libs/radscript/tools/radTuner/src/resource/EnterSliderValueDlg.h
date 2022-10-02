#if !defined(AFX_ENTERSLIDERVALUEDLG_H__763D49CE_02AA_4DC6_9A57_D9EDB4861ADE__INCLUDED_)
#define AFX_ENTERSLIDERVALUEDLG_H__763D49CE_02AA_4DC6_9A57_D9EDB4861ADE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// EnterSliderValueDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CEnterSliderValueDlg dialog

class CEnterSliderValueDlg : public CDialog
{
// Construction
public:
	CEnterSliderValueDlg(CWnd* pParent = NULL);   // standard constructor

    const CString & GetValueInText( ) const;

    float GetValueInFloat( ) const;

    int GetValueInInt( ) const;

// Dialog Data
	//{{AFX_DATA(CEnterSliderValueDlg)
	enum { IDD = IDD_DIALOG_ENTER_SLIDER_VALUE };
	CString	m_strValueText;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CEnterSliderValueDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CEnterSliderValueDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ENTERSLIDERVALUEDLG_H__763D49CE_02AA_4DC6_9A57_D9EDB4861ADE__INCLUDED_)
