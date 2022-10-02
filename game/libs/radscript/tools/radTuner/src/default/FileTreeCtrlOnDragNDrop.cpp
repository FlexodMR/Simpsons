//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// FileTreeCtrlOnDragNDrop.cpp : implementation file
//

#include "stdafx.h"
#include <typeinfo.h>
#include "radtuner.h"
#include "FileTreeCtrl.h"

#include "ScriptDoc.h"
#include "ScriptObject.h"
#include "ScriptMethod.h"
#include "ScriptBaseClass.h"
#include "WorkSpaceDoc.h"

#include "AddNewObjectDlg.h"
#include "AddNewMethodDlg.h"
#include "ModifyMethodDlg.h"
#include "ModifyObjectDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


//===========================================================================
// CFileTreeCtrl::IsDropSource
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             HTREEITEM hItem
// 
// Return: BOOL 
//===========================================================================
BOOL CFileTreeCtrl::IsDropSource(HTREEITEM hItem)
{
    if(hItem == NULL)
    {
        return(FALSE);
    }

    CScriptBaseClass* pDragBase = (CScriptBaseClass*)GetItemData(hItem);

    /*
    if (!pDragBase->GetValid())
    {
        return(FALSE);
    }
    */

    // Only method and object can be drag and dropped
    if (dynamic_cast<CScriptObject*>(pDragBase))
    {
        CScriptObject* pObj = (CScriptObject*)pDragBase;
        return TRUE;
    }
    else if (dynamic_cast<CScriptMethod*>(pDragBase))
    {
        CScriptMethod* pMet = (CScriptMethod*)pDragBase;
        return(TRUE);
    }

    return FALSE;
}


