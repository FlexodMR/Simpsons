#if !defined(AFX_BUTTONCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_)
#define AFX_BUTTONCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// FaderCtrl.h : header file
//

#include "controls.h"

/////////////////////////////////////////////////////////////////////////////
// CButtonCtrl window
 
class CButtonCtrl : public CWnd
{
// Construction
public:
	CButtonCtrl();
    BOOL Create( enum_button_style style, CWnd * pParent, UINT id, CPoint & pos);

private:

    enum_button_style m_style;
// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CButtonCtrl)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CButtonCtrl();

	// Generated message map functions
protected:
	//{{AFX_MSG(CButtonCtrl)
	afx_msg void OnPaint();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FADERCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_)
