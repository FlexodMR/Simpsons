//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ParamRefDlg.cpp : implementation file
//

//===========================================================================
// Include
//===========================================================================
#include "stdafx.h"
#include "radtuner.h"
#include "ParamRefDlg.h"

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
BEGIN_MESSAGE_MAP(CParamRefDlg, CDialog)
//{{AFX_MSG_MAP(CParamRefDlg)
// NOTE: the ClassWizard will add message map macros here
//}}AFX_MSG_MAP
END_MESSAGE_MAP()



//===========================================================================
// CParamRefDlg::CParamRefDlg
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
CParamRefDlg::CParamRefDlg(CWnd* pParent /*=NULL*/)
    : CParamDlg(CParamRefDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CParamRefDlg)
    // NOTE: the ClassWizard will add member initialization here
    //}}AFX_DATA_INIT
}



//===========================================================================
// CParamRefDlg::DoDataExchange
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
void CParamRefDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CParamRefDlg)
    DDX_Control(pDX, IDC_COMBO_REF, m_cbxRef);
    //}}AFX_DATA_MAP
}


//===========================================================================
// CParamRefDlg::GetIDD
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CParamRefDlg::GetIDD() const
{
    return(IDD);
}
