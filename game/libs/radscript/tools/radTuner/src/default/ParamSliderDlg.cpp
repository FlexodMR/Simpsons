//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ParamSliderDlg.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "paramsliderdlg.h"
#include "ParamSliderTitleDlg.h"
#include "WorkSpaceDoc.h"
#include "MainFrm.h"
#include "EnterSliderValueDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CParamSliderDlg dialog


CParamSliderDlg::CParamSliderDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CParamSliderDlg::IDD, pParent)
{
	m_hMet = NULL;
    m_hObj = NULL;
    m_hDoc = NULL;

    
    // some kind of default value, so it doesn't crash program a lot
    m_fltMax = 1.0f;
    m_fltMin = 0.0f;
    m_fltStep = 0.1f;
    m_fltOrginalValue = 0.0f;
    
    //{{AFX_DATA_INIT(CParamSliderDlg)
	m_nSliderValue = 0;
	//}}AFX_DATA_INIT
}

void CParamSliderDlg::DoDataExchange(CDataExchange* pDX)
{

    CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CParamSliderDlg)
	DDX_Control(pDX, IDC_SLIDER_VALUE, m_sldSlider);
	DDX_Slider(pDX, IDC_SLIDER_VALUE, m_nSliderValue);
    DDX_Text(pDX, IDC_EDIT_VALUE, m_strValue );
    DDX_Text(pDX, IDC_EDIT_DESC, m_strTitle );
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CParamSliderDlg, CDialog)
	//{{AFX_MSG_MAP(CParamSliderDlg)
	ON_WM_CREATE()
	ON_WM_DESTROY()
	ON_WM_CLOSE()
	ON_NOTIFY(NM_CUSTOMDRAW, IDC_SLIDER_VALUE, OnCustomdrawSliderValue)
	ON_WM_CONTEXTMENU()
	ON_UPDATE_COMMAND_UI(ID_SLIDER_TITLETEXT, OnUpdateSliderTitletext)
	ON_COMMAND(ID_SLIDER_TITLETEXT, OnSliderTitletext)
	ON_COMMAND(ID_SLIDER_AUTOUPDATE, OnSliderAutoupdate)
	ON_UPDATE_COMMAND_UI(ID_SLIDER_AUTOUPDATE, OnUpdateSliderAutoupdate)
	ON_NOTIFY(NM_RELEASEDCAPTURE, IDC_SLIDER_VALUE, OnReleasedcaptureSliderValue)
	ON_WM_MOVE()
	ON_UPDATE_COMMAND_UI(ID_SLIDER_DESCRIPTION, OnUpdateSliderDescription)
	ON_COMMAND(ID_SLIDER_DESCRIPTION, OnSliderDescription)
	ON_BN_CLICKED(IDC_BUTTON_REVERT, OnButtonRevert)
	ON_COMMAND(ID_SLIDER_ENTERVALUEMANUALLY, OnSliderEntervaluemanually)
	ON_UPDATE_COMMAND_UI(ID_SLIDER_ENTERVALUEMANUALLY, OnUpdateSliderEntervaluemanually)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

void CParamSliderDlg::RCCCall( )
{
    CMainFrame * pFrame = (CMainFrame *)theApp.GetMainWnd( );
    ASSERT( pFrame );

    CWorkSpaceDoc * pDoc = pFrame->GetWorkSpaceDocPtr( );
    ASSERT( pDoc );

    if ( pDoc->GetAutoCallRCC( ) )
    {
        pFrame->CallRCC( m_pScriptParam->GetParentMethod( )->GetParentObject( ), m_pScriptParam->GetParentMethod( ) );
    }
}

/////////////////////////////////////////////////////////////////////////////
// CParamSliderDlg message handlers

int CParamSliderDlg::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    if (CDialog::OnCreate(lpCreateStruct) == -1)
		return -1;

    return 0;
}

BOOL CParamSliderDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();

    m_sldSlider.SetRange( 0, ( m_fltMax - m_fltMin ) / m_fltStep );

    m_fltOrginalValue = GetParamValue( );
    m_strValue.Format( "%f", GetParamValue( ) );
    m_strValue.TrimRight( "0" );

    UpdateData( FALSE );

    return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CParamSliderDlg::OnDestroy() 
{
    CDialog::OnDestroy();
}

BOOL CParamSliderDlg::DestroyWindow() 
{
	BOOL bRet = CDialog::DestroyWindow();
    if ( bRet )
    {
        ((CMainFrame*)theApp.GetMainWnd( ))->RemoveChildParamSliderWnd( this );
    }
    return bRet;
}

