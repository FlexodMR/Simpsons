//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        FileTreeCtrl.cpp
//
// Subsystem:   implementation file for script file tree view control
//
// Description: 
//              
//
// Revisions:   V1.00 May 23, 2001       Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================
#include "stdafx.h"
#include "radtuner.h"

#include "MainFrm.h"
#include "ChildFrm.h"
#include "FileTreeCtrl.h"

#include "ScriptDoc.h"
#include "ScriptObject.h"
#include "ScriptMethod.h"
#include "ScriptBaseClass.h"

#include "WorkSpaceDoc.h"

//=============================================================================
// MFC Define
//=============================================================================
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// Local Function Prototypes
//=============================================================================
IMPLEMENT_DYNAMIC(CFileTreeCtrl, CMultiTree)

// Default tree item insertion style
static const UINT uTVIF = TVIF_IMAGE|TVIF_TEXT|TVIF_PARAM|TVIF_SELECTEDIMAGE;

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Globals
//=============================================================================

//=============================================================================
// MFC Message Mapping
//=============================================================================
BEGIN_MESSAGE_MAP(CFileTreeCtrl, CMultiTree)
    //{{AFX_MSG_MAP(CFileTreeCtrl)
    ON_WM_CREATE()
    ON_WM_RBUTTONDOWN()
    ON_WM_CONTEXTMENU()
    ON_NOTIFY_REFLECT(TVN_BEGINDRAG, OnBegindrag)
    ON_WM_MOUSEMOVE()
    ON_WM_LBUTTONUP()
    ON_NOTIFY_REFLECT(NM_RCLICK, OnRclick)
	ON_COMMAND(ID_SCRIPT_DELETE, OnScriptDelete)
	ON_UPDATE_COMMAND_UI(ID_SCRIPT_DELETE, OnUpdateScriptDelete)
	ON_COMMAND(ID_SCRIPT_DUPLICATE, OnScriptDuplicate)
	ON_UPDATE_COMMAND_UI(ID_SCRIPT_DUPLICATE, OnUpdateScriptDuplicate)
	ON_COMMAND(ID_SCRIPT_NEW, OnScriptNew)
	ON_UPDATE_COMMAND_UI(ID_SCRIPT_NEW, OnUpdateScriptNew)
	ON_COMMAND(ID_SCRIPT_PROPERTIES, OnScriptProperties)
	ON_UPDATE_COMMAND_UI(ID_SCRIPT_PROPERTIES, OnUpdateScriptProperties)
	ON_COMMAND(ID_SCRIPTDOC_SAVE_SELECTED_SCRIPT, OnScriptdocSaveSelectedScript)
	ON_UPDATE_COMMAND_UI(ID_SCRIPTDOC_SAVE_SELECTED_SCRIPT, OnUpdateScriptdocSaveSelectedScript)
	ON_COMMAND(ID_SCRIPTMETHOD_INVOKE_METHOD, OnScriptmethodInvokeMethod)
	ON_UPDATE_COMMAND_UI(ID_SCRIPTMETHOD_INVOKE_METHOD, OnUpdateScriptmethodInvokeMethod)
	ON_COMMAND(ID_SCRIPTOBJECT_CALL, OnScriptobjectCall)
	ON_UPDATE_COMMAND_UI(ID_SCRIPTOBJECT_CALL, OnUpdateScriptobjectCall)
	ON_COMMAND(ID_SCRIPTOBJECT_SHOW, OnScriptobjectShow)
	ON_UPDATE_COMMAND_UI(ID_SCRIPTOBJECT_SHOW, OnUpdateScriptobjectShow)
	ON_COMMAND(ID_SCRIPTOBJECT_RESETANDINVOKEALL, OnScriptObjectResetAndInvokeAll)
	ON_UPDATE_COMMAND_UI(ID_SCRIPTOBJECT_RESETANDINVOKEALL, OnUpdateScriptObjectResetAndInvokeAll)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//===========================================================================