//===========================================================================
// CFileTreeCtrl::IsDropTarget
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             HTREEITEM hItem
// 
// Return: BOOL 
//===========================================================================
BOOL CFileTreeCtrl::IsDropTarget(HTREEITEM hItem)
{
    //
    // precondition check
    //
    // only call this function during drag and drop operation
    ASSERT(m_aryDraggingItems.size() > 0);
    ASSERT(m_IsDragging);

    if(hItem == NULL)
    {
        return(FALSE);
    }

    //
    // dragndrop rule check, if fail any rule, return false
    //
    list< HTREEITEM >::const_iterator p = NULL;

    //
    // Rule 1: Drag items cannot be the same item as where we dropping it
    //
    for ( p = m_aryDraggingItems.begin(); p != m_aryDraggingItems.end(); p ++ )
    {
        if (*p == hItem)
        {
            return(FALSE);
        }
    }

    //
    // Rule 2: Dragging item must be the same type, and must be either CScriptObject or CScriptMethod
    //
    CScriptBaseClass * pFirstItem = (CScriptBaseClass*)GetItemData(*(m_aryDraggingItems.begin( )));
    CScriptBaseClass * pNextItem = NULL;
    CScriptBaseClass * pDropTarget = (CScriptBaseClass*)GetItemData(hItem);

    // make sure first item is script object or method, because we can only drag and drop those items
    if ( typeid(*pFirstItem) != typeid(CScriptObject) && typeid(*pFirstItem) != typeid(CScriptMethod) )
    {
        return(FALSE);
    }
    // make sure all items are the same type
    for ( p = m_aryDraggingItems.begin(); p != m_aryDraggingItems.end(); p ++ )
    {
        pNextItem = (CScriptBaseClass*)GetItemData(*p);
        ASSERT( pNextItem != NULL );
        if ( typeid(*pFirstItem) != typeid(*pNextItem) )
        {
            return(FALSE);
        }
    }

    //
    // Rule 3: If dragging items are method, they must have the same parent class type
    //
    if ( typeid(*pFirstItem) == typeid(CScriptMethod) )
    {
        CScriptMethod * pFirstMethod = static_cast< CScriptMethod *>( pFirstItem );
        CScriptMethod * pNextMethod = NULL;
        CString strFirstClassName = pFirstMethod->GetParentObject( )->GetClassName( );
        CString strNextClassName;

        for ( p = m_aryDraggingItems.begin(); p != m_aryDraggingItems.end(); p ++ )
        {
            pNextMethod = static_cast< CScriptMethod *>( (CScriptBaseClass*)GetItemData(*p) );
            ASSERT( pNextMethod != NULL );
            strNextClassName = pNextMethod->GetParentObject( )->GetClassName( );
            if ( strNextClassName != strFirstClassName )
            {
                return(FALSE);
            }
        }
    }

    //
    // Rule 4: If dragging and target items are method, they must have the same parent class type
    //
    if ( ( typeid(*pFirstItem) == typeid(CScriptMethod) ) &&
         ( typeid(*pDropTarget) == typeid(CScriptMethod) ) )
    {
        CScriptMethod * pFirstMethod = static_cast< CScriptMethod *>( pFirstItem );
        CScriptMethod * pTargetMethod = static_cast< CScriptMethod *>( pDropTarget );

        if ( pFirstMethod->GetParentObject()->GetClassName() != pTargetMethod->GetParentObject()->GetClassName() )
        {
            return(FALSE);
        }
    }


    //
    // Rule 5: Cannot drag a method into document
    //
    if ( ( typeid(*pFirstItem) == typeid(CScriptMethod) ) &&
         ( typeid(*pDropTarget) == typeid(CScriptDoc) ) )
    {
        return(FALSE);
    }

    //
    // Rule 6: Cannot drag a object into method
    //
    if ( ( typeid(*pFirstItem) == typeid(CScriptObject) ) &&
         ( typeid(*pDropTarget) == typeid(CScriptMethod) ) )
    {
        return(FALSE);
    }

    //
    // Rule 7: If dragging items are method, dropping object must be the same parent class type
    //
    if ( ( typeid(*pFirstItem) == typeid(CScriptMethod) ) &&
         ( typeid(*pDropTarget) == typeid(CScriptObject) ) )
    {
        CScriptMethod * pFirstMethod = static_cast< CScriptMethod * >( pFirstItem );
        CScriptObject * pDropObject = static_cast< CScriptObject * >( pDropTarget );
        ASSERT( pFirstMethod && pDropObject );
        if( pFirstMethod->GetParentObject()->GetClassName() != pDropObject->GetClassName() )
        {
            return(FALSE);
        }
    }

    return(TRUE);
}

//===========================================================================
// CFileTreeCtrl::_ShowDragCursor
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CFileTreeCtrl::_ShowDragCursor()
{
    ASSERT( m_aryDraggingItems.size() > 0 );
    CScriptBaseClass* pDragBase = (CScriptBaseClass*)GetItemData(*(m_aryDraggingItems.begin( )));
    if (dynamic_cast<CScriptDoc*>(pDragBase))
    {
        ::SetCursor(theApp.LoadCursor(MAKEINTRESOURCE(IDC_POINTER_MOVE_FILE)));
    }
    else if (dynamic_cast<CScriptObject*>(pDragBase))
    {
        ::SetCursor(theApp.LoadCursor(MAKEINTRESOURCE(IDC_POINTER_MOVE_OBJECT)));
    }
    else if (dynamic_cast<CScriptMethod*>(pDragBase))
    {
        ::SetCursor(theApp.LoadCursor(MAKEINTRESOURCE(IDC_POINTER_MOVE_METHOD)));
    }
    ::ShowCursor(TRUE);
}


