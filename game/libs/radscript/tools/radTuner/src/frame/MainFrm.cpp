//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MainFrm.cpp : implementation of the CMainFrame class
//

#include "stdafx.h"
#include "radTuner.h"

#include "MainFrm.h"
#include "ScriptDoc.h"

#include "RemoteClient.h"
#include "..\src\radprotocols\RemoteCommandProtocol.hpp"

#include "ScriptDoc.h"
#include "ScriptObject.h"
#include "ScriptMethod.h"
#include "OutputBar.h"

#include "ProjectSettingDlg.h"
#include "AddNewObjectDlg.h"
#include "AddNewMethodDlg.h"
#include "ModifyMethodDlg.h"
#include "ModifyObjectDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

IMPLEMENT_DYNAMIC(CMainFrame, CMDIFrameWnd)

const int  iMaxUserToolbars     = 10;
const UINT uiFirstUserToolBarId = AFX_IDW_CONTROLBAR_FIRST + 40;
const UINT uiLastUserToolBarId  = uiFirstUserToolBarId + iMaxUserToolbars - 1;

BEGIN_MESSAGE_MAP(CMainFrame, CMDIFrameWnd)
    //{{AFX_MSG_MAP(CMainFrame)
    ON_WM_CREATE()
    ON_COMMAND(ID_FILE_OPEN, OnFileOpen)
    ON_UPDATE_COMMAND_UI(ID_FILE_OPEN, OnUpdateFileOpen)
    ON_UPDATE_COMMAND_UI(ID_FILE_NEW_WORKSPACE, OnUpdateFileNewWorkspace)
    ON_COMMAND(ID_FILE_NEW_WORKSPACE, OnFileNewWorkspace)
    ON_COMMAND(ID_FILE_OPEN_WORKSPACE, OnFileOpenWorkspace)
    ON_UPDATE_COMMAND_UI(ID_FILE_OPEN_WORKSPACE, OnUpdateFileOpenWorkspace)
    ON_COMMAND(ID_FILE_SAVE_WORKSPACE, OnFileSaveWorkspace)
    ON_UPDATE_COMMAND_UI(ID_FILE_SAVE_WORKSPACE, OnUpdateFileSaveWorkspace)
    ON_COMMAND(ID_FILE_SAVE_ALL, OnFileSaveAll)
    ON_UPDATE_COMMAND_UI(ID_FILE_SAVE_ALL, OnUpdateFileSaveAll)
    ON_COMMAND(ID_FILE_CLOSE_WORKSPACE, OnFileCloseWorkspace)
    ON_UPDATE_COMMAND_UI(ID_FILE_CLOSE_WORKSPACE, OnUpdateFileCloseWorkspace)
    ON_COMMAND(ID_PROJECT_SETTINGS, OnProjectSettings)
    ON_UPDATE_COMMAND_UI(ID_PROJECT_SETTINGS, OnUpdateProjectSettings)
    ON_WM_DESTROY()
    ON_WM_TIMER()
    ON_COMMAND(ID_EDIT_COPY, OnEditCopy)
    ON_UPDATE_COMMAND_UI(ID_EDIT_COPY, OnUpdateEditCopy)
    ON_COMMAND(ID_EDIT_CUT, OnEditCut)
    ON_UPDATE_COMMAND_UI(ID_EDIT_CUT, OnUpdateEditCut)
    ON_COMMAND(ID_EDIT_PASTE, OnEditPaste)
    ON_UPDATE_COMMAND_UI(ID_EDIT_PASTE, OnUpdateEditPaste)
    ON_COMMAND(ID_EDIT_UNDO, OnEditUndo)
    ON_UPDATE_COMMAND_UI(ID_EDIT_UNDO, OnUpdateEditUndo)
	ON_WM_CLOSE()
    ON_COMMAND(ID_VIEW_CUSTOMIZE, OnViewCustomize)
	ON_COMMAND(ID_VIEW_REFRESH, OnViewRefresh)
	ON_UPDATE_COMMAND_UI(ID_VIEW_REFRESH, OnUpdateViewRefresh)
	ON_COMMAND(ID_FILE_RELOADSCRIPTFILE, OnFileReloadscriptfile)
	ON_UPDATE_COMMAND_UI(ID_FILE_RELOADSCRIPTFILE, OnUpdateFileReloadscriptfile)
	ON_COMMAND(ID_VIEW_CLEAROUTPUT, OnViewClearoutput)
	ON_UPDATE_COMMAND_UI(ID_VIEW_CLEAROUTPUT, OnUpdateViewClearoutput)
	ON_WM_MOVING()
	ON_WM_MOVE()
    ON_REGISTERED_MESSAGE(BCGM_RESETTOOLBAR, OnToolbarReset)
    ON_REGISTERED_MESSAGE(BCGM_TOOLBARMENU, OnToolbarContextMenu)
    ON_COMMAND(ID_VIEW_WORKSPACE, OnViewWorkspace)
    ON_UPDATE_COMMAND_UI(ID_VIEW_WORKSPACE, OnUpdateViewWorkspace)
    ON_COMMAND(ID_VIEW_OUTPUT, OnViewOutput)
    ON_UPDATE_COMMAND_UI(ID_VIEW_OUTPUT, OnUpdateViewOutput)
	ON_WM_LBUTTONDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

