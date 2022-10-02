//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// OutputBar.cpp : implementation of the COutputBar class
//

#include "stdafx.h"
#include "MemMonitor.h"
#include "OutputBar.h"

/////////////////////////////////////////////////////////////////////////////
// COutputBar

BEGIN_MESSAGE_MAP(COutputBar, CBCGSizingControlBar)
    //{{AFX_MSG_MAP(COutputBar)
    ON_WM_CREATE()
    ON_WM_SIZE()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// COutputBar construction/destruction

COutputBar::COutputBar() :
    m_pErrorListView( NULL )
{
}

COutputBar::~COutputBar()
{
}

/////////////////////////////////////////////////////////////////////////////
// COutputBar message handlers

int COutputBar::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    if (CBCGSizingControlBar::OnCreate(lpCreateStruct) == -1)
        return -1;
    
    CRect rectDummy;
    rectDummy.SetRectEmpty ();

    // Create tabs window:
    if (!m_wndTabs.Create (CBCGTabWnd::STYLE_FLAT, rectDummy, this, 1))
    {
        TRACE0("Failed to create output tab window\n");
        return -1;      // fail to create
    }

    // Create tree windows.
    // TODO: create your own tab windows here:
    const DWORD dwViewStyle =   
        LBS_NOINTEGRALHEIGHT | WS_CHILD | WS_VISIBLE | WS_HSCROLL | WS_VSCROLL;

    m_pErrorListView = static_cast< CMemErrorListView * >( RUNTIME_CLASS( CMemErrorListView )->CreateObject( ) );
    if ( ! m_pErrorListView->Create( NULL, "Error", WS_CHILD | WS_VISIBLE, rectDummy, & m_wndTabs, 1 ) )
    {
        ::AfxTrace("Failed to create error list view.\n");
        return -1;
    }

    m_wndTabs.AddTab( m_pErrorListView, _T("Error"), -1 );

    return 0;
}

void COutputBar::OnSize(UINT nType, int cx, int cy) 
{
    CBCGSizingControlBar::OnSize(nType, cx, cy);

    // Tab control should cover a whole client area:
    m_wndTabs.SetWindowPos (NULL, -1, -1, cx, cy,
        SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);
}

