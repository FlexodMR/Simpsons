//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemSectionCellView.cpp : implementation file
//

#include "stdafx.h"
#include "MemMonitor.h"
#include "MemSectionCellView.h"
#include "MemSectionListView.h"
#include "MemSectionFrame.h"
#include "MemorySection.h"
#include "MemCellViewConfigDlg.h"
#include <math.h>

/////////////////////////////////////////////////////////////////////////////
// CMemSectionCellView

IMPLEMENT_DYNCREATE(CMemSectionCellView, CScrollView)

CMemSectionCellView::CMemSectionCellView() :
    m_bFitToWnd( true ),
    m_uCellPerRow( 128 ),
    m_uCellRectSizeX( 5 ),
    m_uCellRectSizeY( 10 ),
    m_uBytesPerCell( 2 * 1024 ),
    m_uBlinkingTimerID( 0 ),
    m_uRedrawDelayTimerID( 0 ),
    m_bZoomMode( false )
{
}

CMemSectionCellView::~CMemSectionCellView()
{
}

BEGIN_MESSAGE_MAP(CMemSectionCellView, CScrollView)
    //{{AFX_MSG_MAP(CMemSectionCellView)
    ON_WM_CREATE()
    ON_WM_LBUTTONDOWN()
    ON_WM_LBUTTONUP()
    ON_WM_SETCURSOR()
    ON_WM_SIZE()
    ON_WM_RBUTTONDOWN()
    ON_WM_RBUTTONUP()
    ON_WM_TIMER()
    ON_WM_ERASEBKGND()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

int CMemSectionCellView::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    if (CScrollView::OnCreate(lpCreateStruct) == -1)
        return -1;

    CRect rectDummy; rectDummy.SetRectEmpty( );

    if ( ! m_stcBlinkingCursor.Create( "", SS_BLACKRECT, rectDummy, this ) )
    {
        return -1;
    }

    m_stcBlinkingCursor.ShowWindow( SW_HIDE );

    CSize sizTotal( 150, 150 );
    SetScrollSizes( MM_TEXT, sizTotal ); 

    return 0;
}

unsigned int CMemSectionCellView::GetBytesPerCell( )
{
    return m_uBytesPerCell;
}

void CMemSectionCellView::SetBytesPerCell( unsigned int uBytesPerCell )
{
    if ( uBytesPerCell != m_uBytesPerCell )
    {
        ReBuildCellMap( );
        m_uBytesPerCell = uBytesPerCell;
    }
    m_bFitToWnd = false;
    Invalidate( );
}

unsigned int CMemSectionCellView::GetCellPerRow( )
{
    return m_uCellPerRow;
}

void CMemSectionCellView::SetCellPerRow( unsigned int uCellPerRow )
{
    m_bFitToWnd = false;
    m_uCellPerRow = uCellPerRow;
    Invalidate( );
}

unsigned int CMemSectionCellView::GetCellRectSizeX( )
{
    return m_uCellRectSizeX;
}

void CMemSectionCellView::SetCellRectSizeX( unsigned int uCellSizeX )
{
    m_bFitToWnd = false;
    m_uCellRectSizeX = uCellSizeX;
    Invalidate( );
}

unsigned int CMemSectionCellView::GetCellRectSizeY( )
{
    return m_uCellRectSizeY;
}

void CMemSectionCellView::SetCellRectSizeY( unsigned int uCellSizeY )
{
    m_bFitToWnd = false;
    m_uCellRectSizeY = uCellSizeY;
    Invalidate( );
}

void CMemSectionCellView::ReSizeCellToFitWnd( )
{
    m_bFitToWnd = true;
    OnUpdate( NULL, 0, NULL );
}

