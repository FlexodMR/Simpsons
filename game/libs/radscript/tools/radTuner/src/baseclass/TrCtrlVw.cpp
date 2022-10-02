//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// TrCtrlVw.cpp : implementation file
//
//This shows one method of how to use your own
// CTreeCtrl class in a CTreeView derived class


#include "stdafx.h"
#include "TrCtrlVw.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMultiTreeView

IMPLEMENT_DYNCREATE(CMultiTreeView, CMultiTreeView_BASE)

CMultiTreeView::CMultiTreeView()
{
	m_pTree = NULL;
}

CMultiTreeView::~CMultiTreeView()
{
	if (m_pTree) {
		m_pTree->m_hWnd = NULL;
		delete m_pTree;
	}
}

#define CTreeView	CMultiTreeView_BASE
BEGIN_MESSAGE_MAP(CMultiTreeView, CTreeView)
#undef CTreeView
	//{{AFX_MSG_MAP(CMultiTreeView)
	ON_WM_CREATE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMultiTreeView diagnostics

#ifdef _DEBUG
void CMultiTreeView::AssertValid() const
{
	CMultiTreeView_BASE::AssertValid();
}

void CMultiTreeView::Dump(CDumpContext& dc) const
{
	CMultiTreeView_BASE::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMultiTreeView message handlers

BOOL CMultiTreeView::PreCreateWindow(CREATESTRUCT& cs) 
{
	cs.style |= TVS_HASBUTTONS|TVS_HASLINES|TVS_SHOWSELALWAYS|TVS_LINESATROOT;// | TVS_INFOTIP;
	return CMultiTreeView_BASE::PreCreateWindow(cs);
}

int CMultiTreeView::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if (CMultiTreeView_BASE::OnCreate(lpCreateStruct) == -1)
		return -1;

	AllocEmbeddedTree();

	//force tree to use this
	m_pTree->m_hWnd = m_hWnd;
	m_pTree->m_pfnSuper = m_pfnSuper;
	m_pTree->PreSubclassWindow();
	return 0;
}

void CMultiTreeView::AllocEmbeddedTree()
{
	//over-ride this virtual to allocate your own
	// CTreeCtrl class
	ASSERT(!m_pTree);		//don't call base if over-ridden
	m_pTree = new CTC;
}

/////////////////////////////////////////////////////////////////////////////
// Fancy stuff for giving us the ability to use our
// own derived CTreeCtrl

LRESULT CMultiTreeView::WindowProc(UINT message, WPARAM wParam, LPARAM lParam) 
{
	LRESULT lResult = 0;
	if (!OnWndMsg(message, wParam, lParam, &lResult))
		if (!m_pTree || !m_pTree->OnWndMsg(message, wParam, lParam, &lResult))
			lResult = DefWindowProc(message, wParam, lParam);
	return lResult;
}

BOOL CMultiTreeView::OnChildNotify(UINT message, WPARAM wParam, LPARAM lParam, LRESULT* pLResult) 
{
	if (CMultiTreeView_BASE::OnChildNotify(message, wParam, lParam, pLResult))
		return TRUE;
	return m_pTree && m_pTree->OnChildNotify(message, wParam, lParam, pLResult);
}

BOOL CMultiTreeView::OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo) 
{
	if (CMultiTreeView_BASE::OnCmdMsg(nID, nCode, pExtra, pHandlerInfo))
		return TRUE;
	return m_pTree && m_pTree->OnCmdMsg(nID, nCode, pExtra, pHandlerInfo);
}
