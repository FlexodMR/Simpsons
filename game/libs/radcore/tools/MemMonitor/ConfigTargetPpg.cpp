//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ConfigTargetPpg.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "ConfigTargetPpg.h"

/////////////////////////////////////////////////////////////////////////////
// CConfigTargetPpg property page

IMPLEMENT_DYNCREATE(CConfigTargetPpg, CPropertyPageEx)

CConfigTargetPpg::CConfigTargetPpg() : CPropertyPageEx(CConfigTargetPpg::IDD)
{
	//{{AFX_DATA_INIT(CConfigTargetPpg)
	m_strTargetName = _T("");
	m_strTargetIPName = _T("");
	m_nPort = radDbgComDefaultPort;
	//}}AFX_DATA_INIT
}

CConfigTargetPpg::~CConfigTargetPpg()
{
}

BOOL CConfigTargetPpg::OnSetActive()
{
   CPropertySheetEx* psheet = ( CPropertySheetEx* ) GetParent( );   
   psheet->SetWizardButtons( PSWIZB_BACK | PSWIZB_NEXT );

   return CPropertyPageEx::OnSetActive();
}

void CConfigTargetPpg::DoDataExchange(CDataExchange* pDX)
{
	CPropertyPageEx::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CConfigTargetPpg)
	DDX_Control(pDX, IDC_LIST_TARGET_LIST, m_lbxTargetList);
	DDX_Control(pDX, IDC_EDIT_TARGET_IP_NAME, m_edtTargetIPName);
	DDX_Control(pDX, IDC_CHECK_IP_NAME, m_chkIPName);
	DDX_Control(pDX, IDC_CHECK_IP_ADDR, m_chkIPAddr);
	DDX_Control(pDX, IDC_BUTTON_SET_AS_DEFAULT, m_butSetAsDefault);
	DDX_Control(pDX, IDC_IPADDRESS_TARGET_IP, m_ipTargetAddr);
	DDX_Control(pDX, IDC_BUTTON_REMOVE, m_butRemove);
	DDX_Control(pDX, IDC_BUTTON_ADD, m_butAdd);
	DDX_Text(pDX, IDC_EDIT_TARGET_NAME, m_strTargetName);
	DDX_Text(pDX, IDC_EDIT_TARGET_IP_NAME, m_strTargetIPName);
	DDX_Text(pDX, IDC_EDIT_PORT, m_nPort);
	DDV_MinMaxInt(pDX, m_nPort, 0, 32767);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CConfigTargetPpg, CPropertyPageEx)
	//{{AFX_MSG_MAP(CConfigTargetPpg)
	ON_BN_CLICKED(IDC_BUTTON_REMOVE, OnButtonRemove)
	ON_BN_CLICKED(IDC_BUTTON_ADD, OnButtonAdd)
	ON_BN_CLICKED(IDC_BUTTON_SET_AS_DEFAULT, OnButtonSetAsDefault)
	ON_BN_CLICKED(IDC_CHECK_IP_ADDR, OnCheckIpAddr)
	ON_BN_CLICKED(IDC_CHECK_IP_NAME, OnCheckIpName)
	ON_NOTIFY(LVN_GETDISPINFO, IDC_LIST_TARGET_LIST, OnGetdispinfoListTargetList)
	ON_NOTIFY(NM_CLICK, IDC_LIST_TARGET_LIST, OnClickListTargetList)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


void CConfigTargetPpg::PopulateTargetList( )
{
    ASSERT( m_pDbgComTargetTable != NULL );

    m_aryTargetList.clear( );
    m_pDbgComTargetTable->EnumerateTargets( this, OnEnumerateTarget );

    m_lbxTargetList.DeleteAllItems( );

    for ( unsigned int i = 0; i < m_aryTargetList.size( ); i ++ )
    {
        LVITEM item; ZeroMemory( &item, sizeof( item ) );

        item.mask = LVIF_PARAM | LVIF_TEXT;
        item.iItem = m_lbxTargetList.GetItemCount( );
        item.iSubItem = 0;
        item.iImage = 0;
        item.pszText = LPSTR_TEXTCALLBACK;
        item.cchTextMax = 128;
        item.lParam = reinterpret_cast< LPARAM >( & m_aryTargetList[ i ] );
 
        int nItemIndex = m_lbxTargetList.InsertItem( & item );
        ASSERT( nItemIndex != -1 );
    }
}

static bool IsStringAllDigit( const CString & str )
{
    for ( int i = 0; i < str.GetLength( ); i ++ )
    {
        if ( str.GetAt( i ) < '0' && str.GetAt( i ) > '9' )
        {
            return false;
        }
    }
    return true;
}

static bool IsStringIPAddress( const CString & strIP )
{
    int nF1End = strIP.Find( '.', 0 );
    if ( nF1End == -1 )
    {
        return false;
    }
    CString strF1 = strIP.Mid( 0, nF1End );

    int nF2End = strIP.Find( '.', nF1End + 1 );
    if ( nF2End == -1 )
    {
        return false;
    }
    CString strF2 = strIP.Mid( nF1End + 1, nF2End - nF1End - 1 );

    int nF3End = strIP.Find( '.', nF2End + 1 );
    if ( nF3End == -1 )
    {
        return false;
    }
    CString strF3 = strIP.Mid( nF2End + 1, nF3End - nF2End - 1  );

    CString strF4 = strIP.Mid( nF3End + 1, strIP.GetLength( ) - nF3End - 1 );

    if ( ( IsStringAllDigit( strF1 ) && atoi( strF1 ) < 256 ) && 
         ( IsStringAllDigit( strF2 ) && atoi( strF2 ) < 256 ) &&
         ( IsStringAllDigit( strF3 ) && atoi( strF3 ) < 256 ) &&
         ( IsStringAllDigit( strF4 ) && atoi( strF4 ) < 256 ) )
    {
        return true;
    }

    return false;
}

static unsigned int ReadIPFromString( const CString & strIP )
{
    int nF1End = strIP.Find( '.', 0 );
    if ( nF1End == -1 )
    {
        ASSERT( false );
    }
    CString strF1 = strIP.Mid( 0, nF1End );

    int nF2End = strIP.Find( '.', nF1End + 1 );
    if ( nF2End == -1 )
    {
        ASSERT( false );
    }
    CString strF2 = strIP.Mid( nF1End + 1, nF2End - nF1End - 1 );

    int nF3End = strIP.Find( '.', nF2End + 1 );
    if ( nF3End == -1 )
    {
        ASSERT( false );
    }
    CString strF3 = strIP.Mid( nF2End + 1, nF3End - nF2End - 1  );

    CString strF4 = strIP.Mid( nF3End + 1, strIP.GetLength( ) - nF3End - 1 );

    unsigned int ip = 0;
    if ( ( IsStringAllDigit( strF1 ) && atoi( strF1 ) < 256 ) && 
         ( IsStringAllDigit( strF2 ) && atoi( strF2 ) < 256 ) &&
         ( IsStringAllDigit( strF3 ) && atoi( strF3 ) < 256 ) &&
         ( IsStringAllDigit( strF4 ) && atoi( strF4 ) < 256 ) )
    {
        ip = ( atoi( strF1 ) << 24 ) + ( atoi( strF2 ) << 16 ) + ( atoi( strF3 ) << 8 ) + atoi( strF4 );
    }
    return ip;
}

void CConfigTargetPpg::PopulateTargetEditor( )
{
    int nIndex = m_lbxTargetList.GetSelectionMark( );
    
    if ( nIndex != - 1 )
    {
        _Target target = m_aryTargetList[ nIndex ];
        
        m_strTargetName = target.strName;

        if ( IsStringIPAddress( target.strTargetIP ) )
        {
            m_ipTargetAddr.SetAddress( ReadIPFromString( target.strTargetIP ) );
            UseIPControl( true );
        }
        else
        {
            UseIPControl( false );
        }
        m_strTargetIPName = target.strTargetIP;
        m_nPort = target.nPort;
        UpdateData( FALSE );
    }
}

void CConfigTargetPpg::RemoveSelectedTarget( )
{
    int nIndex = m_lbxTargetList.GetSelectionMark( );

    if ( nIndex != -1 )
    {
        _Target target = m_aryTargetList[ nIndex ];

        radDbgComTargetName name;
        strcpy( name, target.strName );
        m_pDbgComTargetTable->DeleteTargetDefinition( name );
        PopulateTargetList( );
        m_ipTargetAddr.ClearAddress( );
        m_strTargetIPName = "";
        m_strTargetName = "";
        m_nPort = radDbgComDefaultPort;
        UpdateData( FALSE );
    }
}

void CConfigTargetPpg::AddNewTarget( )
{
    if ( UpdateData( TRUE ) )
    {
        if ( m_strTargetName.IsEmpty( ) ||
             ( m_chkIPAddr.GetCheck( ) == 1 && m_ipTargetAddr.IsBlank( ) ) || 
             ( m_chkIPName.GetCheck( ) == 1 && m_strTargetIPName.IsEmpty( ) ) )
        {
            ::AfxMessageBox( "Missing input." );
        }
        else
        {
            radDbgComTargetName szName;
            radDbgComIPAddress szIPAddr;

            strcpy( szName, m_strTargetName );
            
            CString strIP;

            if ( m_chkIPAddr.GetCheck( ) == 1 )
            {
                BYTE field0, field1, field2, field3;
                m_ipTargetAddr.GetAddress( field0, field1, field2, field3 );
                strIP.Format( "%d.%d.%d.%d", field0, field1, field2, field3 );
                strcpy( szIPAddr, strIP );
            }
            else
            {
                strcpy( szIPAddr, m_strTargetIPName );
            }

            m_pDbgComTargetTable->AddTargetDefinition( szName, szIPAddr, m_nPort );
            PopulateTargetList( );
            m_ipTargetAddr.ClearAddress( );
            m_strTargetIPName = "";
            m_strTargetName = "";
            m_nPort = radDbgComDefaultPort;
            UpdateData( FALSE );
        }
    }
}

