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
#include <math.h>

const CMemorySection * CMemSectionCellView::GetMemorySectionPtr( ) const
{
    return static_cast< CMemSectionFrame * >( GetParentFrame( ) )->GetMemorySectionPtr( );
}

CMemorySection * CMemSectionCellView::GetMemorySectionPtr( )
{
    return static_cast< CMemSectionFrame * >( GetParentFrame( ) )->GetMemorySectionPtr( );
}

void CMemSectionCellView::ReBuildCellMap( )
{
    if( IsWindowVisible( ) )
    {
        CWaitCursor wait;       // waiting cursor

        CMemSectionFrame * pFrame = static_cast< CMemSectionFrame * >( GetParentFrame( ) );
        CMemorySection * pSection = GetMemorySectionPtr( );

        if ( pSection != NULL )
        {
            if ( m_bFitToWnd )
            {
                CalculateDimensionToFitWnd( );
            }

            unsigned int uCellCount = (unsigned int)ceil( (double)pSection->GetTotalSize( ) / (double)m_uBytesPerCell );
            pSection->SetBuildMemCellMap( true, uCellCount );
            m_aryCellMemoryBlockPtr = pSection->GetMemCellMap( );

            ReSizeScrollBar( );
        }
    }
}

void CMemSectionCellView::ReSizeScrollBar( )
{
    CPoint ptMax( 0, 0 );

    unsigned int uCellCount = (unsigned int)ceil( (double)GetMemorySectionPtr( )->GetTotalSize( ) / (double)m_uBytesPerCell );

    if ( uCellCount > 0 )
    {
        ptMax.x = CellIndexToCellRect( m_uCellPerRow - 1 ).right + GetWndAllignmentOffset( );
        ptMax.y = CellIndexToCellRect( uCellCount - 1 ).bottom + GetWndAllignmentOffset( );
    }

    //
    // resize the view
    //
    if ( ptMax.x != GetScrollLimit( SB_VERT ) || ptMax.y != GetScrollLimit( SB_HORZ ) )
    {
        CSize sizTotal( ptMax.x, ptMax.y );
        SetScrollSizes( MM_TEXT, sizTotal );
    }
}


void CMemSectionCellView::CalculateDimensionToFitWnd( )
{
    const CMemorySection * pSection = GetMemorySectionPtr( );

    CSize sizOffset = GetDrawCellOffset( );
    CRect rectViewWnd;
    GetWindowRect( & rectViewWnd );
    int nViewWidth = rectViewWnd.Width( ) - sizOffset.cx - GetWndAllignmentOffset( );
    int nViewHeight = rectViewWnd.Height( ) - sizOffset.cy - GetWndAllignmentOffset( );

    if ( nViewWidth > 0 && nViewHeight > 0 )
    {
        m_uCellPerRow = nViewWidth / m_uCellRectSizeX;
        unsigned int uColCount = nViewHeight / m_uCellRectSizeY;
        unsigned int uBytesPerCell = (unsigned int)( ceil( (double)(pSection->GetTotalSize( )) / (double)( m_uCellPerRow * uColCount ) ) );

        if ( uBytesPerCell != m_uBytesPerCell )
        {
            m_uBytesPerCell = uBytesPerCell;
            Invalidate( );
        }
    }
    else
    {
        m_uCellPerRow = 0;
        m_uBytesPerCell = 0;
    }
}