//===========================================================================
// CFileTreeCtrl::OnBegindrag
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
void CFileTreeCtrl::OnBegindrag(NMHDR* pNMHDR, LRESULT* pResult)
{
    NM_TREEVIEW* pNMTreeView = (NM_TREEVIEW*)pNMHDR;
    *pResult = 0;

    // if item cannot be drag and dropped, just return
    if (!IsDropSource(pNMTreeView->itemNew.hItem))
    {
        return;
    }

    m_IsDragging = true;

    m_aryDraggingItems.clear( );
    m_hTargetItem = NULL;

    CTreeItemList aryTreeItems;
    this->GetSelectedList( aryTreeItems );

    POSITION pos = aryTreeItems.GetHeadPosition();

    while( pos != NULL )
    {
        m_aryDraggingItems.push_back( aryTreeItems.GetNext( pos ) );
    }

    _ShowDragCursor();

    SetCapture();
}


//===========================================================================
// CFileTreeCtrl::OnMouseMove
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
void CFileTreeCtrl::OnMouseMove(UINT nFlags, CPoint point)
{
    m_ptLastMousePos = point;

    if ( ( nFlags & MK_LBUTTON ) == 0 )
    {
        m_IsDragging = false;
    }

    //
    // if dragging and left button IS down
    //
    if( m_IsDragging )
    {
        UINT uFlags;
        HTREEITEM hItem = HitTest(point, &uFlags);

        // select an drop item
        if ((hItem == NULL) || !(TVHT_ONITEM & uFlags))
        {
            m_hTargetItem = NULL;
        }
        else
        {
            m_hTargetItem = hItem;
            SelectDropTarget(m_hTargetItem);
        }

        if (!IsDropTarget(m_hTargetItem))
        {
            ::SetCursor(theApp.LoadStandardCursor(IDC_NO));
            ::ShowCursor(TRUE);
        }
        else
        {
            _ShowDragCursor();
        }
    }

    CMultiTree::OnMouseMove(nFlags, point);
}


