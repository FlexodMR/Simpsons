// LayerOrganizerDlg.cpp : implementation file
//

#include "stdafx.h"
#include "xcon.h"
#include "LayerOrganizerDlg.h"

#include "FeData\NamedElements\Page.h"
#include "FeData\NamedElements\Screen.h"
#include "GUI\Undo\ActionScreenSettings.h"
#include "GUI\Undo\ActionLayerSettings.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CLayerOrganizerDlg dialog


CLayerOrganizerDlg::CLayerOrganizerDlg()
//CLayerOrganizerDlg::CLayerOrganizerDlg(CWnd* pParent /*=NULL*/)
    //: CDialog(CLayerOrganizerDlg::IDD, NULL)
{
    //{{AFX_DATA_INIT(CLayerOrganizerDlg)
        // NOTE: the ClassWizard will add member initialization here
    //}}AFX_DATA_INIT

    m_SelectedLine = 0;
    m_RowHeight = 30;
    m_BufferSize = 4;
    m_MaxWidth = 100;
    m_TextHeight = 20;
    m_HeaderHeight = 0;
    m_ButtonSize = 16;
    m_HorizDisp = 0;

    m_HorizontalScrollSize = 10;
    m_VerticalScrollSize = 10;
}


void CLayerOrganizerDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CLayerOrganizerDlg)
        // NOTE: the ClassWizard will add DDX and DDV calls here
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CLayerOrganizerDlg, CDialog)
    //{{AFX_MSG_MAP(CLayerOrganizerDlg)
    ON_WM_PAINT()
    ON_WM_LBUTTONDOWN()
    ON_WM_VSCROLL()
    ON_WM_DESTROY()
    ON_WM_HSCROLL()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CLayerOrganizerDlg message handlers

void CLayerOrganizerDlg::OnInitialUpdate(CXConDoc* pDoc)
{
    using namespace FeData;

    m_pDoc = pDoc;

}


