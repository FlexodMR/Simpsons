/////////////////////////////////////////////////////////////////////////////
// TabView.cpp : implementation of the CTabView class


#pragma warning( disable : 4786 )
#include "StdAfx.h"
#include "MainFrm.h"
#include "XConDoc.h"
#include "TabView.h"

#include "PageDlg.h"
#include "ResourceDlg.h"
#include "LayerOrganizerDlg.h"
#include "FeData\NamedElements\Screen.h"
#include "GUI\Undo\ActionManager.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CTabView

#define ID_TABCTRL    2000            // id for the CTabCtrl

IMPLEMENT_DYNCREATE(CTabView, CView)

BEGIN_MESSAGE_MAP(CTabView, CView)
    //{{AFX_MSG_MAP(CTabView)
    ON_WM_CREATE()
    ON_WM_SIZE()
    ON_WM_SETFOCUS()
    //}}AFX_MSG_MAP
    ON_NOTIFY(TCN_SELCHANGE, ID_TABCTRL, OnTabSelChange)
    ON_NOTIFY(TCN_SELCHANGING, ID_TABCTRL, OnTabSelChanging)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CTabView construction/destruction

CTabView::CTabView()
{
    m_pTabCtrl = NULL;
    m_hEditLabel = NULL;
    m_LastScreenChangeNumber = -1;
}

CTabView::~CTabView()
{
    if (m_pTabCtrl)
        delete m_pTabCtrl;

    int nSize = m_arDialogs.GetSize();
    for (int i = 0; i < nSize; i++)
    {
        if (m_arDialogs[i])
            delete m_arDialogs[i];
    }
}

/////////////////////////////////////////////////////////////////////////////
// CTabView diagnostics

#ifdef _DEBUG
CXConDoc* CTabView::GetDocument() // non-debug version is inline
{
    ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CXConDoc)));
    return (CXConDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CTabView message handlers

int CTabView::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    if (CView::OnCreate(lpCreateStruct) == -1)
        return -1;

    // Create a tab control which is a child window of the CTabView and
    // whose size will be determined in CTabView::OnSize().
    m_pTabCtrl = new CTabCtrl;
    ASSERT(m_pTabCtrl);

    if (!m_pTabCtrl->Create(WS_CHILD|WS_VISIBLE|WS_CLIPSIBLINGS, 
        CRect(0, 0, 0, 0), this, ID_TABCTRL))
        return -1;

    CFont font;
    font.CreateStockObject(DEFAULT_GUI_FONT);
    m_pTabCtrl->SetFont(&font, FALSE);

    if (!CTreeDlg::InitImageList())
        return -1;

    // Create all pages for the tab control.
    CreatePages();
    return 0;
}

void CTabView::OnSize(UINT nType, int cx, int cy) 
{
    CView::OnSize(nType, cx, cy);

    m_pTabCtrl->SetWindowPos(NULL, 0, 0, cx, cy, SWP_NOMOVE|SWP_NOZORDER|SWP_SHOWWINDOW);
    SetDialogSize();
}

void CTabView::OnSetFocus(CWnd* pOldWnd) 
{
    CView::OnSetFocus(pOldWnd);
    OnTabSelChange(NULL, NULL);
}

void CTabView::OnTabSelChanging(NMHDR* pnmhdr, LRESULT* pResult)
{
    GetCurPage()->ShowWindow(SW_HIDE);
    *pResult = FALSE;        // return FALSE to allow seletion to change
}

void CTabView::OnTabSelChange(NMHDR* pnmhdr, LRESULT* pResult)
{
    SetDialogSize();

    // Set input focus to this page.
    GetCurPage()->SetFocus();
}    

void CTabView::SetDialogSize()
{
    RECT rc;
    m_pTabCtrl->GetItemRect(0, &rc);

    CRect rect;
    m_pTabCtrl->GetClientRect(rect);

    int nTop = rc.bottom+5;
    GetCurPage()->SetWindowPos(NULL, 5, nTop, rect.Width()-10, rect.Height()-nTop-5,
        SWP_NOZORDER|SWP_SHOWWINDOW);
}

/////////////////////////////////////////////////////////////////////////////

void CTabView::SelectTab(int nIndex)
{
    if (GetSelectedPage() == nIndex)
        return;

    // Okay, here is the trick...  Simulate a mouse click message
    // to fool tab control that one of its tab is selected.
    RECT rc;
    m_pTabCtrl->GetItemRect(nIndex, &rc);
    m_pTabCtrl->SendMessage(WM_LBUTTONDOWN, MK_LBUTTON, MAKELONG(rc.left, rc.top));
}