static UINT indicators[] =
{
    ID_SEPARATOR,           // status line indicator
        ID_INDICATOR_CAPS,
        ID_INDICATOR_NUM,
        ID_INDICATOR_SCRL,
};

/////////////////////////////////////////////////////////////////////////////
// CMainFrame construction/destruction
RemoteClient*   CMainFrame::ms_pRC = NULL;
bool            CMainFrame::ms_bIsLastRCDone = true;


//===========================================================================
// CMainFrame::CMainFrame
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CMainFrame::CMainFrame()
{
    m_pWorkSpaceDoc = NULL;
}


//===========================================================================
// CMainFrame::~CMainFrame
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CMainFrame::~CMainFrame()
{
	for ( unsigned int i = 0; i < m_vecMethodCallQueue.size(); i ++ )
	{
		delete m_vecMethodCallQueue[ i ];
	}

    delete m_pWorkSpaceDoc;
    delete ms_pRC;
    ms_pRC = NULL;
}


//===========================================================================
// CMainFrame::OnCreate
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             LPCREATESTRUCT lpCreateStruct
// 
// Return: int 
//===========================================================================
int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CMDIFrameWnd::OnCreate(lpCreateStruct) == -1)
        return -1;

    // Load toolbar user images:
    if (!m_UserImages.Load (IDB_USERIMAGES))
    {
        TRACE(_T("Failed to load user images\n"));
        ASSERT(FALSE);
    }
    else
    {
        CBCGToolBar::SetUserImages (&m_UserImages);
    }

    //CBCGToolBar::EnableQuickCustomization ();

    EnableMDITabs ();

    CBCGToolBar::SetLook2000 ();

    // TODO: Define your own basic commands. Be sure, that each pulldown
    // menu have at least one basic command.

    CList<UINT, UINT>   lstBasicCommands;

    lstBasicCommands.AddTail (ID_VIEW_TOOLBARS);
    lstBasicCommands.AddTail (ID_FILE_NEW);
    lstBasicCommands.AddTail (ID_FILE_SAVE);
    lstBasicCommands.AddTail (ID_FILE_SAVE_ALL);
    lstBasicCommands.AddTail (ID_APP_EXIT);
    lstBasicCommands.AddTail (ID_EDIT_CUT);
    lstBasicCommands.AddTail (ID_EDIT_PASTE);
    lstBasicCommands.AddTail (ID_EDIT_UNDO);
    lstBasicCommands.AddTail (ID_VIEW_REFRESH);
    lstBasicCommands.AddTail (ID_APP_ABOUT);
    lstBasicCommands.AddTail (ID_VIEW_TOOLBAR);
    lstBasicCommands.AddTail (ID_VIEW_CUSTOMIZE);
    lstBasicCommands.AddTail (ID_WINDOW_TILE_HORZ);

    CBCGToolBar::SetBasicCommands (lstBasicCommands);

    if (!m_wndMenuBar.Create (this))
    {
        TRACE0("Failed to create menubar\n");
        return -1;      // fail to create
    }

    m_wndMenuBar.SetBarStyle(m_wndMenuBar.GetBarStyle() | CBRS_SIZE_DYNAMIC);

    // Detect color depth. 256 color toolbars can be used in the
    // high or true color modes only (bits per pixel is > 8):
    CClientDC dc (this);
    BOOL bIsHighColor = dc.GetDeviceCaps (BITSPIXEL) > 8;

    UINT uiToolbarHotID = bIsHighColor ? IDB_TOOLBAR256 : 0;
    UINT uiToolbarColdID = bIsHighColor ? IDB_TOOLBARCOLD256 : 0;

    if (!m_wndToolBar.CreateEx(this, TBSTYLE_FLAT, WS_CHILD | WS_VISIBLE | CBRS_TOP
        | CBRS_GRIPPER | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC) ||
        !m_wndToolBar.LoadToolBar(IDR_MAINFRAME, uiToolbarColdID, 0, FALSE, 0, 0, uiToolbarHotID))
    {
        TRACE0("Failed to create toolbar\n");
        return -1;      // fail to create
    }
    if (!m_wndStatusBar.Create(this) ||
        !m_wndStatusBar.SetIndicators(indicators,
        sizeof(indicators)/sizeof(UINT)))
    {
        TRACE0("Failed to create status bar\n");
        return -1;      // fail to create
    }

    if (!m_wndWorkSpace.Create (_T("WorkSpace"), this, CSize (200, 200),
        TRUE /* Has gripper */, ID_VIEW_WORKSPACE,
        WS_CHILD | WS_VISIBLE | CBRS_LEFT))
    {
        TRACE0("Failed to create workspace bar\n");
        return -1;      // fail to create
    }

    if (!m_wndOutput.Create (_T("Output"), this, CSize (150, 150),
        TRUE /* Has gripper */, ID_VIEW_OUTPUT,
        WS_CHILD | WS_VISIBLE | CBRS_BOTTOM))
    {
        TRACE0("Failed to create output bar\n");
        return -1;      // fail to create
    }

    CString strMainToolbarTitle;
    strMainToolbarTitle.LoadString (IDS_MAIN_TOOLBAR);
    m_wndToolBar.SetWindowText (strMainToolbarTitle);
    // TODO: Delete these three lines if you don't want the toolbar to
    //  be dockable
    m_wndMenuBar.EnableDocking(CBRS_ALIGN_ANY);
    m_wndToolBar.EnableDocking(CBRS_ALIGN_ANY);
    m_wndWorkSpace.EnableDocking(CBRS_ALIGN_ANY);
    m_wndOutput.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
    DockControlBar(&m_wndMenuBar);
    DockControlBar(&m_wndToolBar);
    DockControlBar(&m_wndWorkSpace);
    DockControlBar(&m_wndOutput);

    // Allow user-defined toolbars operations:
    InitUserToobars (NULL,
        uiFirstUserToolBarId,
        uiLastUserToolBarId);

    // Set a timer for Service call
    m_nTimer = SetTimer(1, 5, NULL);

    return 0;
}


