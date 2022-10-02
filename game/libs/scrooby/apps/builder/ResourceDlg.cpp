/////////////////////////////////////////////////////////////////////////////
// DlgTrees.cpp : implementation file

#pragma warning( disable : 4786 )

#include "StdAfx.h"
#include "ResourceDlg.h"
#include "XCon.h"
#include "XConView.h"
#include "TabView.h"
//#include "xUtil.h"

//#include "xDisplay.h"
//#include "xScreen.h"
//#include "xGroup.h"
//#include "xText.h"


#include "Strings\PCString.h"

#include "GUI\Undo\ActionRename.h"

#include "FeData\Helpers\NameManager.h"
#include "FeData\Helpers\OutputMessage.h"
#include "FeData\Helpers\ResourceManager.h"
#include "FeData\NamedElements\Page.h"
#include "FeData\NamedElements\Screen.h"
#include "FeData\Resources\Image.h"


const char* g_ImagesName = "Images";
const char* g_MovieClipsName = "Movie Clips";
const char* g_Pure3dFilesName = "Pure3d Files";
const char* g_TextBiblesName = "Text Bibles";
const char* g_TextStylesName = "Text Styles";


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// CResourceDlg dialog

CResourceDlg::CResourceDlg()
{
    //{{AFX_DATA_INIT(CResourceDlg)
    //}}AFX_DATA_INIT
}

BEGIN_MESSAGE_MAP(CResourceDlg, CTreeDlg)
    //{{AFX_MSG_MAP(CResourceDlg)
    ON_NOTIFY(TVN_BEGINLABELEDIT, IDC_TREE, OnBeginLabelEdit)
    ON_NOTIFY(TVN_ENDLABELEDIT, IDC_TREE, OnEndlabeleditTree)
    ON_UPDATE_COMMAND_UI(ID_RENAME, OnUpdateRename)
    ON_NOTIFY(NM_DBLCLK, IDC_TREE, OnDblclkTree)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

void CResourceDlg::GetContextMenu(HTREEITEM hItem, UINT* pIDResource, int* pPos)
{
    *pIDResource = IDR_RESOURCE;

    HTREEITEM hRoot = m_tree.GetRootItem();
    if( hItem == hRoot )
    {
        *pPos = -1;
    }
    else if( m_tree.GetParentItem( hItem ) == hRoot )
    {
        *pPos = 0;
    }
    else if( m_tree.GetParentItem( m_tree.GetParentItem( hItem ) ) == hRoot )
    {
        PascalCString resourceType = m_tree.GetItemText( hItem );
        if( resourceType == g_ImagesName )
        {
            *pPos = DOC_IMAGES + 1;
        }
        else if( resourceType == g_MovieClipsName )
        {
            *pPos = DOC_MOVIECLIPS + 1;
        }
        else if( resourceType == g_Pure3dFilesName )
        {
            *pPos = DOC_PURE3DFILES + 1;
        }
        else if( resourceType == g_TextBiblesName )
        {
            *pPos = DOC_TEXTBIBLES + 1;
        }
        else if( resourceType == g_TextStylesName )
        {
            *pPos = DOC_TEXTSTYLES + 1;
        }
        else
        {   
            *pPos = -1;
        }
    }
    else
    {
        *pPos = NUM_RES_ITEMS + 1;
    }
}


