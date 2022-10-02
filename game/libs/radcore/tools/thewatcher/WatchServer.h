//=============================================================================
//
// File:        WatchServer.h
//
// Subsystem:   Radical Foundation Technologies Watcher Server
//
// Description:	This file contains class definitions for the watcher server
//				appication.
//
// Revisions:	Jan 11, 2000
//
// Usage:       
//
//=============================================================================

#ifndef	WATCHSERVER_H
#define WATCHSERVER_H

//=============================================================================
// Include Files
//=============================================================================

#include "resource.h" 
#include <raddebugcommunication.hpp>      

//=============================================================================
// Class Defintions
//=============================================================================

// This is the main application object. 

class CWatchServerApp : public CWinApp
{

public:
	CWatchServerApp();
	~CWatchServerApp( void );
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWatchServerApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

public:
	//{{AFX_MSG(CWatchServerApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

private:
	IRadDbgComTargetTable*	 m_Host;


// These members contain the command line options.

public:
	char			m_RootPath[ 256 + 1 ];
	char			m_TargetName[ 32 + 1];
	unsigned int	m_UpdatePeriod;
    virtual int ExitInstance();
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif
