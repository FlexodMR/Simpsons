//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ConfigColourPpg.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "ConfigColourPpg.h"

/////////////////////////////////////////////////////////////////////////////
// CConfigColourPpg property page

IMPLEMENT_DYNCREATE(CConfigColourPpg, CPropertyPageEx)

CConfigColourPpg::CConfigColourPpg() :
    CPropertyPageEx(CConfigColourPpg::IDD)
{
    CRuntimeClass * pClass = this->GetRuntimeClass( );
	//{{AFX_DATA_INIT(CConfigColourPpg)
	m_strRGBValue = _T("");
	m_strGroupID = _T("");
	//}}AFX_DATA_INIT
}

CConfigColourPpg::~CConfigColourPpg()
{
}

BOOL CConfigColourPpg::OnSetActive()
{
   CPropertySheetEx* psheet = ( CPropertySheetEx* ) GetParent( );   
   psheet->SetWizardButtons( PSWIZB_BACK | PSWIZB_FINISH );

   return CPropertyPageEx::OnSetActive();
}

void CConfigColourPpg::DoDataExchange(CDataExchange* pDX)
{
	CPropertyPageEx::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CConfigColourPpg)
	DDX_Control(pDX, IDC_EDIT_GROUP_ID, m_edtGroupID);
	DDX_Control(pDX, IDC_LIST_COLOUR_LIST, m_lbxColourList);
	DDX_Control(pDX, IDC_COLOR_PICKER, m_butColourPicker);
	DDX_Text(pDX, IDC_STATIC_RGB, m_strRGBValue);
	DDX_Text(pDX, IDC_EDIT_GROUP_ID, m_strGroupID);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CConfigColourPpg, CPropertyPageEx)
	ON_NOTIFY( NM_CUSTOMDRAW, IDC_LIST_COLOUR_LIST, OnCustomDraw )
	//{{AFX_MSG_MAP(CConfigColourPpg)
	ON_BN_CLICKED(IDC_COLOR_PICKER, OnColorPicker)
	ON_BN_CLICKED(IDC_BUTTON_DEL, OnButtonDel)
	ON_BN_CLICKED(IDC_BUTTON_ADD, OnButtonAdd)
	ON_NOTIFY(NM_CLICK, IDC_LIST_COLOUR_LIST, OnClickListColourList)
	ON_NOTIFY(LVN_GETDISPINFO, IDC_LIST_COLOUR_LIST, OnGetdispinfoListColourList)
	ON_NOTIFY(LVN_COLUMNCLICK, IDC_LIST_COLOUR_LIST, OnColumnclickListColourList)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

static int CALLBACK CompareCallBack(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort)
{
    ASSERT( lParam1 != 0 && lParam2 != 0 );
    CString * pGroupID1 = (CString *)lParam1;
    CString * pGroupID2 = (CString *)lParam2;

    switch( lParamSort )
    {
        case 0: // GroupID
        {
            if ( (*pGroupID1) > (*pGroupID2) )
            {
                return 1;
            }
            else if ( (*pGroupID1) < (*pGroupID2) )
            {
                return -1;
            }
            else
            {
                return 0;
            }
        }
        break;

        case 1: // COLOUR
        {
            return 0;
        }
        break;

        default:
        {
            ASSERT( false );
        }
        break;
    }
    return 0;
}

void CConfigColourPpg::PopulateColourTable( )
{
    m_lbxColourList.DeleteAllItems( );

    CMemConfiguration::MemColourTable::const_iterator i;

    for ( i = m_aryColourTable.begin( ); i != m_aryColourTable.end( ); i++ )
    {
        LVITEM item; ZeroMemory( &item, sizeof( item ) );

        item.mask = LVIF_PARAM | LVIF_TEXT;
        item.iItem = m_lbxColourList.GetItemCount( );
        item.iSubItem = 0;
        item.iImage = 0;
        item.pszText = LPSTR_TEXTCALLBACK;
        item.cchTextMax = 128;
        item.lParam = reinterpret_cast< LPARAM >( &(i->first) );
 
        int nItemIndex = m_lbxColourList.InsertItem( & item );
        ASSERT( nItemIndex != -1 );
    }
}


/////////////////////////////////////////////////////////////////////////////
// CConfigColourPpg message handlers

BOOL CConfigColourPpg::OnInitDialog() 
{
	CPropertyPageEx::OnInitDialog();

	m_butColourPicker.EnableOtherButton (_T("Other"));
	m_butColourPicker.SetColor( RGB(128, 128, 128) );
	m_butColourPicker.SetColumnsNumber (10);
    OnColorPicker( );

    ListView_SetExtendedListViewStyle( m_lbxColourList.GetSafeHwnd( ), LVS_EX_FULLROWSELECT | LVS_EX_HEADERDRAGDROP | WS_EX_CLIENTEDGE );

    m_lbxColourList.InsertColumn( 1, "Group ID", LVCFMT_LEFT, 100 );
    m_lbxColourList.InsertColumn( 2, "Colour", LVCFMT_LEFT, 85 );
    
    m_lbxColourList.SortItems( CompareCallBack, 0 );
    PopulateColourTable( );
    return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}


void CConfigColourPpg::Initialize( const CMemConfiguration * pConfig )
{
    m_aryColourTable = pConfig->GetGroupIDColourLookupTable( );
}

void CConfigColourPpg::OnColorPicker() 
{
    UpdateData( TRUE );
    COLORREF color = m_butColourPicker.GetColor( );

	m_strRGBValue.Format( _T( "%d,%d,%d" ), GetRValue( color ), GetGValue( color ), GetBValue( color ) );
	UpdateData( FALSE );
}

