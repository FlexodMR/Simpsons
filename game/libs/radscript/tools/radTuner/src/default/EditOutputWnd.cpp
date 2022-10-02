//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// EditOutputWnd.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "EditOutputWnd.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//===========================================================================
// MFC Message Mapping
//===========================================================================

BEGIN_MESSAGE_MAP(CEditOutputWnd, CEdit)
//{{AFX_MSG_MAP(CEditOutputWnd)
	ON_WM_CREATE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//===========================================================================
// CEditOutputWnd::CEditOutputWnd
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CEditOutputWnd::CEditOutputWnd()
{
}


//===========================================================================
// CEditOutputWnd::~CEditOutputWnd
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CEditOutputWnd::~CEditOutputWnd()
{
}

/////////////////////////////////////////////////////////////////////////////
// CEditOutputWnd message handlers


//===========================================================================
// CEditOutputWnd::OnCreate
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
int CEditOutputWnd::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    if (CEdit::OnCreate(lpCreateStruct) == -1)
		return -1;

    // create a 8 point Sans Serif font
    CClientDC dc(this);
    
    int nHeight = -((dc.GetDeviceCaps(LOGPIXELSY) * 8) / 72);
    
    m_fontMain.CreateFont(nHeight, 0, 0, 0, FW_NORMAL, 0, 0, 0,
                          DEFAULT_CHARSET, OUT_CHARACTER_PRECIS, CLIP_CHARACTER_PRECIS,
                          DEFAULT_QUALITY, DEFAULT_PITCH | FF_DONTCARE, "MS Sans Serif");
	SetFont(&m_fontMain);

    return 0;
}
