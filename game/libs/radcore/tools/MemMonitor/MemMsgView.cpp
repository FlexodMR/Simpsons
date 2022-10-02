//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemMsgView.cpp : implementation file
//

#include "stdafx.h"
#include "MemMonitor.h"
#include "MemMsgView.h"

/////////////////////////////////////////////////////////////////////////////
// CMemMsgView

IMPLEMENT_DYNCREATE(CMemMsgView, CListView)

CMemMsgView::CMemMsgView()
{
}

CMemMsgView::~CMemMsgView()
{
}


BEGIN_MESSAGE_MAP(CMemMsgView, CListView)
    //{{AFX_MSG_MAP(CMemMsgView)
        // NOTE - the ClassWizard will add and remove mapping macros here.
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMemMsgView drawing

void CMemMsgView::OnDraw(CDC* pDC)
{
    CDocument* pDoc = GetDocument();
    // TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CMemMsgView diagnostics

#ifdef _DEBUG
void CMemMsgView::AssertValid() const
{
    CListView::AssertValid();
}

void CMemMsgView::Dump(CDumpContext& dc) const
{
    CListView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMemMsgView message handlers