void CMemSectionCellView::DrawCellMap( CDC * pDC )
{
    CMemSectionFrame * pFrame = static_cast< CMemSectionFrame * >( GetParentFrame( ) );
    CMemorySection * pSection = GetMemorySectionPtr( );

    if ( pSection == NULL )
    {
        CRect rectView; GetWindowRect( & rectView );
        CPoint ptCenter = rectView.CenterPoint( );
        pDC->SetTextAlign( TA_CENTER );
        pDC->TextOut( ptCenter.x, ptCenter.y, CString( "Section Data Is NOT Avariable." ) );
        return;
    }

    CRect rectCell; rectCell.SetRectEmpty( );
    CRect rectView; GetWindowRect( & rectView ); rectView.OffsetRect( - rectView.left, - rectView.top ); rectView.OffsetRect( GetScrollPosition( ) );
    CSize sizDrawBuffer;
    CRgn rgnView;
    rgnView.CreateRectRgnIndirect( & rectView );

    if ( m_bmpDrawBuffer.m_hObject == NULL )
    {
        m_bmpDrawBuffer.CreateCompatibleBitmap( pDC, rectView.Width( ), rectView.Height( ) );
    }
    else
    {
        //
        // create a draw buffer if not already created correctly
        //
        sizDrawBuffer = m_bmpDrawBuffer.GetBitmapDimension( );
        if ( ( sizDrawBuffer.cx * sizDrawBuffer.cy ) <= ( rectView.Width( ) * rectView.Height( ) ) )
        {
            m_bmpDrawBuffer.DeleteObject( );
            //
            // make the bitmap 2 times larger, so we don't have to recreate another bitmap all the time
            // when user resizes.
            //
            m_bmpDrawBuffer.CreateCompatibleBitmap( pDC, rectView.Width( ), rectView.Height( ) * 2 );
        }
        m_bmpDrawBuffer.SetBitmapDimension( rectView.Width( ), rectView.Height( ) );
    }

    COLORREF cPrevFillColour = 0;
    COLORREF cNewFillColour = 0;

    //
    // create DC based on draw buffer
    //
    CDC dcDrawBuffer;
    CBrush brNewBrush( cPrevFillColour );
    CPen penNewPen( PS_SOLID | PS_GEOMETRIC, 1, RGB( 198, 198, 198 ) );

    dcDrawBuffer.CreateCompatibleDC( pDC );
    CBitmap * pOldBitmap = dcDrawBuffer.SelectObject( & m_bmpDrawBuffer );
    CBrush * pOldBrush = dcDrawBuffer.SelectObject( & brNewBrush );
    CPen * pOldPen = dcDrawBuffer.SelectObject( & penNewPen );

    //
    // get approx to the first and last visible cell in the memory block
    //
    rectCell = CellIndexToCellRect( 0 );
    CSize sizClipOutPos1( rectView.left + GetWndAllignmentOffset( ) - rectCell.left, rectView.top + GetWndAllignmentOffset( ) - rectCell.top );
    int nStartCellIndex = PointerToCellIndex( CPoint( rectView.left + GetWndAllignmentOffset( ), rectView.top + GetWndAllignmentOffset( ) ) );

    CSize sizClipOutPos2( rectView.right - 2 * GetWndAllignmentOffset( ) - rectCell.left, rectView.bottom - 2 * GetWndAllignmentOffset( ) - rectCell.top );
    int nEndCellIndex = PointerToCellIndex( CPoint( rectView.right - 2 * GetWndAllignmentOffset( ), rectView.bottom - 2 * GetWndAllignmentOffset( ) ) );
    nEndCellIndex = min( nEndCellIndex,m_aryCellMemoryBlockPtr.size( ) );

    CPoint ptScrollPos = GetScrollPosition( );

    for ( int i = nStartCellIndex; i < nEndCellIndex; i ++ )
    {
        rectCell = CellIndexToCellRect( i );

        //
        // only draw when cell is visible in the wnd
        //
        if ( rgnView.RectInRegion( & rectCell ) )
        {
            CMemoryBlock * pBlock = m_aryCellMemoryBlockPtr[ i ];
            ASSERT( pBlock != NULL );

            if ( pBlock->IsFreeBlock( ) )
            {
                cNewFillColour = RGB( 255, 255, 255 );
            }
            else
            {
                cNewFillColour = GetGroupIDColour( pBlock->GetGroupID( ) );
            }

            if ( cNewFillColour != cPrevFillColour )
            {
                brNewBrush.DeleteObject( );
                brNewBrush.CreateSolidBrush( cNewFillColour );
                cPrevFillColour = cNewFillColour;
                dcDrawBuffer.SelectObject( & brNewBrush );
            }

            rectCell.OffsetRect( - ptScrollPos );

            if ( m_uCellRectSizeX <= 4 || m_uCellRectSizeY <= 4 )
            {
                dcDrawBuffer.FillRect( & rectCell, & brNewBrush );
            }
            else
            {
                dcDrawBuffer.Rectangle( & rectCell );
            }
        }
    }

    pDC->BitBlt( ptScrollPos.x, ptScrollPos.y, rectView.Width( ), rectView.Height( ), & dcDrawBuffer, 0, 0, SRCCOPY );

    dcDrawBuffer.SelectObject( pOldPen );
    dcDrawBuffer.SelectObject( pOldBrush );
    dcDrawBuffer.SelectObject( pOldBitmap );
}

CSize CMemSectionCellView::GetDrawCellOffset( )
{
    return CSize( 0 + GetWndAllignmentOffset( ), 0 + GetWndAllignmentOffset( ) );
}