// CFileTreeCtrl::CFileTreeCtrl
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CFileTreeCtrl::CFileTreeCtrl()
{
    m_IsDragging = false;
    
    // clear multi-drag-and-drop item list
    m_aryDraggingItems.clear( );
    m_hTargetItem = NULL;
}

//===========================================================================
// CFileTreeCtrl::~CFileTreeCtrl
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CFileTreeCtrl::~CFileTreeCtrl()
{
}

CScriptDoc* CFileTreeCtrl::GetScriptDocPtr( HTREEITEM hDoc )
{
    if ( hDoc == NULL )
    {
        return NULL;
    }

    CScriptDoc *pDoc = NULL;

    try
    {
        pDoc = dynamic_cast<CScriptDoc*>((CScriptBaseClass*)GetItemData(hDoc));
    }
    catch(...)
    {
        pDoc = NULL;
    }

    return pDoc;
}

CScriptObject* CFileTreeCtrl::GetScriptObjectPtr( HTREEITEM hObj )
{
    if ( hObj == NULL )
    {
        return NULL;
    }

    CScriptObject* pObj = NULL;

    try
    {
        pObj = dynamic_cast<CScriptObject*>((CScriptBaseClass*)GetItemData(hObj));
    }
    catch(...)
    {
        pObj = NULL;
    }

    return pObj;
}

CScriptMethod* CFileTreeCtrl::GetScriptMethodPtr( HTREEITEM hMet )
{
    if ( hMet == NULL )
    {
        return NULL;
    }

    CScriptMethod *pMet = NULL;

    try
    {
        pMet = dynamic_cast<CScriptMethod*>((CScriptBaseClass*)GetItemData(hMet));
    }
    catch(...)
    {
        pMet = NULL;
    }

    return pMet;
}

HTREEITEM CFileTreeCtrl::FindItemDocByName( const CString & strDocName )
{
    HTREEITEM hDoc = GetRootItem( );
    
    if ( hDoc == NULL )
    {
        return NULL;
    }

    CScriptDoc *pDoc = NULL;

    while ( hDoc != NULL )
    {
        CScriptDoc *pDoc = GetScriptDocPtr( hDoc );

        if ( pDoc && pDoc->GetShortFileName( ).CompareNoCase( strDocName ) == 0 )
        {
            return hDoc;
        }

        hDoc = GetNextSiblingItem( hDoc );
    }

    return NULL;
}

HTREEITEM CFileTreeCtrl::FindItemObjectByName( const HTREEITEM hDocItem, const CString & strObjName )
{
    if ( hDocItem == NULL )
    {
        return NULL;
    }

    HTREEITEM hObj = GetChildItem( hDocItem );

    while ( hObj != NULL )
    {
        CScriptObject * pObj = GetScriptObjectPtr( hObj );

        if ( pObj && pObj->GetName( ) == strObjName )
        {
            return hObj;
        }
        hObj = GetNextSiblingItem( hObj );
    }

    return NULL;
}

HTREEITEM CFileTreeCtrl::FindItemMethodByName( const HTREEITEM hObjItem, const CString & strMethodName, const long nMetIdx )
{
    if ( hObjItem == NULL )
    {
        return NULL;
    }

    HTREEITEM hMet = GetChildItem( hObjItem );

    int nCurrIndx = 0;

    while( hMet != NULL )
    {
        CScriptMethod * pMet = GetScriptMethodPtr( hMet );

        if ( pMet->GetName( ) == strMethodName && nMetIdx == nCurrIndx )
        {
            return hMet;
        }

        hMet = GetNextSiblingItem( hMet );
        nCurrIndx++;
    }
    return NULL;
}


//===========================================================================
// *CFileTreeCtrl::_GetCurSelDoc
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CScriptDoc 
//===========================================================================
CScriptDoc *CFileTreeCtrl::_GetCurSelDoc()
{
    HTREEITEM hItem = GetSelectedItem();

    if (hItem == NULL)
    {
        return(NULL);
    }


    return GetScriptDocPtr( hItem );
}


