//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemHexView.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemHexView.h"
#include "MemContent.h"

/////////////////////////////////////////////////////////////////////////////
// CMemHexView message handlers

void CMemHexView::OnKillFocus(CWnd* pNewWnd) 
{
	CView::OnKillFocus(pNewWnd);
	
	// TODO: Add your message handler code here
	
}

void CMemHexView::OnSetFocus(CWnd* pOldWnd) 
{
	CView::OnSetFocus(pOldWnd);
	
	// TODO: Add your message handler code here
	
}

void CMemHexView::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	// TODO: Add your message handler code here and/or call default
	
	CView::OnKeyDown(nChar, nRepCnt, nFlags);
}

void CMemHexView::OnChar(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	// TODO: Add your message handler code here and/or call default
	
	CView::OnChar(nChar, nRepCnt, nFlags);
}

void CMemHexView::OnLButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	
	CView::OnLButtonDown(nFlags, point);
}

void CMemHexView::OnLButtonDblClk(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	
	CView::OnLButtonDblClk(nFlags, point);
}

void CMemHexView::OnLButtonUp(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	
	CView::OnLButtonUp(nFlags, point);
}

void CMemHexView::OnMouseMove(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default

	CView::OnMouseMove(nFlags, point);
}

BOOL CMemHexView::OnMouseWheel(UINT nFlags, short zDelta, CPoint pt) 
{
    if ( zDelta < 0 )
    {
        OnVScroll( SB_LINEDOWN, zDelta / 120, CWnd::GetScrollBarCtrl( SB_VERT ) );
    }
    else
    {
        OnVScroll( SB_LINEUP, zDelta / 120, CWnd::GetScrollBarCtrl( SB_VERT ) );
    }
	return CView::OnMouseWheel(nFlags, zDelta, pt);
}

void CMemHexView::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) 
{
    int nNewLineIndex = 0;
    int nLastLineIndex = ( m_uViewStartAddr - m_uMemSpaceStartAddress ) / GetBytePerRow( );

    switch( nSBCode )
    {
        case SB_LINEDOWN:
        {
            nNewLineIndex = nLastLineIndex + 1;
        }
        break;

        case SB_LINEUP:
        {
            nNewLineIndex = nLastLineIndex - 1;
        }
        break;

        case SB_PAGEDOWN:
        {
            nNewLineIndex = nLastLineIndex + CalculateDataRowSize( );
        }
        break;

        case SB_PAGEUP:
        {
            nNewLineIndex = nLastLineIndex - CalculateDataRowSize( );
        }
        break;

        case SB_THUMBTRACK:
        case SB_THUMBPOSITION:
        {
            nNewLineIndex = (int)( (float)nPos / (float)GetScrollLimit( SB_VERT ) * ceil( (double)m_uMemSpaceDataSize / (double)GetBytePerRow( ) ) );
        }
        break;

        case SB_TOP:
        {
            nNewLineIndex = 0;
        }
        break;

        case SB_BOTTOM:
        {
            nNewLineIndex = (int)ceil( (double)m_uMemSpaceDataSize / (double)GetBytePerRow( ) );
        }
        break;

        default:
        {
            CView::OnVScroll(nSBCode, nPos, pScrollBar);
            return;
        }
        break;
    }

    nNewLineIndex = min( nNewLineIndex, (int)ceil( (double)m_uMemSpaceDataSize / (double)GetBytePerRow( ) ) );
    nNewLineIndex = max( nNewLineIndex, 0 );

    m_uViewStartAddr = nNewLineIndex * GetBytePerRow( ) + m_uMemSpaceStartAddress;
    StartAddrToScrollPos( );

    UpdateAddrEditCtrl( );
    UpdateDataEditCtrl( );
}

void CMemHexView::OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) 
{
	// TODO: Add your message handler code here and/or call default

	CView::OnHScroll(nSBCode, nPos, pScrollBar);
}

void CMemHexView::OnSize(UINT nType, int cx, int cy) 
{
    CView::OnSize(nType, cx, cy);

    RePositionAddrEditCtrl( );
    RePositionDataEditCtrl( );

    CalculateScrollSize( );

    ScrollToMemAddr( m_uViewStartAddr );

    UpdateAddrEditCtrl( );
    UpdateDataEditCtrl( );
}

