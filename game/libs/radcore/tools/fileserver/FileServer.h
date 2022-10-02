//=============================================================================
//
// File:        File Server.hpp
//
// Subsystem:   Radical File Server
//
// Description:	This file contains the file server application header
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#if !defined(AFX_PS2HOSTFILESERVER_H__5C179644_D97F_11D3_92F7_00105A633137__INCLUDED_)
#define AFX_PS2HOSTFILESERVER_H__5C179644_D97F_11D3_92F7_00105A633137__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

//=============================================================================
// Class Declarations
//=============================================================================
                     
class CFileServerApp : public CWinApp
{
public:
	CFileServerApp();
// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFileServerApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

    private:
    
};

extern CFileServerApp theApp;

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.
#endif // !defined(AFX_PS2HOSTFILESERVER_H__5C179644_D97F_11D3_92F7_00105A633137__INCLUDED_)
