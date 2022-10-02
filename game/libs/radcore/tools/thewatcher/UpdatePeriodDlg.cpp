//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// UpdatePeriodDlg.cpp : implementation file
//

#include "stdafx.h"
#include "watchserver.h"
#include "UpdatePeriodDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CUpdatePeriodDlg dialog


CUpdatePeriodDlg::CUpdatePeriodDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CUpdatePeriodDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CUpdatePeriodDlg)
	m_Period = 0;
	//}}AFX_DATA_INIT
}


void CUpdatePeriodDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CUpdatePeriodDlg)
	DDX_Text(pDX, IDC_UPDATEPERIOD, m_Period);
	DDV_MinMaxUInt(pDX, m_Period, 10, 10000);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CUpdatePeriodDlg, CDialog)
	//{{AFX_MSG_MAP(CUpdatePeriodDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CUpdatePeriodDlg message handlers