int CMemHexView::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if (CView::OnCreate(lpCreateStruct) == -1)
		return -1;

    ShowScrollBar( SB_VERT );

    CRect rectEmpty; rectEmpty.SetRectEmpty( );

    if ( ! m_edtAddr.Create( ES_LEFT | ES_MULTILINE | ES_READONLY, rectEmpty, this, 0 ) )
    {
        return -1;
    }

    if ( ! m_edtData.Create( ES_LEFT | ES_MULTILINE | ES_READONLY, rectEmpty, this, 0 ) )
    {
        return -1;
    }

    m_fntViewFont.CreatePointFont( 120, "Courier" );

    m_edtAddr.SetFont( & m_fntViewFont );
    m_edtData.SetFont( & m_fntViewFont );

    m_edtAddr.HideCaret( );
    m_edtData.HideCaret( );

    RePositionAddrEditCtrl( );
    RePositionDataEditCtrl( );

    UpdateAddrEditCtrl( );
    UpdateDataEditCtrl( );

    m_edtAddr.ShowWindow( SW_SHOW );
    m_edtData.ShowWindow( SW_SHOW );

    //
    // cheating for find out how many character per line
    //
    CString strText( '?', 1024 );
    m_edtData.SetWindowText( strText );

    return 0;
}

void CMemHexView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
    // do not call UpdateDataEditCtrl( )
    PopulateMemAddr( );
    PopulateMemData( );
}

BOOL CMemHexView::OnEraseBkgnd(CDC* pDC) 
{
    return FALSE;	
	//return CView::OnEraseBkgnd(pDC);
}




int CMemHexView::GetBytePerRow( ) const
{
    //
    // get number of bytes per row can be displayed.
    //
    int nBytePerRow = CalculateDataColumnSize( ) * m_nDigitsInData / 2;

    if ( nBytePerRow == 0 )
    {
        return m_nDigitsInData / 2;
    }
    else
    {
        return nBytePerRow;
    }
}

unsigned int CMemHexView::CalculateViewDataSizeInBytes( ) const
{
    return GetBytePerRow( ) * CalculateDataRowSize( );
}

unsigned int CMemHexView::CalculateDataColumnSize( ) const
{
    //
    // cheat our way through, number of data for each row is binary data plus
    // seperator ( 2 char width ) and plus ascii
    //
    return ( m_edtData.LineLength( ) - 2 ) / ( m_nDigitsInData + 1 + m_nDigitsInData / 2);
}

unsigned int CMemHexView::CalculateDataRowSize( ) const
{
    CRect rectDataEdit; m_edtData.GetRect( & rectDataEdit );
    return rectDataEdit.Height( ) / GetFontHeight( );
}

void CMemHexView::CalculateScrollSize( )
{
    int nScrollMax = min( m_uMemSpaceDataSize / GetBytePerRow( ), 20000 );

    SetScrollRange( SB_VERT, 0, nScrollMax, TRUE );
}

void CMemHexView::ScrollToMemAddr( unsigned int uAddr )
{
    ASSERT( uAddr >= m_uMemSpaceStartAddress );
    m_uViewStartAddr = uAddr;
    StartAddrToScrollPos( );
    UpdateAddrEditCtrl( );
    UpdateDataEditCtrl( );
}

void CMemHexView::ScrollPosToStartAddr( )
{
    int nScrollPos = GetScrollPos( SB_VERT );
    int nRowPerScrollLine = m_uMemSpaceDataSize / GetBytePerRow( ) / GetScrollLimit( SB_VERT );

    m_uViewStartAddr = nScrollPos * nRowPerScrollLine * GetBytePerRow( ) + m_uMemSpaceStartAddress;
}

void CMemHexView::StartAddrToScrollPos( )
{
    int nScrollPos = (int)( ( (float)m_uViewStartAddr - (float)m_uMemSpaceStartAddress ) / (float)m_uMemSpaceDataSize * GetScrollLimit( SB_VERT ) );
    SetScrollPos( SB_VERT, nScrollPos );
}

void CMemHexView::RePositionAddrEditCtrl( )
{
    CRect rectClient;
    GetClientRect( & rectClient );
    CRect rectAddrEdit; rectAddrEdit.SetRectEmpty( );
    int nWidth = GetFontWidth( ) * ( 8 + 4 );
    rectAddrEdit.bottom = rectClient.Height( );
    rectAddrEdit.right = nWidth;
    m_edtAddr.MoveWindow( & rectAddrEdit );
}

void CMemHexView::RePositionDataEditCtrl( )
{
    CRect rectClient; GetClientRect( & rectClient );
    CRect rectAddrEdit; m_edtAddr.GetWindowRect( & rectAddrEdit ); ScreenToClient( & rectAddrEdit );

    CRect rectDataEdit; rectDataEdit.SetRectEmpty( );
    rectDataEdit.bottom = rectClient.Height( );
    rectDataEdit.left = rectAddrEdit.right;
    rectDataEdit.right = rectClient.right;
    m_edtData.MoveWindow( & rectDataEdit );
}

void CMemHexView::UpdateAddrEditCtrl( )
{
    PopulateMemAddr( );
}

void CMemHexView::UpdateDataEditCtrl( )
{
    PopulateMemData( );
}

