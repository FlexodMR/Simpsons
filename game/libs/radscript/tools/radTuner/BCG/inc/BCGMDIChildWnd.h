//*******************************************************************************
// COPYRIGHT NOTES
// ---------------
// This is a part of the BCGControlBar Library
// Copyright (C) 1998-2000 BCGSoft Ltd.
// All rights reserved.
//
// This source code can be used, distributed or modified
// only under terms and conditions 
// of the accompanying license agreement.
//*******************************************************************************

#if !defined(AFX_BCGMDICHILDWND_H__3BE44BE6_C83D_11D3_A723_009027900694__INCLUDED_)
#define AFX_BCGMDICHILDWND_H__3BE44BE6_C83D_11D3_A723_009027900694__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// BCGMDIChildWnd.h : header file
//

#include "bcgcontrolbar.h"

class CBCGMDIFrameWnd;

/////////////////////////////////////////////////////////////////////////////
// CBCGMDIChildWnd frame

class BCGCONTROLBARDLLEXPORT CBCGMDIChildWnd : public CMDIChildWnd
{
	DECLARE_DYNCREATE(CBCGMDIChildWnd)
protected:
	CBCGMDIChildWnd();           // protected constructor used by dynamic creation

// Attributes
protected:
	CBCGMDIFrameWnd*	m_pMDIFrame;

// Operations
public:
	void DockControlBarLeftOf(CControlBar* pBar, CControlBar* pLeftOf);

// Overrides

	// Next methods used by MDI tabs:
	virtual CString GetFrameText () const;
	virtual HICON GetFrameIcon () const;

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CBCGMDIChildWnd)
	public:
	virtual BOOL PreTranslateMessage(MSG* pMsg);
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CBCGMDIChildWnd();

	// Generated message map functions
	//{{AFX_MSG(CBCGMDIChildWnd)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnMDIActivate(BOOL bActivate, CWnd* pActivateWnd, CWnd* pDeactivateWnd);
	//}}AFX_MSG
	afx_msg LRESULT OnSetText(WPARAM,LPARAM);
	afx_msg LRESULT OnSetIcon(WPARAM,LPARAM);
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_BCGMDICHILDWND_H__3BE44BE6_C83D_11D3_A723_009027900694__INCLUDED_)