void CResourceDlg::ModifyContextMenu(CMenu* pMenu, int nPos)
{
    if( nPos == NUM_RES_ITEMS + 1 )
    {
        static UINT nIDs[NUM_RES_ITEMS] =
        {
            ID_INSERT_IMAGE,
            ID_INSERT_STRING,
            ID_INSERT_FONT,
            ID_INSERT_CURSOR,
            ID_INSERT_MOVIE_CLIP,
            ID_INSERT_PURE3DFILE,
            ID_INSERT_TEXT_BIBLE,
            ID_INSERT_TEXT_STYLE,
        };

        DOCARRAYTYPE nType;
    
        PascalCString resourceType = m_tree.GetItemText( m_tree.GetParentItem(m_tree.GetSelectedItem()) );
        if( resourceType == g_ImagesName )
        {
            nType = DOC_IMAGES;
        }
        else if( resourceType == g_MovieClipsName )
        {
            nType = DOC_MOVIECLIPS;
        }
        else if( resourceType == g_Pure3dFilesName )
        {
            nType = DOC_PURE3DFILES;
        }
        else if( resourceType == g_TextBiblesName )
        {
            nType = DOC_TEXTBIBLES;
        }
        else if( resourceType == g_TextStylesName )
        {
            nType = DOC_TEXTSTYLES;
        }
        else
        {   
            return;
        }


    //    DOCARRAYTYPE nType = (DOCARRAYTYPE)m_tree.GetItemData(m_tree.GetParentItem(m_tree.GetSelectedItem()));

        for( int i = 0; i < NUM_RES_ITEMS; i++ )
        {
            if( nType != i )
            {
                pMenu->RemoveMenu( nIDs[i], MF_BYCOMMAND );
            }
        }
    }
}


void CResourceDlg::InsertNewEntry(CXObject* pObject)
{
/*    int nImage = pObject->GetImage();
    HTREEITEM hNew = m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
        LPSTR_TEXTCALLBACK, nImage, nImage, 0, 0, (DWORD)pObject, m_hItems[pObject->GetType()], TVI_SORT);
    m_tree.EnsureVisible(hNew);
    m_tree.SelectItem(hNew);
    */
}


CXObject* CResourceDlg::GetSelection()
{
    CXObject* pObject = NULL;
    /*
    HTREEITEM hSelItem = m_tree.GetSelectedItem();
    if (hSelItem)
    {
        HTREEITEM hRoot = m_tree.GetRootItem();
        if (hSelItem != hRoot && m_tree.GetParentItem(hSelItem) != hRoot)
            pObject = GetItemObject(hSelItem);
    }
    */
    return pObject;
}

void CResourceDlg::DeleteObj(CXObject* pObject, CXOverlay* pOverlay /*=NULL*/, DWORD dwExtra /*=0*/)
{
//    m_tree.DeleteItem(FindObjectItem(pObject, m_hItems[pObject->GetType()]));
}


bool CResourceDlg::GetSelectedPageName( PascalCString& pageName )
{
    HTREEITEM hRoot = m_tree.GetRootItem();
    HTREEITEM hSelectedItem = m_tree.GetSelectedItem();

    if( hSelectedItem == NULL )
    {
        return false;
    }

    if( hRoot == hSelectedItem )
    {
        return false;
    }

    HTREEITEM hParent = m_tree.GetParentItem( hSelectedItem );
    while( hParent != hRoot )
    {
        hSelectedItem = hParent;
        hParent = m_tree.GetParentItem( hSelectedItem );
    }

    pageName = m_tree.GetItemText( hSelectedItem );
    return true;
}   


FeData::NamedElement* CResourceDlg::GetSelectedElement()
{
    HTREEITEM selectedItem = m_tree.GetSelectedItem();
    HTREEITEM rootItem = m_tree.GetRootItem();

    if( (selectedItem != NULL) &&
        (selectedItem != rootItem) &&
        (m_tree.GetParentItem( selectedItem ) != rootItem) )
    {
        return (FeData::NamedElement*)m_tree.GetItemData( selectedItem );
    }

    return NULL;
}

/////////////////////////////////////////////////////////////////////////////
// CResourceDlg message handlers

BOOL CResourceDlg::OnInitDialog() 
{
    CTreeDlg::OnInitDialog();
    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}


void CResourceDlg::OnBeginLabelEdit(NMHDR* pNMHDR, LRESULT* pResult) 
{
    *pResult = FALSE;

    HTREEITEM hRoot = m_tree.GetRootItem();
    TVITEM& tvi = ((TV_DISPINFO*)pNMHDR)->item;
    if( (tvi.hItem == hRoot) ||
        (m_tree.GetParentItem( tvi.hItem ) == hRoot) ||
        (m_tree.GetParentItem( m_tree.GetParentItem( tvi.hItem ) ) == hRoot) )
    {
        *pResult = TRUE;
    }

    CTreeDlg::OnBeginLabelEdit(pNMHDR, pResult);
}


