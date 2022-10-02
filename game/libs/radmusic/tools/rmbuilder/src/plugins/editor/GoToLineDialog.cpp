// GoToLineDialog.cpp : implementation file
//

#include <pch.hpp>
#include <framework/rmbuilder.h>
#include <plugins/editor/GoToLineDialog.h>

/////////////////////////////////////////////////////////////////////////////
// CGoToLineDialog dialog


CGoToLineDialog::CGoToLineDialog(CWnd* pParent /*=NULL*/)
	: CDialog(CGoToLineDialog::IDD, pParent)
{
	//{{AFX_DATA_INIT(CGoToLineDialog)
	m_LineNumber = 0;
	//}}AFX_DATA_INIT
}


void CGoToLineDialog::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CGoToLineDialog)
	DDX_Text(pDX, IDC_LINE_NUMBER, m_LineNumber);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CGoToLineDialog, CDialog)
	//{{AFX_MSG_MAP(CGoToLineDialog)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CGoToLineDialog message handlers
