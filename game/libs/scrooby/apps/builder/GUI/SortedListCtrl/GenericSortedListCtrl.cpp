//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   GUI Helpers
//
// Description: This contains the Image class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "GenericSortedListCtrl.h"
#include "GenericItemInfo.h"
#include "..\..\FeData\Helpers\OutputMessage.h"



#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CGenericSortedListCtrl::CGenericSortedListCtrl
//===========================================================================
// Description: CGenericSortedListCtrl's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

CGenericSortedListCtrl::CGenericSortedListCtrl() : CSortedListCtrl( TRUE, TRUE )
{
}


//===========================================================================
// CGenericSortedListCtrl::~CGenericSortedListCtrl
//===========================================================================
// Description: CGenericSortedListCtrl's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

CGenericSortedListCtrl::~CGenericSortedListCtrl()
{
}



BEGIN_MESSAGE_MAP(CGenericSortedListCtrl, CSortedListCtrl)
    //{{AFX_MSG_MAP(CGenericSortedListCtrl)
        ON_NOTIFY_REFLECT(LVN_GETDISPINFO, OnGetDispInfo)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()


bool CGenericSortedListCtrl::SetColumnHeadings( char* column1, char* column2 )
{
    CRect listRect;
    GetWindowRect( listRect );
    int cx = ( listRect.Width() - 4 ) / 2;

    InsertColumn( 0, column1, LVCFMT_LEFT, cx );
    InsertColumn( 1, column2, LVCFMT_LEFT, cx * 4 );
    return true;
}


bool CGenericSortedListCtrl::InsertItem( char* column1, char* column2 )
{
    int numberOfItems = GetItemCount();

    CGenericItemInfo *itemInfo;
    itemInfo = new CGenericItemInfo( numberOfItems, column1, column2 );
    if( itemInfo == NULL )
    {
        FeData::g_OutputMessage.Add( "CGenericSortedListCtrl::InsertItem: Out of Memory!", 
                                     FeData::ErrorOutputMessage );
        return false;
    }

    CSortedListCtrl::InsertItem( numberOfItems, LPSTR_TEXTCALLBACK );    
    SetItemData( numberOfItems, (DWORD)itemInfo );
    SetItemText( numberOfItems, 1, LPSTR_TEXTCALLBACK );

    return true;
}



/*----------------------------------------------------------------------------*/

void CGenericSortedListCtrl::OnGetDispInfo(NMHDR* pNMHDR, LRESULT* pResult) 
{
    LV_DISPINFO* pDispInfo = (LV_DISPINFO*)pNMHDR;

    if (pDispInfo->item.mask & LVIF_TEXT) {

        CGenericItemInfo* pAppItem = reinterpret_cast<CGenericItemInfo*>(pDispInfo->item.lParam);

        switch (pDispInfo->item.iSubItem) {

        case 0 :
            lstrcpy (pDispInfo->item.pszText, pAppItem->GetColumn1());
            break;
        case 1 :
            lstrcpy (pDispInfo->item.pszText, pAppItem->GetColumn2());
            break;
        }
    }
    *pResult = 0;
}

/*----------------------------------------------------------------------------*/

int CGenericSortedListCtrl::CompareItems(CItemInfo *pItemInfo1, CItemInfo *pItemInfo2)
{
    CGenericItemInfo *pInfo1 = static_cast<CGenericItemInfo*>(pItemInfo1);
    CGenericItemInfo *pInfo2 = static_cast<CGenericItemInfo*>(pItemInfo2);
    int nResult;

    switch (GetSortedColumn()) 
    {
    case 0:
        nResult = pInfo1->GetColumn1().CompareNoCase(pInfo2->GetColumn1());
        break;

    case 1:
        nResult = pInfo1->GetColumn2().CompareNoCase(pInfo2->GetColumn2());
        break;
    
    default :
        nResult = 0;
        break;
    }
    return IsAscSorted() ? nResult : -nResult;
}


bool CGenericSortedListCtrl::SelectItem( const char* lookForInColumn1 )
{
    CString itemString;
    for( int i = 0; i < GetItemCount(); i++ )
    {
        if( lookForInColumn1 == GetItemText( i, 0 ) )
        {
            SetItemState( i, LVIS_SELECTED, LVIS_SELECTED );
            EnsureVisible( i, true );
            return true;
        }
    }

    SetItemState( 0, LVIS_SELECTED, LVIS_SELECTED );
    EnsureVisible( 0, true );

    return false;
}