int CMemHexView::GetFontHeight( ) const
{
    LOGFONT font;
    m_fntViewFont.GetLogFont( & font );
    return ( - font.lfHeight );
}

int CMemHexView::GetFontWidth( ) const
{
    LOGFONT font;
    m_fntViewFont.GetLogFont( & font );

    int nCharWidth = 0;
    GetCharWidth32( *m_edtData.GetDC( ), '0', '1', & nCharWidth );
    return nCharWidth;
}

unsigned int CMemHexView::GetAddrFromScrollPos( ) const
{
    int nPos = GetScrollPos( SB_VERT );

    return ( nPos * GetBytePerRow( ) );
}

void CMemHexView::PopulateMemAddr( )
{
    int nRowCount = CalculateDataRowSize( );
    CString strText = "";
    CString strAddr;
    int nBytesPerRow = GetBytePerRow( );

    unsigned int uRowAddr = m_uViewStartAddr;

    for ( int nRowIdx = 0; nRowIdx < nRowCount; nRowIdx ++ )
    {
        strAddr.Format( "%08x\r\n", uRowAddr );
        uRowAddr += nBytesPerRow;
        strText += strAddr;
    }
    m_edtAddr.SetWindowText( strText );
}

static const char szBIN2HEX[ ] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
static const unsigned char szBIN2ASC[ ] = { ' ', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“',
                                            '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“', '“',  32,  33,  34,  35,  36,  37,  38,  39,
                                             40,  41,  42,  43,  44,  45,  46,  47,  48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,
                                             60,  61,  62,  63,  64,  65,  66,  67,  68,  69,  70,  71,  72,  73,  74,  75,  76,  77,  78,  79,
                                             80,  81,  82,  83,  84,  85,  86,  87,  88,  89,  90,  91,  92,  93,  94,  95,  96,  97,  98,  99,
                                            100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119,
                                            120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139,
                                            130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149,
                                            150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179,
                                            180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199,
                                            200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219,
                                            220, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139,
                                            230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249,
                                            250, 251, 252, 253, 254, 255 };

void CMemHexView::RequestViewData( )
{
    CMemContent * pDoc = NULL;

    if ( static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( ) != NULL )
    {
        pDoc = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetMemoryContentPtr( );
        pDoc->RequestData( m_eMemSpace, GetCurrentViewAddress( ) - 128, GetCurrentViewDataSize( ) + 256 );
    }
}