BOOL CLayerOrganizerDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();
    
    // TODO: Add extra initialization here

     return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CLayerOrganizerDlg::OnPaint() 
{

    using namespace FeData;

    Screen* screen = m_pDoc->GetScreen();
    if( screen == NULL )
    {
        return;
    }

    HICON hIcon;

    COLORREF colorNormalBackground   = GetSysColor( COLOR_3DFACE );
    COLORREF colorNormalEdge         = GetSysColor( COLOR_3DSHADOW );
    COLORREF colorNormalText         = GetSysColor( COLOR_WINDOWTEXT );

    COLORREF colorLighten            = GetSysColor( COLOR_3DHILIGHT );
    COLORREF colorDarken             = GetSysColor( COLOR_3DSHADOW ); 

    COLORREF colorSelectedText       = GetSysColor( COLOR_WINDOWTEXT );

    int red   = (GetRValue( colorNormalBackground ) + GetRValue( colorLighten )) / 2;
    int green = (GetGValue( colorNormalBackground ) + GetGValue( colorLighten )) / 2;
    int blue  = (GetBValue( colorNormalBackground ) + GetBValue( colorLighten )) / 2;

    COLORREF colorSelectedBackground = RGB( red, green, blue );

    RECT tempRect;
    GetWindowRect( &tempRect );

    int screenHeight = tempRect.bottom - tempRect.top;

    int m_LineWidth = tempRect.right - tempRect.left;

    if( tempRect.bottom - tempRect.top < m_VerticalScrollSize )
    {
        m_LineWidth -= GetSystemMetrics( SM_CYVSCROLL );
    }

    if( m_MaxWidth > m_LineWidth )
    {
        m_LineWidth = m_MaxWidth;
    }

    int currHeight = 0;

    // Free row data list
    int nElements = m_RowDataList.GetNumberOfElements();
    for( int i = nElements - 1; i >= 0; i-- )
    {
        RowData* rowData = m_RowDataList.GetElement( i );
        delete rowData;
        m_RowDataList.RemoveElement( i );
    }

    CPaintDC dc( this ); // device context for painting
    
    // TODO: Add your message handler code here
    CWnd* frameBox = GetDlgItem( IDC_LAYER_ORGANIZER_FRAME );

    dc.SelectStockObject( ANSI_VAR_FONT );
   
    CPen normalEdgePen( PS_SOLID, 1, colorNormalEdge );
    dc.SelectObject( &normalEdgePen );

    CXConApp* app = App();
    
    for( i = 0; i < screen->GetNumberOfPages(); i++ )
    {
        Page* page = screen->GetPage( i );
        if( page == NULL )
        {
            continue;
        }

        RowData* rowData = new RowData;
        if( rowData == NULL )
        {
            g_OutputMessage.Add( "LayerOrganizer::OnPaint - out of memory", ErrorOutputMessage );
            return;
        }

        rowData->m_nPage = i;
        rowData->m_nLayer = -1; // -1 means no layer concerned

        // Store row data
        m_RowDataList.AddElementToBack( rowData );
 
 
        // Draw the top separator line if needed
        if( i != 0 )
        {
            currHeight += m_RowHeight;

            //dc.MoveTo( 2, currHeight + m_HeaderHeight);
            //dc.LineTo( m_LineWidth - 2, currHeight + m_HeaderHeight);
        }

        // Draw border box
        tempRect.left = m_HorizDisp;
        tempRect.top = currHeight + m_HeaderHeight;
        tempRect.right = m_BufferSize*3 + m_ButtonSize*3 + m_LineWidth + m_HorizDisp;
        tempRect.bottom = tempRect.top + m_RowHeight;

        dc.Draw3dRect( &tempRect, colorLighten, colorNormalEdge );

        // Draw the Exportability button
        tempRect.left   = m_BufferSize + m_HorizDisp; 
        tempRect.top    = (currHeight) + ((m_RowHeight - m_TextHeight) / 2)  + m_HeaderHeight;
        tempRect.right  = m_BufferSize + m_ButtonSize + m_HorizDisp;
        tempRect.bottom = tempRect.top + m_ButtonSize;

        dc.Draw3dRect( &tempRect, colorNormalEdge, colorLighten );

        if( screen->IsExportable( i ) )
        {
            hIcon = app->LoadIcon( MAKEINTRESOURCE(IDI_EXPORTABLE) );
            dc.DrawIcon( tempRect.left, tempRect.top, hIcon );
        }

        // Set the text colors
        dc.SetTextColor( colorNormalText );
        dc.SetBkColor( colorNormalBackground );

        // Draw the text
        tempRect.left   = m_BufferSize*2 + m_ButtonSize + m_HorizDisp;
        tempRect.top    = (currHeight) + ((m_RowHeight - m_TextHeight) / 2) + m_HeaderHeight;
        tempRect.right  = tempRect.left + m_LineWidth;
        tempRect.bottom = tempRect.top  + m_TextHeight - m_BufferSize;

        CString frameInfo = page->GetName();
        //frameInfo.Format( "Hello there everyone %d", i );

        dc.DrawText( frameInfo, &tempRect, DT_LEFT  );

        for( int j = 0; j < page->GetNumberOfLayers(); j++ )
        {
            Layer* layer = page->GetLayer( j );
            if( layer == NULL )
            {
                continue;
            }

            RowData* rowData = new RowData;
            if( rowData == NULL )
            {
                g_OutputMessage.Add( "LayerOrganizer::OnPaint - out of memory", ErrorOutputMessage );
                return;
            }

            rowData->m_nPage = i;
            rowData->m_nLayer = j;

            // Store row data
            m_RowDataList.AddElementToBack( rowData );

            currHeight += m_RowHeight;

            // Draw the top separator line
            //dc.MoveTo( 2, currHeight + m_HeaderHeight);
            //dc.LineTo( m_LineWidth - 2, currHeight + m_HeaderHeight);

            // Draw border box
            tempRect.left = m_HorizDisp;
            tempRect.top = currHeight + m_HeaderHeight;
            tempRect.right = m_BufferSize*3 + m_ButtonSize*3 + m_LineWidth + m_HorizDisp;
            tempRect.bottom = tempRect.top + m_RowHeight;

            dc.Draw3dRect( &tempRect, colorLighten, colorNormalEdge );

            // Draw the Visibility button
            tempRect.left   = m_BufferSize*2 + m_ButtonSize + m_HorizDisp; 
            tempRect.top    = (currHeight) + ((m_RowHeight - m_TextHeight) / 2) + m_HeaderHeight;
            tempRect.right  = tempRect.left + m_ButtonSize;
            tempRect.bottom = tempRect.top + m_ButtonSize;

            dc.Draw3dRect( &tempRect, colorNormalEdge, colorLighten );

            if( layer->IsVisible() )
            {
                hIcon = app->LoadIcon( MAKEINTRESOURCE(IDI_VIEWABLE) );
                dc.DrawIcon( tempRect.left, tempRect.top, hIcon );
            }

            // Draw the Editability button
            tempRect.left   = m_BufferSize*3 + m_ButtonSize*2 + m_HorizDisp; 
            tempRect.top    = (currHeight) + ((m_RowHeight - m_TextHeight) / 2) + m_HeaderHeight;
            tempRect.right  = tempRect.left + m_ButtonSize;
            tempRect.bottom = tempRect.top + m_ButtonSize;

            dc.Draw3dRect( &tempRect, colorNormalEdge, colorLighten );

            if( layer->IsEditable() )
            {
                hIcon = app->LoadIcon( MAKEINTRESOURCE(IDI_EDITABLE) );
                dc.DrawIcon( tempRect.left, tempRect.top, hIcon );
            }

            // Set the text colors
            dc.SetTextColor( colorNormalText );
            dc.SetBkColor( colorNormalBackground );

            // Draw the text
            tempRect.left   = tempRect.right + m_BufferSize;
            tempRect.top    = (currHeight) + ((m_RowHeight - m_TextHeight) / 2) + m_HeaderHeight;
            tempRect.right  = tempRect.left + m_LineWidth;
            tempRect.bottom = tempRect.top  + m_TextHeight - m_BufferSize;

            CString frameInfo = layer->GetName();
            //frameInfo.Format( "Hello there everyone %d", i );

            dc.DrawText( frameInfo, &tempRect, DT_LEFT  );
        }
    }
    
    GetClientRect( &tempRect );

    SCROLLINFO scrollInfo;
    scrollInfo.cbSize = sizeof(SCROLLINFO);
    scrollInfo.fMask = SIF_RANGE | SIF_PAGE;
    scrollInfo.nMin = 0;
    scrollInfo.nMax = currHeight + m_RowHeight;

    // A scroll bar uses this value to determine
    // the appropriate size of the proportional scroll box. 
    scrollInfo.nPage = tempRect.bottom;

    SetScrollInfo( SB_VERT, &scrollInfo, TRUE );

    scrollInfo.nPage = m_LineWidth / 4;
    scrollInfo.nMax = m_LineWidth;

    SetScrollInfo( SB_HORZ, &scrollInfo, TRUE );

    ReleaseDC( &dc );

}

