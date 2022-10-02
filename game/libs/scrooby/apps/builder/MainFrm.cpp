/////////////////////////////////////////////////////////////////////////////
// MainFrm.cpp : implementation of the CMainFrame class

#include "StdAfx.h"
#include "XCon.h"
#include "resource.h"
#include "MainFrm.h"
#include "XConDoc.h"
#include "XConView.h"
#include "TabView.h"
#include "FeData\Helpers\OutputMessage.h"
#include "FeData\Helpers\FileName.h"
#include "FeData\NamedElements\Project.h"
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CChildFrame

IMPLEMENT_DYNCREATE(CChildFrame, CMDIChildWnd)

BEGIN_MESSAGE_MAP(CChildFrame, CMDIChildWnd)
    //{{AFX_MSG_MAP(CChildFrame)
    ON_WM_SETFOCUS()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CChildFrame construction/destruction

BOOL CChildFrame::OnCreateClient(LPCREATESTRUCT /*lpcs*/, CCreateContext* pContext)
{
    if (!m_wndSplitter.CreateStatic(this, 1, 2))
        return FALSE;
    
    if (!m_wndSplitter.CreateView(0, 0, RUNTIME_CLASS(CTabView), CSize(225,0), pContext))
        return FALSE;

    return m_wndSplitter.CreateView(0, 1, RUNTIME_CLASS(CXConView), CSize(0,0), pContext);
}

void CChildFrame::OnSetFocus(CWnd* pOldWnd) 
{
    CMDIChildWnd::OnSetFocus(pOldWnd);
    
    CTabView* tabView = dynamic_cast<CTabView*>( m_wndSplitter.GetPane(0,0) );
    if( tabView == NULL )
    {
        FeData::g_OutputMessage.Add( "CChildFrame::OnSetFocus: Cannot get tab view!",
                                     FeData::DebugOutputMessage );
        return;
    }

    tabView->SetupCheckRebuild();
    tabView->CheckRebuild();
}


/////////////////////////////////////////////////////////////////////////////
// CChildFrame message handlers

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

IMPLEMENT_DYNAMIC(CMainFrame, CMDIFrameWnd)

BEGIN_MESSAGE_MAP(CMainFrame, CMDIFrameWnd)
    //{{AFX_MSG_MAP(CMainFrame)
    ON_WM_CREATE()
    ON_UPDATE_COMMAND_UI(ID_INDICATOR_PLATFORM, OnUpdatePlatformIndicator)
    ON_UPDATE_COMMAND_UI(ID_INDICATOR_RES, OnUpdateResIndicator)
    ON_UPDATE_COMMAND_UI(ID_INDICATOR_XY, OnUpdateXYIndicator)
    ON_COMMAND(ID_VIEW_PROJECT_WINDOW, OnViewProjectWindow)
    ON_UPDATE_COMMAND_UI(ID_VIEW_PROJECT_WINDOW, OnUpdateViewProjectWindow)
    ON_COMMAND(ID_VIEW_OUTPUT_WINDOW, OnViewOutputWindow)
    ON_UPDATE_COMMAND_UI(ID_VIEW_OUTPUT_WINDOW, OnUpdateViewOutputWindow)
    ON_COMMAND(ID_DELETE_SCREEN, OnDeleteScreen)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

static UINT indicators[] =
{
    ID_SEPARATOR,           // status line indicator
    ID_INDICATOR_XY,
    ID_INDICATOR_PLATFORM,
    ID_INDICATOR_RES,
};


/////////////////////////////////////////////////////////////////////////////
// CMainFrame construction/destruction

