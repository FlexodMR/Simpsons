//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// FileTreeCtrlOnMenu.cpp : implementation file
//
#include "stdafx.h"
#include "radtuner.h"
#include "MainFrm.h"
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

#include <typeinfo.h>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


// 
static const UINT uTVIF = TVIF_IMAGE|TVIF_TEXT|TVIF_PARAM|TVIF_SELECTEDIMAGE;

void CFileTreeCtrl::OnContextMenu(CWnd* pWnd, CPoint point)
{
    m_ptLastMousePos = point;
    HTREEITEM hItem = GetSelectedItem();
    if (hItem == NULL)
    {
        return;
    }

    CScriptBaseClass* pBase = (CScriptBaseClass*)GetItemData(hItem);

    if (dynamic_cast<CScriptDoc*>(pBase) != NULL)
    {
        // currently pointing to a document
        VERIFY(theApp.ShowPopupMenu(IDR_MENU_SCRIPT_DOC, point, this));
    }
    else if (dynamic_cast<CScriptObject*>(pBase) != NULL)
    {
        ASSERT(dynamic_cast<CScriptObject*>((CScriptBaseClass*)GetItemData(hItem)));

        CScriptObject *pObj = (CScriptObject*)GetItemData(hItem);

        CMenu oMenu;
        CMenu oPopupMenu;

        VERIFY(oMenu.LoadMenu(IDR_MENU_SCRIPT_OBJECT));

        oPopupMenu.Attach(oMenu.GetSubMenu(0)->GetSafeHmenu());

        //
        // Only add dynamic method call menu if object is valid.
        //
        if (pObj->GetValid())
        {
            IRadTypeInfo *pRTIClass = pObj->GetRadTypeInfo();

            CMenu *pInvokeMenu = oPopupMenu.GetSubMenu(oPopupMenu.GetMenuItemCount()-1);
            pInvokeMenu->DeleteMenu(0, MF_BYPOSITION);
        
            // go through entire list of method for this class, if the method has no parameter
            // put it on menu list
            for (int i = 0; i < pRTIClass->GetNumberOfMethods(); i++)
            {
                IRadTypeInfoMethod *pMethod = pRTIClass->GetMethodByIndex(i);
                if (pMethod->GetNumberOfParams() == 0)
                {
                    //
                    // Very Very Important, since we don't know what menu item (IDR_xxx) we pressed,
                    // we set the menu item start from 0x8100, and use up to 0x81ff, therefore
                    // user should not use resource item number 0x8100 -> 0x81ff for menu.
                    //
                    // And ID_SCRIPTOBJECT_CALL must be equal to 33024 or 0x8100
                    //
                    // And if menu item is more than 255, we are in trouble
                    //
#ifdef _DEBUG
                    if (i > GetDynamicMenuItemResourceIDEnd() - GetDynamicMenuItemResourceIDBeg())
                    {
                        TRACE("==============================\n");
                        TRACE("ERROR >> ERROR >> \n");
                        TRACE("Increase resource id number for dynamic menu in method call menu list!!!\n");
                        TRACE("==============================\n");
                    }
#endif
                    VERIFY(pInvokeMenu->AppendMenu(MF_STRING|MF_ENABLED,
                                                   (GetDynamicMenuItemResourceIDBeg() | i),
                                                   pMethod->GetName()));
                }
            }
        }
        theApp.GetContextMenuManager()->ShowPopupMenu(oPopupMenu.GetSafeHmenu(), point.x, point.y, this);
    }
    else if (dynamic_cast<CScriptMethod*>(pBase) != NULL)
    {
        // currently pointing to a method
        theApp.ShowPopupMenu(IDR_MENU_SCRIPT_METHOD, point, this);
    }
}

