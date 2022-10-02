//=============================================================================
//
// File:        radTuner.h
//
// Subsystem:	main header file for the RADTUNER application
//
// Description:	Program head
//              
//              
//              
//              
//
//
// Revisions:   May 22, 2001        Creation
//
//=============================================================================
#if !defined(AFX_RADTUNER_H__831E4E12_57F2_4210_B9DA_0D02F13C52B3__INCLUDED_)
#define AFX_RADTUNER_H__831E4E12_57F2_4210_B9DA_0D02F13C52B3__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
#error include 'stdafx.h' before including this file for PCH
#endif

//=============================================================================
// Include Files
//=============================================================================
#include "PluginManager.h"
#include "resource.h"       // main symbols

//=============================================================================
// Forward Declarations
//=============================================================================
class CRadTunerApp;

//=============================================================================
// Globals
//=============================================================================
extern CRadTunerApp theApp;

#define OUPUTMSG ((CMainFrame*)theApp.m_pMainWnd)->GetOutputBarPtr()->OutputMsg

//=============================================================================
// Functions
//=============================================================================

//=============================================================================
// CRadTunerApp
//=============================================================================
//
// Description: Main Application class, very much like main() in console program
//              
//              
//              
//              
//              
//
//=============================================================================
class CRadTunerApp : public CWinApp,
                     public CBCGWorkspace
{
public:
    // Default Constructor
    CRadTunerApp();
    
    // Override from CBCGWorkspace
    virtual void PreLoadState ();
    
    // Return MDI menu handle
    HMENU GetMDIMenu() const;

    // Return MDI accelerator handle
    HACCEL GetMDIAccel() const;
    
    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CRadTunerApp)
	public:
    virtual BOOL InitInstance();
    virtual int ExitInstance();
	virtual CDocument* OpenDocumentFile(LPCTSTR lpszFileName);
	//}}AFX_VIRTUAL
    
    // Implementation
protected:

    // MDI menu handle
    HMENU                   m_hMDIMenu;
    // Accelerator handle
    HACCEL                  m_hMDIAccel;
    // Plugin manager for handle different plugins
    CPluginManager          m_PluginManager;
public:
    //{{AFX_MSG(CRadTunerApp)
    afx_msg void OnAppAbout();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//=============================================================================
// CAboutDlg
//=============================================================================
//
// Description: dialog used for App About
//              
//              
//              
//              
//              
//
//=============================================================================
class CAboutDlg : public CDialog
{
public:
    // Default Constructor
    CAboutDlg();
    
    // Dialog Data
    //{{AFX_DATA(CAboutDlg)
    enum { IDD = IDD_ABOUTBOX };
    CBCGURLLinkButton    m_btnURL;
    //}}AFX_DATA
    
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CAboutDlg)
protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL
    
    // Implementation
protected:
    //{{AFX_MSG(CAboutDlg)
    // No message handlers
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RADTUNER_H__831E4E12_57F2_4210_B9DA_0D02F13C52B3__INCLUDED_)