int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CMDIFrameWnd::OnCreate(lpCreateStruct) == -1)
        return -1;
    if (!m_wndToolBar.CreateEx(this, TBSTYLE_FLAT, WS_CHILD | WS_VISIBLE | CBRS_TOP
        | CBRS_GRIPPER | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC) ||
        !m_wndToolBar.LoadToolBar(IDR_MAINFRAME))
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

    CFont font;
    font.CreateStockObject(DEFAULT_GUI_FONT);
    m_wndStatusBar.SetFont(&font, FALSE);

    HICON hIcon = (HICON)::LoadImage(AfxGetInstanceHandle(), MAKEINTRESOURCE(IDI_XY), IMAGE_ICON, 0, 0, 0);
    m_wndStatusBar.GetStatusBarCtrl().SetIcon(1, hIcon);

    UINT nID, nStyle;
    int cx;
    m_wndStatusBar.GetPaneInfo(1, nID, nStyle, cx);
    m_wndStatusBar.SetPaneInfo(1, nID, nStyle, cx+16);

    CString strTitle;
    strTitle.LoadString(IDS_TB_STANDARD);
    m_wndToolBar.SetWindowText(strTitle);

    m_wndToolBar.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
    DockControlBar(&m_wndToolBar);

    m_wndProject.Create( _T("Project"), this, CSize(200, 200), TRUE, 1);
    m_wndProject.SetBarStyle(m_wndProject.GetBarStyle() | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC | CBRS_ALIGN_LEFT );
    m_wndProject.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
    DockControlBar(&m_wndProject, AFX_IDW_DOCKBAR_LEFT);

    // Create the output window and associate with the code
    m_wndOutputWindow.Create( _T("Output"), this, CSize(300, 200), TRUE, 1);
    m_wndOutputWindow.SetBarStyle(m_wndOutputWindow.GetBarStyle() | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC);
    m_wndOutputWindow.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
    DockControlBar(&m_wndOutputWindow, AFX_IDW_DOCKBAR_BOTTOM);
    FeData::g_OutputMessage.SetOutputWindow( &this->m_wndOutputWindow );

    LoadBarState(g_szSection);

    return 0;
}

/////////////////////////////////////////////////////////////////////////////
// CMainFrame message handlers

BOOL CMainFrame::DestroyWindow() 
{
    SaveBarState(g_szSection);
    App()->WriteWindowPlacement(this);
    
    return CMDIFrameWnd::DestroyWindow();
}

void CMainFrame::OnUpdatePlatformIndicator(CCmdUI* pCmdUI)
{
    static LPCTSTR szPlatforms[] = { _T("\tPSX"), _T("\tPC"), _T("\tPS2") };

    CXConDoc* pDoc = App()->GetActiveDocument();
    if (pDoc)
    {
        pCmdUI->SetText(szPlatforms[pDoc->GetPlatform()]);
        pCmdUI->Enable();
    }
    else
        pCmdUI->Enable(FALSE);
}

void CMainFrame::OnUpdateResIndicator(CCmdUI* pCmdUI)
{
    CXConDoc* pDoc = App()->GetActiveDocument();
    if (pDoc)
    {
        const CSize& sizeRes = pDoc->GetResolution();
        CString str;
        str.Format(_T("\t%dx%d"), sizeRes.cx, sizeRes.cy);
        pCmdUI->SetText(str);
        pCmdUI->Enable();
    }
    else
        pCmdUI->Enable(FALSE);
}

void CMainFrame::OnUpdateXYIndicator(CCmdUI* pCmdUI)
{
    BOOL bEnable = FALSE;
    CXConDoc* pDoc = App()->GetActiveDocument();
    if (pDoc)
    {
        CPoint point;
        if (pDoc->GetXConView()->GetXYPosition(point))
        {
            CString str;
            str.Format(_T("%dx%d"), point.x, point.y);
            pCmdUI->SetText(str);
            bEnable = TRUE;
        }
    }

    pCmdUI->Enable(bEnable);
}

/////////////////////////////////////////////////////////////////////////////
// CWndInfo

IMPLEMENT_DYNAMIC(CWndInfo, CWnd)

BEGIN_MESSAGE_MAP(CWndInfo, CWnd)
    ON_WM_CREATE()
    ON_WM_SIZE()
    ON_WM_DESTROY()
END_MESSAGE_MAP()

int CWndInfo::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CWnd::OnCreate(lpCreateStruct) == -1)
        return -1;

    m_edit.Create(WS_CHILD|WS_VISIBLE|WS_HSCROLL|WS_VSCROLL|ES_MULTILINE|ES_READONLY,
        CRect(0,0,0,0), this, 0);
    

    return 0;
}