void CFileTreeCtrl::OnScriptDelete() 
{
    CTreeItemList aryTreeItems;
    this->GetSelectedList( aryTreeItems );

    if( aryTreeItems.GetCount() == 0 )
    {
        return;
    }

    HTREEITEM hItem = NULL;
    POSITION pos = aryTreeItems.GetHeadPosition();

    list< CScriptBaseClass * > pScriptItemList;

    while (pos != NULL)
    {
        hItem = aryTreeItems.GetAt(pos);
        ASSERT(hItem);

        CScriptBaseClass* pBaseClass = (CScriptBaseClass*)GetItemData(hItem);
        pScriptItemList.push_back(pBaseClass);
        aryTreeItems.GetNext(pos);
    }

    for ( list< CScriptBaseClass * >::const_iterator p = pScriptItemList.begin(); p != pScriptItemList.end(); p++ )
    {
        hItem = _FindItemMatchData( (DWORD)(*p) );
        ASSERT(hItem);

        CScriptBaseClass* pBaseClass = (CScriptBaseClass*)GetItemData(hItem);

        if (dynamic_cast<CScriptDoc*>(pBaseClass))
        {
            CScriptDoc *pDoc = (CScriptDoc*)pBaseClass;
        }
        else if (dynamic_cast<CScriptObject*>(pBaseClass))
        {
            CScriptObject *pObj = (CScriptObject*)pBaseClass;
            CScriptDoc* pDoc = pObj->GetParentDoc();

            ASSERT(pDoc == ((CScriptDoc*)GetItemData(GetParentItem(hItem))));

            //
            // remove from document
            //
            pDoc->RemoveObject(pObj);

            //
            // Update view
            //
            DelItemObject(pObj);
        }
        else if (dynamic_cast<CScriptMethod*>(pBaseClass))
        {
            CScriptMethod *pMet = (CScriptMethod*)GetItemData(hItem);
            CScriptObject *pObj = pMet->GetParentObject();

            ASSERT(pObj == ((CScriptObject*)GetItemData(GetParentItem(hItem))));

            //
            // remove from document
            //
            pObj->RemoveMethod(pMet);

            //
            // Update view
            //
            DelItemMethod(pMet);
        }
        else
        {
        }
    }
}

void CFileTreeCtrl::OnUpdateScriptDelete(CCmdUI* pCmdUI) 
{
    HTREEITEM hItem = GetSelectedItem();
    ASSERT(hItem);

    CScriptBaseClass* pBaseClass = (CScriptBaseClass*)GetItemData(hItem);

    if (dynamic_cast<CScriptDoc*>(pBaseClass))
    {
        CScriptDoc *pDoc = (CScriptDoc*)pBaseClass;
        pCmdUI->Enable(FALSE);
    }
    else if (dynamic_cast<CScriptObject*>(pBaseClass))
    {
        CScriptObject *pObj = (CScriptObject*)pBaseClass;
        pCmdUI->Enable(TRUE);
    }
    else if (dynamic_cast<CScriptMethod*>(pBaseClass))
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}

void CFileTreeCtrl::OnScriptDuplicate() 
{
    HTREEITEM hItem = GetSelectedItem();
    ASSERT(hItem);

    CScriptBaseClass* pBaseClass = (CScriptBaseClass*)GetItemData(hItem);

    if (dynamic_cast<CScriptDoc*>(pBaseClass))
    {
        CScriptDoc *pDoc = (CScriptDoc*)pBaseClass;
    }
    else if (dynamic_cast<CScriptObject*>(pBaseClass))
    {
        HTREEITEM hObjItem = hItem;
        HTREEITEM hDocItem = GetParentItem(hObjItem);
        ASSERT(hObjItem && hDocItem);

        CScriptObject *pObj = (CScriptObject*)pBaseClass;
        CScriptDoc* pDoc = pObj->GetParentDoc();

        ASSERT(pObj == ((CScriptObject*)GetItemData(hObjItem)));

        CScriptObject* pNewObj = new CScriptObject(*pObj);

        CString strNewName(pNewObj->GetName());
        strNewName += "_copy";
        pNewObj->SetName(strNewName);

        pDoc->Insert(pNewObj);
        HTREEITEM hNewObj = AddItemObject(hDocItem, pNewObj);
        PopulateObject(hNewObj, pNewObj);
    }
    else if (dynamic_cast<CScriptMethod*>(pBaseClass))
    {
        HTREEITEM hMethodItem = hItem;
        HTREEITEM hObjectItem = GetParentItem(hMethodItem);
        HTREEITEM hDocItem = GetParentItem(hObjectItem);
        ASSERT(hMethodItem && hObjectItem && hDocItem);

        CScriptMethod *pMet = (CScriptMethod*)pBaseClass;
        CScriptObject *pObj = pMet->GetParentObject();
        CScriptDoc *pDoc = pObj->GetParentDoc();

        ASSERT(pObj == ((CScriptObject*)GetItemData(hObjectItem)));
        ASSERT(pDoc == ((CScriptDoc*)GetItemData(hDocItem)));

        CScriptMethod *pNewMet = new CScriptMethod(*pMet);

        CString strNewName(pMet->GetName());
        strNewName += "_copy";
        pNewMet->SetName(strNewName);

        pObj->Insert(pNewMet);
        AddItemMethod(hObjectItem, pNewMet);
    }
    else
    {
    }
}

