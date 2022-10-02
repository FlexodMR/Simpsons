// FaderCtrl.cpp : implementation file
//
#include "pch.hpp"
#include "../../res/resource.h"
#include "LedCtrl.h"
#include "controls.h"

/////////////////////////////////////////////////////////////////////////////
// CLedCtrl

#define CHARACTER_WIDTH  6
#define CHARACTER_HEIGHT 9
#define CHARACTER_COLUMNS 16
#define CHARACTER_ROWS    16
#define TOTAL_WIDTH  ( CHARACTER_WIDTH  * CHARACTER_COLUMNS )
#define TOTAL_HEIGHT ( CHARACTER_HEIGHT * CHARACTER_ROWS )


CLedCtrl::CLedCtrl()
{

}

BOOL CLedCtrl::Create(
    unsigned int characters,
    CWnd * pParent,
    UINT id,
    CPoint & pos )
{

    num_characters = characters;
    p_text = new char[ num_characters + 1 ];
    ::memset( p_text, 0, num_characters + 1 );
    strcpy( p_text, "" );
        
	CWnd::Create( NULL, "led" , WS_VISIBLE | WS_CHILD, CRect(pos.x, pos.y,
		pos.x + CHARACTER_WIDTH * characters, pos.y + CHARACTER_HEIGHT), pParent, id, NULL);
	
	return TRUE;
}

CLedCtrl::~CLedCtrl()
{
    delete [] p_text;
}

BEGIN_MESSAGE_MAP(CLedCtrl, CWnd)
//{{AFX_MSG_MAP(CLedCtrl)
ON_WM_PAINT()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CLedCtrl message handlers

void CLedCtrl::OnPaint() 
{	
	CPaintDC dcScreen(this);

    for (unsigned int i = 0; i < num_characters; i ++ )
    {
        char c = p_text[ i ];
        
        unsigned int row = c / 16;
        unsigned int column = c % 16;
        
        // Draw background	
	    back_dc().BitBlt(
            i * CHARACTER_WIDTH, 0, CHARACTER_WIDTH, CHARACTER_HEIGHT,
            & control_dc(), column * CHARACTER_WIDTH, row * CHARACTER_HEIGHT, SRCCOPY );
    }


    // Blast it to the screen
    	
	dcScreen.BitBlt(0,0, CHARACTER_WIDTH * num_characters, CHARACTER_HEIGHT, &back_dc(), 0, 0, SRCCOPY);
}

void CLedCtrl::SetText( const char * p_t )
{
    ::memset( p_text, 0, num_characters + 1 );
    strncpy( p_text, p_t, num_characters );
    InvalidateRect( NULL, FALSE );
}
