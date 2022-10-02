//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// rwrDlg.cpp : implementation file
//

#include "stdafx.h"
#include <radsoundtools.hpp>
#include "renamewavregions_gui.h"
#include "rwrDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// CRwrDlg dialog

CRwrDlg::CRwrDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CRwrDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CRwrDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CRwrDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CRwrDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CRwrDlg, CDialog)
	//{{AFX_MSG_MAP(CRwrDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
    ON_WM_DROPFILES()
	ON_BN_CLICKED(IDC_SOURCE_BUTTON, OnSourceButton)
	ON_BN_CLICKED(IDC_SCRIPT_BUTTON, OnScriptButton)
	ON_BN_CLICKED(IDC_GO, OnGo)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRwrDlg message handlers

BOOL CRwrDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

    DragAcceptFiles( );

    CString appName;
    appName.LoadString( IDS_APPNAME );

    SetWindowText( appName );

	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CRwrDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
    CDialog::OnSysCommand(nID, lParam);
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CRwrDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

HCURSOR CRwrDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CRwrDlg::TestDropTarget( UINT resource, CPoint & point, CString & text )
{
    CWnd * pWnd = GetDlgItem( resource );

    if ( pWnd )
    {
        CRect rect;
        pWnd->GetWindowRect( & rect );
        ScreenToClient( & rect );

        if ( rect.PtInRect( point ) )
        {
            pWnd->SetWindowText( text );
        }
    }

}

void CRwrDlg::OnDropFiles( HDROP hDropInfo )
{
    UINT numFiles = ::DragQueryFile( hDropInfo, 0xFFFFFFFF, NULL, 0 );
    
    if ( numFiles > 1 )
    {
		CString appName;
		appName.LoadString(IDS_APPNAME);

        MessageBox( "You can only drop one file at a time", appName, MB_OK );
    }
    else if ( numFiles == 1 )
    {
        CPoint point;
        DragQueryPoint( hDropInfo, & point );

        char buffer[ 256 ];
        DragQueryFile( hDropInfo, 0, buffer, 256 );

        // check which edit box this file was dropped in

        TestDropTarget( IDC_SOURCE, point, CString( buffer ) );
        TestDropTarget( IDC_SCRIPT, point, CString( buffer ) );
    }
}

void CRwrDlg::OnSourceButton() 
{
    HandleFindFile( IDC_SOURCE, "Wave Files|*.wav" );
	
}

void CRwrDlg::HandleFindFile( UINT resource, const char * pFilter )
{
    CWnd * pTarget = GetDlgItem( resource );
    
    if ( pTarget )
    {
        CString currentName;

        pTarget->GetWindowText( currentName );         

        CFileDialog openDlg( true,
            NULL, currentName , OFN_HIDEREADONLY,
            pFilter );

        if ( openDlg.DoModal( ) == IDOK )
        {
            pTarget->SetWindowText( openDlg.GetPathName( ) );
        }
    }
}

void CRwrDlg::OnScriptButton() 
{
    HandleFindFile( IDC_SCRIPT, "Text Files|*.txt" );	
}

void CRwrDlg::OnGo() 
{
    CString appName;
    appName.LoadString( IDS_APPNAME );

    if ( MessageBox( "Large files could take a while.  Start conversion?", appName, MB_OKCANCEL ) == IDOK )
    {

        CWnd * pSource = GetDlgItem( IDC_SOURCE );
        CWnd * pScript = GetDlgItem( IDC_SCRIPT );

        if ( pSource && pScript )
        {
            CString sourceName;
            CString scriptName;
            CString targetName;

            pSource->GetWindowText( sourceName );
            pScript->GetWindowText( scriptName );

            char drive[ 256 ];
            char directory[ 256 ];
            char filename[ 256 ];
            char ext[ 256 ];

            _splitpath( sourceName, drive, directory, filename, ext );
            strcat( filename, "_ren" );
            targetName.Format( "%s%s%s%s", drive, directory, filename, ext );

            if ( rstRenameWavMarkers( scriptName, sourceName, targetName ) )
            {
                MessageBox( "Operation completed OK", appName, MB_OK );
            }
            else
            {
                MessageBox( ::rstGetLastError( ), appName, MB_OK );
            }
        }
    }	
}