/////////////////////////////////////////////////////////////////////////////
// CTabView::HandleKeyDownMsg
//    
// This functin will handle the following keydown messages:
//
// CTRL+TAB            - used to activate the tab after the current selected tab
// SHIFT+CTRL+TAB    - used to activate the tab before the current selected tab
// ENTER            - OnOK() is called to dismiss the current selected tab 
// ESCAPE            - OnCancel() is called to dismiss the current selected tab
//
// Keystrokes messages are different from the mouse messages.  The former 
// will be sent to the window that has the input focus.  However, the 
// latter will be sent to the window in which the mouse is clicked on except in
// the case when SetCapture() is called.
//
// When those keys are pressed, the edit control inside the dialog box (or
// page) will have the input focus.  So, all keystrokes messages will be
// routed to the parent window i.e. the dialog box.  When dialog box receives
// the keystrokes messages, it will handle some of them (such as CTRL+TAB,
// TAB, arrow keys, etc.) and then forward unhandled ones to the edit control.
// Because of this, we need a way to trap those keystrokes messages before
// it gets routed to the dialog box.  The PreTranslateMessage() function
// in your CWinApp-derived class would be a good place for this.
//
// In the overriden CWinApp::PreTranslateMessage() function, all WM_KEYDOWN
// messages will be passed to the view window first.  So we have a chance 
// to handle the keystrokes messages that we are interested in.

// NOTE:  We can't intercept those keydown messages in PreTranslateMessage()
// of either CView or CMainFrame class because they are being handled by 
// the dialog box (or page) before they get routed to the view or frame 
// window.  Refer to the code in CWnd::WalkPreTranslateTree() in wincore.cpp
// file.  CWnd::WalkPreTranslateTree() is called in thrdcore.cpp file.
//
// This function will return TRUE if those keystroke messages are processed; 
// FALSE otherwise.

BOOL CTabView::HandleKeyDownMsg(MSG* pMsg)
{
    switch (pMsg->wParam)
    {
    case VK_TAB:
        // Was the CTRL key pressed?  If not, we don't handle this keydown message here.
        if (GetKeyState(VK_CONTROL) < 0)
        {
            // Was the SHIFT key pressed?  If it was pressed, then we need
            // to activate the tab before the current selected tab.
            // Otherwise, the tab after the current selected tab will be activated.  
            BOOL bShiftDown = GetKeyState(VK_SHIFT) < 0;
            int nOldSel = GetSelectedPage();
            int nCount = m_pTabCtrl->GetItemCount() ;
            int nNewSel =  bShiftDown ? (nOldSel + (nCount -1)) % nCount : (nOldSel + 1) % nCount;
            SelectTab(nNewSel);
            return TRUE;
        }
        break;

    case VK_RETURN:
    case VK_ESCAPE:
        // Trapping the ENTER and ESCAPE keys here so the current active page won't be 
        // dismissed.  In MFC, ENTER and ESCAPE keys will be routed to CDialog::OnOK() and 
        // CDialog::OnCancel() functions that will destroy the current active dialog (or 
        // the page).
        if (m_hEditLabel)
            ::SendMessage(m_hEditLabel, pMsg->message, pMsg->wParam, pMsg->lParam);
        else if (pMsg->wParam == VK_RETURN)
            CheckAccelerator(pMsg);
        return TRUE;
    }

    if (!m_hEditLabel && CheckAccelerator(pMsg))
        return TRUE;

    // Unhandled keydown messages.
    return FALSE;
}

BOOL CTabView::CheckAccelerator(MSG* pMsg)
{
    // check for accelerator keystrokes
    CMainFrame* pMainFrame = AppMainWnd();
    HACCEL hAccel = pMainFrame->GetDefaultAccelerator();
    if (!hAccel)
        return FALSE;
    
    return ::TranslateAccelerator(pMainFrame->m_hWnd, hAccel, pMsg);
}

/////////////////////////////////////////////////////////////////////////////
// CTabView::CreatePages
//    
// This function creates all pages for the tab control (CTabCtrl).  The tab
// text is retrieved from the dialog template.
//
// All the created pages will be added to the m_DlgArray so we know which one
// to show and hide when a particular tab is selected.  Pages will be shown
// in the left-to-right order when they are added to the tab control.  The
// C++ page objects which are added to the m_DlgArray will be destroyed in
// the destructor function of this view window.