int CMemSectionCellView::PointerToCellIndex( CPoint & pt )
{
    CSize sizOffset = GetDrawCellOffset( );

    CPoint ptNew( pt.x - sizOffset.cx, pt.y - sizOffset.cy );

    int nCellX = ptNew.x / m_uCellRectSizeX;
    int nCellY = ptNew.y / m_uCellRectSizeY;

    return nCellY * m_uCellPerRow + nCellX;
}

CRect CMemSectionCellView::CellIndexToCellRect( unsigned int uIndex )
{
    CSize sizOffset = GetDrawCellOffset( );

    int nCellX = uIndex % m_uCellPerRow;
    int nCellY = uIndex / m_uCellPerRow;

    CRect rectCell;
    rectCell.top = sizOffset.cy + nCellY * m_uCellRectSizeY;
    rectCell.left = sizOffset.cx + nCellX * m_uCellRectSizeX;
    rectCell.bottom = rectCell.top + m_uCellRectSizeY;
    rectCell.right = rectCell.left + m_uCellRectSizeX;

    return rectCell;
}

int CMemSectionCellView::AddressToCellIndex( unsigned int uAddress )
{
    const CMemorySection * pSection = GetMemorySectionPtr( );

    if ( pSection->GetBegAddress( ) <= uAddress && pSection->GetEndAddress( ) >= uAddress )
    {
        if ( m_uBytesPerCell == 0 )
        {
            return -1;
        }
        else
        {
            return ( uAddress - pSection->GetBegAddress( ) ) / ( m_uBytesPerCell );
        }
    }
    else
    {
        return -1;
    }
}

void CMemSectionCellView::FocusAtMemoryCursor( )
{
#pragma message( __FILE__"("") : message: Fix CMemSectionCellView::FocusAtMemoryCursor( )." )
    CPoint ptScroll( GetScrollPos( SB_HORZ ), GetScrollPos( SB_VERT ) );

    CRect rectScroll;
    GetScrollRange( SB_HORZ, (int*)& rectScroll.left, (int*)& rectScroll.right );
    GetScrollRange( SB_VERT, (int*)& rectScroll.top, (int*)& rectScroll.bottom );

    CRect rectCursor;
    m_stcBlinkingCursor.GetWindowRect( & rectCursor );
    ScreenToClient( & rectCursor );
    rectCursor.OffsetRect( ptScroll );
    CPoint ptFocus( rectCursor.left, rectCursor.top );

    CRect rectView;
    GetClientRect( & rectView );
    rectView.left = GetScrollPos( SB_HORZ );
    rectView.top = GetScrollPos( SB_VERT );

    if ( rectCursor.left > rectView.right || rectCursor.right < rectView.left ||
         rectCursor.top > rectView.bottom || rectCursor.bottom < rectView.top )
    {
        ptFocus.x = max( rectScroll.left, ptFocus.x - rectView.Width( ) / 2 );
        ptFocus.y = max( rectScroll.top, ptFocus.y - rectView.Height( ) / 2 );
        ScrollToPosition( ptFocus );
    }
}

void CMemSectionCellView::DrawBlinkingCursorAt( CRect & rect )
{
    CPoint ptScrollOffset = GetScrollPosition( );
    rect.OffsetRect( - ptScrollOffset );

    m_stcBlinkingCursor.MoveWindow( rect );

    FocusAtMemoryCursor( );
    //
    // set a timer for blinking every half second
    //
    if ( m_uBlinkingTimerID == 0 )
    {
        m_uBlinkingTimerID = SetTimer( reinterpret_cast< UINT >( & m_stcBlinkingCursor ), 500, NULL );
    }
}

void CMemSectionCellView::HideBlinkingCursor( )
{
    KillTimer( m_uBlinkingTimerID );
    m_stcBlinkingCursor.ShowWindow( SW_HIDE );
}

COLORREF CMemSectionCellView::GetGroupIDColour( const CString & strGroupID ) const
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    if ( pApp->GetMemSessionDataManagerPtr( ) == NULL || pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( ) == NULL )
    {
        return RGB( 128, 128, 128 );
    }
    else
    {
        return pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->GetMemColourByGroupID( strGroupID );
    }
}