//===========================================================================
// *CFileTreeCtrl::_GetCurSelObj
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CScriptObject 
//===========================================================================
CScriptObject *CFileTreeCtrl::_GetCurSelObj()
{
    HTREEITEM hItem = GetSelectedItem();

    if (hItem == NULL)
    {
        return(NULL);
    }

    return GetScriptObjectPtr( hItem );
}


//===========================================================================
// *CFileTreeCtrl::_GetCurSelMet
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CScriptMethod 
//===========================================================================
CScriptMethod *CFileTreeCtrl::_GetCurSelMet()
{
    HTREEITEM hItem = GetSelectedItem();

    if (hItem == NULL)
    {
        return(NULL);
    }

    return GetScriptMethodPtr( hItem );
}

//===========================================================================
// CFileTreeCtrl::OnCreate
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
int CFileTreeCtrl::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    lpCreateStruct->style |= WS_CHILD | WS_VISIBLE | TVS_HASLINES | TVS_INFOTIP |
                             TVS_LINESATROOT | TVS_HASBUTTONS | TVS_TRACKSELECT;

    if (CMultiTree::OnCreate(lpCreateStruct) == -1)
        return -1;

    VERIFY(m_imgImageList.Create(IDB_WORKSPACE, 16, 0, RGB (255, 0, 0)));
    SetImageList(&m_imgImageList, TVSIL_NORMAL);

    SetDragSelect( FALSE );
    SetMultiSelect( TRUE );
    return 0;
}


//===========================================================================
// CFileTreeCtrl::OnRButtonDown
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             UINT nFlags
//             CPoint point
// 
// Return: void 
//===========================================================================
void CFileTreeCtrl::OnRButtonDown(UINT nFlags, CPoint point)
{
    CTreeItemList aryTreeItems;
    this->GetSelectedList( aryTreeItems );

    //
    // if we have multiple item selected, don't select the item
    //
    if ( aryTreeItems.GetCount( ) > 0 )
    {
        m_ptLastMousePos = point;
        //
        // Select the item mouse button is down
        //
        UINT uFlags;
        HTREEITEM hItem = HitTest(point, &uFlags);

        if ((hItem != NULL) && (TVHT_ONITEM & uFlags))
        {
            FocusItem(hItem);
        }
    }
    
    CMultiTree::OnRButtonDown(nFlags, point);
}


//===========================================================================
// CFileTreeCtrl::OnRclick
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             NMHDR* pNMHDR
//             LRESULT* pResult
// 
// Return: void 
//===========================================================================
void CFileTreeCtrl::OnRclick(NMHDR* pNMHDR, LRESULT* pResult) 
{
	*pResult = 0;

    CPoint ptPos = m_ptLastMousePos;

    ClientToScreen(&ptPos);
    OnContextMenu(this, ptPos);
}


//===========================================================================
// CFileTreeCtrl::PopulateDoc
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             HTREEITEM hDocItem
//             CScriptDoc* pDoc
// 
// Return: void 
//===========================================================================
void CFileTreeCtrl::PopulateDoc(HTREEITEM hDocItem, CScriptDoc* pDoc)
{
    ASSERT(hDocItem && pDoc);
    for (int nObj = 0; nObj < pDoc->GetObjectCount(); nObj++)
    {
        HTREEITEM hObj = AddItemObject(hDocItem, pDoc->GetObjectAt(nObj));
        PopulateObject(hObj, pDoc->GetObjectAt(nObj));
    }
}


//===========================================================================
// CFileTreeCtrl::PopulateObject
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             HTREEITEM hObjItem
//             CScriptObject* pObj
// 
// Return: void 
//===========================================================================
void CFileTreeCtrl::PopulateObject(HTREEITEM hObjItem, CScriptObject* pObj)
{
    for (int nMet = 0; nMet < pObj->GetMethodCount(); nMet++)
    {
        HTREEITEM hMet = AddItemMethod(hObjItem, pObj->GetMethodAt(nMet));
    }
}


