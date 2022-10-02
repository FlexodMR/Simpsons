#include <pch.hpp>
#include <plugins/log/logwnd.h>

#define BKGD_COLOR RGB( 50, 50, 50 )

extern void destroy_log_window( CLogWnd * );

CLogWnd::CLogWnd( string_id sid )
{
    strcpy( id, sid );
}

CLogWnd::~CLogWnd()
{
    
}

BEGIN_MESSAGE_MAP(CLogWnd, CWnd)
	ON_WM_CREATE()
	ON_WM_SIZE()
    ON_WM_CTLCOLOR()
    ON_WM_DESTROY()
END_MESSAGE_MAP()

int CLogWnd::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if (CWnd::OnCreate(lpCreateStruct) == -1)
		return -1;
	
	m_wndEdit_Messages.Create( WS_DLGFRAME | WS_HSCROLL | WS_VSCROLL | ES_MULTILINE | ES_AUTOVSCROLL | ES_AUTOHSCROLL | WS_CHILD | WS_VISIBLE, CRect( 0,0,0,0 ), this, 0xFF00 );	
	m_wndEdit_Messages.LimitText( INT_MAX );

    CFont mono;
	mono.CreateStockObject( SYSTEM_FIXED_FONT );

    m_wndEdit_Messages.SetFont( & mono );

    m_BkgBrush.CreateSolidBrush( BKGD_COLOR );
    
	return 0;
}

void CLogWnd::OnSize(UINT nType, int cx, int cy) 
{
	CWnd::OnSize(nType, cx, cy);
	
    m_wndEdit_Messages.MoveWindow( 0, 0, cx, cy, true );
	
}

void CLogWnd::AddText(const char *pText)
{
    if ( pText != NULL )
    {
		int end = m_wndEdit_Messages.GetWindowTextLength( );

		if ( end >= INT_MAX )
		{
			m_wndEdit_Messages.SetSel( 0, -1 );
			m_wndEdit_Messages.Clear( );
		}

		m_wndEdit_Messages.SetSel( end, end, false );
		m_wndEdit_Messages.ReplaceSel( pText, false );
    }

}

BOOL CLogWnd::PreCreateWindow(CREATESTRUCT& cs) 
{
	cs.style |= WS_CLIPCHILDREN;
	
	return CWnd::PreCreateWindow(cs);
}

HBRUSH CLogWnd::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor)
{
    pDC->SetTextColor( RGB( 200, 200, 200) );
    pDC->SetBkColor( BKGD_COLOR );   
    
    return m_BkgBrush;
}

void CLogWnd::OnDestroy( void )
{
    destroy_log_window( this );
}
	