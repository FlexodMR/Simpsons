
#include "pch.hpp"
#include "../../res/resource.h"
#include "EventCtrl.h"
#include "controls.h"

/////////////////////////////////////////////////////////////////////////////
// CEventCtrl

#define BUTTON_ID   101
#define WIDTH 160
#define HEIGHT 26

CEventCtrl::CEventCtrl()
{

}

BOOL CEventCtrl::Create(
    const char * p_name,
    CWnd * pParent,
    UINT id,
    CPoint & pos )
{
    m_Name = p_name;
        
	CWnd::Create( NULL, "stringsel" , WS_VISIBLE | WS_CHILD  | WS_CLIPCHILDREN , CRect(pos.x, pos.y,
		pos.x + WIDTH, pos.y + HEIGHT), pParent, id, NULL);
		
	return TRUE;
}

CEventCtrl::~CEventCtrl()
{
    m_wndButtonCtrl.DestroyWindow( ); 

}

BEGIN_MESSAGE_MAP(CEventCtrl, CWnd)
//{{AFX_MSG_MAP(CEventCtrl)
ON_WM_PAINT()
ON_COMMAND( BUTTON_ID, OnButton )
ON_WM_CREATE()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CEventCtrl message handlers

void CEventCtrl::OnPaint() 
{	
	CPaintDC dcScreen(this);
	CRect r;
	GetClientRect( & r );
	
    draw_bg( & r );
    
    draw_text( 35, 6, r.Width( ) - 35 - 12, r.Height( )- 4, m_Name );
    
    dcScreen.BitBlt( 0, 0, r.Width(), r.Height( ), & back_dc(), 0, 0, SRCCOPY );	
}


int CEventCtrl::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CWnd::OnCreate(lpCreateStruct) == -1)
        return -1;

    m_wndButtonCtrl.Create( play1,  this, BUTTON_ID, CPoint( 14, 5 ) );

    return 0;
}

void CEventCtrl::OnButton( void )
{
    unsigned int id = GetDlgCtrlID( );
    
    GetParent( )->PostMessage( WM_COMMAND, MAKEWPARAM(id,0), (LPARAM) m_hWnd );
}
