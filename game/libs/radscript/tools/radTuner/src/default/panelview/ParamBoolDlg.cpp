//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ParamBoolDlg.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "ParamBoolDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

BEGIN_MESSAGE_MAP(CParamBoolDlg, CDialog)
//{{AFX_MSG_MAP(CParamBoolDlg)
// NOTE: the ClassWizard will add message map macros here
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

CParamBoolDlg::CParamBoolDlg(CWnd* pParent /*=NULL*/)
    : CParamDlg(CParamBoolDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CParamBoolDlg)
    m_bValue = -1;
    //}}AFX_DATA_INIT
}


void CParamBoolDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CParamBoolDlg)
    DDX_CBIndex(pDX, IDC_COMBO_BOOLEAN, m_bValue);
    //}}AFX_DATA_MAP
}

int CParamBoolDlg::GetIDD() const
{
    return(IDD);
}
