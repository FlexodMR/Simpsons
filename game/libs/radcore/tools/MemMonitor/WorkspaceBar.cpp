//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// WorkspaceBar.cpp : implementation of the CWorkspaceBar class
//

#include "stdafx.h"
#include "MemMonitor.h"
#include "WorkspaceBar.h"

/////////////////////////////////////////////////////////////////////////////
// CWorkspaceBar

BEGIN_MESSAGE_MAP(CWorkspaceBar, CBCGSizingControlBar)
    //{{AFX_MSG_MAP(CWorkspaceBar)
    ON_WM_CREATE()
    ON_WM_SIZE()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWorkspaceBar construction/destruction

CWorkspaceBar::CWorkspaceBar()
{
    // TODO: add one-time construction code here

}

CWorkspaceBar::~CWorkspaceBar()
{
}

/////////////////////////////////////////////////////////////////////////////
// CWorkspaceBar message handlers

int CWorkspaceBar::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    if (CBCGSizingControlBar::OnCreate(lpCreateStruct) == -1)
        return -1;
    
    CRect rectDummy;
    rectDummy.SetRectEmpty( );

    // Create tabs window:
    if ( ! m_wndTabs.Create( CBCGTabWnd::STYLE_3D, rectDummy, this, 1 ) )
    {
        TRACE0( "Failed to create workspace tab window\n" );
        return -1;      // fail to create
    }

    m_wndTabs.SetImageList( IDB_WORKSPACE, 16, RGB( 255, 0, 255 ) );

    return 0;
}

void CWorkspaceBar::OnSize(UINT nType, int cx, int cy) 
{
    CBCGSizingControlBar::OnSize(nType, cx, cy);

    // Tab control should cover a whole client area:
    m_wndTabs.SetWindowPos (NULL, -1, -1, cx, cy,
        SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);
}