void CTabView::CreatePages()
{
    // Create page one and add it to dialog array.
//    CDialog*  pDlg = new CScreenDlg;
//    m_arDialogs.Add(pDlg);
//    VERIFY(pDlg->Create(CScreenDlg::IDD, m_pTabCtrl));

    // Create page two and add it to dialog array.
    CDialog* pDlg = new CPageDlg;
    m_arDialogs.Add(pDlg);
    VERIFY(pDlg->Create(CPageDlg::IDD, m_pTabCtrl));

    // Create page three and add it to dialog array.
    pDlg = new CResourceDlg;
    m_arDialogs.Add(pDlg);
    VERIFY(pDlg->Create(CResourceDlg::IDD, m_pTabCtrl));

    // Create page four and add it to dialog array.
    pDlg = new CLayerOrganizerDlg;
    m_arDialogs.Add(pDlg);
    VERIFY(pDlg->Create(CLayerOrganizerDlg::IDD, m_pTabCtrl));

    // Determine the tab text.  The tab text can be found from the 
    // dialog template.
    TCHAR szTitle[50];
    TCITEM tci;
    tci.mask = TCIF_TEXT;
    tci.iImage = -1;
    for (int i = 0; i < NUM_PAGES; i++)
    {    
        // Get the caption from dialog template and insert this caption
        // to the tab control.
        pDlg = m_arDialogs[i];
        pDlg->GetWindowText(szTitle, _countof(szTitle));
        tci.pszText    = szTitle;
        m_pTabCtrl->InsertItem(i, &tci);

        // Remove caption from the dialog box because no caption is allowed
        // for pages in the tab control.
        pDlg->ModifyStyle(WS_CAPTION, 0);

        // IMPORTANT: Why sending a WM_NCACTIVATE message to the dialog box?
        // When writing this sample, we found a problem which is related to
        // the edit control refuses to give up the input focus when mouse is 
        // being clicked on some other edit control.  This problem only 
        // happens when title bar is found from a dialog resource.  And we
        // need the title bar because it is the text in the tab control.  
        // Sending a WM_NCACTIVATE message seems to fix the problem.
        pDlg->SendMessage(WM_NCACTIVATE, TRUE);
    }
}

/////////////////////////////////////////////////////////////////////////////

BOOL CTabView::OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo) 
{
    // route command messages to current page
    if (GetCurPage()->OnCmdMsg(nID, nCode, pExtra, pHandlerInfo))
        return TRUE;

    return CView::OnCmdMsg(nID, nCode, pExtra, pHandlerInfo);
}

/////////////////////////////////////////////////////////////////////////////

void CTabView::OnInitialUpdate() 
{
    SelectTab( PAGES_PAGE );

    // pass message down to dialog pages
    CXConDoc* pDoc = GetDocument();

   // ((CTreeDlg*)m_arDialogs[ SCREEN_PAGE ])->OnInitialUpdate(pDoc);
    ((CTreeDlg*)m_arDialogs[ PAGES_PAGE ])->OnInitialUpdate(pDoc);
    ((CTreeDlg*)m_arDialogs[ RESOURCE_PAGE ])->OnInitialUpdate(pDoc);
    ((CLayerOrganizerDlg*)m_arDialogs[ LAYER_ORGANIZER_PAGE ])->OnInitialUpdate(pDoc);

    CView::OnInitialUpdate();
}

CXObject* CTabView::GetSelection()
{
    if( GetSelectedPage() != LAYER_ORGANIZER_PAGE )
        return ((CTreeDlg*)GetCurPage())->GetSelection();
    else
        return NULL;
}


FeData::NamedElement* CTabView::GetSelectedElement()
{
    if( GetSelectedPage() != LAYER_ORGANIZER_PAGE )
        return ((CTreeDlg*)GetCurPage())->GetSelectedElement();
    else
        return NULL;
}


CTreeDlg* CTabView::GetPage(int nPage, BOOL bSelect /*=TRUE*/)
{
    if (bSelect)
        SelectTab(nPage);
    return (CTreeDlg*)m_arDialogs[nPage];
}

void CTabView::InvalidatePage()
{
    GetCurPage()->Invalidate();
}


void CTabView::SetupCheckRebuild()
{
    CXConDoc* pDoc = GetDocument();

    int screenChangeNumber = pDoc->GetScreen()->GetChangeNumber();
    if( m_LastScreenChangeNumber != screenChangeNumber )
    {
        ((CTreeDlg*)m_arDialogs[ PAGES_PAGE ])->SetupRebuildTree( pDoc );
        ((CTreeDlg*)m_arDialogs[ RESOURCE_PAGE ])->SetupRebuildTree( pDoc );
    }
}


void CTabView::CheckRebuild()
{
    CXConDoc* pDoc = GetDocument();

    int screenChangeNumber = pDoc->GetScreen()->GetChangeNumber();
    if( m_LastScreenChangeNumber != screenChangeNumber )
    {
        ((CTreeDlg*)m_arDialogs[ PAGES_PAGE ])->RebuildTree( pDoc );
        ((CTreeDlg*)m_arDialogs[ RESOURCE_PAGE ])->RebuildTree( pDoc );
        ((CLayerOrganizerDlg*)m_arDialogs[ LAYER_ORGANIZER_PAGE ])->Rebuild();

        m_LastScreenChangeNumber = screenChangeNumber;
    }
}


void CTabView::LockRebuild( bool setLocked )
{
    ((CTreeDlg*)m_arDialogs[ PAGES_PAGE ])->LockRebuild( setLocked );
    ((CTreeDlg*)m_arDialogs[ RESOURCE_PAGE ])->LockRebuild( setLocked );
}