void CConfigTargetPpg::SetSelectedTargetAsDefault( )
{
    radDbgComTargetName szTarget;

    int nIndex = m_lbxTargetList.GetSelectionMark( );

    if ( nIndex != -1 )
    {
        strcpy( szTarget, m_aryTargetList[ nIndex ].strName );
        m_pDbgComTargetTable->SetDefaultTarget( szTarget );
        PopulateTargetList( );
    }
}

void CConfigTargetPpg::OnEnumerateTarget( void* context, const radDbgComTargetName pName, const radDbgComIPAddress pIpAddress, unsigned short port, bool InUse )
{
    CConfigTargetPpg * pThisPtr = reinterpret_cast< CConfigTargetPpg * >( context );

    _Target target;

    target.strName = pName;
    target.strTargetIP = pIpAddress;
    target.nPort = port;

    pThisPtr->m_aryTargetList.push_back( target );
}


/////////////////////////////////////////////////////////////////////////////
// CConfigTargetPpg message handlers

BOOL CConfigTargetPpg::OnInitDialog() 
{
	CPropertyPageEx::OnInitDialog();
    
	//m_lbxTargetList.ModifyStyle( LVS_EDITLABELS, LVS_REPORT | LVS_SINGLESEL | LVS_SHOWSELALWAYS | LVS_SORTASCENDING );
    ListView_SetExtendedListViewStyle( m_lbxTargetList.GetSafeHwnd( ), LVS_EX_FULLROWSELECT | LVS_EX_HEADERDRAGDROP | WS_EX_CLIENTEDGE );

    m_lbxTargetList.InsertColumn( 1, "D", LVCFMT_CENTER, 20 );
    m_lbxTargetList.InsertColumn( 2, "Name", LVCFMT_CENTER, 50 );
    m_lbxTargetList.InsertColumn( 3, "IP/Target", LVCFMT_CENTER, 60 );
    m_lbxTargetList.InsertColumn( 4, "Port", LVCFMT_CENTER, 40 );

    PopulateTargetList( );

    m_chkIPAddr.SetCheck( 1 );
    m_chkIPName.SetCheck( 0 );
    m_lbxTargetList.EnableWindow( TRUE );
    m_edtTargetIPName.EnableWindow( FALSE );

	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}


void CConfigTargetPpg::OnButtonRemove() 
{
    RemoveSelectedTarget( );
}

void CConfigTargetPpg::OnButtonAdd() 
{
    AddNewTarget( );
}

void CConfigTargetPpg::OnButtonSetAsDefault() 
{
    SetSelectedTargetAsDefault( );
}

void CConfigTargetPpg::OnCheckIpAddr() 
{
    if ( m_chkIPAddr.GetCheck( ) == 0 )
    {
        UseIPControl( false );
    }
    else
    {
        UseIPControl( true );
    }
}

void CConfigTargetPpg::OnCheckIpName() 
{
    if ( m_chkIPName.GetCheck( ) == 0 )
    {
        UseIPControl( true );
    }
    else
    {
        UseIPControl( false );
    }
}

void CConfigTargetPpg::UseIPControl( bool bUseIt )
{
    if ( bUseIt == true )
    {
        m_chkIPAddr.SetCheck( 1 );
        m_chkIPName.SetCheck( 0 );
        m_ipTargetAddr.EnableWindow( TRUE );
        m_edtTargetIPName.EnableWindow( FALSE );
    }
    else
    {
        m_chkIPAddr.SetCheck( 0 );
        m_chkIPName.SetCheck( 1 );
        m_ipTargetAddr.EnableWindow( FALSE );
        m_edtTargetIPName.EnableWindow( TRUE );
    }
}

void CConfigTargetPpg::OnGetdispinfoListTargetList(NMHDR* pNMHDR, LRESULT* pResult) 
{
	LV_DISPINFO* pDispInfo = (LV_DISPINFO*)pNMHDR;

    CString strText;

    if ( pDispInfo->item.mask & LVIF_TEXT )
    {
        ASSERT( m_pDbgComTargetTable != NULL );
        _Target * pTarget = reinterpret_cast< _Target * >( pDispInfo->item.lParam );

        radDbgComTargetName szDefaultName = { 0 };
        m_pDbgComTargetTable->GetDefaultTarget( szDefaultName );

        switch( pDispInfo->item.iSubItem )
        {
            case 0: // status
            {
                if ( strcmp( szDefaultName, pTarget->strName ) == 0 )
                {
                    ::lstrcpy( pDispInfo->item.pszText, "*" );
                }
            }
            break;

            case 1: // name
            {
                ::lstrcpy( pDispInfo->item.pszText, pTarget->strName );
            }
            break;

            case 2: // IP/Target
            {
                ::lstrcpy( pDispInfo->item.pszText, pTarget->strTargetIP );
            }
            break;

            case 3: // port
            {
                CString strPort;
                strPort.Format( "%d", pTarget->nPort );
                ::lstrcpy( pDispInfo->item.pszText, strPort );
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


void CConfigTargetPpg::OnClickListTargetList(NMHDR* pNMHDR, LRESULT* pResult) 
{
    PopulateTargetEditor( );	
	*pResult = 0;
}
