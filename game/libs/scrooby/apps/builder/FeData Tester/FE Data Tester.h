// FE Data Tester.h : main header file for the FE DATA TESTER application
//

#if !defined(AFX_FEDATATESTER_H__B1D4CD5D_20E5_11D4_8A57_0050DA803311__INCLUDED_)
#define AFX_FEDATATESTER_H__B1D4CD5D_20E5_11D4_8A57_0050DA803311__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
    #error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterApp:
// See FE Data Tester.cpp for the implementation of this class
//

class CFEDataTesterApp : public CWinApp
{
public:
    CFEDataTesterApp();

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CFEDataTesterApp)
    public:
    virtual BOOL InitInstance();
    //}}AFX_VIRTUAL

// Implementation
    //{{AFX_MSG(CFEDataTesterApp)
    afx_msg void OnAppAbout();
    afx_msg void OnFileOpen();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FEDATATESTER_H__B1D4CD5D_20E5_11D4_8A57_0050DA803311__INCLUDED_)
