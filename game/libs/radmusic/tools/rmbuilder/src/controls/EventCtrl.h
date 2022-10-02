#if !defined(AFX_EVENTCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_)
#define AFX_EVENTCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

/////////////////////////////////////////////////////////////////////////////
// CEventCtrl window
#include "LedCtrl.h"
#include "ButtonCtrl.h"
#include "afxtempl.h"

class CEventCtrl : public CWnd
{

public:
	CEventCtrl();
	
    BOOL Create(
        const char * p_name, 
        CWnd * pParent,
        UINT id,
        CPoint & pos);
        
private:
    
    CButtonCtrl m_wndButtonCtrl;

    CString m_Name;
    
// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CEventCtrl)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CEventCtrl();

	// Generated message map functions
protected:
	//{{AFX_MSG(CEventCtrl)
	afx_msg void OnPaint( void );
    afx_msg void OnButton( void );	
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
public:
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FADERCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_)
