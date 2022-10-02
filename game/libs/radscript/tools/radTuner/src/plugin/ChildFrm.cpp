//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ChildFrm.cpp : implementation of the CChildFrame class
//

#include "stdafx.h"
#include "radTuner.h"

#include "ChildFrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CChildFrame

IMPLEMENT_DYNCREATE(CChildFrame, CMDIChildWnd)

BEGIN_MESSAGE_MAP(CChildFrame, CMDIChildWnd)
//{{AFX_MSG_MAP(CChildFrame)
// NOTE - the ClassWizard will add and remove mapping macros here.
//    DO NOT EDIT what you see in these blocks of generated code !
ON_COMMAND(ID_FILE_CLOSE, OnFileClose)
ON_WM_SETFOCUS()
ON_WM_CREATE()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CChildFrame construction/destruction


//===========================================================================
// CChildFrame::CChildFrame
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CChildFrame::CChildFrame()
{
    m_pScriptView = NULL;
}


//===========================================================================
// CChildFrame::~CChildFrame
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CChildFrame::~CChildFrame()
{
}


//===========================================================================
// CChildFrame::PreCreateWindow
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CREATESTRUCT& cs
// 
// Return: BOOL 
//===========================================================================
BOOL CChildFrame::PreCreateWindow(CREATESTRUCT& cs)
{
    // TODO: Modify the Window class or styles here by modifying
    //  the CREATESTRUCT cs

    if( !CMDIChildWnd::PreCreateWindow(cs) )
        return FALSE;

    cs.dwExStyle &= ~WS_EX_CLIENTEDGE;
    cs.lpszClass = AfxRegisterWndClass(0);

    return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CChildFrame diagnostics

#ifdef _DEBUG

//===========================================================================
// CChildFrame::AssertValid
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CChildFrame::AssertValid() const
{
    CMDIChildWnd::AssertValid();
}


//===========================================================================
// CChildFrame::Dump
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CDumpContext& dc
// 
// Return: void 
//===========================================================================
void CChildFrame::Dump(CDumpContext& dc) const
{
    CMDIChildWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CChildFrame message handlers

//===========================================================================
// CChildFrame::OnFileClose
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CChildFrame::OnFileClose()
{
    // To close the frame, just send a WM_CLOSE, which is the equivalent
    // choosing close from the system menu.

    SendMessage(WM_CLOSE);
}


//===========================================================================
// CChildFrame::OnCreate
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
int CChildFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CBCGMDIChildWnd::OnCreate(lpCreateStruct) == -1)
        return -1;


    m_pScriptView = (CScriptObjectView*)RUNTIME_CLASS(CScriptObjectView)->CreateObject();
    ASSERT(m_pScriptView);
    // create a view to occupy the client area of the frame
    if (!m_pScriptView->Create(NULL, NULL, AFX_WS_DEFAULT_VIEW,
        CRect(0, 0, 0, 0), this, AFX_IDW_PANE_FIRST, NULL))
    {
        TRACE0("Failed to create view window\n");
        return -1;
    }

    return 0;
}


//===========================================================================
// CChildFrame::OnSetFocus
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWnd* pOldWnd
// 
// Return: void 
//===========================================================================
void CChildFrame::OnSetFocus(CWnd* pOldWnd)
{
    CBCGMDIChildWnd::OnSetFocus(pOldWnd);

    if (m_pScriptView != NULL)
    {
        m_pScriptView->SetFocus();
    }
}


//===========================================================================
// CChildFrame::OnCmdMsg
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             UINT nID
//             int nCode
//             void* pExtra
//             AFX_CMDHANDLERINFO* pHandlerInfo
// 
// Return: BOOL 
//===========================================================================
BOOL CChildFrame::OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo)
{
    // let the view have first crack at the command
    if (m_pScriptView->OnCmdMsg(nID, nCode, pExtra, pHandlerInfo))
        return TRUE;

    // otherwise, do default handling
    return CBCGMDIChildWnd::OnCmdMsg(nID, nCode, pExtra, pHandlerInfo);
}