//===========================================================================
// CFileTreeCtrl::OnLButtonUp
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
void CFileTreeCtrl::OnLButtonUp(UINT nFlags, CPoint point)
{
    m_ptLastMousePos = point;
    if( m_IsDragging )
    {
        ::SetCursor(theApp.LoadStandardCursor(IDC_ARROW));
        ReleaseCapture();

        SelectDropTarget(NULL);

        if (m_hTargetItem == NULL)
        {
            return;
        }

        // if target is droppable, do drop
        if (IsDropTarget(m_hTargetItem))
        {
            int nDragBaseSize = m_aryDraggingItems.size( );

            CScriptBaseClass **ppDragBase = new CScriptBaseClass*[ nDragBaseSize ];
            HTREEITEM *pTargetTreeItems = new HTREEITEM[ nDragBaseSize ];

            memset( ppDragBase, 0, sizeof( CScriptBaseClass* ) * nDragBaseSize );
            memset( pTargetTreeItems, 0, sizeof( HTREEITEM ) * nDragBaseSize );

            int nIndex = 0;
            for ( list< HTREEITEM >::const_iterator p = m_aryDraggingItems.begin(); p != m_aryDraggingItems.end(); p ++ )
            {
                ppDragBase[ nIndex ] = reinterpret_cast<CScriptBaseClass*>(GetItemData(*p));
                ASSERT( ppDragBase[ nIndex ] );
                ASSERT( nDragBaseSize > nIndex );
                nIndex ++;
            }

            CScriptBaseClass * pTarget = (CScriptBaseClass*)GetItemData(m_hTargetItem);

            //================================================================
            // iterate through entire drag item list and drop them after the
            // target.
            //================================================================

            //
            // dropping methods into object
            //
            if ( typeid(*pTarget) == typeid(CScriptObject) && typeid(*(ppDragBase[0])) == typeid(CScriptMethod) )
            {
                CScriptMethod * pSrcMethod = NULL;
                CScriptMethod * pDstMethod = NULL;
                CScriptObject * pSrcObject = NULL;
                CScriptObject * pDstObject = dynamic_cast< CScriptObject * >( pTarget );

                HTREEITEM hSrcMethod = NULL;
                HTREEITEM hSrcObject = NULL;
                HTREEITEM hDstMethod = NULL;
                HTREEITEM hDstObject = m_hTargetItem;

                for ( nIndex = 0; nIndex < nDragBaseSize; nIndex ++ )
                {
                    pSrcMethod = dynamic_cast< CScriptMethod * >( ppDragBase[nIndex] );
                    pSrcObject = pSrcMethod->GetParentObject();
                    ASSERT( pSrcMethod && pSrcObject );

                    pDstMethod = new CScriptMethod(*pSrcMethod);

                    // remove method from old object
                    pSrcObject->RemoveMethod(pSrcMethod);
                    DelItemMethod(pSrcMethod);

                    pDstObject->Insert(pDstMethod, -2);
                    HTREEITEM hNewMethod = AddItemMethod(hDstObject, pDstMethod, TVI_LAST);
                    ASSERT( hNewMethod );
                    pTargetTreeItems[ nIndex ] = hNewMethod;
                }

                Expand( hDstObject, TVE_EXPAND );

                for ( nIndex = 0; nIndex < nDragBaseSize; nIndex ++ )
                {
                    FocusItem( pTargetTreeItems[ nIndex ] );
                }
            }

            //
            // dropping methods behind method
            //
            else if ( typeid(*pTarget) == typeid(CScriptMethod) && typeid(*(ppDragBase[0])) == typeid(CScriptMethod) )
            {
                CScriptMethod * pBehindThisMethod = dynamic_cast< CScriptMethod * >( pTarget );
                ASSERT( pBehindThisMethod );

                CScriptMethod * pSrcMethod = NULL;
                CScriptMethod * pDstMethod = NULL;
                CScriptObject * pSrcObject = NULL;
                CScriptObject * pDstObject = pBehindThisMethod->GetParentObject( );
                ASSERT( pDstObject );

                HTREEITEM hBehindThisMethod = m_hTargetItem;
                ASSERT( hBehindThisMethod );

                HTREEITEM hSrcMethod = NULL;
                HTREEITEM hSrcObject = NULL;
                HTREEITEM hDstMethod = NULL;
                HTREEITEM hDstObject = GetParentItem( hBehindThisMethod );

                for ( nIndex = 0; nIndex < nDragBaseSize; nIndex ++ )
                {
                    pSrcMethod = dynamic_cast< CScriptMethod * >( ppDragBase[nIndex] );
                    pSrcObject = pSrcMethod->GetParentObject();
                    ASSERT( pSrcMethod && pSrcObject );

                    pDstMethod = new CScriptMethod(*pSrcMethod);

                    // remove method from old object
                    pSrcObject->RemoveMethod(pSrcMethod);
                    DelItemMethod(pSrcMethod);

                    pDstObject->Insert(pDstMethod, pBehindThisMethod);
                    HTREEITEM hNewMethod = AddItemMethod(hDstObject, pDstMethod, hBehindThisMethod);
                    ASSERT( hNewMethod );

                    pBehindThisMethod = pDstMethod;
                    ASSERT( pDstObject == pBehindThisMethod->GetParentObject( ) );
                    hBehindThisMethod = hNewMethod;
                    ASSERT( hDstObject == GetParentItem( hBehindThisMethod ) );

                    pTargetTreeItems[ nIndex ] = hNewMethod;
                }

                Expand( hDstObject, TVE_EXPAND );

                for ( nIndex = 0; nIndex < nDragBaseSize; nIndex ++ )
                {
                    FocusItem( pTargetTreeItems[ nIndex ] );
                }
            }

            //
            // dropping objects into document
            //
            else if ( typeid(*pTarget) == typeid(CScriptDoc) && typeid(*(ppDragBase[0])) == typeid(CScriptObject) )
            {
                CScriptObject * pSrcObject = NULL;
                CScriptDoc * pSrcDoc = NULL;
                CScriptObject * pDstObject = NULL;
                CScriptDoc * pDstDoc = static_cast< CScriptDoc * >( pTarget );

                HTREEITEM hSrcObject = NULL;
                HTREEITEM hSrcDoc = NULL;
                HTREEITEM hDstObject = NULL;
                HTREEITEM hDstDoc = m_hTargetItem;

                for ( nIndex = 0; nIndex < nDragBaseSize; nIndex ++ )
                {
                    pSrcObject = dynamic_cast< CScriptObject * >( ppDragBase[nIndex] );
                    pSrcDoc = pSrcObject->GetParentDoc();
                    ASSERT( pSrcObject && pSrcDoc );

                    pDstObject = new CScriptObject(*pSrcObject);
                    
                    // remove object from old object
                    pSrcDoc->RemoveObject(pSrcObject);
                    DelItemObject(pSrcObject);

                    pDstDoc->Insert(pDstObject);
                    HTREEITEM hNewObject = AddItemObject(hDstDoc, pDstObject);
                    ASSERT( hNewObject );

                    pTargetTreeItems[ nIndex ] = hNewObject;
                    PopulateObject(hNewObject, pDstObject);
                }

                Expand( hDstDoc, TVE_EXPAND );

                for ( nIndex = 0; nIndex < nDragBaseSize; nIndex ++ )
                {
                    FocusItem( pTargetTreeItems[ nIndex ] );
                }
            }

            //
            // dropping objects behind object
            //
            else if ( typeid(*pTarget) == typeid(CScriptObject) && typeid(*(ppDragBase[0])) == typeid(CScriptObject) )
            {
                CScriptObject * pBehindThisObject = dynamic_cast< CScriptObject * >( pTarget );
                ASSERT( pBehindThisObject );

                CScriptObject * pSrcObject = NULL;
                CScriptDoc * pSrcDoc = NULL;
                CScriptObject * pDstObject = NULL;
                CScriptDoc * pDstDoc = pBehindThisObject->GetParentDoc( );
                ASSERT( pDstDoc );

                HTREEITEM hBehindThisObject = m_hTargetItem;
                ASSERT( hBehindThisObject );

                HTREEITEM hSrcObject = NULL;
                HTREEITEM hSrcDoc = NULL;
                HTREEITEM hDstObject = NULL;
                HTREEITEM hDstDoc = GetParentItem( hBehindThisObject );

                for ( nIndex = 0; nIndex < nDragBaseSize; nIndex ++ )
                {
                    pSrcObject = dynamic_cast< CScriptObject * >( ppDragBase[nIndex] );
                    pSrcDoc = pSrcObject->GetParentDoc();
                    ASSERT( pSrcObject && pSrcDoc );

                    pDstObject = new CScriptObject(*pSrcObject);

                    // remove method from old object
                    pSrcDoc->RemoveObject(pSrcObject);
                    DelItemObject(pSrcObject);

                    pDstDoc->Insert(pDstObject, pBehindThisObject);
                    HTREEITEM hNewObject = AddItemObject(hDstDoc, pDstObject, hBehindThisObject);
                    ASSERT( hNewObject );

                    pBehindThisObject = pDstObject;
                    ASSERT( pDstDoc == pBehindThisObject->GetParentDoc( ) );
                    hBehindThisObject = hNewObject;
                    ASSERT( hDstDoc == GetParentItem( hBehindThisObject ) );

                    pTargetTreeItems[ nIndex ] = hNewObject;

                    PopulateObject(hNewObject, pDstObject);
                }

                Expand( hDstDoc, TVE_EXPAND );

                for ( nIndex = 0; nIndex < nDragBaseSize; nIndex ++ )
                {
                    FocusItem( pTargetTreeItems[ nIndex ] );
                }
            }

            delete[] ppDragBase;
            delete[] pTargetTreeItems;
        }
    }

    m_IsDragging = false;
    m_aryDraggingItems.clear();
    m_hTargetItem = NULL;

    CMultiTree::OnLButtonUp(nFlags, point);
}

