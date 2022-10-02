//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ParamSliderTitleDlg.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "ParamSliderTitleDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CParamSliderTitleDlg dialog


CParamSliderTitleDlg::CParamSliderTitleDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CParamSliderTitleDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CParamSliderTitleDlg)
	m_strTitleText = _T("");
	//}}AFX_DATA_INIT
}


void CParamSliderTitleDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CParamSliderTitleDlg)
	DDX_Text(pDX, IDC_EDIT_TITLE_TEXT, m_strTitleText);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CParamSliderTitleDlg, CDialog)
	//{{AFX_MSG_MAP(CParamSliderTitleDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CParamSliderTitleDlg message handlers

LRESULT CParamSliderTitleDlg::WindowProc(UINT message, WPARAM wParam, LPARAM lParam) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	return CDialog::WindowProc(message, wParam, lParam);
}