void CResourceDlg::OnInitialUpdate(CXConDoc* pDoc)
{
    using namespace FeData;

    Screen* screen = pDoc->GetScreen();
    if( screen == NULL )
    {
        return;
    }

    int res;

    HTREEITEM hRoot = m_tree.GetRootItem();

    for( int i = 0; i < screen->GetNumberOfPages(); i++ )
    {
        Page* page = screen->GetPage( i );
        if( page == NULL )
        {
            continue;
        }

        ResourceManager* resMan = page->GetResourceManager();
        if( resMan == NULL )
        {
            continue;
        }

        HTREEITEM pageTreeItem = m_tree.InsertItem(_T(page->GetName()), TREE_FOLDER, TREE_FOLDER_SEL, hRoot);

          HTREEITEM imageTreeItem = m_tree.InsertItem(_T( g_ImagesName ), TREE_FOLDER, TREE_FOLDER_SEL, pageTreeItem);
        HTREEITEM movieClipTreeItem = m_tree.InsertItem(_T( g_MovieClipsName ), TREE_FOLDER, TREE_FOLDER_SEL, pageTreeItem);
        HTREEITEM pure3dFileTreeItem = m_tree.InsertItem(_T( g_Pure3dFilesName ), TREE_FOLDER, TREE_FOLDER_SEL, pageTreeItem);
        HTREEITEM textBibleTreeItem = m_tree.InsertItem(_T( g_TextBiblesName ), TREE_FOLDER, TREE_FOLDER_SEL, pageTreeItem);
        HTREEITEM textStyleTreeItem = m_tree.InsertItem(_T( g_TextStylesName ), TREE_FOLDER, TREE_FOLDER_SEL, pageTreeItem);

        int size = resMan->GetNumberOfImages();
        for( res = 0; res < size; res++ )
        {
            Image* image = resMan->GetImageWithoutCounting( res );
            HTREEITEM hNew = m_tree.InsertItem( TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,  // nMask
                                        LPSTR_TEXTCALLBACK,           // lpszItem
                                        TREE_IMAGE,                   // nImage
                                        TREE_IMAGE,                   // nSelectedImage
                                        0,                            // nState
                                        0,                            // nStateMask
                                        (DWORD)image,                 // lParam
                                        imageTreeItem,                // hParent
                                        TVI_SORT );                   // hInsertAfter

        }

        for( res = 0; res < resMan->GetNumberOfMovieClips(); res++ )
        {
            MovieClip* image = resMan->GetMovieClipWithoutCounting( res );
            HTREEITEM hNew = m_tree.InsertItem( TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,  // nMask
                                        LPSTR_TEXTCALLBACK,           // lpszItem
                                        TREE_IMAGE,                   // nImage
                                        TREE_IMAGE,                   // nSelectedImage
                                        0,                            // nState
                                        0,                            // nStateMask
                                        (DWORD)image,                 // lParam
                                        movieClipTreeItem,                // hParent
                                        TVI_SORT );                   // hInsertAfter
        }

        for( res = 0; res < resMan->GetNumberOfPure3dFiles(); res++ )
        {
            Pure3dFile* image = resMan->GetPure3dFileWithoutCounting( res );
            HTREEITEM hNew = m_tree.InsertItem( TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,  // nMask
                                        LPSTR_TEXTCALLBACK,           // lpszItem
                                        TREE_IMAGE,                   // nImage
                                        TREE_IMAGE,                   // nSelectedImage
                                        0,                            // nState
                                        0,                            // nStateMask
                                        (DWORD)image,                 // lParam
                                        pure3dFileTreeItem,                // hParent
                                        TVI_SORT );                   // hInsertAfter
        }

        for( res = 0; res < resMan->GetNumberOfTextBibles(); res++ )
        {
            TextBible* textBible = resMan->GetTextBibleWithoutCounting( res );
            HTREEITEM hNew = m_tree.InsertItem( TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,  // nMask
                                        LPSTR_TEXTCALLBACK,           // lpszItem
                                        TREE_TEXTBIBLE,               // nImage
                                        TREE_TEXTBIBLE,               // nSelectedImage
                                        0,                            // nState
                                        0,                            // nStateMask
                                        (DWORD)textBible,             // lParam
                                        textBibleTreeItem,            // hParent
                                        TVI_SORT );                   // hInsertAfter

        }

        for( res = 0; res < resMan->GetNumberOfTextStyles(); res++ )
        {
            TextStyle* textStyle = resMan->GetTextStyleWithoutCounting( res );
            HTREEITEM hNew = m_tree.InsertItem( TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,  // nMask
                                        LPSTR_TEXTCALLBACK,           // lpszItem
                                        TREE_TEXTSTYLE,               // nImage
                                        TREE_TEXTSTYLE,               // nSelectedImage
                                        0,                            // nState
                                        0,                            // nStateMask
                                        (DWORD)textStyle,             // lParam
                                        textStyleTreeItem,            // hParent
                                        TVI_SORT );                   // hInsertAfter

        }
    }

    m_tree.Expand(hRoot, TVE_EXPAND);
}


