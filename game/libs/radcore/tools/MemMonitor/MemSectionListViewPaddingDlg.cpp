//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemSectionListViewPaddingDlg.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemSectionListViewPaddingDlg.h"

/////////////////////////////////////////////////////////////////////////////
// CMemSectionListViewPaddingDlg dialog


CMemSectionListViewPaddingDlg::CMemSectionListViewPaddingDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CMemSectionListViewPaddingDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CMemSectionListViewPaddingDlg)
	m_nPadding = 0;
	//}}AFX_DATA_INIT
}


void CMemSectionListViewPaddingDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CMemSectionListViewPaddingDlg)
	DDX_Text(pDX, IDC_EDIT_PADDING, m_nPadding);
	DDV_MinMaxInt(pDX, m_nPadding, 0, 2147483647);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CMemSectionListViewPaddingDlg, CDialog)
	//{{AFX_MSG_MAP(CMemSectionListViewPaddingDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMemSectionListViewPaddingDlg message handlers

void CMemSectionListViewPaddingDlg::OnOK() 
{
    if ( ! UpdateData( TRUE ) )
    {
        return;
    }

	CDialog::OnOK();
}
