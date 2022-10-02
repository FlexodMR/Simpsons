/////////////////////////////////////////////////////////////////////////////
// DlgTrees.cpp : implementation file

#pragma warning( disable : 4786 )

#include "StdAfx.h"
#include "ScreenDlg.h"
#include "XConView.h"
#include "TabView.h"
#include "xUtil.h"

#include "xDisplay.h"
#include "xScreen.h"
//#include "xGroup.h"
//#include "xText.h"



#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CScreenDlg dialog

CScreenDlg::CScreenDlg()
{
    //{{AFX_DATA_INIT(CScreenDlg)
    //}}AFX_DATA_INIT
}

BEGIN_MESSAGE_MAP(CScreenDlg, CTreeDlg)
    //{{AFX_MSG_MAP(CScreenDlg)
    ON_NOTIFY(TVN_BEGINLABELEDIT, IDC_TREE, OnBeginLabelEdit)
    ON_COMMAND(ID_SCREEN_SHOW, OnScreenShow)
    ON_UPDATE_COMMAND_UI(ID_SCREEN_SHOW, OnUpdateScreenShow)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

void CScreenDlg::GetContextMenu(HTREEITEM hItem, UINT* pIDResource, int* pPos)
{
    *pIDResource = IDR_SCREEN;
/*
    HTREEITEM hRoot = m_tree.GetRootItem();
    if (hItem == hRoot)
        *pPos = 0;
    else if (m_tree.GetParentItem(hItem) == hRoot)
        *pPos = 1;
    else  */
        *pPos = -1;    // no context menu
}

void CScreenDlg::ModifyContextMenu(CMenu* pMenu, int nPos)
{
    if (nPos == 1)
        ModifyMenuMove(pMenu, GetDocument()->GetObjectArray(DOC_SCREENS), GetSelectedObject());
}

void CScreenDlg::InsertNewEntry(CXObject* pObject)
{
    int nImage = pObject->GetImage();
    HTREEITEM hItem = m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
        LPSTR_TEXTCALLBACK, nImage, nImage, 0, 0, (DWORD)pObject, m_tree.GetRootItem(), TVI_LAST);
    m_tree.EnsureVisible(hItem);
    m_tree.SelectItem(hItem);

    EditLabel(hItem);
}

void CScreenDlg::InsertEntry(CXObject* pObject, int nExtra)
{
    HTREEITEM hRoot = m_tree.GetRootItem();

    HTREEITEM hInsertAfter;
    if (nExtra == 0)
        hInsertAfter = TVI_FIRST;
    else
    {
        hInsertAfter = TVI_LAST;
        int nCount = 0;
        HTREEITEM hItem = m_tree.GetChildItem(hRoot);
        while (hItem)
        {
            if (nCount == nExtra-1)
            {
                hInsertAfter = hItem;
                break;
            }
            hItem = m_tree.GetNextSiblingItem(hItem);
            nCount++;
        }
    }

    HTREEITEM hNew = InsertScreen((CXScreen*)pObject, hRoot, hInsertAfter);
    m_tree.EnsureVisible(hNew);
    m_tree.SelectItem(hNew);
}

HTREEITEM CScreenDlg::InsertScreen(CXScreen* pScreen, HTREEITEM hRoot, HTREEITEM hInsertAfter)
{
    int nImage = pScreen->GetImage();
    HTREEITEM hScreen = m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
        LPSTR_TEXTCALLBACK, nImage, nImage, 0, 0, (DWORD)pScreen, hRoot, hInsertAfter);

    CXOverlayArray* pArray = pScreen->GetOverlayArray();
    int nSize = pArray->GetSize();
    if (nSize)
    {
        nImage = pArray->GetAt(0)->GetImage();
        for (int i = 0; i < nSize; i++)
        {
            m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
                LPSTR_TEXTCALLBACK, nImage, nImage, 0, 0, (DWORD)pArray->GetAt(i), hScreen, TVI_LAST);
        }
    }

    return hScreen;
}

CXObject* CScreenDlg::GetSelection()
{
    CXObject* pObject = NULL;
    HTREEITEM hSelItem = m_tree.GetSelectedItem();
    if (hSelItem && m_tree.GetParentItem(hSelItem) == m_tree.GetRootItem())
        pObject = GetItemObject(hSelItem);
    return pObject;
}

void CScreenDlg::DeleteObj(CXObject* pObject, CXOverlay* pOverlay /*=NULL*/, DWORD dwExtra /*=0*/)
{
    HTREEITEM hScreen = FindObjectItem(pObject, m_tree.GetRootItem());
    if (pOverlay)
        m_tree.DeleteItem(FindObjectItem(pOverlay, hScreen));
    else
        m_tree.DeleteItem(hScreen);
}

void CScreenDlg::SetOverlays(CXScreen* pScreen, BOOL bExpand /*=TRUE*/)
{
    HTREEITEM hScreen = FindObjectItem(pScreen, m_tree.GetRootItem());
    DeleteSubItems(hScreen);

    CXOverlayArray* pArray = pScreen->GetOverlayArray();
    int nSize = pArray->GetSize();
    if (!nSize)
        return;

    int nImage = pArray->GetAt(0)->GetImage();
    for (int i = 0; i < nSize; i++)
    {
        m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
            LPSTR_TEXTCALLBACK, nImage, nImage, 0, 0, (DWORD)pArray->GetAt(i), hScreen, TVI_LAST);
    }

    if (bExpand)
        m_tree.Expand(hScreen, TVE_EXPAND);
}

/////////////////////////////////////////////////////////////////////////////
// CScreenDlg message handlers

void CScreenDlg::OnBeginLabelEdit(NMHDR* pNMHDR, LRESULT* pResult) 
{
    *pResult = FALSE;

    HTREEITEM hRoot = m_tree.GetRootItem();
    TVITEM& tvi = ((TV_DISPINFO*)pNMHDR)->item;
    if (tvi.hItem == hRoot || m_tree.GetParentItem(tvi.hItem) != hRoot)
        *pResult = TRUE;

    CTreeDlg::OnBeginLabelEdit(pNMHDR, pResult);
}

void CScreenDlg::OnInitialUpdate(CXConDoc* pDoc)
{
    HTREEITEM hRoot = m_tree.GetRootItem();
    CXScreenArray* pArray = (CXScreenArray*)pDoc->GetObjectArray(DOC_SCREENS);
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
        InsertScreen(pArray->GetAt(i), hRoot, TVI_LAST);

    m_tree.Expand(hRoot, TVE_EXPAND);
}

/////////////////////////////////////////////////////////////////////////////

void CScreenDlg::OnUpdateScreenShow(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable(STATIC_DOWNCAST(CXScreen, GetSelectedObject())->GetNumObjects());
}

void CScreenDlg::OnScreenShow() 
{
    STATIC_DOWNCAST(CXScreen, GetSelectedObject())->Show();
}

CObArray* CScreenDlg::GetMoveArray() 
{ 
    return GetDocument()->GetObjectArray(DOC_SCREENS); 
}
