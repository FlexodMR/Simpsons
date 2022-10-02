//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        Exceptions.CPP
//
// Subsystem:   Radical File Server
//
// Description:	This file dialog for handling file excpetions.
//
// Revisions:	V1.00	Feb 3, 2000	    Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "stdafx.h"
#include "FileServer.h"
#include "ExceptDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// Implementation
//=============================================================================

CExceptDlg::CExceptDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CExceptDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CExceptDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CExceptDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CExceptDlg)
	DDX_Control(pDX, IDC_EDIT1, m_FileSpec);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CExceptDlg, CDialog)
	//{{AFX_MSG_MAP(CExceptDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

void CExceptDlg::OnOK() 
{
   m_FileSpec.GetWindowText( m_Spec );    
   CDialog::OnOK();
}
