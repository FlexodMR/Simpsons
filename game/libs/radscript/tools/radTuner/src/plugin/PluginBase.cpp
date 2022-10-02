//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// PluginBase.cpp: implementation of the CPluginBase class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "radtuner.h"
#include "PluginBase.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif





// Can only be managed by CPluginManager

//===========================================================================
// CPluginBase::CPluginBase
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWorkSpaceBar* pWorkSpacePanel
//             COutputBar* pOutputPanel
//             CMainFrame* pMainFrame
//             CWorkSpaceDoc* pWorkSpaceDoc
// 
// Return: 
//===========================================================================
CPluginBase::CPluginBase(CWorkSpaceBar* pWorkSpacePanel, COutputBar* pOutputPanel, CMainFrame* pMainFrame, CWorkSpaceDoc* pWorkSpaceDoc) :
    m_pWorkSpacePanel(pWorkSpacePanel),
    m_pOutputPanel(pOutputPanel),
    m_pMainFrame(pMainFrame),   
    m_pWorkSpaceDoc(pWorkSpaceDoc)
{
    ASSERT(m_pWorkSpacePanel);
    ASSERT(m_pOutputPanel);
    ASSERT(m_pMainFrame);
    ASSERT(m_pWorkSpaceDoc);
}


//===========================================================================
// CPluginBase::CPluginBase
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CPluginBase::CPluginBase() :
    m_pWorkSpacePanel(NULL),
    m_pOutputPanel(NULL),
    m_pMainFrame(NULL),   
    m_pWorkSpaceDoc(NULL)
{

}



//===========================================================================
// CPluginBase::~CPluginBase
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CPluginBase::~CPluginBase()
{



}


//===========================================================================
// CPluginBase::GetLeftViewWndCount
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CPluginBase::GetLeftViewWndCount() const
{
    return(m_vecLeftViewWnd.size());
}


//===========================================================================
// CPluginBase::GetLeftViewWndPtrAt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const int nIdx
// 
// Return: CWnd* 
//===========================================================================
CWnd* CPluginBase::GetLeftViewWndPtrAt(const int nIdx) const
{
    ASSERT(m_vecLeftViewWnd.size() > nIdx);
    return(m_vecLeftViewWnd[nIdx].pWnd);
}


//===========================================================================
// CPluginBase::GetOutputWndCount
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CPluginBase::GetOutputWndCount() const
{
    return(m_vecOutputWnd.size());
}


//===========================================================================
// CPluginBase::GetOutputWndPtrAt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const int nIdx
// 
// Return: CWnd* 
//===========================================================================
CWnd* CPluginBase::GetOutputWndPtrAt(const int nIdx) const
{
    ASSERT(m_vecOutputWnd.size() > nIdx);
    return(m_vecOutputWnd[nIdx].pWnd);
}


//===========================================================================
// CPluginBase::GetWorkSpacePanelPtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CWorkSpaceBar* 
//===========================================================================
CWorkSpaceBar* CPluginBase::GetWorkSpacePanelPtr() const
{
    return(m_pWorkSpacePanel);
}


//===========================================================================
// CPluginBase::GetOutputPanelPtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: COutputBar* 
//===========================================================================
COutputBar* CPluginBase::GetOutputPanelPtr() const
{
    return(m_pOutputPanel);
}


//===========================================================================
// CPluginBase::GetMainFramePtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CMainFrame* 
//===========================================================================
CMainFrame* CPluginBase::GetMainFramePtr() const
{
    return(m_pMainFrame);
}


//===========================================================================
// CPluginBase::GetWorkSpaceDocPtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CWorkSpaceDoc* 
//===========================================================================
CWorkSpaceDoc* CPluginBase::GetWorkSpaceDocPtr() const
{
    return(m_pWorkSpaceDoc);
}