void CLayerOrganizerDlg::OnLButtonDown(UINT nFlags, CPoint point) 
{
    using namespace FeData;

    int buttonColumn = OUTSIDE;
    int nPage = -1;
    int nLayer = -1;
    int left = 0, right = 0, top = 0, bottom = 0;

    // Is (x,y) in a button?
    if( (IsXInButtonColumn( point.x - m_HorizDisp, buttonColumn, left, right ))
        && (IsYInButtonRow( point.y - m_HeaderHeight, nPage, nLayer, top, bottom )) )
    {
        Screen* screen = m_pDoc->GetScreen();
        if( screen != NULL )
        {
            if( nPage >= 0 )
            {
                Page* page = screen->GetPage( nPage );

                if( buttonColumn == EXPORTABLE_COL && !screen->IsReadOnly() )
                {

                    m_pDoc->AddAction( new ActionScreenSettings( screen, 
                                                                !screen->IsExportable( nPage ), 
                                                                nPage,
                                                                ACTION_SCREEN_SETTINGS_PAGE_EXPORTABLE ));
                }
                else if( nLayer >= 0 )
                {
                    Layer* layer = page->GetLayer( nLayer );

                    if( buttonColumn == VISIBLE_COL && !page->IsReadOnly() )
                    {
                        m_pDoc->AddAction( new ActionLayerSettings( layer->GetPage(),
                                                       layer, 
                                                       !layer->IsVisible(),
                                                       ACTION_LAYER_SETTINGS_VISIBLE ) );
                    }
                    else if( buttonColumn == EDITABLE_COL && !page->IsReadOnly() )
                    {
                        m_pDoc->AddAction( new ActionLayerSettings( layer->GetPage(),
                                                       layer, 
                                                       !layer->IsEditable(),
                                                       ACTION_LAYER_SETTINGS_EDITABLE ) );
                    }
                }

                RECT tempRect;
                tempRect.left = left + m_HorizDisp;
                tempRect.right = right + m_HorizDisp;
                tempRect.top = top + m_HeaderHeight;
                tempRect.bottom = bottom + m_HeaderHeight;
                
                // We want to redraw the button
                InvalidateRect( &tempRect );
            }
        }
    }
    
    CDialog::OnLButtonDown(nFlags, point);
}