void CMemSectionCellView::ShowMemoryLocationCursor( )
{
    CRect rectCursor;
    m_stcBlinkingCursor.GetWindowRect( & rectCursor );
    ScreenToClient( & rectCursor );
    rectCursor.OffsetRect( GetScrollPos( SB_HORZ ), GetScrollPos( SB_VERT ) );
    
    rectCursor.right = rectCursor.left + m_uCellRectSizeX;
    rectCursor.bottom = rectCursor.top + m_uCellRectSizeY;

    DrawBlinkingCursorAt( rectCursor );
}

void CMemSectionCellView::ShowMemoryLocationCursor( unsigned int uAddress )
{
    unsigned int uCellCount = (unsigned int)ceil( (double)GetMemorySectionPtr( )->GetTotalSize( ) / (double)m_uBytesPerCell );
    int nCellIndex = AddressToCellIndex( uAddress );

    if ( nCellIndex >= 0 && nCellIndex < uCellCount )
    {
        DrawBlinkingCursorAt( CellIndexToCellRect( nCellIndex ) );
    }
}

void CMemSectionCellView::ShowMemoryLocationCursor( CPoint & ptPointer )
{
    unsigned int uCellCount = (unsigned int)ceil( (double)GetMemorySectionPtr( )->GetTotalSize( ) / (double)m_uBytesPerCell );
    int nCellIndex = PointerToCellIndex( ptPointer );

    if ( nCellIndex >= 0 && nCellIndex < uCellCount )
    {
        DrawBlinkingCursorAt( CellIndexToCellRect( nCellIndex ) );
    }
}

void CMemSectionCellView::StartZoomMode( )
{
    m_bZoomMode = true;
}

void CMemSectionCellView::StopZoomMode( )
{
    m_bZoomMode = false;
}

void CMemSectionCellView::ShowOptionDialog( )
{
    CMemCellViewConfigDlg dlgConfig;
    dlgConfig.Initialize( m_uBytesPerCell, m_uCellPerRow, m_uCellRectSizeX, m_uCellRectSizeY );

    if ( dlgConfig.DoModal( ) == IDOK )
    {
        m_uBytesPerCell = dlgConfig.GetBytesPerCell( );
        m_uCellPerRow = dlgConfig.GetCellPerRow( );
        m_uCellRectSizeX = dlgConfig.GetCellSize( ).cx;
        m_uCellRectSizeY = dlgConfig.GetCellSize( ).cy;
        m_bFitToWnd = false;
        Invalidate( );
        ShowMemoryLocationCursor( );
    }
}

/////////////////////////////////////////////////////////////////////////////
// CMemSectionCellView drawing

void CMemSectionCellView::OnInitialUpdate()
{
    CScrollView::OnInitialUpdate();
}

void CMemSectionCellView::OnDraw(CDC* pDC)
{
    DrawCellMap( pDC );
}

/////////////////////////////////////////////////////////////////////////////
// CMemSectionCellView diagnostics

#ifdef _DEBUG
void CMemSectionCellView::AssertValid() const
{
    CScrollView::AssertValid();
}

void CMemSectionCellView::Dump(CDumpContext& dc) const
{
    CScrollView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMemSectionCellView message handlers

void CMemSectionCellView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
    ReBuildCellMap( );
    InvalidateRect( NULL );
}

BOOL CMemSectionCellView::OnSetCursor(CWnd* pWnd, UINT nHitTest, UINT message) 
{
    if ( m_bZoomMode )
    {
        ::SetCursor( ::AfxGetApp( )->LoadCursor( IDC_CURSOR_ZOOM ) );
        return TRUE;
    }
    return CScrollView::OnSetCursor(pWnd, nHitTest, message);
}

void CMemSectionCellView::OnSize(UINT nType, int cx, int cy) 
{
    // delay redraw
    if ( m_uRedrawDelayTimerID == 0 )
    {
        m_uRedrawDelayTimerID = SetTimer( reinterpret_cast< UINT >( & m_aryCellMemoryBlockPtr ), 200, NULL );
    }
    CScrollView::OnSize(nType, cx, cy);
}

BOOL CMemSectionCellView::OnEraseBkgnd(CDC* pDC) 
{
    return FALSE;
}