//===========================================================================
// CMainFrame::OnClose
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnClose() 
{
    if (_ShouldAppCloseWorkSpace())
    {
        delete m_pWorkSpaceDoc;
        m_pWorkSpaceDoc = NULL;
        _PopulateClassView();
        _PopulateFileView();

        m_wndWorkSpace.RemoveAllTab();
        RemoveAllParamSliderWnd( );
    }
    else
    {
        return;
    }
	
	CMDIFrameWnd::OnClose();
}

//===========================================================================
// CMainFrame::OnDestroy
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnDestroy()
{
    KillTimer(m_nTimer);

    CMDIFrameWnd::OnDestroy();
}


//===========================================================================
// CMainFrame::PreCreateWindow
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CREATESTRUCT& cs
// 
// Return: BOOL 
//===========================================================================
BOOL CMainFrame::PreCreateWindow(CREATESTRUCT& cs)
{
    if( !CMDIFrameWnd::PreCreateWindow(cs) )
        return FALSE;
    // TODO: Modify the Window class or styles here by modifying
    //  the CREATESTRUCT cs

    return TRUE;
}

/////////////////////////////////////////////////////////////////////////////
// CMainFrame diagnostics

#ifdef _DEBUG

//===========================================================================
// CMainFrame::AssertValid
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::AssertValid() const
{
    CMDIFrameWnd::AssertValid();
}