void CParamSliderDlg::OnClose() 
{
    m_pScriptParam->m_pParamWnd = NULL;

	CDialog::OnClose();
    DestroyWindow( );
}

void CParamSliderDlg::OnCustomdrawSliderValue(NMHDR* pNMHDR, LRESULT* pResult) 
{
    float fltOldValue = GetParamValue( );

    UpdateData( TRUE );

    m_strValue.Format( "%f", GetParamValue( ) );
    m_strValue.TrimRight( "0" );

    m_pScriptParam->Parse( m_strValue, m_pScriptParam->GetRTIParamPtr( ) );
    m_pTree2Update->SetItemText( m_hMet, m_pScriptParam->GetParentMethod( )->GetDisplayText( ) );
    m_pTree2Update->SetItemText( m_hObj, m_pScriptParam->GetParentMethod( )->GetParentObject( )->GetDisplayText( ) );
    m_pTree2Update->SetItemText( m_hDoc, m_pScriptParam->GetParentMethod( )->GetParentObject( )->GetParentDoc( )->GetFileTitle( ) );

    UpdateData( FALSE );

    // if not same value, call the parameter
    if ( fltOldValue != GetParamValue( ) )
    {
        RCCCall( );
    }

	*pResult = 0;
}

void CParamSliderDlg::OnReleasedcaptureSliderValue(NMHDR* pNMHDR, LRESULT* pResult) 
{
    float fltOldValue = GetParamValue( );

    UpdateData( TRUE );

    m_strValue.Format( "%f", GetParamValue( ) );
    m_strValue.TrimRight( "0" );

    m_pScriptParam->Parse( m_strValue, m_pScriptParam->GetRTIParamPtr( ) );
    m_pTree2Update->SetItemText( m_hMet, m_pScriptParam->GetParentMethod( )->GetDisplayText( ) );
    m_pTree2Update->SetItemText( m_hObj, m_pScriptParam->GetParentMethod( )->GetParentObject( )->GetDisplayText( ) );
    m_pTree2Update->SetItemText( m_hDoc, m_pScriptParam->GetParentMethod( )->GetParentObject( )->GetParentDoc( )->GetFileTitle( ) );

    UpdateData( FALSE );

    // if not same value, call the parameter
    if ( fltOldValue != GetParamValue( ) )
    {
        RCCCall( );
    }

	*pResult = 0;
}

void CParamSliderDlg::OnContextMenu(CWnd* pWnd, CPoint point) 
{
    CMenu * pMenu = CMenu::FromHandle( ::LoadMenu( theApp.m_hInstance, MAKEINTRESOURCE( IDR_MENU_PARAM_SLIDER ) ) );

    CMenu * pPopMenu = pMenu->GetSubMenu( 0 );
    pPopMenu->RemoveMenu( 0, MF_BYPOSITION );

    CString strDisplay;
    strDisplay.Format( "Object: [%s] Method: [%s] ", (const char*)m_pScriptParam->GetParentMethod( )->GetParentObject( )->GetName( ), (const char*)m_pScriptParam->GetParentMethod( )->GetName( ) );
    pPopMenu->InsertMenu( 0, MF_BYPOSITION | MF_STRING, ID_SLIDER_DESCRIPTION, strDisplay );

    CBCGPopupMenu * pPopupMenu = theApp.GetContextMenuManager( )->ShowPopupMenu( pPopMenu->m_hMenu, point.x, point.y, this, TRUE);

}

void CParamSliderDlg::OnUpdateSliderTitletext(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}

void CParamSliderDlg::OnSliderTitletext() 
{
    CParamSliderTitleDlg dlgTitle;
    dlgTitle.m_strTitleText = m_strTitle;

    if ( dlgTitle.DoModal( ) == IDOK )
    {
        m_strTitle = dlgTitle.m_strTitleText;
        UpdateData( FALSE );
    }
}

void CParamSliderDlg::OnSliderAutoupdate() 
{
    CWorkSpaceDoc * pDoc = ((CMainFrame *)theApp.GetMainWnd( ))->GetWorkSpaceDocPtr( );
    ASSERT( pDoc );
    pDoc->SetAutoCallRCC( ! pDoc->GetAutoCallRCC( ) );
}

