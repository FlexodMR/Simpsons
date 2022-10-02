// wincementer.h : main header file for the WINCEMENTER application
//

#if !defined(AFX_WINCEMENTER_H__D7426BF4_DF4C_4FF5_8119_9A67535B4276__INCLUDED_)
#define AFX_WINCEMENTER_H__D7426BF4_DF4C_4FF5_8119_9A67535B4276__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CWincementerApp:
// See wincementer.cpp for the implementation of this class
//

class CWincementerApp : public CWinApp
{
public:
	CWincementerApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWincementerApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CWincementerApp)
	afx_msg void OnAppAbout();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WINCEMENTER_H__D7426BF4_DF4C_4FF5_8119_9A67535B4276__INCLUDED_)