//===========================================================================
// CMainFrame::Dump
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CDumpContext& dc
// 
// Return: void 
//===========================================================================
void CMainFrame::Dump(CDumpContext& dc) const
{
    CMDIFrameWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMainFrame message handlers



//===========================================================================
// CMainFrame::OnViewCustomize
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnViewCustomize()
{
    //------------------------------------
    // Create a customize toolbars dialog:
    //------------------------------------
    CBCGToolbarCustomize* pDlgCust = new CBCGToolbarCustomize (this,
        TRUE /* Automatic menus scaning */);

    pDlgCust->EnableUserDefinedToolbars ();
    pDlgCust->Create ();
}


//===========================================================================
// CMainFrame::OnToolbarContextMenu
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             WPARAM
//             LPARAM lp
// 
// Return: LRESULT 
//===========================================================================
LRESULT CMainFrame::OnToolbarContextMenu(WPARAM,LPARAM lp)
{
    CPoint point (BCG_GET_X_LPARAM(lp), BCG_GET_Y_LPARAM(lp));

    CMenu menu;
    VERIFY(menu.LoadMenu (IDR_POPUP_TOOLBAR));

    CMenu* pPopup = menu.GetSubMenu(0);
    ASSERT(pPopup != NULL);

    SetupToolbarMenu (*pPopup, ID_VIEW_USER_TOOLBAR1, ID_VIEW_USER_TOOLBAR10);

    CBCGPopupMenu* pPopupMenu = new CBCGPopupMenu;
    pPopupMenu->Create (this, point.x, point.y, pPopup->Detach ());

    return 0;
}



//===========================================================================
// CMainFrame::OnToolsViewUserToolbar
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             UINT uiId
// 
// Return: void 
//===========================================================================
void CMainFrame::OnToolsViewUserToolbar(UINT uiId)
{
    CBCGToolBar* pUserToolBar = GetUserBarByIndex (uiId - ID_VIEW_USER_TOOLBAR1);
    if (pUserToolBar == NULL)
    {
        ASSERT (FALSE);
        return;
    }

    ShowControlBar (pUserToolBar, !(pUserToolBar->GetStyle () & WS_VISIBLE), FALSE);
    RecalcLayout ();
}


//===========================================================================
// CMainFrame::OnUpdateToolsViewUserToolbar
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateToolsViewUserToolbar(CCmdUI* pCmdUI)
{
    CBCGToolBar* pUserToolBar = GetUserBarByIndex (pCmdUI->m_nID - ID_VIEW_USER_TOOLBAR1);
    if (pUserToolBar == NULL)
    {
        pCmdUI->Enable (FALSE);
        return;
    }

    pCmdUI->Enable ();
    pCmdUI->SetCheck (pUserToolBar->GetStyle () & WS_VISIBLE);
}


//===========================================================================
// CMainFrame::OnToolbarReset
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             WPARAM /*wp*/
//             LPARAM
// 
// Return: afx_msg LRESULT 
//===========================================================================
afx_msg LRESULT CMainFrame::OnToolbarReset(WPARAM /*wp*/,LPARAM)
{
    // TODO: reset toolbar with id = (UINT) wp to its initial state:
    //
    // UINT uiToolBarId = (UINT) wp;
    // if (uiToolBarId == IDR_MAINFRAME)
    // {
    //      do something with m_wndToolBar
    // }

    return 0;
}


//===========================================================================
// CMainFrame::OnShowPopupMenu
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CBCGPopupMenu* pMenuPopup
// 
// Return: BOOL 
//===========================================================================
BOOL CMainFrame::OnShowPopupMenu(CBCGPopupMenu* pMenuPopup)
{
    //---------------------------------------------------------
    // Replace ID_VIEW_TOOLBARS menu item to the toolbars list:
    //---------------------------------------------------------
    CMDIFrameWnd::OnShowPopupMenu (pMenuPopup);

    if (pMenuPopup != NULL &&
        pMenuPopup->GetMenuBar ()->CommandToIndex (ID_VIEW_TOOLBARS) >= 0)
    {
        if (CBCGToolBar::IsCustomizeMode ())
        {
            //----------------------------------------------------
            // Don't show toolbars list in the cuztomization mode!
            //----------------------------------------------------
            return FALSE;
        }

        pMenuPopup->RemoveAllItems ();

        CMenu menu;
        VERIFY(menu.LoadMenu (IDR_POPUP_TOOLBAR));

        CMenu* pPopup = menu.GetSubMenu(0);
        ASSERT(pPopup != NULL);

        SetupToolbarMenu (*pPopup, ID_VIEW_USER_TOOLBAR1, ID_VIEW_USER_TOOLBAR10);
        pMenuPopup->GetMenuBar ()->ImportFromMenu (*pPopup, TRUE);
    }

    return TRUE;
}


//===========================================================================
// CMainFrame::_PopulateClassView
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::_PopulateClassView()
{
    IRadTypeInfoSystem *pTypeInfoSystem = NULL;

    // Typeinfo system must be initialized first.
    if (::IsRadTypeInfoSystemInitialize())
    {
        pTypeInfoSystem = ::radTypeInfoSystemGet();
        ASSERT(pTypeInfoSystem);
    }

    CClassTreeCtrl* ptvwClass = m_wndWorkSpace.GetClassTreeCtrl();
    if (ptvwClass->GetSafeHwnd() != NULL)
    {
        ptvwClass->PopulateClassView(pTypeInfoSystem);
    }
}


//===========================================================================
// CMainFrame::_PopulateFileView
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::_PopulateFileView()
{
    CFileTreeCtrl* ptvwFile = m_wndWorkSpace.GetFileTreeCtrl();
    if (ptvwFile->GetSafeHwnd() != NULL)
    {
        ptvwFile->PopulateFileView(m_pWorkSpaceDoc);
    }
}

void CMainFrame::_PopulateScriptView()
{
    for ( int i = 0; i < GetWorkSpaceDocPtr( )->GetScriptViewDataCount( ); i ++ )
    {
        CWorkSpaceDoc::_VIEW_DATA & oData = GetWorkSpaceDocPtr( )->GetScriptViewDataAt( i );
        CParamSliderDlg::CreateFromFile( GetWorkSpaceDocPtr( ), oData.strDoc, oData.strObject, oData.strMethod, oData.nMethodIdx, oData.nParamIndex,
                                         GetWorkSpacePtr( )->GetFileTreeCtrl( ), oData.strTitle, oData.nXPos, oData.nYPos, this );
    }
}

//===========================================================================
// CMainFrame::_RemoteCallback
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             HrcsResultCode result
// 
// Return: void 
//===========================================================================
void CMainFrame::_RemoteCallback(HrcsResultCode result)
{
	CMainFrame * pThis = ((CMainFrame*)(theApp.m_pMainWnd));
    ms_bIsLastRCDone = true;

    OUPUTMSG("Remote call completed, result \"%s\".\r\n", (result == 0) ? "succeeded" : "failed");
}


//===========================================================================
// CMainFrame::OnCommand
//===========================================================================
// Description: Call back when command needs to be routed
// 
// Constraints: for dynamic menu callback
// 
// Parameter:
//             WPARAM wParam
//             LPARAM lParam
// 
// Return: BOOL 
//===========================================================================
BOOL CMainFrame::OnCommand(WPARAM wParam, LPARAM lParam) 
{
    int nCmd = LOWORD(wParam);

    if (nCmd > CFileTreeCtrl::GetDynamicMenuItemResourceIDBeg() &&
        nCmd < CFileTreeCtrl::GetDynamicMenuItemResourceIDEnd())
    {
        // store the index of the menu
        m_nDynamicMenuCallMethodIndex = nCmd - CFileTreeCtrl::GetDynamicMenuItemResourceIDBeg();
        // Set it to ID_SCRIPTOBJECT_CALL
        wParam &= 0xffff0000;
        wParam |= CFileTreeCtrl::GetDynamicMenuItemResourceIDBeg();
    }
    
	return CMDIFrameWnd::OnCommand(wParam, lParam);
}


//===========================================================================
// CMainFrame::OnCmdMsg
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             UINT nID
//             int nCode
//             void* pExtra
//             AFX_CMDHANDLERINFO* pHandlerInfo
// 
// Return: BOOL 
//===========================================================================
BOOL CMainFrame::OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo) 
{
    if (nID >= CFileTreeCtrl::GetDynamicMenuItemResourceIDBeg() &&
        nID <= CFileTreeCtrl::GetDynamicMenuItemResourceIDEnd())
    {
        nID = ID_SCRIPTOBJECT_CALL;
    }

    // let main frame crack look at it first
    if (CMDIFrameWnd::OnCmdMsg(nID, nCode, pExtra, pHandlerInfo))
    {
        return(TRUE);
    }

    // some how tree view control never got message from menu
    // let's pass un-processed message to all tree view control
    CFileTreeCtrl *pFileTree = m_wndWorkSpace.GetFileTreeCtrl();
    if (pFileTree != NULL && pFileTree->GetSafeHwnd() != NULL)
    {
        if (pFileTree->OnCmdMsg(nID, nCode, pExtra, pHandlerInfo))
        {
            return(TRUE);
        }
    }

    return(FALSE);
}


