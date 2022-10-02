//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Scrooby Project Window
//
// Description: This contains the CProjectWindow class.
//
// Authors:     Victor Medrano
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\StdAfx.h"
#include "ProjectWindow.h"
#include "..\XCon.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CProjectWindow::CProjectWindow
//===========================================================================
// Description: CProjectWindow's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

CProjectWindow::CProjectWindow()
{
}

//===========================================================================
// CProjectWindow::~CProjectWindow
//===========================================================================
// Description: CProjectWindow's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
CProjectWindow::~CProjectWindow()
{
}


BEGIN_MESSAGE_MAP(CProjectWindow, CSizingControlBar)
    //{{AFX_MSG_MAP(CProjectWindow)
    ON_WM_CREATE()
    ON_WM_SIZE()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

int CProjectWindow::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    if (CSizingControlBar::OnCreate(lpCreateStruct) == -1)
        return -1;

    m_ImageList.Create( 16, 16, ILC_COLOR4 | ILC_MASK, 1, 1 );
    
    // load images, pink mask
    for (int i = 0; i < NUM_IMAGES; i++)
    {
        CBitmap hBitmap;
        BOOL bLoad;
        bLoad = hBitmap.LoadBitmap(IDB_TREE1+i);
        if (m_ImageList.Add(&hBitmap, RGB(255,0,255)) == -1)
            return FALSE;
    }
      
    if (!m_tree.Create( TVS_HASBUTTONS | TVS_HASLINES | TVS_LINESATROOT | TVS_SHOWSELALWAYS |
        WS_BORDER|WS_CHILD|WS_VISIBLE|LVS_ALIGNLEFT|LVS_REPORT|LVS_NOCOLUMNHEADER,
        CRect( 0,0,110,110 ), this, ID_PROJECTTREE) )
    {
        return -1;
    }

    m_tree.SetImageList( &m_ImageList, LVSIL_NORMAL );
    
    return 0;
}

void CProjectWindow::OnUpdateCmdUI(CFrameWnd* pTarget, BOOL bDisableIfNoHndler)
{
    CSizingControlBar::OnUpdateCmdUI(pTarget, bDisableIfNoHndler);

    UpdateDialogControls(pTarget, bDisableIfNoHndler);
}

void CProjectWindow::OnSize(UINT nType, int cx, int cy) 
{
    CSizingControlBar::OnSize(nType, cx, cy);

    // Resize the tree to full size of window
    m_tree.MoveWindow( 0, 0, cx, cy);
    //m_tree.SetColumnWidth( 0, cx + 200 );
}

void CProjectWindow::DoDataExchange(CDataExchange* pDX) 
{
    // TODO: Add your specialized code here and/or call the base class
    
    CSizingControlBar::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CTreeDlg)
    //}}AFX_DATA_MAP
}

void CProjectWindow::ClearTree()
{
    m_tree.DeleteAllItems();
  
}

bool CProjectWindow::InsertScreensFolder()
{
    m_hScreens = m_tree.InsertItem(_T("Screens"), TREE_FOLDER, TREE_FOLDER_SEL);
    if (m_hScreens == NULL)
        return false;
    else
        return true;
}

bool CProjectWindow::InsertToTree(FeData::FileName& fileName)
{
    PascalCString strFileName;
    fileName.Get(strFileName);
    HTREEITEM hItem = m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
                    strFileName, TREE_SCREEN, TREE_SCREEN, 0, 0, (DWORD)&fileName, m_hScreens, TVI_LAST);
    m_tree.EnsureVisible(hItem);

    if (hItem == NULL)
        return false;
    else
        return true;
}

bool CProjectWindow::DeleteCurrentScreen( FeData::Project* project )
{
    bool bReturn = false;

    HTREEITEM hItem = m_tree.GetSelectedItem();

    int nCount = 0;

    HTREEITEM hCount = hItem;

    while( hCount != NULL )
    {
        hCount = m_tree.GetPrevSiblingItem(hCount);

        if( hCount != NULL )
        {
            nCount++;
        }
    }

    if( !project->IsReadOnly() && m_tree.DeleteItem( hItem ) )
    {
        project->DeleteScreenFileName( nCount );
        CXConApp* app = App();
        app->SetProjectDirty( true );
        bReturn = true;
    }

    return bReturn;
}