void CParamSliderDlg::OnUpdateSliderAutoupdate(CCmdUI* pCmdUI) 
{
    CWorkSpaceDoc * pDoc = ((CMainFrame *)theApp.GetMainWnd( ))->GetWorkSpaceDocPtr( );
    ASSERT( pDoc );
    pCmdUI->Enable( TRUE );
    pCmdUI->SetCheck( pDoc->GetAutoCallRCC( ) );
}


CParamSliderDlg * CParamSliderDlg::CreateFromFile( CWorkSpaceDoc * pWorkSpace, const CString & strDocName, const CString & strObjName, const CString & strMetName, const long nMetIdx, const int nParamIndex,
                CFileTreeCtrl * pTree2Update, CString & strTitle, int nXPos, int nYPos, CWnd * pParent )
{
    ASSERT( pTree2Update );
    ASSERT( pWorkSpace );

    CScriptParam * pParam = pWorkSpace->FindScriptParamByName( strDocName, strObjName, strMetName, nMetIdx, nParamIndex );

    if ( pParam == NULL )
    {
        return NULL;
    }

    HTREEITEM hDoc = pTree2Update->FindItemDocByName( strDocName );
    HTREEITEM hObj = pTree2Update->FindItemObjectByName( hDoc, strObjName );
    HTREEITEM hMet = pTree2Update->FindItemMethodByName( hObj, strMetName, nMetIdx );

    pParam->SpawnWindow( pTree2Update, hMet, hObj, hDoc );

    ASSERT( pParam->GetParamWnd( ) && pParam->GetParamWnd( )->GetSafeHwnd( ) );
    CRect rect;
    pParam->GetParamWnd( )->GetWindowRect( & rect );

    
    ((CParamSliderDlg *)pParam->GetParamWnd( ))->SetTitleText( strTitle );
    
    CPoint ptWnd(nXPos, nYPos);

    pParam->GetParamWnd( )->MoveWindow( ptWnd.x, ptWnd.y, rect.Width( ), rect.Height( ) );

    return (CParamSliderDlg*)(pParam->GetParamWnd( ));
}


void CParamSliderDlg::OnMove(int x, int y) 
{
    CDialog::OnMove(x, y);

    CRect rectWnd;

    GetWindowRect( & rectWnd );
    GetParent( )->ScreenToClient( rectWnd );

    x = (int)((float)rectWnd.left / 50.0f) * 50;
    y = (int)((float)rectWnd.top / 50.0f) * 50;

    MoveWindow( x, y, rectWnd.Width( ), rectWnd.Height( ) );
}


void CParamSliderDlg::OnUpdateSliderDescription(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}

void CParamSliderDlg::OnSliderDescription() 
{
    // leave this empty
}

void CParamSliderDlg::OnButtonRevert() 
{
    SetParamValue(m_fltOrginalValue);

    m_strValue.Format( "%f", GetParamValue( ) );
    m_strValue.TrimRight( "0" );

    m_pScriptParam->Parse( m_strValue, m_pScriptParam->GetRTIParamPtr( ) );
    m_pTree2Update->SetItemText( m_hMet, m_pScriptParam->GetParentMethod( )->GetDisplayText( ) );
    m_pTree2Update->SetItemText( m_hObj, m_pScriptParam->GetParentMethod( )->GetParentObject( )->GetDisplayText( ) );
    m_pTree2Update->SetItemText( m_hDoc, m_pScriptParam->GetParentMethod( )->GetParentObject( )->GetParentDoc( )->GetFileTitle( ) );

    UpdateData( FALSE );

    RCCCall( );
}

void CParamSliderDlg::OnSliderEntervaluemanually() 
{
    CEnterSliderValueDlg dlgEnterValue;
    if ( dlgEnterValue.DoModal() == IDOK )
    {
        SetParamValue( atof( dlgEnterValue.GetValueInText() ) );
        m_strValue.Format( "%f", GetParamValue( ) );
        m_strValue.TrimRight( "0" );

        m_pScriptParam->Parse( m_strValue, m_pScriptParam->GetRTIParamPtr( ) );
        m_pTree2Update->SetItemText( m_hMet, m_pScriptParam->GetParentMethod( )->GetDisplayText( ) );
        m_pTree2Update->SetItemText( m_hObj, m_pScriptParam->GetParentMethod( )->GetParentObject( )->GetDisplayText( ) );
        m_pTree2Update->SetItemText( m_hDoc, m_pScriptParam->GetParentMethod( )->GetParentObject( )->GetParentDoc( )->GetFileTitle( ) );

        UpdateData( FALSE );

        RCCCall( );
    }
}

void CParamSliderDlg::OnUpdateSliderEntervaluemanually(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}
