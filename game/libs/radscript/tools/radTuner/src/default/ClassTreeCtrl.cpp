//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ClassTreeCtrl.cpp : implementation file
//

//===========================================================================
// Includes
//===========================================================================
#include "stdafx.h"
#include "radtuner.h"
#include "ClassTreeCtrl.h"
#include "ScriptBaseClass.h"
#include "ScriptDoc.h"

//===========================================================================
// MFC Defines
//===========================================================================
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//===========================================================================
// Constants
//===========================================================================
static const UINT uTVIF = TVIF_IMAGE|TVIF_TEXT|TVIF_PARAM|TVIF_SELECTEDIMAGE;

//===========================================================================
// CClassTreeCtrl::CClassTreeCtrl
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CClassTreeCtrl::CClassTreeCtrl()
{
}


//===========================================================================
// CClassTreeCtrl::~CClassTreeCtrl
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CClassTreeCtrl::~CClassTreeCtrl()
{
}

//===========================================================================
// MFC Message Mapping
//===========================================================================
BEGIN_MESSAGE_MAP(CClassTreeCtrl, CTreeCtrl)
    //{{AFX_MSG_MAP(CClassTreeCtrl)
    ON_WM_CREATE()
    ON_WM_RBUTTONDOWN()
    ON_WM_CONTEXTMENU()
	ON_NOTIFY_REFLECT(NM_RCLICK, OnRclick)
	ON_WM_MOVE()
	ON_NOTIFY_REFLECT(NM_CLICK, OnClick)
	ON_WM_KILLFOCUS()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//===========================================================================
// CClassTreeCtrl::OnCreate
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
int CClassTreeCtrl::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    lpCreateStruct->style |= WS_CHILD | WS_VISIBLE | TVS_HASLINES | TVS_INFOTIP |
                             TVS_LINESATROOT | TVS_HASBUTTONS | TVS_TRACKSELECT;// | TVS_CHECKBOXES;

    if (CTreeCtrl::OnCreate(lpCreateStruct) == -1)
        return -1;

    m_imgImageList.Create(IDB_WORKSPACE, 16, 0, RGB (255, 0, 0));

    SetImageList(&m_imgImageList, TVSIL_NORMAL);
    return 0;
}


//===========================================================================
// CClassTreeCtrl::OnRButtonDown
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
void CClassTreeCtrl::OnRButtonDown(UINT nFlags, CPoint point)
{
    m_ptLastMousePos = point;

    //
    // Select the item mouse button is down
    //
    UINT uFlags;
    HTREEITEM hItem = HitTest(point, &uFlags);

    if ((hItem != NULL) && (TVHT_ONITEM & uFlags))
    {
        Select(hItem, TVGN_CARET);
    }

    CTreeCtrl::OnRButtonDown(nFlags, point);
}


//===========================================================================
// CClassTreeCtrl::OnContextMenu
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWnd* pWnd
//             CPoint point
// 
// Return: void 
//===========================================================================
void CClassTreeCtrl::OnContextMenu(CWnd* pWnd, CPoint point)
{
    theApp.ShowPopupMenu(IDR_MENU_CLASS_VIEW, point, this);
}


