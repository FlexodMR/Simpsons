//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ScriptObjectView.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "ScriptObjectView.h"
#include "ScriptObject.h"
#include "MethodDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CScriptObjectView

IMPLEMENT_DYNCREATE(CScriptObjectView, CView)

CScriptObjectView::CScriptObjectView() :
m_pScriptObject(NULL)
{
}

CScriptObjectView::~CScriptObjectView()
{
    for (int i = 0; i < m_vecMethodDlg.size(); i++)
    {
        delete m_vecMethodDlg[i];
    }
}


BEGIN_MESSAGE_MAP(CScriptObjectView, CView)
//{{AFX_MSG_MAP(CScriptObjectView)
ON_WM_CREATE()
ON_WM_DESTROY()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CScriptObjectView drawing

void CScriptObjectView::OnDraw(CDC* pDC)
{
    CDocument* pDoc = GetDocument();
    // TODO: add draw code here
}

void CScriptObjectView::SetObjectPtr(CScriptObject *pObject)
{
    m_pScriptObject = pObject;
    Invalidate();
}

/////////////////////////////////////////////////////////////////////////////
// CScriptObjectView diagnostics

#ifdef _DEBUG
void CScriptObjectView::AssertValid() const
{
    CView::AssertValid();
}

void CScriptObjectView::Dump(CDumpContext& dc) const
{
    CView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CScriptObjectView message handlers

int CScriptObjectView::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CView::OnCreate(lpCreateStruct) == -1)
        return -1;

    int nHeight = -((GetDC()->GetDeviceCaps(LOGPIXELSY) * 8) / 72);

    m_fontSansSerif_8.CreateFont(nHeight, 0, 0, 0, FW_NORMAL, 0, 0, 0,
        DEFAULT_CHARSET, OUT_CHARACTER_PRECIS, CLIP_CHARACTER_PRECIS,
        DEFAULT_QUALITY, DEFAULT_PITCH | FF_DONTCARE, "MS Sans Serif");
    return 0;
}

void CScriptObjectView::OnDestroy()
{
    CView::OnDestroy();

    if (m_pScriptObject != NULL)
    {
        m_pScriptObject->SetView(NULL);
    }
}

void CScriptObjectView::OnInitialUpdate()
{
    CView::OnInitialUpdate();
}

void CScriptObjectView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint)
{
    if (m_pScriptObject == NULL)
        return;

    if (m_vecMethodDlg.size() == 0)
    {
        CString strTitle;
        strTitle.Format("%s (%s)", m_pScriptObject->GetName(), (const char*)m_pScriptObject->GetClassName());

        RECT rectObjectName = { 7, 7, 0, 0 };
        GetWindowRect(&rectObjectName);
        rectObjectName.top = 7;
        rectObjectName.left = 7;
        rectObjectName.right -= 7;
        rectObjectName.bottom = rectObjectName.top + 8;

        m_stcObjectName.Create(strTitle, SS_SIMPLE, rectObjectName, this);
        m_stcObjectName.SetFont(&m_fontSansSerif_8);
        m_stcObjectName.ShowWindow(SW_SHOWNORMAL);

        for (int i = 0; i < m_pScriptObject->GetMethodCount(); i++)
        {
            CMethodDlg *pDlg = new CMethodDlg(this);
            m_vecMethodDlg.push_back(pDlg);
            pDlg->SetMethodPtr(m_pScriptObject->GetMethodAt(i));
    
            pDlg->Create(pDlg->GetIDD(), this);
            pDlg->ShowWindow(SW_SHOW);
            //pDlg->SetWindowPos(&wndTop, 7, 20, 200, 100, SWP_SHOWWINDOW);
        }
    }
}

void CScriptObjectView::_SetRectangle()
{
}
