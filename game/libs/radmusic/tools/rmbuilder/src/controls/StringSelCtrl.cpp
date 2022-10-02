
#include "pch.hpp"
#include "../../res/resource.h"
#include "StringSelCtrl.h"
#include "controls.h"

/////////////////////////////////////////////////////////////////////////////
// CStringSelCtrl

#define LED_CTRL_ID    100
#define BUTTON_UP_ID   101
#define BUTTON_DOWN_ID 102
#define WIDTH 160
#define HEIGHT 40

CStringSelCtrl::CStringSelCtrl()
    :
    selected_item( -1 )
{

}

BOOL CStringSelCtrl::Create(
    const char * p_name,
    unsigned int characters,
    CWnd * pParent,
    UINT id,
    CPoint & pos )
{
    m_Name = p_name;
        
	CWnd::Create( NULL, "stringsel" , WS_VISIBLE | WS_CHILD | WS_CLIPCHILDREN, CRect(pos.x, pos.y,
		pos.x + WIDTH, pos.y + HEIGHT), pParent, id, NULL);
		
	return TRUE;
}

CStringSelCtrl::~CStringSelCtrl()
{
    m_wndLedCtrl.DestroyWindow( );   
    m_wndButtonCtrl_Up.DestroyWindow( ); 
    m_wndButtonCtrl_Down.DestroyWindow( ); 

}

BEGIN_MESSAGE_MAP(CStringSelCtrl, CWnd)
//{{AFX_MSG_MAP(CStringSelCtrl)
ON_WM_PAINT()
ON_COMMAND( BUTTON_UP_ID, OnButtonUp )
ON_COMMAND( BUTTON_DOWN_ID, OnButtonDown )
ON_WM_CREATE()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CStringSelCtrl message handlers

void CStringSelCtrl::OnPaint() 
{	
	CPaintDC dcScreen(this);
	CRect r;
	GetClientRect( & r );
	
    draw_bg( & r );
    text_out( 16, 3, m_Name );
    
    dcScreen.BitBlt( 0, 0, r.Width(), r.Height( ), & back_dc(), 0, 0, SRCCOPY );	

/*    for (unsigned int i = 0; i < num_characters; i ++ )
    {
        char c = p_text[ i ];
        
        unsigned int row = c / 16;
        unsigned int column = c % 16;
        
        // Draw background	
	    back_dc().BitBlt(
            i * CHARACTER_WIDTH, 0, CHARACTER_WIDTH, CHARACTER_HEIGHT,
            & control_dc(), column * CHARACTER_WIDTH, row * CHARACTER_HEIGHT, SRCCOPY );
    } */


    // Blast it to the screen
    	
	//dcScreen.BitBlt(0,0, CHARACTER_WIDTH * num_characters, CHARACTER_HEIGHT, &back_dc(), 0, 0, SRCCOPY);
}


int CStringSelCtrl::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CWnd::OnCreate(lpCreateStruct) == -1)
        return -1;

    m_wndLedCtrl.Create( 18,     this, LED_CTRL_ID, CPoint( 36, 20 ) );
    m_wndButtonCtrl_Up.Create(   arrow_up, this, BUTTON_UP_ID, CPoint( 16, 16 ) );
    m_wndButtonCtrl_Down.Create( arrow_down,  this, BUTTON_DOWN_ID, CPoint( 16, 16 + 9 ) );

    return 0;
}

void CStringSelCtrl::AddItem( const char * p_string )
{
    m_Strings.Add( CString( p_string ) );
}

void CStringSelCtrl::SelectItem( unsigned int item )
{
    ASSERT( item < (unsigned int )m_Strings.GetCount( ) );
    
    if ( item != selected_item )
    {
        selected_item = item;
    
        m_wndLedCtrl.SetText( m_Strings.GetAt( selected_item ) );
    }
}

void CStringSelCtrl::OnButtonUp( void )
{
    if ( m_Strings.GetCount( ) > 0 )
    {
        if ( selected_item == -1 )
        {
            selected_item = 0;
        }
        
        if ( selected_item == 0 )
        {
            selected_item = m_Strings.GetCount( ) - 1;
        }
        else
        {
            selected_item--;
        }
        
        m_wndLedCtrl.SetText( m_Strings.GetAt( selected_item ) );
        
        SendParentMessage( );
    }
}

void CStringSelCtrl::OnButtonDown( void )
{
    if ( m_Strings.GetCount( ) > 0 )
    {
        if ( selected_item == -1 )
        {
            selected_item = 0;
        }
            
        selected_item ++;
        
        if ( selected_item >= (unsigned int)m_Strings.GetCount( ) )
        {
            selected_item = 0;
        }
        
        m_wndLedCtrl.SetText( m_Strings.GetAt( selected_item ) );
        
        SendParentMessage( );                 
    }
}

unsigned int CStringSelCtrl::GetSelectedItem( void )
{
    return selected_item;
}

void CStringSelCtrl::SendParentMessage( void )
{
    unsigned int id = GetDlgCtrlID( );
    
    GetParent( )->PostMessage( WM_COMMAND, MAKEWPARAM(id,0), (LPARAM) m_hWnd );
}