BOOL CLayerOrganizerDlg::IsXInButtonColumn( int x, int& buttonColumn, int& left, int& right )
{
    BOOL bRet = FALSE;
    buttonColumn = OUTSIDE;

    // Is x in the Exportable column?
    if( (x >= (left = m_BufferSize)) && 
        (x <= (right = m_BufferSize + m_ButtonSize)) )
    {
        bRet = TRUE;
        buttonColumn = EXPORTABLE_COL;
    }
    // Is x in the Visible column?
    else if( (x >= (left = m_BufferSize*2 + m_ButtonSize) ) &&
        (x <= (right = m_BufferSize*2 + m_ButtonSize*2 )))
    {
        bRet = TRUE;
        buttonColumn = VISIBLE_COL;
    }
    // Is x in the Editable column?
    else if( (x >= (left = m_BufferSize*3 + m_ButtonSize*2) ) &&
        (x <= (right = m_BufferSize*3 + m_ButtonSize*3) ))
    {
        bRet = TRUE;
        buttonColumn = EDITABLE_COL;
    }

    return bRet;
}

BOOL CLayerOrganizerDlg::IsYInButtonRow( int y, int& nPage, int& nLayer, int& top, int& bottom )
{
    BOOL bRet = FALSE;
    nPage = -1;
    nLayer = -1;

    int row = y / m_RowHeight;
    top = (row * m_RowHeight) + ((m_RowHeight - m_TextHeight) / 2);
    bottom = top + m_ButtonSize;

    // Is y in the row?
    if( (y >= top) && (y <= bottom))
    {
        RowData* rowData = m_RowDataList.GetElement( row );
        if( rowData != NULL )
        {
            nPage = rowData->m_nPage;
            nLayer = rowData->m_nLayer;
            bRet = TRUE;
        }
    }
    return bRet;
}


void CLayerOrganizerDlg::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) 
{
    // TODO: Add your message handler code here and/or call default
       int y = GetScrollPos(SB_VERT);
    int yOrig = y;
    int yMax = GetScrollLimit( SB_VERT );

    RECT tempRect;
    GetClientRect( &tempRect );

    switch( nSBCode )
    {
    case SB_TOP:
        y = 0;
        break;
    case SB_BOTTOM:
        y = yMax;
        break;
    case SB_LINEUP:
        y -= m_BufferSize;
        break;
    case SB_LINEDOWN:
        y += m_BufferSize;
        break;
    case SB_PAGEUP:
        y -= tempRect.bottom;
        break;
    case SB_PAGEDOWN:
        y += tempRect.bottom;
        break;
    case SB_THUMBTRACK:
        y = nPos;
        break;
    }

      if( y < 0 )
        y = 0;
    else if( y > yMax )
        y = yMax;

    //ScrollWindowEx( 0, -(y-yOrig), NULL, NULL, NULL, NULL, SW_ERASE );

    if( y != yOrig )
    {
        SetScrollPos( SB_VERT, y );
        m_HeaderHeight = -y;
    }

    Invalidate();

    //UpdateWindow();
    
    CDialog::OnVScroll(nSBCode, nPos, pScrollBar);
}

void CLayerOrganizerDlg::OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) 
{
    int x = GetScrollPos(SB_HORZ);
    int xOrig = x;
    int xMax = GetScrollLimit( SB_HORZ );

    //RECT tempRect;
    //GetClientRect( &tempRect );

    switch( nSBCode )
    {
    case SB_LEFT:
        x = 0;
        break;
    case SB_RIGHT:
        x = xMax;
        break;
    case SB_LINELEFT:
        x -= m_BufferSize;
        break;
    case SB_LINERIGHT:
        x += m_BufferSize;
        break;
    case SB_PAGELEFT:
        x -= m_LineWidth / 4;
        break;
    case SB_PAGERIGHT:
        x += m_LineWidth / 4;
        break;
    case SB_THUMBTRACK:
        x = nPos;
        break;
    }

      if( x < 0 )
        x = 0;
    else if( x > xMax )
        x = xMax;

    //ScrollWindowEx( 0, -(y-yOrig), NULL, NULL, NULL, NULL, SW_ERASE );

    if( x != xOrig )
    {
        SetScrollPos( SB_HORZ, x );
        m_HorizDisp = -x;
    }

    Invalidate();

    //UpdateWindow();
    CDialog::OnHScroll(nSBCode, nPos, pScrollBar);
}

void CLayerOrganizerDlg::Rebuild()
{
    Invalidate();
}

void CLayerOrganizerDlg::OnDestroy() 
{
    CDialog::OnDestroy();
    
    int nElements = m_RowDataList.GetNumberOfElements();

    for( int i = 0; i < nElements; i++ )
    {
        RowData* rowData = m_RowDataList.GetElement( i );
        delete rowData;
    }
    
}