//===========================================================================
// CMainFrame::CallRCC
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptObject *pObject
//             CScriptMethod *pMethod
// 
// Return: bool 
//===========================================================================
bool CMainFrame::CallRCC(const CScriptObject *pObject, CScriptMethod *pMethod)
{
    if (ms_bIsLastRCDone == true)
    {
        CString strFunc;
        CString strArgv;

        pMethod->WriteFileString(strFunc);

        // with ClassName named ObjectName { ... }
        strArgv.Format("%s %s %s %s { %s } ",
            "with",
            (const char*)pObject->GetClassName(),
            "named",
            (const char*)pObject->GetName(),
            (const char*)strFunc);

        OUPUTMSG("Remote call \"%s\"\r\n", (const char*)strArgv);

        bool nStateString = false;
        for ( int i = 0; i < strArgv.GetLength( ); i ++ )
        {
            if
            (
                strArgv.GetAt( i ) == ' ' || 
                strArgv.GetAt( i ) == '\t'
            )
            {
                // if we are not inside a middle of a string, tokenize it.
                if (!nStateString)
                {
                    strArgv.SetAt( i, '/' );
                }
            }
            else if
            (
                strArgv.GetAt( i ) == 13 || 
                strArgv.GetAt( i ) == 10
            )
            {
                strArgv.SetAt( i, '/' );
            }
            else if ( strArgv.GetAt( i ) == '\"' )
            {
                // toggle string state
                if (nStateString)
                {
                    nStateString = false;
                }
                else
                {
                    nStateString = true;
                }
            }
        }
        
        delete ms_pRC;
        ms_pRC = new RemoteClient;

        if ( ms_pRC->CallFunction("rs", (char*)(const char*)strArgv, _RemoteCallback) )
        {
            ms_bIsLastRCDone = false;
        }
    }
    else
    {
        // if already in the queue, don't add it.
        for ( int i = 0; i < m_vecMethodCallQueue.size( ); i ++ )
        {
            if (
                 m_vecMethodCallQueue[ i ]->m_pScriptMethod == pMethod &&
                 m_vecMethodCallQueue[ i ]->m_pScriptObject == pObject
               )
            {
                return true;
            }
        }

		this->m_vecMethodCallQueue.push_back( new CMethodCall( (CScriptObject*) pObject, (CScriptMethod*)pMethod ) );
    }
    return(true);
}