//===========================================================================
// CFileTreeCtrl::AddItemDoc
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             HTREEITEM hParentItem
//             CScriptDoc* pDoc
//             HTREEITEM hAfter
// 
// Return: HTREEITEM 
//===========================================================================
HTREEITEM CFileTreeCtrl::AddItemDoc(HTREEITEM hParentItem, CScriptDoc* pDoc, HTREEITEM hAfter)
{
    const int nImageID = CFileTreeCtrl::IDB_FILE;
    HTREEITEM hFile = InsertItem(uTVIF, (LPCSTR)pDoc->GetFileTitle(),
        nImageID, nImageID, 0, 0,
        (LPARAM)pDoc, hParentItem, hAfter);
    return(hFile);
}


//===========================================================================
// CFileTreeCtrl::AddItemObject
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             HTREEITEM hParentItem
//             CScriptObject* pObj
//             HTREEITEM hAfter
// 
// Return: HTREEITEM 
//===========================================================================
HTREEITEM CFileTreeCtrl::AddItemObject(HTREEITEM hParentItem, CScriptObject* pObj, HTREEITEM hAfter)
{
    const int nImageID = pObj->GetValid() ? CFileTreeCtrl::IDB_CLASS : CFileTreeCtrl::IDB_INVALID;

    HTREEITEM hObj = InsertItem(uTVIF, (LPCSTR)pObj->GetDisplayText(),
        nImageID, nImageID, 0, 0,
        (LPARAM)pObj, hParentItem, hAfter);

    VERIFY(SetItemText(hParentItem, pObj->GetParentDoc()->GetFileTitle()));

    return(hObj);
}


//===========================================================================
// CFileTreeCtrl::AddItemMethod
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             HTREEITEM hParentItem
//             CScriptMethod* pMet
//             HTREEITEM hAfter
// 
// Return: HTREEITEM 
//===========================================================================
HTREEITEM CFileTreeCtrl::AddItemMethod(HTREEITEM hParentItem, CScriptMethod* pMet, HTREEITEM hAfter)
{
    int nImageID = pMet->GetValid() ? CFileTreeCtrl::IDB_FUNCTION : CFileTreeCtrl::IDB_INVALID;

    if (pMet->IsTypeProperty())
    {
        nImageID = CFileTreeCtrl::IDB_PROPERTY;
    }

    HTREEITEM hMet = InsertItem(uTVIF, (LPCSTR)pMet->GetDisplayText(),
                                nImageID, nImageID, 0, 0,
                                (LPARAM)pMet, hParentItem, hAfter);

    VERIFY(SetItemText(hParentItem, pMet->GetParentObject()->GetDisplayText()));
    VERIFY(SetItemText(GetParentItem(hParentItem), pMet->GetParentObject()->GetParentDoc()->GetFileTitle()));
    return(hMet);
}


//===========================================================================
// CFileTreeCtrl::_FindItemMatchData
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const DWORD dwData
//             const HTREEITEM hParentItem
// 
// Return: HTREEITEM 
//===========================================================================
HTREEITEM CFileTreeCtrl::_FindItemMatchData(const DWORD dwData, const HTREEITEM hParentItem) const
{
    if (hParentItem == TVI_ROOT)
    {
        HTREEITEM hNextItem = GetRootItem();
        while(hNextItem != NULL)
        {
            HTREEITEM hFound = _FindItemMatchData(dwData, hNextItem);
            if (hFound != NULL)
            {
                return(hFound);
            }
            hNextItem = GetNextSiblingItem(hNextItem);
        }
        return(NULL);
    }
    else if (GetItemData(hParentItem) == dwData)
    {
        return(hParentItem);
    }
    else if (!ItemHasChildren(hParentItem))
    {
        return(NULL);
    }
    else
    {
        HTREEITEM hChildItem = GetChildItem(hParentItem);
        while(hChildItem != NULL)
        {
            HTREEITEM hFound = _FindItemMatchData(dwData, hChildItem);
            if (hFound != NULL)
            {
                return(hFound);
            }
            hChildItem = GetNextSiblingItem(hChildItem);
        }
        return(NULL);
    }
}

