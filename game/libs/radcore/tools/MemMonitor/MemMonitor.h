// MemMonitor.h : main header file for the MEMMONITOR application
//

#if !defined(AFX_MEMMONITOR_H__69AF0531_5189_4E52_B0B1_2B366396DC14__INCLUDED_)
#define AFX_MEMMONITOR_H__69AF0531_5189_4E52_B0B1_2B366396DC14__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols
#include "MemContentFrame.h"
#include "MemSessionDataManager.h"
#include "MemSessionViewManager.h"

/////////////////////////////////////////////////////////////////////////////
// CMemMonitorApp:
// See MemMonitor.cpp for the implementation of this class
//

class CMemMonitorApp :
    public CWinApp,
    public CBCGWorkspace
{

public:

    struct ViewManagerNotifyMsg
    {
        int     nState;
        int     nHints;
        void *  pUserData;
    };

    CMemMonitorApp();

    CMemSessionDataManager * GetMemSessionDataManagerPtr( );
    const CMemSessionDataManager * GetMemSessionDataManagerPtr( ) const;

    void SetMemSessionDataManagerPtr( CMemSessionDataManager * pSessionData )
    {
        m_pMemSessionDataManager = pSessionData;
    }

    CMemSessionViewManager * GetMemSessionViewManagerPtr( );
    const CMemSessionViewManager * GetMemSessionViewManagerPtr( ) const;

    void SetMemSessionViewManagerPtr( CMemSessionViewManager * pSessionView )
    {
        m_pMemSessionViewManager = pSessionView;
    }

protected:

private:

    CMemSessionDataManagerPtr       m_pMemSessionDataManager;
    CMemSessionViewManagerPtr       m_pMemSessionViewManager;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemMonitorApp)
	public:
	virtual CDocument* OpenDocumentFile(LPCTSTR lpszFileName); // open named file
	virtual BOOL InitInstance();
	virtual int ExitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CMemMonitorApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


extern CMemMonitorApp theApp;

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMMONITOR_H__69AF0531_5189_4E52_B0B1_2B366396DC14__INCLUDED_)