void CWndInfo::OnSize(UINT nType, int cx, int cy)
{
    CWnd::OnSize(nType, cx, cy);

    m_edit.SetWindowPos(NULL, 0, 0, cx, cy, SWP_NOMOVE|SWP_NOZORDER|SWP_SHOWWINDOW);
}

void CWndInfo::OnDestroy()
{
    // record the window's rect
    GetWindowRect(m_rect);

    CWnd::OnDestroy();
}

/////////////////////////////////////////////////////////////////////////////

void CMainFrame::SetResourceUsageText(const CString& strText)
{
    if (!m_wndInfo.m_hWnd)
    {
        // create the window
        if (m_wndInfo.m_rect.IsRectNull())
            m_wndInfo.m_rect = CRect(100, 100, 400, 400);

        m_wndInfo.CreateEx(WS_EX_CLIENTEDGE,
            AfxRegisterWndClass(0, 0, 0, App()->LoadIcon(IDR_MAINFRAME)),
            _T("Unused Resources"),
            WS_POPUPWINDOW|WS_CAPTION|WS_VISIBLE|WS_THICKFRAME,
            m_wndInfo.m_rect, this, 0);
    }

    m_wndInfo.SetText(strText);
}

BOOL CMainFrame::PreTranslateMessage(MSG* pMsg) 
{
    // this is so that the info window's edit control can use it's accelerators
    if (pMsg->message >= WM_KEYFIRST && pMsg->message <= WM_KEYLAST)
    {
        if (GetFocus()->m_hWnd == m_wndInfo.m_edit.m_hWnd)
        {
            int nBeg, nEnd;
            m_wndInfo.m_edit.GetSel(nBeg, nEnd);
            if (nBeg != nEnd)
            {
                // the edit control has the focus
                // trick MFC's system by changing the message to a NULL message
                UINT nOldMsg = pMsg->message;
                pMsg->message = WM_NULL;
                BOOL bRet = CMDIFrameWnd::PreTranslateMessage(pMsg);
                pMsg->message = nOldMsg;
                return bRet;
            }
        }
    }
    
    return CMDIFrameWnd::PreTranslateMessage(pMsg);
}

void CMainFrame::OnViewProjectWindow() 
{
    BOOL bShow = m_wndProject.IsVisible();
    ShowControlBar(&m_wndProject, !bShow, FALSE);
}

void CMainFrame::OnUpdateViewProjectWindow(CCmdUI* pCmdUI) 
{
    BOOL bShow = m_wndProject.IsVisible();
    if (bShow)
        pCmdUI->SetCheck(1);
    else
        pCmdUI->SetCheck(0);
}

void CMainFrame::OnViewOutputWindow() 
{
    BOOL bShow = m_wndOutputWindow.IsVisible();
    ShowControlBar(&m_wndOutputWindow, !bShow, FALSE);
}

void CMainFrame::OnUpdateViewOutputWindow(CCmdUI* pCmdUI) 
{
    BOOL bShow = m_wndOutputWindow.IsVisible();
    if (bShow)
        pCmdUI->SetCheck(1);
    else
        pCmdUI->SetCheck(0);
}

void CMainFrame::OnUpdateProjectTree()
{
    FeData::Project* pProject = ((CXConApp*)App())->GetProject();
    if( pProject != NULL )
    {
        m_wndProject.InsertScreensFolder();
        int nScreens = pProject->GetNumberOfScreens();
        for( int i = 0; i < nScreens; i++ )
        {
           FeData::FileName fileName;
           pProject->GetScreenFileName( i, fileName );
           m_wndProject.InsertToTree( fileName );
        }
    }
}

bool CMainFrame::InsertToProjectTree(FeData::FileName fileName)
{
    return m_wndProject.InsertToTree( fileName );
}

void CMainFrame::OnClearProjectTree()
{
    m_wndProject.ClearTree();
}

void CMainFrame::OnInitProjectTree()
{
    m_wndProject.InsertScreensFolder();
}

void CMainFrame::OnDeleteScreen() 
{
    FeData::Project* pProject = ((CXConApp*)App())->GetProject();

    if( pProject == NULL )
    {
        return;
    }

    m_wndProject.DeleteCurrentScreen( pProject );
}
