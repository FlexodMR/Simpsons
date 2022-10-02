//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        WorkspaceBar.cpp
//
// Subsystem:   RadScript Tool
//
// Description: WorkSpace Docking Bar implementation
//
// Revisions:   V1.00 Mar 11, 2001       Creation
//
//=============================================================================

#include "stdafx.h"
#include "radTuner.h"
#include "WorkspaceBar.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// CWorkSpaceBar
//=============================================================================

BEGIN_MESSAGE_MAP(CWorkSpaceBar, CBCGSizingControlBar)
//{{AFX_MSG_MAP(CWorkSpaceBar)
ON_WM_CREATE()
ON_WM_SIZE()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()


//===========================================================================
// CWorkSpaceBar::CWorkSpaceBar
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CWorkSpaceBar::CWorkSpaceBar()
{
    m_pwndClassTree = NULL;
    m_pwndFileTree = NULL;
}


//===========================================================================
// CWorkSpaceBar::~CWorkSpaceBar
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CWorkSpaceBar::~CWorkSpaceBar()
{
    ASSERT(m_pwndClassTree == NULL);
    ASSERT(m_pwndFileTree == NULL);
}

//=============================================================================
// CWorkSpaceBar message handlers
//=============================================================================

//===========================================================================
// CWorkSpaceBar::OnCreate
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
int CWorkSpaceBar::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CBCGSizingControlBar::OnCreate(lpCreateStruct) == -1)
        return -1;

    CRect rectDummy;
    rectDummy.SetRectEmpty ();

    // Create tabs window:
    if (!m_wndTabs.Create (CBCGTabWnd::STYLE_3D, rectDummy, this, 1))
    {
        TRACE0("Failed to create workspace tab window\n");
        return -1;      // fail to create
    }

    m_wndTabs.SetImageList (IDB_WORKSPACE, 16, RGB (255, 0, 0));

    return 0;
}


//===========================================================================
// CWorkSpaceBar::OnSize
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
void CWorkSpaceBar::OnSize(UINT nType, int cx, int cy)
{
    CBCGSizingControlBar::OnSize(nType, cx, cy);

    // Tab control should cover a whole client area:
    m_wndTabs.SetWindowPos (NULL, -1, -1, cx, cy,
        SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOZORDER);
}


//===========================================================================
// CWorkSpaceBar::RemoveAllTab
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CWorkSpaceBar::RemoveAllTab()
{
    m_wndTabs.RemoveAllTabs();
    delete m_pwndClassTree;
    delete m_pwndFileTree;

    m_pwndClassTree = NULL;
    m_pwndFileTree = NULL;
}


//===========================================================================
// CWorkSpaceBar::InsertAllTab
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CWorkSpaceBar::InsertAllTab()
{
    CRect rectDummy;
    rectDummy.SetRectEmpty ();
    // Create tree windows.

    ASSERT(m_pwndClassTree == NULL);
    ASSERT(m_pwndFileTree == NULL);

    m_pwndClassTree = new CClassTreeCtrl;
    m_pwndFileTree = new CFileTreeCtrl;

    if (!m_pwndClassTree->Create (NULL, rectDummy, &m_wndTabs, 2) ||
        !m_pwndFileTree->Create (NULL, rectDummy, &m_wndTabs, 3))
    {
        TRACE0("Failed to create workspace view\n");
        delete m_pwndClassTree;
        delete m_pwndFileTree;

        m_pwndClassTree = NULL;
        m_pwndFileTree = NULL;
        return -1;      // fail to create
    }
    // Attach tree windows to tab:
    m_wndTabs.AddTab (m_pwndClassTree, _T("Class View"), 0 /* Image number */);
    m_wndTabs.AddTab (m_pwndFileTree, _T("File View"), 1 /* Image number */);
    return(0);
}
