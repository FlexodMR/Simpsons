//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MainFrm.cpp : implementation of the CMainFrame class
//

#include "stdafx.h"
#include "MemMonitor.h"

#include "MainFrm.h"
#include "ConfigurationPps.h"

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

IMPLEMENT_DYNAMIC(CMainFrame, CMDIFrameWnd)


BEGIN_MESSAGE_MAP(CMainFrame, CMDIFrameWnd)
    //{{AFX_MSG_MAP(CMainFrame)
    ON_WM_CREATE()
    ON_UPDATE_COMMAND_UI(ID_FILE_NEW, OnUpdateFileNew)
    ON_COMMAND(ID_FILE_NEW, OnFileNew)
    ON_COMMAND(ID_FILE_SETTINGS, OnFileSettings)
    ON_UPDATE_COMMAND_UI(ID_FILE_SETTINGS, OnUpdateFileSettings)
    ON_COMMAND(ID_FILE_OPEN, OnFileOpen)
    ON_UPDATE_COMMAND_UI(ID_FILE_OPEN, OnUpdateFileOpen)
    ON_COMMAND(ID_FILE_CLOSE, OnFileClose)
    ON_UPDATE_COMMAND_UI(ID_FILE_CLOSE, OnUpdateFileClose)
    ON_COMMAND(ID_FILE_SAVE, OnFileSave)
    ON_UPDATE_COMMAND_UI(ID_FILE_SAVE, OnUpdateFileSave)
    ON_COMMAND(ID_FILE_PRINT, OnFilePrint)
    ON_UPDATE_COMMAND_UI(ID_FILE_PRINT, OnUpdateFilePrint)
    ON_COMMAND(ID_FILE_PRINT_PREVIEW, OnFilePrintPreview)
    ON_UPDATE_COMMAND_UI(ID_FILE_PRINT_PREVIEW, OnUpdateFilePrintPreview)
    ON_COMMAND(ID_FILE_PRINT_SETUP, OnFilePrintSetup)
    ON_UPDATE_COMMAND_UI(ID_FILE_PRINT_SETUP, OnUpdateFilePrintSetup)
    ON_COMMAND(ID_HOST_SUSPEND, OnHostSuspend)
    ON_UPDATE_COMMAND_UI(ID_HOST_SUSPEND, OnUpdateHostSuspend)
    ON_COMMAND(ID_HOST_TARGETCONNECT, OnHostTargetconnect)
    ON_UPDATE_COMMAND_UI(ID_HOST_TARGETCONNECT, OnUpdateHostTargetconnect)
    ON_COMMAND(ID_HOST_TARGETLIST, OnHostTargetlist)
    ON_UPDATE_COMMAND_UI(ID_HOST_TARGETLIST, OnUpdateHostTargetlist)
	ON_WM_TIMER()
	ON_WM_CLOSE()
	ON_COMMAND(ID_FILE_SAVESETTINGSAS, OnFileSavesettingsas)
	ON_UPDATE_COMMAND_UI(ID_FILE_SAVESETTINGSAS, OnUpdateFileSavesettingsas)
	ON_COMMAND(ID_FILE_LOADSETTINGS, OnFileLoadsettings)
	ON_UPDATE_COMMAND_UI(ID_FILE_LOADSETTINGS, OnUpdateFileLoadsettings)
	ON_COMMAND(ID_VIEW_PROPERTY, OnViewProperty)
	ON_UPDATE_COMMAND_UI(ID_VIEW_PROPERTY, OnUpdateViewProperty)
	//}}AFX_MSG_MAP
    // Global help commands
    ON_COMMAND(ID_HELP_FINDER, CMDIFrameWnd::OnHelpFinder)
    ON_COMMAND(ID_HELP, CMDIFrameWnd::OnHelp)
    ON_COMMAND(ID_CONTEXT_HELP, CMDIFrameWnd::OnContextHelp)
    ON_COMMAND(ID_DEFAULT_HELP, CMDIFrameWnd::OnHelpFinder)
    ON_COMMAND(ID_WINDOW_MANAGER, OnWindowManager)
    ON_REGISTERED_MESSAGE(BCGM_RESETTOOLBAR, OnToolbarReset)
    ON_REGISTERED_MESSAGE(BCGM_TOOLBARMENU, OnToolbarContextMenu)
    ON_COMMAND(ID_VIEW_WORKSPACE, OnViewWorkspace)
    ON_UPDATE_COMMAND_UI(ID_VIEW_WORKSPACE, OnUpdateViewWorkspace)
    ON_COMMAND(ID_VIEW_OUTPUT, OnViewOutput)
    ON_UPDATE_COMMAND_UI(ID_VIEW_OUTPUT, OnUpdateViewOutput)
    ON_UPDATE_COMMAND_UI(ID_INDICATOR_DATA_BUFFER, OnUpdateDataBuffer)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMainFrame construction/destruction

CMainFrame::CMainFrame()
{
    // TODO: add member initialization code here
    m_uNotifyMsgTimer = 0;
}

CMainFrame::~CMainFrame()
{
}

CMemOverallView * CMainFrame::GetMemOverallViewPtr( )
{
    return m_wndWorkSpace.GetMemOverallViewPtr( );
}

const CMemOverallView * CMainFrame::GetMemOverallViewPtr( ) const
{
    return m_wndWorkSpace.GetMemOverallViewPtr( );
}


/////////////////////////////////////////////////////////////////////////////
// CMainFrame diagnostics

#ifdef _DEBUG

void CMainFrame::AssertValid() const
{
    CMDIFrameWnd::AssertValid();
}

void CMainFrame::Dump(CDumpContext& dc) const
{
    CMDIFrameWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMainFrame message handlers
