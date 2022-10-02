//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemSectionCreateProgressDlg.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemSectionCreateProgressDlg.h"

/////////////////////////////////////////////////////////////////////////////
// CMemSectionCreateProgressDlg dialog


CMemSectionCreateProgressDlg::CMemSectionCreateProgressDlg( )
	: CDialog(CMemSectionCreateProgressDlg::IDD, NULL)
{
	//{{AFX_DATA_INIT(CMemSectionCreateProgressDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CMemSectionCreateProgressDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CMemSectionCreateProgressDlg)
	DDX_Control(pDX, IDC_PROGRESS_LOAD, m_prgLoading);
	//}}AFX_DATA_MAP
}

void CMemSectionCreateProgressDlg::SetProgress( float fPercentDone )
{
    m_prgLoading.SetPos( (int)(fPercentDone * 100.0f) );
}

void CMemSectionCreateProgressDlg::Initialize( )
{
    if ( GetSafeHwnd( ) == NULL )
    {
        if ( ! Create( CMemSectionCreateProgressDlg::IDD ) )
        {
            ASSERT( false );
        }
    }

    ShowWindow( SW_HIDE );
    
    CRect rectMainFrame;
    ::AfxGetApp( )->GetMainWnd( )->GetWindowRect( & rectMainFrame );
    CRect rectProgress;
    GetWindowRect( & rectProgress );
    
    rectProgress.OffsetRect( rectMainFrame.Width( ) / 2 - rectProgress.Width( ) / 2, rectMainFrame.Height( ) / 2 - rectProgress.Height( ) / 2 );

    MoveWindow( rectProgress );

    // progress 0 to 100, 101 steps
    m_prgLoading.SetRange( 0, 100 );
    m_prgLoading.SetPos( 0 );
}

BEGIN_MESSAGE_MAP(CMemSectionCreateProgressDlg, CDialog)
	//{{AFX_MSG_MAP(CMemSectionCreateProgressDlg)
	ON_WM_TIMER()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMemSectionCreateProgressDlg message handlers

BOOL CMemSectionCreateProgressDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();

    return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CMemSectionCreateProgressDlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
	
	CDialog::OnTimer(nIDEvent);
}