void CResourceDlg::OnEndlabeleditTree(NMHDR* pNMHDR, LRESULT* pResult) 
{
    using namespace FeData;

    *pResult = FALSE;    // default to reject new text

    TVITEM& tvi = ((TV_DISPINFO*)pNMHDR)->item;

    if( (tvi.pszText == NULL) || (lstrlen(tvi.pszText) == 0) )
    {
        return;
    }

    NamedElement* element = (NamedElement*)tvi.lParam;
    if( element == NULL )
    {
        return;
    }

    PascalCString oldName( element->GetName() );
    PascalCString newName( tvi.pszText );
    if( oldName == newName )
    {
        return;
    }

    //
    // See if we are renaming a resource
    //
    Resource* resource = dynamic_cast< Resource* >( element );
    if( resource != NULL )
    {
        PascalCString pageName;
        if( !GetSelectedPageName( pageName ) )
        {
            g_OutputMessage.Add( "CResourceDlg::OnEndlabeleditTree: Cannot get selected page name",
                                 DebugOutputMessage );
            return;
        }

        Screen* screen = GetDocument()->GetScreen();
        if( screen == NULL )
        {
            g_OutputMessage.Add( "CResourceDlg::OnEndlabeleditTree: Cannot get screen",
                                 DebugOutputMessage );
            return;
        }


        Page* page = screen->GetPage( pageName );
        if( page == NULL )
        {
            g_OutputMessage.Add( "CXConDoc::OnEndlabeleditTree: Cannot get page from the screen!",
                                 DebugOutputMessage );
            return;
        }

        NameManager nameManager;
        if( nameManager.IsResourceNameUnique( resource, newName, page ) )
        {
            if( GetDocument()->AddAction( new ActionRename( page, resource, newName ) ) )
            {
                *pResult = TRUE;    // accept new text
            }
        }
        else
        {
            g_OutputMessage.Add( "The chosen name is already being used by another object of the same type.",
                                 WarningOutputMessage );
        }
        return;
    }
}

void CResourceDlg::OnUpdateRename(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    // Default to not showing the menu
    pCmdUI->Enable( FALSE );

    Resource* resource = dynamic_cast< Resource* >( GetSelectedElement() );
    if( resource != NULL )
    {
        PascalCString pageName;
        if( !GetSelectedPageName( pageName ) )
        {
            g_OutputMessage.Add( "CResourceDlg::OnUpdateRename: Cannot get selected page name",
                                 DebugOutputMessage );
            return;
        }

        Screen* screen = GetDocument()->GetScreen();
        if( screen == NULL )
        {
            g_OutputMessage.Add( "CResourceDlg::OnUpdateRename: Cannot get screen",
                                 DebugOutputMessage );
            return;
        }


        Page* page = screen->GetPage( pageName );
        if( page == NULL )
        {
            g_OutputMessage.Add( "CXConDoc::OnUpdateRename: Cannot get page from the screen!",
                                 DebugOutputMessage );
            return;
        }

        pCmdUI->Enable( !page->IsReadOnly() );
    }
}

void CResourceDlg::OnDblclkTree(NMHDR* pNMHDR, LRESULT* pResult) 
{
    GetDocument()->DoProperties();

    *pResult = 0;
}