void CMemSectionCellView::OnTimer(UINT nIDEvent) 
{
    if ( nIDEvent == m_uBlinkingTimerID )
    {
        if ( m_stcBlinkingCursor.IsWindowVisible( ) )
        {
            m_stcBlinkingCursor.ShowWindow( SW_HIDE );
        }
        else
        {
            m_stcBlinkingCursor.ShowWindow( SW_SHOW );
        }
    }
    else if ( nIDEvent == m_uRedrawDelayTimerID )
    {
        KillTimer( m_uRedrawDelayTimerID );
        m_uRedrawDelayTimerID = 0;
        ReBuildCellMap( );
    }

    CScrollView::OnTimer(nIDEvent);
}

void CMemSectionCellView::OnLButtonDown(UINT nFlags, CPoint point) 
{
    m_ptLeftBClick = point;
    m_nLeftBClickFlags = nFlags;

    CScrollView::OnLButtonDown(nFlags, point);
}

void CMemSectionCellView::OnLButtonUp(UINT nFlags, CPoint point) 
{

    if ( point == m_ptLeftBClick )
    {
        OnLButtonClick( m_nLeftBClickFlags, point );
    }

    CScrollView::OnLButtonUp(nFlags, point);
}

void CMemSectionCellView::OnLButtonClick( UINT nFlags, CPoint point )
{
    unsigned int uCellCount = (unsigned int)ceil( (double)GetMemorySectionPtr( )->GetTotalSize( ) / (double)m_uBytesPerCell );
    point.Offset( GetScrollPosition( ) );

    ShowMemoryLocationCursor( point );
    int nCellIndex = PointerToCellIndex( point );

    if ( nCellIndex >= 0 && nCellIndex < uCellCount )
    {
        CMemSectionFrame * pFrame = static_cast< CMemSectionFrame * >( GetParentFrame( ) );
        pFrame->GetSectionListView( )->SelectMemoryBlock( m_aryCellMemoryBlockPtr[ nCellIndex ] );
    }

    if ( m_bZoomMode )
    {
        if ( nFlags == MK_LBUTTON )
        {
            ZoomIn( );
        }
        else if ( nFlags == MK_RBUTTON )
        {
            ZoomOut( );
        }
    }
}

void CMemSectionCellView::OnRButtonDown(UINT nFlags, CPoint point) 
{
    m_ptLeftBClick = point;
    m_nLeftBClickFlags = nFlags;
	
	CScrollView::OnRButtonDown(nFlags, point);
}

void CMemSectionCellView::OnRButtonUp(UINT nFlags, CPoint point) 
{
    if ( point == m_ptLeftBClick )
    {
        OnRButtonClick( m_nLeftBClickFlags, point );
    }
	
	CScrollView::OnRButtonUp(nFlags, point);
}

void CMemSectionCellView::OnRButtonClick( UINT nFlags, CPoint point )
{
    point.Offset( GetScrollPosition( ) );
    ShowMemoryLocationCursor( point );
    int nCellIndex = PointerToCellIndex( point );

    if ( nCellIndex >= 0 && nCellIndex < m_aryCellMemoryBlockPtr.size( ) )
    {
        CMemSectionFrame * pFrame = static_cast< CMemSectionFrame * >( GetParentFrame( ) );
        pFrame->GetSectionListView( )->SelectMemoryBlock( m_aryCellMemoryBlockPtr[ nCellIndex ] );
    }

    if ( m_bZoomMode )
    {
        if ( nFlags == MK_LBUTTON )
        {
            ZoomIn( );
        }
        else if ( nFlags == MK_RBUTTON )
        {
            ZoomOut( );
        }
    }
}

void CMemSectionCellView::ZoomIn( )
{
    m_uCellPerRow = ceil( (double)m_uCellPerRow * 1.3 );    // 1.3 is a magic number :)
    m_uBytesPerCell /= 2;

    m_uCellPerRow = min( 1024, m_uCellPerRow );
    m_uBytesPerCell = max( 32, m_uBytesPerCell );

    m_bFitToWnd = false;

    ReBuildCellMap( );

    FocusAtMemoryCursor( );
}

void CMemSectionCellView::ZoomOut( )
{
    m_uCellPerRow = ceil( (double)m_uCellPerRow / 1.3 );    // 1.3 is a magic number :)
    m_uBytesPerCell *= 2;

    m_uCellPerRow = max( 1, m_uCellPerRow );
    m_uBytesPerCell = min( GetMemorySectionPtr( )->GetTotalSize( ), m_uBytesPerCell );

    m_bFitToWnd = false;

    ReBuildCellMap( );

    FocusAtMemoryCursor( );
}

