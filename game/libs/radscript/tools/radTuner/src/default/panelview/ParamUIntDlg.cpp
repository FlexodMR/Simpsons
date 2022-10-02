//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ParamUIntDlg.cpp : implementation file
//

//===========================================================================
// Includes
//===========================================================================
#include "stdafx.h"
#include "radtuner.h"
#include "ParamUIntDlg.h"

//===========================================================================
// MFC Defines
//===========================================================================
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//===========================================================================
// MFC Message Mapping
//===========================================================================
BEGIN_MESSAGE_MAP(CParamUIntDlg, CDialog)
//{{AFX_MSG_MAP(CParamUIntDlg)
// NOTE: the ClassWizard will add message map macros here
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//===========================================================================
// CParamUIntDlg::CParamUIntDlg
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
CParamUIntDlg::CParamUIntDlg(CWnd* pParent /*=NULL*/)
    : CParamDlg(CParamUIntDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CParamUIntDlg)
    m_uValue = 0;
    //}}AFX_DATA_INIT
}



//===========================================================================
// CParamUIntDlg::DoDataExchange
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
void CParamUIntDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CParamUIntDlg)
    DDX_Text(pDX, IDC_EDIT_UINT, m_uValue);
    DDV_MinMaxUInt(pDX, m_uValue, 0, 4294967295);
    //}}AFX_DATA_MAP
}



//===========================================================================
// CParamUIntDlg::GetIDD
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CParamUIntDlg::GetIDD() const
{
    return(IDD);
}
