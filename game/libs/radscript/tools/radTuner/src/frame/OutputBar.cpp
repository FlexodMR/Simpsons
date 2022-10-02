//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// OutputBar.cpp : implementation of the COutputBar class
//

#include "stdafx.h"
#include "radTuner.h"
#include "OutputBar.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// COutputBar

BEGIN_MESSAGE_MAP(COutputBar, CBCGSizingControlBar)
//{{AFX_MSG_MAP(COutputBar)
ON_WM_CREATE()
ON_WM_SIZE()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//===========================================================================
// COutputBar::COutputBar
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
COutputBar::COutputBar()
{
    // TODO: add one-time construction code here

}


//===========================================================================
// COutputBar::~COutputBar
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
COutputBar::~COutputBar()
{
}

/////////////////////////////////////////////////////////////////////////////
// COutputBar message handlers


//===========================================================================
// COutputBar::OnCreate
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
int COutputBar::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CBCGSizingControlBar::OnCreate(lpCreateStruct) == -1)
        return -1;
    
    CRect rectDummy;
    rectDummy.SetRectEmpty ();
    
    // Create tabs window:
    if (!m_wndTabs.Create (CBCGTabWnd::STYLE_FLAT_SHARED_HORZ_SCROLL, rectDummy, this, 1))
    {
        TRACE0("Failed to create output tab window\n");
        return -1;      // fail to create
    }
    
    // Create tree windows.
    // TODO: create your own tab windows here:
    if (!m_wndOutputText.Create (WS_VSCROLL | WS_HSCROLL | ES_MULTILINE |
        ES_AUTOVSCROLL | ES_AUTOHSCROLL | ES_WANTRETURN |
        ES_READONLY, rectDummy, &m_wndTabs, 2))
    {
        TRACE0("Failed to create output view\n");
        return -1;      // fail to create
    }
    
    // Attach list windows to tab:
    m_wndTabs.AddTab (&m_wndOutputText, _T("Output"), -1);
    
    return 0;
}


//===========================================================================
// COutputBar::OnSize
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             UINT nType
//             int cx
//             int cy
// 
// Return: void 
//===========================================================================
void COutputBar::OnSize(UINT nType, int cx, int cy)
{
    CBCGSizingControlBar::OnSize(nType, cx, cy);
    
    // Tab control should cover a whole client area:
    m_wndTabs.SetWindowPos (NULL, -1, -1, cx, cy,
        SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);
}


//===========================================================================
// COutputBar::OutputMsg
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* const pszFmt
//             ...
// 
// Return: void 
//===========================================================================
void COutputBar::OutputMsg(const char* const pszFmt, ...)
{
    static char szMsg[1024];
    
    va_list arglist;
    va_start(arglist, pszFmt);
    
    // Use the format string and arguments to format the content text.
    wvsprintf(szMsg, pszFmt, arglist);
    
    CString strOutputText;
    m_wndOutputText.GetWindowText(strOutputText);
    strOutputText += szMsg;
    m_wndOutputText.SetWindowText(strOutputText);
    m_wndOutputText.LineScroll(m_wndOutputText.GetLineCount());
    m_wndOutputText.Invalidate(TRUE);
}


//===========================================================================
// COutputBar::ClearOutput
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void COutputBar::ClearOutput()
{
    m_wndOutputText.SetWindowText("");
    m_wndOutputText.LineScroll(m_wndOutputText.GetLineCount());
    m_wndOutputText.Invalidate(TRUE);
}


//===========================================================================
// COutputBar::AddTab
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWnd* pTabWnd
//             LPCTSTR lpszTabLabel
//             UINT uiImageId
// 
// Return: void 
//===========================================================================
void COutputBar::AddTab(CWnd* pTabWnd, LPCTSTR lpszTabLabel, UINT uiImageId)
{
    m_wndTabs.AddTab(pTabWnd, lpszTabLabel, uiImageId);
}


//===========================================================================
// COutputBar::AddTab
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWnd* pTabWnd
//             UINT uiResTabLabel
//             UINT uiImageId
// 
// Return: void 
//===========================================================================
void COutputBar::AddTab(CWnd* pTabWnd, UINT uiResTabLabel, UINT uiImageId)
{
    m_wndTabs.AddTab(pTabWnd, uiResTabLabel, uiImageId);
}


//===========================================================================
// COutputBar::InsertTab
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWnd* pNewWnd
//             LPCTSTR lpszTabLabel
//             int nInsertAt
//             UINT uiImageId
// 
// Return: void 
//===========================================================================
void COutputBar::InsertTab(CWnd* pNewWnd, LPCTSTR lpszTabLabel, int nInsertAt, UINT uiImageId)
{
    m_wndTabs.InsertTab(pNewWnd, lpszTabLabel, nInsertAt, uiImageId);
}


//===========================================================================
// COutputBar::InsertTab
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWnd* pNewWnd
//             UINT uiResTabLabel
//             int nInsertAt
//             UINT uiImageId
// 
// Return: void 
//===========================================================================
void COutputBar::InsertTab(CWnd* pNewWnd, UINT uiResTabLabel, int nInsertAt, UINT uiImageId)
{
    m_wndTabs.InsertTab(pNewWnd, uiResTabLabel, nInsertAt, uiImageId);
}


//===========================================================================
// COutputBar::GetTabsNum
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int COutputBar::GetTabsNum() const
{
    return(m_wndTabs.GetTabsNum());
}


//===========================================================================
// COutputBar::RemoveTab
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             int iTab
// 
// Return: BOOL 
//===========================================================================
BOOL COutputBar::RemoveTab(int iTab)
{
    return(m_wndTabs.RemoveTab(iTab));
}


//===========================================================================
// COutputBar::RemoveAllTabs
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void COutputBar::RemoveAllTabs()
{
    m_wndTabs.RemoveAllTabs();
}

