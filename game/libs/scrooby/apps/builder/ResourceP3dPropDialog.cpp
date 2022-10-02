// ResourceP3dPropDialog.cpp : implementation file
//

#include "stdafx.h"
#include "xcon.h"
#include "ResourceP3dPropDialog.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CResourceP3dPropDialog dialog


CResourceP3dPropDialog::CResourceP3dPropDialog(CWnd* pParent /*=NULL*/)
    : CDialog(CResourceP3dPropDialog::IDD, pParent)
{
    //{{AFX_DATA_INIT(CResourceP3dPropDialog)
        // NOTE: the ClassWizard will add member initialization here
    //}}AFX_DATA_INIT
}


void CResourceP3dPropDialog::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CResourceP3dPropDialog)
        // NOTE: the ClassWizard will add DDX and DDV calls here
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CResourceP3dPropDialog, CDialog)
    //{{AFX_MSG_MAP(CResourceP3dPropDialog)
        // NOTE: the ClassWizard will add message map macros here
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CResourceP3dPropDialog message handlers
