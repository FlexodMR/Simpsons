// movieviewer.h : main header file for the MOVIEVIEWER application
//

#if !defined(AFX_MOVIEVIEWER_H__3466D034_9A1F_478D_93DE_221DB8782097__INCLUDED_)
#define AFX_MOVIEVIEWER_H__3466D034_9A1F_478D_93DE_221DB8782097__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CMovieviewerApp:
// See movieviewer.cpp for the implementation of this class
//

class CMovieviewerApp : public CWinApp
{
public:
	CMovieviewerApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMovieviewerApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CMovieviewerApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MOVIEVIEWER_H__3466D034_9A1F_478D_93DE_221DB8782097__INCLUDED_)