void CMemHexView::PopulateMemData( )
{
    CMemContent * pDoc = NULL;

    if ( static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( ) != NULL )
    {
        pDoc = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetMemoryContentPtr( );
    }

    CString strText = "";
    unsigned int uAddress = m_uViewStartAddr;

    if ( pDoc != NULL )
    {
        int nRowCount = CalculateDataRowSize( );
        int nColCount = CalculateDataColumnSize( );
        int nCharPerLine = m_edtData.LineLength( );

        CString strData = "";
        CString strAscii = "";
        char szData[ 10 ];
        char szAscii[ 5 ];
        char cData = 0;
        for ( int nRowIdx = 0; nRowIdx < nRowCount; nRowIdx ++ )
        {
            strData = "";
            strAscii = "";
            for ( int nColIdx = 0; nColIdx < nColCount; nColIdx ++ )
            {
                switch( m_nDigitsInData )
                {
                    case 2:
                    {
                        if ( pDoc->GetByteData( m_eMemSpace, uAddress, & cData ) )
                        {
                            szData[0] = szBIN2HEX[ cData >> 4 & 0x0f ];
                            szData[1] = szBIN2HEX[ cData & 0x0f ];

                            szAscii[ 0 ] = szBIN2ASC[ cData ];
                        }
                        else
                        {
                            szData[0] = '?';
                            szData[1] = '?';

                            szAscii[ 0 ] = '?';
                        }
                        szData[2] = ' ';
                        szData[3] = '\0';

                        szAscii[ 1 ] = '\0';
                    }
                    break;

                    case 4:
                    {
                        if ( pDoc->GetByteData( m_eMemSpace, uAddress, & cData ) )
                        {
                            szData[0] = szBIN2HEX[ cData >> 4 & 0x0f ];
                            szData[1] = szBIN2HEX[ cData & 0x0f ];

                            szAscii[ 0 ] = szBIN2ASC[ cData ];
                        }
                        else
                        {
                            szData[0] = '?';
                            szData[1] = '?';

                            szAscii[ 0 ] = '?';
                        }

                        if ( pDoc->GetByteData( m_eMemSpace, uAddress + 1, & cData ) )
                        {
                            szData[2] = szBIN2HEX[ cData >> 4 & 0x0f ];
                            szData[3] = szBIN2HEX[ cData & 0x0f ];

                            szAscii[ 1 ] = szBIN2ASC[ cData ];
                        }
                        else
                        {
                            szData[2] = '?';
                            szData[3] = '?';

                            szAscii[ 1 ] = '?';
                        }
                        szData[4] = ' ';
                        szData[5] = '\0';

                        szAscii[ 2 ] = '\0';
                    }
                    break;

                    case 8:
                    {
                        if ( pDoc->GetByteData( m_eMemSpace, uAddress, & cData ) )
                        {
                            szData[0] = szBIN2HEX[ cData >> 4 & 0x0f ];
                            szData[1] = szBIN2HEX[ cData & 0x0f ];

                            szAscii[ 0 ] = szBIN2ASC[ cData ];
                        }
                        else
                        {
                            szData[0] = '?';
                            szData[1] = '?';

                            szAscii[ 0 ] = '?';
                        }

                        if ( pDoc->GetByteData( m_eMemSpace, uAddress + 1, & cData ) )
                        {
                            szData[2] = szBIN2HEX[ cData >> 4 & 0x0f ];
                            szData[3] = szBIN2HEX[ cData & 0x0f ];

                            szAscii[ 1 ] = szBIN2ASC[ cData ];
                        }
                        else
                        {
                            szData[2] = '?';
                            szData[3] = '?';

                            szAscii[ 1 ] = '?';
                        }

                        if ( pDoc->GetByteData( m_eMemSpace, uAddress + 2, & cData ) )
                        {
                            szData[4] = szBIN2HEX[ cData >> 4 & 0x0f ];
                            szData[5] = szBIN2HEX[ cData & 0x0f ];

                            szAscii[ 2 ] = szBIN2ASC[ cData ];
                        }
                        else
                        {
                            szData[4] = '?';
                            szData[5] = '?';

                            szAscii[ 2 ] = '?';
                        }

                        if ( pDoc->GetByteData( m_eMemSpace, uAddress + 3, & cData ) )
                        {
                            szData[6] = szBIN2HEX[ cData >> 4 & 0x0f ];
                            szData[7] = szBIN2HEX[ cData & 0x0f ];

                            szAscii[ 3 ] = szBIN2ASC[ cData ];
                        }
                        else
                        {
                            szData[6] = '?';
                            szData[7] = '?';

                            szAscii[ 3 ] = '?';
                        }
                        szData[8] = ' ';
                        szData[9] = '\0';

                        szAscii[ 4 ] = '\0';
                    }
                    break;
                }

                strData += szData;
                strAscii += szAscii;

                uAddress += m_nDigitsInData / 2;
            }
            strText += strData;
            strText += "  ";
            strText += strAscii;
            strText += CString( ' ', nCharPerLine - ( strData.GetLength( ) + 2 + strAscii.GetLength( ) ) );
        }
    }
    else
    {
        int nRowCount = CalculateDataRowSize( );
        int nColCount = CalculateDataColumnSize( );

        char szData[10];
        char szAscii[ 5 ];
        for ( int nRowIdx = 0; nRowIdx < nRowCount; nRowIdx ++ )
        {
            CString strData;
            CString strAscii;
            for ( int nColIdx = 0; nColIdx < nColCount; nColIdx ++ )
            {
                strData = "";
                strAscii = "";
                switch( m_nDigitsInData )
                {
                    case 2:
                    {
                        szData[0] = '?';
                        szData[1] = '?';
                        szData[2] = ' ';
                        szData[3] = '\0';

                        szAscii[ 0 ] = '?';
                        szAscii[ 1 ] = '\0';
                    }
                    break;

                    case 4:
                    {
                        szData[0] = '?';
                        szData[1] = '?';
                        szData[2] = '?';
                        szData[3] = '?';
                        szData[4] = ' ';
                        szData[5] = '\0';

                        szAscii[ 0 ] = '?';
                        szAscii[ 1 ] = '?';
                        szAscii[ 2 ] = '\0';
                    }
                    break;

                    case 8:
                    {
                        szData[0] = '?';
                        szData[1] = '?';
                        szData[2] = '?';
                        szData[3] = '?';
                        szData[4] = '?';
                        szData[5] = '?';
                        szData[6] = '?';
                        szData[7] = '?';
                        szData[8] = ' ';
                        szData[9] = '\0';

                        szAscii[ 0 ] = '?';
                        szAscii[ 1 ] = '?';
                        szAscii[ 2 ] = '?';
                        szAscii[ 3 ] = '?';
                        szAscii[ 4 ] = '\0';
                    }
                    break;
                }
                strData += szData;
                strAscii += szAscii;
            }
            strText += strData;
            strText += "  ";
            strText += strAscii;
        }
    }
    m_edtData.SetWindowText( strText );
}

