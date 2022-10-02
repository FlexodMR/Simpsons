//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ParamIntDlg.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "ParamIntDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//===========================================================================
// MFC Message Mapping
//===========================================================================
BEGIN_MESSAGE_MAP(CParamIntDlg, CDialog)
//{{AFX_MSG_MAP(CParamIntDlg)
// NOTE: the ClassWizard will add message map macros here
//}}AFX_MSG_MAP
END_MESSAGE_MAP()



//===========================================================================
// CParamIntDlg::CParamIntDlg
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
CParamIntDlg::CParamIntDlg(CWnd* pParent /*=NULL*/)
    : CParamDlg(CParamIntDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CParamIntDlg)
    m_nValue = 0;
    //}}AFX_DATA_INIT
}



//===========================================================================
// CParamIntDlg::DoDataExchange
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
void CParamIntDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CParamIntDlg)
    DDX_Text(pDX, IDC_EDIT_INT, m_nValue);
    DDV_MinMaxInt(pDX, m_nValue, -2147483647, 2147483647);
    //}}AFX_DATA_MAP
}


//===========================================================================
// CParamIntDlg::GetIDD
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CParamIntDlg::GetIDD() const
{
    return(IDD);
}

