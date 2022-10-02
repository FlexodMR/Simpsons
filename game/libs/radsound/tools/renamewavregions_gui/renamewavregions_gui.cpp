//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// renamewavregions_gui.cpp : Defines the class behaviors for the application.
//

#include "stdafx.h"
#include "renamewavregions_gui.h"
#include "rwrDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CRwrApp

BEGIN_MESSAGE_MAP(CRwrApp, CWinApp)
	//{{AFX_MSG_MAP(CRwrApp)
	//}}AFX_MSG
	ON_COMMAND(ID_HELP, CWinApp::OnHelp)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRwrApp construction

CRwrApp::CRwrApp()
{
}

/////////////////////////////////////////////////////////////////////////////
// The one and only CRwrApp object

CRwrApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CRwrApp initialization

BOOL CRwrApp::InitInstance()
{
	// Standard initialization

#ifdef _AFXDLL
	Enable3dControls();			// Call this when using MFC in a shared DLL
#else
	Enable3dControlsStatic();	// Call this when linking to MFC statically
#endif

	CRwrDlg dlg;
	m_pMainWnd = &dlg;

	int nResponse = dlg.DoModal();
	if (nResponse == IDOK)
	{
	}
	else if (nResponse == IDCANCEL)
	{
	}

	// Since the dialog has been closed, return FALSE so that we exit the
	//  application, rather than start the application's message pump.
	return FALSE;
}
