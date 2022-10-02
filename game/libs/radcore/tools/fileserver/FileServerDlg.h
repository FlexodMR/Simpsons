//=============================================================================
//
// File:        FileServerDlg.hpp
//
// Subsystem:   Radical File Server Dialog
//
// Description:	This file contains the file server dialog classes
//
// Author:		Peter Mielcarski
//
// Revisions:	V1.00	Feb 3, 2000	    Creation
//              V1.02   Oct 1, 2001     Converted to use library file server 
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#if !defined(AFX_FILESERVERDLG_H__5C179646_D97F_11D3_92F7_00105A633137__INCLUDED_)
#define AFX_FILESERVERDLG_H__5C179646_D97F_11D3_92F7_00105A633137__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include <raddebugcommunication.hpp>
#include "..\..\src\radprotocols\FileProtocol.hpp"
#include <raddebugfileserver.hpp>

#define REG_KEY_CONFIG "Software\\Radical Entertainment\\rDbgCom\\Config"
#define REG_KEY_CONFIG_MRU "MostRecentlyUsed"

class CFileServerDlg : public CDialog,
                       public IRadDbgComChannelStatusCallback,
                       public IRadDebugFileServerLogCallback,
                       public IRadDebugFileServerFileCallback
{
public:
	bool CheckIfFileOnHost( char* filename, char* filespec  );
	void ProcessFileRequest( char* request, int requestSize, char* reply, int* replySize );
	void CloseFiles();
	CFileServerDlg(CWnd* pParent = NULL);	// standard constructor
    void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState,  const char* Message );
    void OnFileServerLogMessage( char *pMessage );
    void OnTargetFileAction( char *pName, HfpCommand pCommand, int pPosition, int pLength );

    //
    // Ref count is defeated. Will not present problem.
    //
    void AddRef( void) { };
    void Release( void ) { };

// Dialog Data
	//{{AFX_DATA(CFileServerDlg)
	enum { IDD = IDD_PS2HOSTFILESERVER_DIALOG };
	CComboBox	m_TargetSelect;
	CButton	m_Override;
	CEdit	m_Filename;
	CButton	m_TopMost;
	CButton	m_Quit;
	CListBox	m_OpenFiles;
	CListBox	m_Exceptions;
	CEdit	m_State;
	CEdit	m_Path;
	CEdit	m_Messages;
    CEdit   m_LogFile;
    CButton m_LogEnableButton;
    CButton m_ShowLogButton;
    CButton	m_SaveButton;
	CButton	m_PathButton;
	CButton	m_LoadButton;
	CButton	m_DeleteButton;
	CButton	m_AttachButton;
	CButton	m_AddButton;
	CButton	m_AboutButton;
	CButton	m_TargetButton;
	CButton	m_HostButton;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFileServerDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CFileServerDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	virtual void OnOK();
	afx_msg void OnButtonAbout();
	afx_msg void OnButtonAttach();
	afx_msg void OnButtonPath();
	afx_msg void OnButtonLogEnable();
	afx_msg void OnButtonShowLog();
	afx_msg void OnSelchangeListexceptions();
	afx_msg void OnButtonAdd();
	afx_msg void OnButtonDelete();
	afx_msg void OnRadiohost();
	afx_msg void OnRadiotarget();
	afx_msg void OnButtonload();
	afx_msg void OnButtonsave();
	afx_msg void OnSetfocusEditmessages();
	afx_msg void OnButtontopmost();
	afx_msg void OnDestroy();
	afx_msg void OnClose();
	afx_msg void OnOverridepath();
	afx_msg void OnSelchangeTargetselect();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

private:

    bool    LoadConfig( const char* filename );
    bool    SaveConfig( const char* filename );
    void    UpdateControls( void );
    bool    GetConfig( void );
    void    GetLastConfigName( char* pFilename );
    void    SetLastConfigName( const char* pFilename ); 

    static void EnumeratorCallback( void* context, const radDbgComTargetName pName, const radDbgComIPAddress pIpAddress, unsigned short port, bool InUse );

    //
    // This structure is used to save the users configured data.
    //
public:
	~CFileServerDlg( void );
    struct Config
    {
        char m_Version[ 16 ];
        char m_TargetName[ 64 ];
        char m_Path[256];
        bool m_DefaultHost;
        unsigned int m_ExceptionCount;
        char m_Exceptions[ 10 ][ 256 ];
        char m_Executable[ 32 ];
        bool m_Override;
    };
    Config m_Config;
private:
	bool UpdateTargetName( char* targetName );

    bool   m_ConfigAltered;
    char   m_ConfigFile[ 256 ];
    bool   m_CommandLineLaunch;
    struct IRadDebugFileServer* m_FileServer;
    bool   m_ShowLog;

     char m_ReceiveBuffer[ sizeof( HfpReadRpy ) ];
     char m_SendBuffer[ sizeof( HfpReadRpy ) ];

    bool   m_TxOutstanding;
    unsigned int m_TxPendingBytes;
    
    CFile *  m_LogFileHandle;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FILESERVERDLG_H__5C179646_D97F_11D3_92F7_00105A633137__INCLUDED_)