void CFileTreeCtrl::OnUpdateScriptDuplicate(CCmdUI* pCmdUI) 
{
    HTREEITEM hItem = GetSelectedItem();
    ASSERT(hItem);

    CScriptBaseClass* pBaseClass = (CScriptBaseClass*)GetItemData(hItem);

    if (dynamic_cast<CScriptDoc*>(pBaseClass))
    {
        CScriptDoc *pDoc = (CScriptDoc*)pBaseClass;
        pCmdUI->Enable(FALSE);
    }
    else if (dynamic_cast<CScriptObject*>(pBaseClass))
    {
        CScriptObject *pObj = (CScriptObject*)pBaseClass;
        if (pObj->GetValid())
        {
            pCmdUI->Enable(TRUE);
        }
        else
        {
            pCmdUI->Enable(FALSE);
        }
    }
    else if (dynamic_cast<CScriptMethod*>(pBaseClass))
    {
        CScriptMethod *pMet = (CScriptMethod*)pBaseClass;
        if (pMet->GetValid())
        {
            pCmdUI->Enable(TRUE);
        }
        else
        {
            pCmdUI->Enable(FALSE);
        }
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}

//
// check if all items can be pasted into/behind the selected item
//
BOOL CFileTreeCtrl::IsPasteTarget( HTREEITEM hItem )
{
    //
    // precondition check
    //
    ASSERT( m_aryCopyingItems.size( ) > 0 );
    ASSERT( hItem );

    if(hItem == NULL)
    {
        return(FALSE);
    }

    //
    // copypaste rule check, if fail any rule, return
    //
    list< HTREEITEM >::const_iterator p = NULL;

    //
    // Rule 0: check if all item still existed in the tree
    //
    for ( p = m_aryCopyingItems.begin(); p != m_aryCopyingItems.end(); p ++ )
    {
        if ( ! _IsItemInTree( *p ) )
        {
            AfxMessageBox( "Cannot find source item(s) in the original location." );
            return(FALSE);
        }
    }

    //
    // Rule 1: copying item must be the same type, and must be either CScriptObject or CScriptMethod
    //
    CScriptBaseClass * pFirstItem = (CScriptBaseClass*)GetItemData(*(m_aryCopyingItems.begin( )));
    CScriptBaseClass * pNextItem = NULL;
    CScriptBaseClass * pPasteTarget = (CScriptBaseClass*)GetItemData(hItem);

    // make sure first item is script object or method, because we can only copy&paste those items
    if ( typeid(*pFirstItem) != typeid(CScriptObject) && typeid(*pFirstItem) != typeid(CScriptMethod) )
    {
        AfxMessageBox( "All selected items must be either script object or script method, cannot copy and paste script document." );
        return(FALSE);
    }

    // make sure all items are the same type
    for ( p = m_aryCopyingItems.begin(); p != m_aryCopyingItems.end(); p ++ )
    {
        pNextItem = (CScriptBaseClass*)GetItemData(*p);
        ASSERT( pNextItem != NULL );
        if ( typeid(*pFirstItem) != typeid(*pNextItem) )
        {
            AfxMessageBox( "All selected items must be either script object or script method, cannot copy and paste script document." );
            return(FALSE);
        }
    }

    //
    // Rule 2: If copying items are method, they must have the same parent class type
    //
    if ( typeid(*pFirstItem) == typeid(CScriptMethod) )
    {
        CScriptMethod * pFirstMethod = static_cast< CScriptMethod * >( pFirstItem );
        CScriptMethod * pNextMethod = NULL;
        CString strFirstClassName = pFirstMethod->GetParentObject( )->GetClassName( );
        CString strNextClassName;

        for ( p = m_aryCopyingItems.begin(); p != m_aryCopyingItems.end(); p ++ )
        {
            pNextMethod = static_cast< CScriptMethod * >( (CScriptBaseClass*)GetItemData(*p) );
            ASSERT( pNextMethod != NULL );
            strNextClassName = pNextMethod->GetParentObject( )->GetClassName( );
            if ( strNextClassName != strFirstClassName )
            {
                AfxMessageBox( "All selected script methods must have all the same parent object type." );
                return(FALSE);
            }
        }
    }

    //
    // Rule 3: If copying and target items are method, they must have the same parent class type
    //
    if ( ( typeid(*pFirstItem) == typeid(CScriptMethod) ) &&
         ( typeid(*pPasteTarget) == typeid(CScriptMethod) ) )
    {
        CScriptMethod * pFirstMethod = static_cast< CScriptMethod * >( pFirstItem );
        CScriptMethod * pTargetMethod = static_cast< CScriptMethod * >( pPasteTarget );

        if ( pFirstMethod->GetParentObject()->GetClassName() != pTargetMethod->GetParentObject()->GetClassName() )
        {
            AfxMessageBox( "All selected script methods must have all the same parent object type." );
            return(FALSE);
        }
    }


    //
    // Rule 4: Cannot paste a method into document
    //
    if ( ( typeid(*pFirstItem) == typeid(CScriptMethod) ) &&
         ( typeid(*pPasteTarget) == typeid(CScriptDoc) ) )
    {
        AfxMessageBox( "All selected script methods must have all the same parent object type." );
        return(FALSE);
    }

    //
    // Rule 5: Cannot paste a object into method
    //
    if ( ( typeid(*pFirstItem) == typeid(CScriptObject) ) &&
         ( typeid(*pPasteTarget) == typeid(CScriptMethod) ) )
    {
        AfxMessageBox( "Cannot paste an object \"on top of\"/\"into\" method." );
        return(FALSE);
    }

    //
    // Rule 6: If copy items are method, paste object must be the same parent class type
    //
    if ( ( typeid(*pFirstItem) == typeid(CScriptMethod) ) &&
         ( typeid(*pPasteTarget) == typeid(CScriptObject) ) )
    {
        CScriptMethod * pFirstMethod = static_cast< CScriptMethod * >( pFirstItem );
        CScriptObject * pDropObject = static_cast< CScriptObject * >( pPasteTarget );
        ASSERT( pFirstMethod && pDropObject );
        if( pFirstMethod->GetParentObject()->GetClassName() != pDropObject->GetClassName() )
        {
            AfxMessageBox( "Cannot paste methods into object that has different class type." );
            return(FALSE);
        }
    }

    return(TRUE);
}

void CFileTreeCtrl::OnScriptNew() 
{
    ASSERT(::radTypeInfoSystemGet());

    HTREEITEM hItem = GetSelectedItem();
    ASSERT(hItem);

    CScriptBaseClass* pBaseClass = (CScriptBaseClass*)GetItemData(hItem);

    if (dynamic_cast<CScriptDoc*>(pBaseClass))
    {
        CScriptDoc *pDoc = (CScriptDoc*)pBaseClass;

        CAddNewObjectDlg oDlg;

        if (oDlg.DoModal() == IDOK)
        {
            ASSERT(::radTypeInfoSystemGet()->GetTypeInfoAt(oDlg.m_nClassIndex));
            ASSERT(oDlg.m_strObjectName.GetLength() > 0);

            CScriptObject *pObj = new CScriptObject(::radTypeInfoSystemGet()->GetTypeInfoAt(oDlg.m_nClassIndex),
                                                    oDlg.m_strObjectName,
                                                    oDlg.m_eCreationMethod,
                                                    pDoc);
            pObj->SetPlatForm( oDlg.GetPlatform( ) );
            ASSERT(pObj->GetValid());

            pDoc->Insert(pObj);
            AddItemObject(hItem, pObj);
        }
    }
    else if (dynamic_cast<CScriptObject*>(pBaseClass))
    {
        CScriptObject *pObj = (CScriptObject*)pBaseClass;

        //
        // Create a dialog for add new method
        //
        CAddNewMethodDlg oDlg;
        oDlg.SetObjectName(pObj->GetName());
        oDlg.SetRTIObjectPtr(pObj->GetRadTypeInfo());

        if (oDlg.DoModal() == IDOK)
        {
            CScriptParam *pParam = NULL;
            CScriptMethod *pMethod = new CScriptMethod(oDlg.GetRTIMethodPtr(), pObj);
            // Parameter count must match!!!
            ASSERT(oDlg.GetParamCount() == pMethod->GetParamCount());

            // we copy parameters over the newly created method
            for (int i = 0; i < pMethod->GetParamCount(); i++)
            {
                pParam = pMethod->GetParamAt(i);
                *pParam = *(oDlg.GetParamPtrAt(i));
                pParam->SetParentMethod(pMethod);
            }

            pMethod->SetPlatForm( oDlg.GetPlatform( ) );

            // Add new method at the end of the tree view list for current object
            pObj->Insert(pMethod);
            AddItemMethod(hItem, pMethod);
        }
    }
    else if (dynamic_cast<CScriptMethod*>(pBaseClass))
    {
        ASSERT(0);  // cannot react to new xxx menu
    }
}

void CFileTreeCtrl::OnUpdateScriptNew(CCmdUI* pCmdUI) 
{
    ASSERT(::radTypeInfoSystemGet());

    HTREEITEM hItem = GetSelectedItem();
    ASSERT(hItem);

    CScriptBaseClass* pBaseClass = (CScriptBaseClass*)GetItemData(hItem);

    if (dynamic_cast<CScriptDoc*>(pBaseClass))
    {
        CScriptDoc *pDoc = (CScriptDoc*)pBaseClass;
        pCmdUI->Enable(TRUE);
    }
    else if (dynamic_cast<CScriptObject*>(pBaseClass))
    {
        CScriptObject *pObj = (CScriptObject*)pBaseClass;
        if (pObj->GetValid())
        {
            pCmdUI->Enable(TRUE);
        }
        else
        {
            pCmdUI->Enable(FALSE);
        }
    }
    else if (dynamic_cast<CScriptMethod*>(pBaseClass))
    {
        pCmdUI->Enable(FALSE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}

void CFileTreeCtrl::OnScriptProperties() 
{
    HTREEITEM hItem = GetSelectedItem();
    ASSERT(hItem);

    CScriptBaseClass* pBaseClass = (CScriptBaseClass*)GetItemData(hItem);

    if (dynamic_cast<CScriptDoc*>(pBaseClass))
    {
        CScriptDoc *pDoc = (CScriptDoc*)pBaseClass;
    }
    else if (dynamic_cast<CScriptObject*>(pBaseClass))
    {
        HTREEITEM hObjItem = hItem;
        HTREEITEM hDocItem = GetParentItem(hObjItem);
        ASSERT(hObjItem && hDocItem);

        CScriptObject *pObj = (CScriptObject*)pBaseClass;
        CScriptDoc* pDoc = pObj->GetParentDoc();

        ASSERT(pDoc == ((CScriptDoc*)GetItemData(hDocItem)));

        if (!pObj->GetValid())
        {
            ::AfxMessageBox("Invalid Object!");
        }
        else
        {
            CModifyObjectDlg oDlg;
            oDlg.SetScriptObject(pObj);

            if (oDlg.DoModal() == IDOK)
            {
                pObj->SetName((const char*)oDlg.m_strObjectName);
                pObj->SetCreationType(oDlg.GetScriptObjectCreationType());

                pObj->SetPlatForm( oDlg.GetPlatform( ) );

                SetItemText(hItem, pObj->GetDisplayText());
                SetItemText(hDocItem, pDoc->GetFileTitle());
            }
        }
    }
    else if (dynamic_cast<CScriptMethod*>(pBaseClass))
    {
        HTREEITEM hMet = hItem;
        HTREEITEM hObj = GetParentItem(hMet);
        HTREEITEM hDoc = GetParentItem(hObj);
        ASSERT(hMet && hObj && hDoc);

        CScriptMethod *pMet = (CScriptMethod*)pBaseClass;
        CScriptObject *pObj = pMet->GetParentObject();
        CScriptDoc *pDoc = pObj->GetParentDoc();

        ASSERT(pObj == ((CScriptObject*)GetItemData(hObj)));
        ASSERT(pDoc == ((CScriptDoc*)GetItemData(hDoc)));

        if (!pMet->GetValid())
        {
            ::AfxMessageBox("Invalid Method!");
        }
        else
        {
            // bring up the dialog box to change property around.
            CModifyMethodDlg oDlg;

            oDlg.Initalize( pMet, this, hMet, hObj, hDoc );

            if (oDlg.DoModal() == IDOK)
            {
                ASSERT(oDlg.GetScriptParamCount() == pMet->GetParamCount());
                
                for (int j = 0; j < pMet->GetParamCount(); j++)
                {
                    CScriptParam *pParam = pMet->GetParamAt(j);
                    pParam->CopyValue( *oDlg.GetParamPtr(j) );
                    if ( pParam->GetParamWnd( ) != NULL && pParam->GetParamWnd( )->GetSafeHwnd( ) != NULL )
                    {
                        CParamSliderDlg * pParamDlg = (CParamSliderDlg *)pParam->GetParamWnd( );

                        pParamDlg->SetParamValue( atof( pParam->ConvertValueToText( ) ) );
                        pParamDlg->UpdateData( FALSE );
                    }
                }

                pMet->SetPlatForm( oDlg.GetPlatform( ) );

                SetItemText(hMet, pMet->GetDisplayText());
                SetItemText(hObj, pObj->GetDisplayText());
                SetItemText(hDoc, pDoc->GetFileTitle());
            }
        }
    }
    else
    {
    }
}

void CFileTreeCtrl::OnUpdateScriptProperties(CCmdUI* pCmdUI) 
{
    HTREEITEM hItem = GetSelectedItem();
    ASSERT(hItem);

    CScriptBaseClass* pBaseClass = (CScriptBaseClass*)GetItemData(hItem);

    if (dynamic_cast<CScriptDoc*>(pBaseClass))
    {
        CScriptDoc *pDoc = (CScriptDoc*)pBaseClass;
        pCmdUI->Enable(FALSE);
    }
    else if (dynamic_cast<CScriptObject*>(pBaseClass))
    {
        CScriptObject *pObj = (CScriptObject*)pBaseClass;
        pCmdUI->Enable(TRUE);
    }
    else if (dynamic_cast<CScriptMethod*>(pBaseClass))
    {
        CScriptMethod *pMet = (CScriptMethod*)pBaseClass;
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}

//===========================================================================
// CFileTreeCtrl::OnScriptdocSaveSelectedScript
//===========================================================================
// Description: Call back when Save selected script is clicked
// 
// Constraints: Document item must be selected, file must contain all valid
//              objects, and file must be not read only
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CFileTreeCtrl::OnScriptdocSaveSelectedScript() 
{
    CScriptDoc* pDoc = _GetCurSelDoc();

    ASSERT(pDoc);
    //
    // Check to see if file is read only
    //
    if (pDoc->IsFileReadOnly())
    {
        ::AfxMessageBox("File is read only, please check out from P4.");
        return;
    }

    //
    // File cannot contain invalid items
    //
    if (pDoc->IsAnyInvalidItem())
    {
        ::AfxMessageBox("Cannot save file due to file contain invalid object/method, please expand tree nodes and fix those items first.");
        return;
    }

    //
    // Attempt to save document
    //
    if (!pDoc->Save())
    {
        ::AfxMessageBox("Cannot save file, hmmm, must be disk full or something like that.");
        return;
    }

    //
    // Update tree view
    //
    UpdateFileView( );
}

void CFileTreeCtrl::OnUpdateScriptdocSaveSelectedScript(CCmdUI* pCmdUI) 
{
    CScriptDoc* pDoc = _GetCurSelDoc();
    if (pDoc && pDoc->GetModified())
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}

void CFileTreeCtrl::OnScriptObjectResetAndInvokeAll()
{
	CScriptObject * pObj = _GetCurSelObj( );

	ASSERT( pObj && pObj->GetValid( ) );

	unsigned int numMethods = pObj->GetMethodCount( );

	/* CScriptMethod * pScriptMethod_Reset = NULL;

	for ( unsigned int i = 0; i < numMethods; i ++ )
	{
		CScriptMethod * pMyMethod = pObj->GetMethodAt( i );

		ASSERT( pMyMethod );

		if ( pMyMethod->GetName( ).Compare( "Reset" ) )
		{
			if ( pScriptMethod_Reset->GetParamCount( ) == 0 )
			{
				pScriptMethod_Reset = pMyMethod;
				break;
			}
		}			
	}

	if ( pScriptMethod_Reset != NULL )
	{
		((CMainFrame*)(theApp.m_pMainWnd))->CallRCC(pObj, pMet);
		pScriptMethod_Reset
	} */

	for ( unsigned int i = 0; i < numMethods; i ++ )
	{
		CScriptMethod * pMyMethod = pObj->GetMethodAt( i );

		ASSERT( pMyMethod );
		
		((CMainFrame*)(theApp.m_pMainWnd))->CallRCC(pObj, pMyMethod );		
	}

}

void CFileTreeCtrl::OnUpdateScriptObjectResetAndInvokeAll(CCmdUI* pCmdUI)
{
	pCmdUI->Enable( TRUE );
}

void CFileTreeCtrl::OnScriptmethodInvokeMethod() 
{
    CScriptMethod* pMet = _GetCurSelMet();
    ASSERT(pMet && pMet->GetValid());

    CScriptObject *pObj = pMet->GetParentObject();

    ((CMainFrame*)(theApp.m_pMainWnd))->CallRCC(pObj, pMet);
}

void CFileTreeCtrl::OnUpdateScriptmethodInvokeMethod(CCmdUI* pCmdUI) 
{
    CScriptMethod* pMet = _GetCurSelMet();
    if (pMet && pMet->GetValid())
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}

void CFileTreeCtrl::OnScriptobjectCall() 
{
    CScriptObject* pObj = _GetCurSelObj();
    ASSERT(pObj && pObj->GetValid());

    IRadTypeInfo *pRTIClass = pObj->GetRadTypeInfo();
    IRadTypeInfoMethod *pRTIMethod = pRTIClass->GetMethodByIndex(((CMainFrame*)(theApp.m_pMainWnd))->GetDynamicMenuItemIndex());

    ((CMainFrame*)(theApp.m_pMainWnd))->CallRCC(pObj, pRTIMethod);
}

void CFileTreeCtrl::OnUpdateScriptobjectCall(CCmdUI* pCmdUI) 
{
    CScriptObject* pObj = _GetCurSelObj();
    if (pObj && pObj->GetValid())
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}

void CFileTreeCtrl::Copy()
{
    m_aryCopyingItems.clear( );
    //
    // Get list of item user wants to copy.
    //
    CTreeItemList aryTreeItems;
    this->GetSelectedList( aryTreeItems );

    POSITION pos = aryTreeItems.GetHeadPosition( );

    while( pos != NULL )
    {
        HTREEITEM hCurrentItem = aryTreeItems.GetNext( pos );
        m_aryCopyingItems.push_back( hCurrentItem );
    }
}

bool CFileTreeCtrl::CanEditCopy()
{
    CTreeItemList aryTreeItems;
    this->GetSelectedList( aryTreeItems );

    if( aryTreeItems.GetCount() == 0 )
    {
        return false;
    }

    HTREEITEM hItem = NULL;

    POSITION position = aryTreeItems.GetHeadPosition();

    while( position != NULL )
    {
        hItem = aryTreeItems.GetAt( position );
        ASSERT( hItem );

        CScriptBaseClass* pBaseClass = (CScriptBaseClass*)GetItemData(hItem);

        if (dynamic_cast<CScriptDoc*>(pBaseClass))
        {
            CScriptDoc *pDoc = (CScriptDoc*)pBaseClass;
            return false;
        }
        else if (dynamic_cast<CScriptObject*>(pBaseClass))
        {
            CScriptObject *pObj = (CScriptObject*)pBaseClass;
            if (!pObj->GetValid())
            {
                return false;
            }
        }
        else if (dynamic_cast<CScriptMethod*>(pBaseClass))
        {
            CScriptMethod *pMet = (CScriptMethod*)pBaseClass;
            if (!pMet->GetValid())
            {
                return false;
            }
        }
        else
        {
            return false;
        }
        aryTreeItems.GetNext(position);
    }
    return true;
}

void CFileTreeCtrl::Paste()
{
    if ( m_aryCopyingItems.size() == 0 )
    {
        return;
    }

    HTREEITEM hItem = GetSelectedItem( );

    if ( hItem == NULL )
    {
        return;
    }

    //
    // do paste target check
    //
    if( IsPasteTarget( hItem ) )
    {
        int nCopyBaseSize = m_aryCopyingItems.size( );

        CScriptBaseClass **ppCopyBase = new CScriptBaseClass*[ nCopyBaseSize ];
        HTREEITEM *pTargetTreeItems = new HTREEITEM[ nCopyBaseSize ];

        memset( ppCopyBase, 0, sizeof( CScriptBaseClass* ) * nCopyBaseSize );
        memset( pTargetTreeItems, 0, sizeof( HTREEITEM ) * nCopyBaseSize );

        int nIndex = 0;
        for ( list< HTREEITEM >::const_iterator p = m_aryCopyingItems.begin(); p != m_aryCopyingItems.end(); p ++ )
        {
            ppCopyBase[ nIndex ] = reinterpret_cast<CScriptBaseClass*>(GetItemData(*p));
            ASSERT( ppCopyBase[ nIndex ] );
            ASSERT( nCopyBaseSize > nIndex );
            nIndex ++;
        }

        CScriptBaseClass * pTarget = (CScriptBaseClass*)GetItemData(hItem);

        //================================================================
        // iterate through entire drag item list and drop them after the
        // target.
        //================================================================

        //
        // Copy methods into object
        //
        if ( typeid(*pTarget) == typeid(CScriptObject) && typeid(*(ppCopyBase[0])) == typeid(CScriptMethod) )
        {
            CScriptMethod * pSrcMethod = NULL;
            CScriptMethod * pDstMethod = NULL;
            CScriptObject * pSrcObject = NULL;
            CScriptObject * pDstObject = dynamic_cast< CScriptObject * >( pTarget );

            HTREEITEM hSrcMethod = NULL;
            HTREEITEM hSrcObject = NULL;
            HTREEITEM hDstMethod = NULL;
            HTREEITEM hDstObject = hItem;

            for ( nIndex = 0; nIndex < nCopyBaseSize; nIndex ++ )
            {
                pSrcMethod = dynamic_cast< CScriptMethod * >( ppCopyBase[nIndex] );
                pSrcObject = pSrcMethod->GetParentObject( );
                ASSERT( pSrcMethod && pSrcObject );

                pDstMethod = new CScriptMethod(*pSrcMethod);

                pDstObject->Insert(pDstMethod, -2);
                HTREEITEM hNewMethod = AddItemMethod(hDstObject, pDstMethod, TVI_LAST);
                ASSERT( hNewMethod );
                pTargetTreeItems[ nIndex ] = hNewMethod;
            }

            Expand( hDstObject, TVE_EXPAND );

            for ( nIndex = 0; nIndex < nCopyBaseSize; nIndex ++ )
            {
                FocusItem( pTargetTreeItems[ nIndex ] );
            }
        }

        //
        // Copy methods behind method
        //
        else if ( typeid(*pTarget) == typeid(CScriptMethod) && typeid(*(ppCopyBase[0])) == typeid(CScriptMethod) )
        {
            CScriptMethod * pBehindThisMethod = dynamic_cast< CScriptMethod * >( pTarget );
            ASSERT( pBehindThisMethod );

            CScriptMethod * pSrcMethod = NULL;
            CScriptMethod * pDstMethod = NULL;
            CScriptObject * pSrcObject = NULL;
            CScriptObject * pDstObject = pBehindThisMethod->GetParentObject( );
            ASSERT( pDstObject );

            HTREEITEM hBehindThisMethod = hItem;
            ASSERT( hBehindThisMethod );

            HTREEITEM hSrcMethod = NULL;
            HTREEITEM hSrcObject = NULL;
            HTREEITEM hDstMethod = NULL;
            HTREEITEM hDstObject = GetParentItem( hBehindThisMethod );

            for ( nIndex = 0; nIndex < nCopyBaseSize; nIndex ++ )
            {
                pSrcMethod = dynamic_cast< CScriptMethod * >( ppCopyBase[nIndex] );
                pSrcObject = pSrcMethod->GetParentObject();
                ASSERT( pSrcMethod && pSrcObject );

                pDstMethod = new CScriptMethod(*pSrcMethod);

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

            for ( nIndex = 0; nIndex < nCopyBaseSize; nIndex ++ )
            {
                FocusItem( pTargetTreeItems[ nIndex ] );
            }
        }

        //
        // dropping objects into document
        //
        else if ( typeid(*pTarget) == typeid(CScriptDoc) && typeid(*(ppCopyBase[0])) == typeid(CScriptObject) )
        {
            CScriptObject * pSrcObject = NULL;
            CScriptDoc * pSrcDoc = NULL;
            CScriptObject * pDstObject = NULL;
            CScriptDoc * pDstDoc = static_cast< CScriptDoc * >( pTarget );

            HTREEITEM hSrcObject = NULL;
            HTREEITEM hSrcDoc = NULL;
            HTREEITEM hDstObject = NULL;
            HTREEITEM hDstDoc = hItem;

            for ( nIndex = 0; nIndex < nCopyBaseSize; nIndex ++ )
            {
                pSrcObject = dynamic_cast< CScriptObject * >( ppCopyBase[nIndex] );
                pSrcDoc = pSrcObject->GetParentDoc();
                ASSERT( pSrcObject && pSrcDoc );

                pDstObject = new CScriptObject(*pSrcObject);
                
                pDstDoc->Insert(pDstObject);
                HTREEITEM hNewObject = AddItemObject(hDstDoc, pDstObject);
                ASSERT( hNewObject );

                pTargetTreeItems[ nIndex ] = hNewObject;
                PopulateObject(hNewObject, pDstObject);
            }

            Expand( hDstDoc, TVE_EXPAND );

            for ( nIndex = 0; nIndex < nCopyBaseSize; nIndex ++ )
            {
                FocusItem( pTargetTreeItems[ nIndex ] );
            }
        }

        //
        // dropping objects behind object
        //
        else if ( typeid(*pTarget) == typeid(CScriptObject) && typeid(*(ppCopyBase[0])) == typeid(CScriptObject) )
        {
            CScriptObject * pBehindThisObject = dynamic_cast< CScriptObject * >( pTarget );
            ASSERT( pBehindThisObject );

            CScriptObject * pSrcObject = NULL;
            CScriptDoc * pSrcDoc = NULL;
            CScriptObject * pDstObject = NULL;
            CScriptDoc * pDstDoc = pBehindThisObject->GetParentDoc( );
            ASSERT( pDstDoc );

            HTREEITEM hBehindThisObject = hItem;
            ASSERT( hBehindThisObject );

            HTREEITEM hSrcObject = NULL;
            HTREEITEM hSrcDoc = NULL;
            HTREEITEM hDstObject = NULL;
            HTREEITEM hDstDoc = GetParentItem( hBehindThisObject );

            for ( nIndex = 0; nIndex < nCopyBaseSize; nIndex ++ )
            {
                pSrcObject = dynamic_cast< CScriptObject * >( ppCopyBase[nIndex] );
                pSrcDoc = pSrcObject->GetParentDoc();
                ASSERT( pSrcObject && pSrcDoc );

                pDstObject = new CScriptObject(*pSrcObject);

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

            for ( nIndex = 0; nIndex < nCopyBaseSize; nIndex ++ )
            {
                FocusItem( pTargetTreeItems[ nIndex ] );
            }
        }

        delete[] ppCopyBase;
        delete[] pTargetTreeItems;
    }
}

bool CFileTreeCtrl::CanEditPaste()
{
    if ( m_aryCopyingItems.size() == 0 )
    {
        return false;
    }

    HTREEITEM hItem = GetSelectedItem();

    if ( hItem != NULL )
    {
        return true;
    }
    else
    {
        return false;
    }
}