void CConfigColourPpg::OnButtonDel() 
{
    int nIndex = m_lbxColourList.GetSelectionMark( );

    if ( nIndex >= 0 )
    {
        CString * pGroupID = reinterpret_cast< CString * >( m_lbxColourList.GetItemData( nIndex ) );

        m_lbxColourList.DeleteItem( nIndex );
        m_aryColourTable.erase( *pGroupID );
        SetModified( TRUE );
    }
}

void CConfigColourPpg::OnButtonAdd() 
{
    if ( UpdateData( TRUE ) )
    {
        CMemConfiguration::MemColourTable::iterator found = m_aryColourTable.find( m_strGroupID );

        // if no duplicate found, enter new data
        if ( found == m_aryColourTable.end( ) )
        {
            pair< CMemConfiguration::MemColourTable::iterator, bool > pInserted = m_aryColourTable.insert( pair< CString, COLORREF >( m_strGroupID, m_butColourPicker.GetColor( ) ) );

            if ( pInserted.second == true )
            {
                LVITEM item; ZeroMemory( &item, sizeof( item ) );

                item.mask = LVIF_PARAM | LVIF_TEXT;
                item.iItem = m_lbxColourList.GetItemCount( );
                item.iSubItem = 0;
                item.iImage = 0;
                item.pszText = LPSTR_TEXTCALLBACK;
                item.cchTextMax = 128;
                item.lParam = reinterpret_cast< LPARAM >( &( pInserted.first->first ) );

                int nItemIndex = m_lbxColourList.InsertItem( & item );
                ASSERT( nItemIndex != -1 );
            }
            else
            {
                ASSERT( false );
            }
        }
        else
        {
            found->second = m_butColourPicker.GetColor( );

            m_lbxColourList.Invalidate( );
        }
        SetModified( TRUE );
    }

}

void CConfigColourPpg::OnClickListColourList(NMHDR* pNMHDR, LRESULT* pResult) 
{
    int nIndex = m_lbxColourList.GetSelectionMark( );

    if ( nIndex >= 0 )
    {
        m_strGroupID = *( reinterpret_cast< CString * >( ( m_lbxColourList.GetItemData( nIndex ) ) ) );
        COLORREF colour = m_aryColourTable.find( m_strGroupID )->second;
        m_butColourPicker.SetColor( colour );

        m_strRGBValue.Format( _T( "%3d,%3d,%3d" ), GetRValue( colour ), GetGValue( colour ), GetBValue( colour ) );
        UpdateData( FALSE );
    }
	*pResult = 0;
}

void CConfigColourPpg::OnCustomDraw( NMHDR * pNMHDR, LRESULT * pResult )
{
    NMLVCUSTOMDRAW * pLVCD = reinterpret_cast< NMLVCUSTOMDRAW * >( pNMHDR );

    // Take the default processing unless we set this to something else below.
    * pResult = CDRF_DODEFAULT;

    if ( CDDS_PREPAINT == pLVCD->nmcd.dwDrawStage )
    {
        *pResult = CDRF_NOTIFYITEMDRAW;
    }
    else if ( CDDS_ITEMPREPAINT == pLVCD->nmcd.dwDrawStage )
    {
        // Prepaint stage for an item, set text color and return value will tell
        // windows to draw the item itself, but it will use the new color we set
        // here.
        CMemConfiguration::MemColourTable::const_iterator i = m_aryColourTable.find( *(CString*)(pLVCD->nmcd.lItemlParam) );
        if ( i != m_aryColourTable.end( ) )
        {
            pLVCD->clrText = i->second;
        }
        else
        {
            pLVCD->clrText = 0;
        }

        *pResult = CDRF_DODEFAULT;
    }
}

void CConfigColourPpg::OnGetdispinfoListColourList(NMHDR* pNMHDR, LRESULT* pResult) 
{
	LV_DISPINFO* pDispInfo = (LV_DISPINFO*)pNMHDR;

    if ( pDispInfo->item.mask & LVIF_TEXT )
    {
        char szNum[ 128 ] = { 0 };
        ASSERT( pDispInfo->item.lParam != 0 );
        CString * pGroupID = reinterpret_cast< CString * >( pDispInfo->item.lParam );

        switch( pDispInfo->item.iSubItem )
        {
            case 0: // group ID
            {
                lstrcpy( pDispInfo->item.pszText, *pGroupID );
            }
            break;

            case 1: // colour
            {
                CMemConfiguration::MemColourTable::const_iterator i = m_aryColourTable.find( *pGroupID );
                if ( i != m_aryColourTable.end( ) )
                {
                    COLORREF color = i->second;
                    sprintf( szNum, "[%03d, %03d, %03d]", GetRValue( color ), GetGValue( color ), GetBValue( color ) );
                    ::lstrcpy( pDispInfo->item.pszText, szNum );
                }
                else
                {
                    ::lstrcpy( pDispInfo->item.pszText, "Error: cannot find color" );
                }
            }
            break;

            default:
            {
                ASSERT( false );
            }
            break;

        }
    }
    
	*pResult = 0;
}

void CConfigColourPpg::OnColumnclickListColourList(NMHDR* pNMHDR, LRESULT* pResult) 
{
	NM_LISTVIEW* pNMListView = (NM_LISTVIEW*)pNMHDR;

    m_lbxColourList.SortItems( CompareCallBack, pNMListView->iSubItem );
	
	*pResult = 0;
}

BOOL CConfigColourPpg::OnApply() 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );

    pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->SetGroupIDColourLookupTable( m_aryColourTable );

	return CPropertyPageEx::OnApply();
}

void CConfigColourPpg::OnOK() 
{
	CPropertyPageEx::OnOK();
}
