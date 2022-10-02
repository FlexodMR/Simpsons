// makefontgui.h : main header file for the MAKEFONTGUI application
//

#if !defined(AFX_MAKEFONTGUI_H__C7CFDAE3_70B6_4696_AAA7_3F6DE029322E__INCLUDED_)
#define AFX_MAKEFONTGUI_H__C7CFDAE3_70B6_4696_AAA7_3F6DE029322E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
    #error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"        // main symbols

/////////////////////////////////////////////////////////////////////////////
// CMakefontguiApp:
// See makefontgui.cpp for the implementation of this class
//

class CMakefontguiApp : public CWinApp
{
public:
    CMakefontguiApp();

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMakefontguiApp)
    public:
    virtual BOOL InitInstance();
    //}}AFX_VIRTUAL

// Implementation

    //{{AFX_MSG(CMakefontguiApp)
        // NOTE - the ClassWizard will add and remove member functions here.
        //    DO NOT EDIT what you see in these blocks of generated code !
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MAKEFONTGUI_H__C7CFDAE3_70B6_4696_AAA7_3F6DE029322E__INCLUDED_)