//===========================================================================
// CClassTreeCtrl::PopulateClassView
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             IRadTypeInfoSystem *pTypeInfoSystem
// 
// Return: int 
//===========================================================================
int CClassTreeCtrl::PopulateClassView(IRadTypeInfoSystem *pTypeInfoSystem)
{
    DeleteAllItems();

    if (pTypeInfoSystem == NULL)
    {
        return (0);
    }
    //========================================================================
    // add each class into the tree
    //========================================================================
    char szText[256] = {0};
    int nTotalClassCount = pTypeInfoSystem->GetTypeInfoCount();
    for (int i = 0; i < nTotalClassCount; i++)
    {
        IRadTypeInfo *pClass = pTypeInfoSystem->GetTypeInfoAt(i);

        HTREEITEM hClass = NULL;

        strcpy(szText, pClass->GetName());
        if (szText[0] == 'I')
        {
            szText[1] = tolower(szText[1]);
            hClass = InsertItem(uTVIF, &szText[1],
                                          IDB_CLASS, IDB_CLASS,
                                           0, 0, (LPARAM)pClass, TVI_ROOT, TVI_LAST);
        }
        else
        {
            hClass = InsertItem(uTVIF, szText,
                                          IDB_CLASS, IDB_CLASS,
                                           0, 0, (LPARAM)pClass, TVI_ROOT, TVI_LAST);
        }

        int nTotalFunctionCount = pClass->GetNumberOfMethods();
        for (int j = 0; j < nTotalFunctionCount; j++)
        {
            IRadTypeInfoMethod *pMethod = pClass->GetMethodByIndex(j);

            ref< IRadTypeInfoParam > pRetParam;
            pRetParam = pMethod->GetReturnInfo( );
            CString strMethodDesc = CString( pRetParam->GetType( ) ) + CString('*', pRetParam->GetIndLvl( ) );

            strMethodDesc += " ";
            strMethodDesc += pMethod->GetName();
            strMethodDesc += '(';

            for (int k = 0; k < pMethod->GetNumberOfParams(); k++)
            {
                szText[0] = '\0';

                ref< IRadTypeInfoParam > pTempParam;
                pTempParam = pMethod->GetParamInfoAt(k);

                char szPtrs[64] = {0};
                for (int i = 0; i < pTempParam->GetIndLvl( ); i++)
                {
                    strcat(szPtrs, "*");
                }

                sprintf(szText, "%s%s %s", pTempParam->GetType( ), szPtrs, pTempParam->GetName( ) );

                if (k < pMethod->GetNumberOfParams()-1)
                {
                    strcat(szText, ", ");
                }

                strMethodDesc += szText;
            }
            strMethodDesc += ')';

            HTREEITEM hMethod = InsertItem(uTVIF, (const char*)strMethodDesc,
                                           IDB_FUNCTION, IDB_FUNCTION,
                                           0, 0, (LPARAM)pMethod, hClass, TVI_LAST);
        }
    }
    return(0);
}

//===========================================================================
// CClassTreeCtrl::OnClick
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
void CClassTreeCtrl::OnClick(NMHDR* pNMHDR, LRESULT* pResult) 
{
	*pResult = 0;

    //
    // Select the item mouse button is down
    //
    UINT uFlags;
    HTREEITEM hItem = HitTest(m_ptLastMousePos, &uFlags);

    if ((hItem != NULL) && (TVHT_ONITEMBUTTON & uFlags))
    {
        // if we clicked on the check box, we select the item first,
        Select(hItem, TVGN_CARET);
    }

}

//===========================================================================
// CClassTreeCtrl::OnRclick
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
void CClassTreeCtrl::OnRclick(NMHDR* pNMHDR, LRESULT* pResult) 
{
    CPoint ptPos = m_ptLastMousePos;
    ClientToScreen(&ptPos);
    OnContextMenu(this, ptPos);
	*pResult = 0;
}


//===========================================================================
// CClassTreeCtrl::OnMove
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             int x
//             int y
// 
// Return: void 
//===========================================================================
void CClassTreeCtrl::OnMove(int x, int y) 
{
	CTreeCtrl::OnMove(x, y);

	m_ptLastMousePos.x = x;
    m_ptLastMousePos.y = y;
}



//===========================================================================
// CClassTreeCtrl::OnKillFocus
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWnd* pNewWnd
// 
// Return: void 
//===========================================================================
void CClassTreeCtrl::OnKillFocus(CWnd* pNewWnd) 
{
	CTreeCtrl::OnKillFocus(pNewWnd);

    for (int i = 0; i < GetCount(); i++)
    {


    }
}