//===========================================================================
// CFileTreeCtrl::_IsItemInTree
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             HTREEITEM hItem
//                  hItem - item to be checked
//             HTREEITEM hParentItem
// 
// Return: void 
//===========================================================================
BOOL CFileTreeCtrl::_IsItemInTree( const HTREEITEM hItem, const HTREEITEM hParentItem ) const
{
    if (hParentItem == TVI_ROOT)
    {
        HTREEITEM hNextItem = GetRootItem();
        while(hNextItem != NULL)
        {
            BOOL bFound = _IsItemInTree(hItem, hNextItem);
            if (bFound)
            {
                return(bFound);
            }
            hNextItem = GetNextSiblingItem(hNextItem);
        }
        return(FALSE);
    }
    else if (hParentItem == hItem)
    {
        return(TRUE);
    }
    else if (!ItemHasChildren(hParentItem))
    {
        return(FALSE);
    }
    else
    {
        HTREEITEM hChildItem = GetChildItem(hParentItem);
        while(hChildItem != NULL)
        {
            BOOL bFound = _IsItemInTree(hItem, hChildItem);
            if (bFound)
            {
                return(bFound);
            }
            hChildItem = GetNextSiblingItem(hChildItem);
        }
        return(FALSE);
    }
}

//===========================================================================
// CFileTreeCtrl::DeleteAllChildItem
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             HTREEITEM hParentItem
// 
// Return: void 
//===========================================================================
void CFileTreeCtrl::DeleteAllChildItem(HTREEITEM hParentItem)
{
    while(ItemHasChildren(hParentItem))
    {
        HTREEITEM hChildItem = GetChildItem(hParentItem);
        VERIFY(DeleteItem(hChildItem));
    }
}



//===========================================================================
// CFileTreeCtrl::DelItemDoc
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptDoc* pDoc
// 
// Return: void 
//===========================================================================
void CFileTreeCtrl::DelItemDoc(const CScriptDoc* pDoc)
{
    ASSERT(pDoc);
    HTREEITEM hItem = _FindItemMatchData((DWORD)pDoc);
    ASSERT(hItem);

    VERIFY(DeleteItem(hItem));

    // cannot have duplicated item in tree view
    ASSERT(_FindItemMatchData((DWORD)pDoc) == NULL);
}


//===========================================================================
// CFileTreeCtrl::DelItemObject
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptObject* pObj
// 
// Return: void 
//===========================================================================
void CFileTreeCtrl::DelItemObject(const CScriptObject* pObj)
{
    ASSERT(pObj);
    // find the item and its parent document item
    HTREEITEM hItem = _FindItemMatchData((DWORD)pObj);
    ASSERT(hItem);
    HTREEITEM hDocItem = GetParentItem(hItem);
    ASSERT(hDocItem);

    CScriptDoc* pDoc = (CScriptDoc*)GetItemData(hDocItem);

    // update text for parent document
    SetItemText(hDocItem, pDoc->GetFileTitle());

    VERIFY(DeleteItem(hItem));

    // cannot have duplicated item in tree view
    ASSERT(_FindItemMatchData((DWORD)pObj) == NULL);
}