//===========================================================================
// CMainFrame::CallRCC
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptObject *pObject
//             IRadTypeInfoMethod *pRTIMethod
// 
// Return: bool 
//===========================================================================
bool CMainFrame::CallRCC(const CScriptObject *pObject, IRadTypeInfoMethod *pRTIMethod)
{
    // To use the CallRCC(), number of parameter must be 0,
    // we don't pass any parameter over
    ASSERT(pRTIMethod->GetNumberOfParams() == 0);

    if (pRTIMethod->GetNumberOfParams() != 0)
    {
        return(false);
    }

    if (ms_bIsLastRCDone == true)
    {
        CString strArgv;

        // with ClassName named ObjectName { ... }
        strArgv.Format("%s %s %s %s { %s ( ) } ",
            "with",
            (const char*)pObject->GetClassName(),
            "named",
            (const char*)pObject->GetName(),
            (const char*)pRTIMethod->GetName());

        OUPUTMSG("Remote call \"%s\"\r\n", (const char*)strArgv);

        bool nStateString = false;
        for ( int i = 0; i < strArgv.GetLength( ); i ++ )
        {
            if
            (
                strArgv.GetAt( i ) == ' ' || 
                strArgv.GetAt( i ) == '\t'
            )
            {
                // if we are not inside a middle of a string, tokenize it.
                if (!nStateString)
                {
                    strArgv.SetAt( i, '/' );
                }
            }
            else if
            (
                strArgv.GetAt( i ) == 13 || 
                strArgv.GetAt( i ) == 10
            )
            {
                strArgv.SetAt( i, '/' );
            }
            else if ( strArgv.GetAt( i ) == '\"' )
            {
                // toggle string state
                if (nStateString)
                {
                    nStateString = false;
                }
                else
                {
                    nStateString = true;
                }
            }
        }

        delete ms_pRC;
        ms_pRC = new RemoteClient;
        if ( ms_pRC->CallFunction("rs", (char*)(const char*)strArgv, _RemoteCallback) )
        {
            ms_bIsLastRCDone = false;
        }
    }
    else
    {
        ::AfxMessageBox("Last Remote Call is still in progress, check if service connection is done correctly.");
    }
    return(true);
}


void CMainFrame::OnMoving(UINT fwSide, LPRECT pRect) 
{
    CMDIFrameWnd::OnMoving(fwSide, pRect);
}

void CMainFrame::OnMove(int x, int y) 
{
    CMDIFrameWnd::OnMove(x, y);
}

void CMainFrame::OnLButtonDown(UINT nFlags, CPoint point) 
{
    CMDIFrameWnd::OnLButtonDown(nFlags, point);
}
