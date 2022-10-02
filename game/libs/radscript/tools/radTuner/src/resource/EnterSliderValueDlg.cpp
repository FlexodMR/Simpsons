//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// EnterSliderValueDlg.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "EnterSliderValueDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CEnterSliderValueDlg dialog


CEnterSliderValueDlg::CEnterSliderValueDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CEnterSliderValueDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CEnterSliderValueDlg)
	m_strValueText = _T("");
	//}}AFX_DATA_INIT
}


void CEnterSliderValueDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CEnterSliderValueDlg)
	DDX_Text(pDX, IDC_EDIT_VALUE, m_strValueText);
	//}}AFX_DATA_MAP
}

const CString & CEnterSliderValueDlg::GetValueInText( ) const
{
    return m_strValueText;
}

float CEnterSliderValueDlg::GetValueInFloat( ) const
{
    return atof( m_strValueText );
}

int CEnterSliderValueDlg::GetValueInInt( ) const
{
    return atoi( m_strValueText );
}


BEGIN_MESSAGE_MAP(CEnterSliderValueDlg, CDialog)
	//{{AFX_MSG_MAP(CEnterSliderValueDlg)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CEnterSliderValueDlg message handlers