//===========================================================================
// CFileTreeCtrl::DelItemMethod
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptMethod* pMet
// 
// Return: void 
//===========================================================================
void CFileTreeCtrl::DelItemMethod(const CScriptMethod* pMet)
{
    ASSERT(pMet);
    // find the item and its parent document item
    HTREEITEM hMetItem = _FindItemMatchData((DWORD)pMet);
    ASSERT(hMetItem);
    HTREEITEM hObjItem = GetParentItem(hMetItem);
    ASSERT(hObjItem);
    HTREEITEM hDocItem = GetParentItem(hObjItem);
    ASSERT(hDocItem);

    CScriptObject* pObj = (CScriptObject*)GetItemData(hObjItem);
    CScriptDoc* pDoc = ((CScriptDoc*)GetItemData(hDocItem));
    ASSERT(pDoc == pObj->GetParentDoc());

    // update text for parent object and document
    VERIFY(SetItemText(hObjItem, pObj->GetDisplayText()));
    VERIFY(SetItemText(hDocItem, pDoc->GetFileTitle()));

    VERIFY(DeleteItem(hMetItem));

    // cannot have duplicated item in tree view
    ASSERT(_FindItemMatchData((DWORD)pMet) == NULL);
}


//===========================================================================
// CFileTreeCtrl::PopulateFileView
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWorkSpaceDoc* pWorkSpaceDoc
// 
// Return: int 
//===========================================================================
int CFileTreeCtrl::PopulateFileView(CWorkSpaceDoc* pWorkSpaceDoc)
{
    VERIFY(DeleteAllItems());

    if (pWorkSpaceDoc == NULL)
    {
        return(0);
    }

    for (int nDoc = 0; nDoc < pWorkSpaceDoc->GetScriptDocCount(); nDoc++)
    {
        HTREEITEM hDoc = AddItemDoc(TVI_ROOT, pWorkSpaceDoc->GetScriptDocAt(nDoc));
        PopulateDoc(hDoc, pWorkSpaceDoc->GetScriptDocAt(nDoc));
    }

    return(0);
}

void CFileTreeCtrl::UpdateFileView( )
{
    HTREEITEM hDoc = this->GetRootItem( );
    while( hDoc != NULL )
    {
        UpdateDocItem( hDoc );
        hDoc = GetNextSiblingItem( hDoc );
    };
}

void CFileTreeCtrl::UpdateDocItem( HTREEITEM hDoc )
{
    CScriptDoc * pDoc = GetScriptDocPtr( hDoc );
    SetItemText( hDoc, (LPCSTR)pDoc->GetFileTitle() );

    HTREEITEM hObj = GetChildItem( hDoc );

    while ( hObj != NULL )
    {
        UpdateObjItem( hObj );
        hObj = GetNextSiblingItem( hObj );
    };
}

void CFileTreeCtrl::UpdateObjItem( HTREEITEM hObj )
{
    CScriptObject * pObj = GetScriptObjectPtr( hObj );
    SetItemText( hObj, pObj->GetDisplayText( ) );

    HTREEITEM hMet = GetChildItem( hObj );

    while ( hMet != NULL )
    {
        UpdateMetItem( hMet );
        hMet = GetNextSiblingItem( hMet );
    }
}

void CFileTreeCtrl::UpdateMetItem( HTREEITEM hMet )
{
    CScriptMethod * pMet = GetScriptMethodPtr( hMet );
    SetItemText( hMet, pMet->GetDisplayText( ) );
}

void CFileTreeCtrl::OnScriptobjectShow() 
{
    CScriptObject *pObj = _GetCurSelObj();
    if (pObj != NULL)
    {
        pObj->ShowView();
    }
}

void CFileTreeCtrl::OnUpdateScriptobjectShow(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable(FALSE);
/*  DISABLED BY JAMES TAN
    CScriptObject *pObj = _GetCurSelObj();

    if ( pObj!= NULL && pObj->GetValid())
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
*/
}



LRESULT CFileTreeCtrl::WindowProc(UINT message, WPARAM wParam, LPARAM lParam) 
{
    return CMultiTree::WindowProc(message, wParam, lParam);
}

BOOL CFileTreeCtrl::OnChildNotify(UINT message, WPARAM wParam, LPARAM lParam, LRESULT* pLResult) 
{
    return CMultiTree::OnChildNotify(message, wParam, lParam, pLResult);
}

BOOL CFileTreeCtrl::OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo) 
{
	return CMultiTree::OnCmdMsg(nID, nCode, pExtra, pHandlerInfo);
}
