// FindDialog.cpp : implementation file
//

#include "pch.hpp"
#include <framework/rmbuilder.h>
#include <plugins/editor/FindDialog.h>

/////////////////////////////////////////////////////////////////////////////
// CFindDialog dialog


CFindDialog::CFindDialog(CWnd* pParent /*=NULL*/)
	: CDialog(CFindDialog::IDD, pParent)
{
	//{{AFX_DATA_INIT(CFindDialog)
	m_MatchCase = FALSE;
	m_MatchWholeWord = FALSE;
	m_FindWhat = _T("");
	//}}AFX_DATA_INIT
}


void CFindDialog::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CFindDialog)
	DDX_Check(pDX, IDC_CHECK_MATCH_CASE, m_MatchCase);
	DDX_Check(pDX, IDC_CHECK_WHOLEWORD, m_MatchWholeWord);
	DDX_Text(pDX, IDC_FIND_WHAT, m_FindWhat);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CFindDialog, CDialog)
	//{{AFX_MSG_MAP(CFindDialog)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFindDialog message handlers
