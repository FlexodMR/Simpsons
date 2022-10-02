//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ParamDlg.cpp : implementation file
//

//===========================================================================
// Include files
//===========================================================================
#include "stdafx.h"
#include "radtuner.h"
#include "ParamDlg.h"

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
BEGIN_MESSAGE_MAP(CParamDlg, CDialog)
//{{AFX_MSG_MAP(CParamDlg)
// NOTE: the ClassWizard will add message map macros here
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//===========================================================================
// CParamDlg::CParamDlg
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             UINT nIDTemplate
//             CWnd* pParentWnd
// 
// Return: 
//===========================================================================
CParamDlg::CParamDlg(UINT nIDTemplate, CWnd* pParentWnd)
    : CDialog(nIDTemplate, pParentWnd)
{
    //{{AFX_DATA_INIT(CParamDlg)
    // NOTE: the ClassWizard will add member initialization here
    //}}AFX_DATA_INIT
}


//===========================================================================
// CParamDlg::~CParamDlg
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CParamDlg::~CParamDlg()
{


}


//===========================================================================
// &CParamDlg::GetParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CScriptParam 
//===========================================================================
CScriptParam &CParamDlg::GetParam()
{
    return(m_oParam);
}


//===========================================================================
// CParamDlg::SetParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CScriptParam &oParam
// 
// Return: void 
//===========================================================================
void CParamDlg::SetParam(CScriptParam &oParam)
{
    m_oParam = oParam;
}


//===========================================================================
// CParamDlg::GetIDD
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CParamDlg::GetIDD() const
{
    return(IDD);
}



//===========================================================================
// CParamDlg::GetWndSize
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CRect 
//===========================================================================
CRect CParamDlg::GetWndSize() const
{
    RECT rect;
    GetClientRect(&rect);
    return(CRect(rect));
}
