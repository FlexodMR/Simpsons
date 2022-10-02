//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ParamStringDlg.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "ParamStringDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//===========================================================================
// MFC Message Mapping
//===========================================================================
BEGIN_MESSAGE_MAP(CParamStringDlg, CDialog)
//{{AFX_MSG_MAP(CParamStringDlg)
// NOTE: the ClassWizard will add message map macros here
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//===========================================================================
// CParamStringDlg::CParamStringDlg
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWnd* pParent /*=NULL*/
// 
// Return: 
//===========================================================================
CParamStringDlg::CParamStringDlg(CWnd* pParent /*=NULL*/)
    : CParamDlg(CParamStringDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CParamStringDlg)
    m_strValue = _T("");
    //}}AFX_DATA_INIT
}



//===========================================================================
// CParamStringDlg::DoDataExchange
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CDataExchange* pDX
// 
// Return: void 
//===========================================================================
void CParamStringDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CParamStringDlg)
    DDX_Text(pDX, IDC_EDIT_STRING, m_strValue);
    //}}AFX_DATA_MAP
}


//===========================================================================
// CParamStringDlg::GetIDD
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CParamStringDlg::GetIDD() const
{
    return(IDD);
}

