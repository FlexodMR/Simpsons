// RmBuilder.h : main header file for the RMBUILDER application
//

#if !defined(AFX_RMBUILDER_H__2403A270_3EBC_4D3B_939C_02FDD9D7BC90__INCLUDED_)
#define AFX_RMBUILDER_H__2403A270_3EBC_4D3B_939C_02FDD9D7BC90__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "../../res/resource.h"
#include "Afxmt.h"

/////////////////////////////////////////////////////////////////////////////
// CRmBuilderApp:
// See RmBuilder.cpp for the implementation of this class
//


class CRmBuilderApp : public CWinApp
{
public:
	CRmBuilderApp();

	static void MessageHandler( const char * pMessage );
    static void ProgressCallback( const char * pMessage );

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRmBuilderApp)
	public:
	virtual BOOL InitInstance();
	virtual int ExitInstance();
	virtual BOOL OnIdle(LONG lCount);
	virtual CDocument* OpenDocumentFile(LPCTSTR lpszFileName);
	//}}AFX_VIRTUAL

// Implementation

public:

	//{{AFX_MSG(CRmBuilderApp)
	afx_msg void OnAppAbout();

	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

private:
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RMBUILDER_H__2403A270_3EBC_4D3B_939C_02FDD9D7BC90__INCLUDED_)
