
#include "pch.hpp"
#include "MainCanvas.h"

#define BKG_COLOR (RGB(0,0,75))

HWND g_main_canvas_handle = 0;

BEGIN_MESSAGE_MAP(CMainCanvas, CScrollView)
    ON_WM_CREATE( )
    ON_WM_ERASEBKGND()    
    ON_WM_NCDESTROY()
    ON_WM_DESTROY( )
END_MESSAGE_MAP( )
   
CMainCanvas::CMainCanvas( )
{
}

CMainCanvas::~CMainCanvas( )
{
}

BOOL CMainCanvas::OnCreate( LPCREATESTRUCT lpcs )
{
    SetScrollSizes(
        MM_TEXT,
        CSize( 10000, 10000 ),
        CSize( 100, 100 ),
        CSize( 10, 10 ) );
        
    g_main_canvas_handle = this->m_hWnd;
        
    return TRUE;
}

 void CMainCanvas::OnDestroy( )
 {
    g_main_canvas_handle = 0;
    
    CWnd::OnDestroy( );
 }

void CMainCanvas::OnDraw( CDC * pCDC )
{
    CRect r;
    GetClientRect( & r );
    
    CPoint point = GetScrollPosition( );
    
    r.OffsetRect( point );
    
    pCDC->FillSolidRect( r, BKG_COLOR );
}

BOOL CMainCanvas::OnEraseBkgnd(CDC* pDC)
{
    return TRUE;
}

void CMainCanvas::OnNcDestroy()
{
    //CScrollView::OnNcDestroy();

    // TODO: Add your message handler code here
}

extern void framework_canvas_scroll( unsigned int, unsigned int); // HACK
    
BOOL CMainCanvas::OnScroll(UINT nScrollCode, UINT nPos, BOOL bDoScroll)
{
    BOOL ok = CScrollView::OnScroll(nScrollCode, nPos, bDoScroll);
    
    CPoint p = GetScrollPosition( );
    
    framework_canvas_scroll( p.x, p.y ); // HACK
    return ok;
}
