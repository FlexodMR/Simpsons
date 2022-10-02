//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MethodDlg.cpp : implementation file
//

//===========================================================================
// Include
//===========================================================================
#include "stdafx.h"
#include "radtuner.h"
#include "MethodDlg.h"

#include "ParamBoolDlg.h"
#include "ParamUIntDlg.h"
#include "ParamIntDlg.h"
#include "ParamStringDlg.h"
#include "ScriptMethod.h"
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
BEGIN_MESSAGE_MAP(CMethodDlg, CDialog)
//{{AFX_MSG_MAP(CMethodDlg)
ON_WM_CREATE()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//===========================================================================
// CMethodDlg::CMethodDlg
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
CMethodDlg::CMethodDlg(CWnd* pParent /*=NULL*/)
    : CDialog(CMethodDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CMethodDlg)
    m_strMethodName = _T("");
    //}}AFX_DATA_INIT
}


//===========================================================================
// CMethodDlg::~CMethodDlg
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CMethodDlg::~CMethodDlg()
{
    for (int i = 0; i < m_vecParamDlg.size(); i++)
    {
        delete m_vecParamDlg[i];
    }
}


//===========================================================================
// CMethodDlg::DoDataExchange
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
void CMethodDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CMethodDlg)
    DDX_Text(pDX, IDC_EDIT_METHOD_NAME, m_strMethodName);
    //}}AFX_DATA_MAP
}

/////////////////////////////////////////////////////////////////////////////
// CMethodDlg message handlers

//===========================================================================
// CMethodDlg::SetMethodPtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CScriptMethod *pMethod
// 
// Return: void 
//===========================================================================
void CMethodDlg::SetMethodPtr(CScriptMethod *pMethod)
{
    m_pMethod = pMethod;
}


//===========================================================================
// CMethodDlg::GetMethodPtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CScriptMethod* 
//===========================================================================
CScriptMethod* CMethodDlg::GetMethodPtr() const
{
    return(m_pMethod);
}

int CMethodDlg::GetIDD() const
{
    return(IDD);
}

//===========================================================================
// CMethodDlg::OnCreate
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             LPCREATESTRUCT lpCreateStruct
// 
// Return: int 
//===========================================================================
int CMethodDlg::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CDialog::OnCreate(lpCreateStruct) == -1)
        return -1;

    for (int i = 0; i < m_pMethod->GetParamCount(); i++)
    {
        CScriptParam *pParam = m_pMethod->GetParamAt(i);
        CParamDlg *pParamDlg = NULL;
        switch(pParam->GetType())
        {
            case PAR_BOOL:
            {
                pParamDlg = new CParamBoolDlg(this);
            }
            break;

            case PAR_ULONG:
            case PAR_UNSIGNED_INT:
            {
                pParamDlg = new CParamUIntDlg(this);
            }
            break;

            case PAR_LONG:
            case PAR_INT:
            {
                pParamDlg = new CParamIntDlg(this);
            }
            break;

            case PAR_UNSIGNED_CHAR:
            case PAR_CHAR:
            {
                if (pParam->GetLevelOfIndirection() == 1)
                {
                    pParamDlg = new CParamStringDlg(this);
                }
                else
                {
                    pParamDlg = new CParamIntDlg(this);
                }
            }
            break;

            default:
            {
                pParamDlg = new CParamDlg(IDD_FORMVIEW_PARAM_BASE_CLASS, this);

            };
        }
        ASSERT(pParamDlg);
        m_vecParamDlg.push_back(pParamDlg);
        pParamDlg->SetParam(*pParam);
        pParamDlg->Create(pParamDlg->GetIDD(), this);
        pParamDlg->ShowWindow(SW_SHOW);

        RECT rectSize;
        rectSize = pParamDlg->GetWndSize();
        pParamDlg->SetWindowPos(&wndTop, 10, 20, rectSize.right, rectSize.bottom, SWP_SHOWWINDOW);
    }

    return 0;
}


//===========================================================================
// CMethodDlg::OnInitDialog
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: BOOL 
//===========================================================================
BOOL CMethodDlg::OnInitDialog()
{
    CDialog::OnInitDialog();


    return TRUE;  // return TRUE unless you set the focus to a control
    // EXCEPTION: OCX Property Pages should return FALSE
}

CRect CMethodDlg::GetWndSize() const
{
    CRect rectSize(0, 0, 0, 0);
    for (int i = 0; i < m_vecParamDlg.size(); i++)
    {
        rectSize += m_vecParamDlg[i]->GetWndSize();
    }
    return(CRect(rectSize));
}
