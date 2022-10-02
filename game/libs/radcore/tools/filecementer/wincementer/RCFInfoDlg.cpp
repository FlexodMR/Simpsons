//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// RCFInfoDlg.cpp : implementation file
//

#include "stdafx.h"
#include "wincementer.h"
#include "RCFInfoDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CRCFInfoDlg dialog


CRCFInfoDlg::CRCFInfoDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CRCFInfoDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CRCFInfoDlg)
	//}}AFX_DATA_INIT
}


void CRCFInfoDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CRCFInfoDlg)
	DDX_Control(pDX, IDC_RCF_INFOTEXT, m_InfoText);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CRCFInfoDlg, CDialog)
	//{{AFX_MSG_MAP(CRCFInfoDlg)
	ON_WM_DESTROY()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRCFInfoDlg message handlers

//
// Set the info text
//
void CRCFInfoDlg::SetInfoText
(
    const char* pText,
    unsigned int maxsize
)
{
    strncpy( m_InfoTextBuf, pText, maxsize );
}


BOOL CRCFInfoDlg::OnInitDialog() 
{
    // Used to create the CFont.
    LOGFONT lf;
    
    // Call default ::OnInitDialog
    CDialog::OnInitDialog();
    
    // Clear out structure.
    memset(&lf, 0, sizeof(LOGFONT));
    // Request a 20-pixel-high font
    lf.lfHeight = 20;
    // With face name "Courier New".
    strcpy(lf.lfFaceName, "Courier New");
    // Create the font.
    m_font.CreateFontIndirect( &lf );
    
    // Use the font to paint a control. This code assumes
    // a control named IDC_RCF_INFOTEXT in the dialog box.
    GetDlgItem( IDC_RCF_INFOTEXT )->SetFont( &m_font );
    
    // Write the info text
    m_InfoText.SetWindowText( m_InfoTextBuf );
    
    return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CRCFInfoDlg::OnDestroy() 
{
	CDialog::OnDestroy();
	
    //char buf[ 256 ];
	//m_InfoText.GetWindowText( buf, 255 );
}
