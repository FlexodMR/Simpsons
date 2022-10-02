//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemHexView.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemHexView.h"

/////////////////////////////////////////////////////////////////////////////
// CMemHexView

IMPLEMENT_DYNCREATE(CMemHexView, CView)

CMemHexView::CMemHexView()
{
    m_nDigitsInData = 2;
    m_nColumns = 0;
    m_uMemSpaceStartAddress = 0;
    m_uMemSpaceDataSize = 1024;
    m_eMemSpace = MM_UNKNOWN;
    m_bReadOnly = true;
    m_uViewStartAddr = 0;
}

CMemHexView::~CMemHexView()
{
}


BEGIN_MESSAGE_MAP(CMemHexView, CView)
	//{{AFX_MSG_MAP(CMemHexView)
	ON_WM_KILLFOCUS()
	ON_WM_SETFOCUS()
	ON_WM_KEYDOWN()
	ON_WM_CHAR()
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONDBLCLK()
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
	ON_WM_MOUSEWHEEL()
	ON_WM_VSCROLL()
	ON_WM_HSCROLL()
	ON_WM_SIZE()
	ON_WM_CREATE()
	ON_WM_ERASEBKGND()
	ON_WM_DESTROY()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMemHexView diagnostics

#ifdef _DEBUG
void CMemHexView::AssertValid() const
{
	CView::AssertValid();
}

void CMemHexView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}
#endif //_DEBUG

void CMemHexView::SetDigitsInData( int nDigits )
{
    ASSERT( nDigits == 2 || nDigits == 4 || nDigits == 8 );
    m_nDigitsInData = nDigits;
    CalculateScrollSize( );
    UpdateAddrEditCtrl( );
    UpdateDataEditCtrl( );
}

int CMemHexView::GetDigitsInData( ) const
{
    return m_nDigitsInData;
}

void CMemHexView::SetColumns( int nColumns )
{
    m_nColumns = nColumns;
}

int CMemHexView::GetColumns( ) const
{
    return m_nColumns;
}

void CMemHexView::SetMemSpace( MM_ClientMemorySpace eSpace, unsigned int uStartAddress, unsigned int uSize, unsigned int uInitalAddr )
{
    m_eMemSpace = eSpace;
    m_uMemSpaceStartAddress = uStartAddress;
    m_uMemSpaceDataSize = uSize;
    CalculateScrollSize( );
    SetViewMemAddr( uInitalAddr );
}

MM_ClientMemorySpace CMemHexView::GetMemSpace( ) const
{
    return m_eMemSpace;
}

unsigned int CMemHexView::GetMemSpaceStartAddress( ) const
{
    return m_uMemSpaceStartAddress;
}

unsigned int CMemHexView::GetMemSpaceDataSize( ) const
{
    return m_uMemSpaceDataSize;
}

bool CMemHexView::SetViewMemAddr( unsigned int uAddr )
{
    if ( uAddr < m_uMemSpaceStartAddress || uAddr > ( m_uMemSpaceDataSize + m_uMemSpaceStartAddress ) )
    {
        return false;
    }

    m_uViewStartAddr = uAddr;
    ScrollToMemAddr( m_uViewStartAddr );
    return true;
}

void CMemHexView::SetReadOnly( bool bReadOnly )
{
    m_bReadOnly = bReadOnly;
}

bool CMemHexView::GetReadOnly( ) const
{
    return m_bReadOnly;
}

unsigned int CMemHexView::GetCurrentViewAddress( ) const
{
    return m_uViewStartAddr;
}

unsigned int CMemHexView::GetCurrentViewDataSize( ) const
{
    return ( CalculateViewDataSizeInBytes( ) / 128 + 1 ) * 128;
}

void CMemHexView::OnDestroy() 
{
	CView::OnDestroy();
}

void CMemHexView::OnDraw(CDC* pDC) 
{
    PopulateMemAddr( );
    PopulateMemData( );
}
