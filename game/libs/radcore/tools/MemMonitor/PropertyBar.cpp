//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// PropertyBar.cpp: implementation of the CPropertyBar class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "memmonitor.h"
#include "PropertyBar.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif


BEGIN_MESSAGE_MAP(CPropertyBar, CBCGSizingControlBar)
    //{{AFX_MSG_MAP(CPropertyBar)
    ON_WM_CREATE()
    ON_WM_SIZE()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

CPropertyBar::CPropertyBar( ) :
    m_pMemPropertyView( NULL )
{
}

CPropertyBar::~CPropertyBar( )
{
}

int CPropertyBar::OnCreate(LPCREATESTRUCT lpCreateStruct) 
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

    m_pMemPropertyView = static_cast< CMemPropertyView * >( RUNTIME_CLASS( CMemPropertyView )->CreateObject( ) );
    if ( ! m_pMemPropertyView->Create( NULL, "Property", WS_CHILD | WS_VISIBLE, rectDummy, & m_wndTabs, 1 ) )
    {
        ::AfxTrace("Failed to create property list view.\n");
        return -1;
    }

    m_wndTabs.AddTab( m_pMemPropertyView, _T("Property"), -1 );

    return 0;
}

void CPropertyBar::OnSize(UINT nType, int cx, int cy) 
{
    CBCGSizingControlBar::OnSize(nType, cx, cy);

    // Tab control should cover a whole client area:
    m_wndTabs.SetWindowPos (NULL, -1, -1, cx, cy,
        SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);
}

