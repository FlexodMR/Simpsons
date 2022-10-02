// FaderCtrl.cpp : implementation file
//

#include "pch.hpp"
#include "../../res/resource.h"
#include "ButtonCtrl.h"
#include "controls.h"
/////////////////////////////////////////////////////////////////////////////
// CButtonCtrl

#define FADER_RANGE  65
#define FADER_POS_FROM_LEFT 4
#define FADER_POS_FROM_TOP 2

struct button_data
{
    unsigned int up_left;
    unsigned int up_top;
    unsigned int down_left;    
    unsigned int down_top;
    unsigned int width;
    unsigned int height;
} g_bd[num_buttons] =
{

    { BUT_ARROW1_UP_LEFT, BUT_ARROW1_UP_TOP, BUT_ARROW1_DOWN_LEFT, BUT_ARROW1_DOWN_TOP, BUT_ARROW_WIDTH, BUT_ARROW_HEIGHT },
    { BUT_ARROW2_UP_LEFT, BUT_ARROW2_UP_TOP, BUT_ARROW2_DOWN_LEFT, BUT_ARROW2_DOWN_TOP, BUT_ARROW_WIDTH, BUT_ARROW_HEIGHT },
    { BUT_PLAY1_UP_LEFT, BUT_PLAY1_UP_TOP, BUT_PLAY1_DOWN_LEFT, BUT_PLAY1_DOWN_TOP, BUT_PLAY1_WIDTH, BUT_PLAY1_HEIGHT },
    { BUT_STOP_UP_LEFT, BUT_STOP_UP_TOP, BUT_STOP_DOWN_LEFT, BUT_STOP_DOWN_TOP, BUT_STOP_WIDTH, BUT_STOP_HEIGHT },
    { BUT_PLAY_UP_LEFT, BUT_PLAY_UP_TOP, BUT_PLAY_DOWN_LEFT, BUT_PLAY_DOWN_TOP, BUT_PLAY_WIDTH, BUT_PLAY_HEIGHT },
    { BUT_EXCLM_UP_LEFT, BUT_EXCLM_UP_TOP, BUT_EXCLM_DOWN_LEFT, BUT_EXCLM_DOWN_TOP, BUT_EXCLM_WIDTH, BUT_EXCLM_HEIGHT },
    { BUT_SPDR_UP_LEFT, BUT_SPDR_UP_TOP, BUT_SPDR_DOWN_LEFT, BUT_SPDR_DOWN_TOP, BUT_SPDR_WIDTH, BUT_SPDR_HEIGHT },
    { BUT_NO_UP_LEFT, BUT_NO_UP_TOP, BUT_NO_DOWN_LEFT, BUT_NO_DOWN_TOP, BUT_NO_WIDTH, BUT_NO_HEIGHT },
    { BUT_EDITOR_LEFT, BUT_EDITOR_CUT_TOP, BUT_EDITOR_LEFT + BUT_EDITOR_WIDTH, BUT_EDITOR_CUT_TOP, BUT_EDITOR_WIDTH, BUT_EDITOR_HEIGHT },
    { BUT_EDITOR_LEFT, BUT_EDITOR_COPY_TOP, BUT_EDITOR_LEFT + BUT_EDITOR_WIDTH, BUT_EDITOR_COPY_TOP, BUT_EDITOR_WIDTH, BUT_EDITOR_HEIGHT },
    { BUT_EDITOR_LEFT, BUT_EDITOR_PASTE_TOP, BUT_EDITOR_LEFT + BUT_EDITOR_WIDTH, BUT_EDITOR_PASTE_TOP, BUT_EDITOR_WIDTH, BUT_EDITOR_HEIGHT },
    { BUT_EDITOR_LEFT, BUT_EDITOR_UNDO_TOP, BUT_EDITOR_LEFT + BUT_EDITOR_WIDTH, BUT_EDITOR_UNDO_TOP, BUT_EDITOR_WIDTH, BUT_EDITOR_HEIGHT },
    { BUT_EDITOR_LEFT, BUT_EDITOR_REDO_TOP, BUT_EDITOR_LEFT + BUT_EDITOR_WIDTH, BUT_EDITOR_REDO_TOP, BUT_EDITOR_WIDTH, BUT_EDITOR_HEIGHT },
    { BUT_EDITOR_LEFT, BUT_EDITOR_FIND_TOP, BUT_EDITOR_LEFT + BUT_EDITOR_WIDTH, BUT_EDITOR_FIND_TOP, BUT_EDITOR_WIDTH, BUT_EDITOR_HEIGHT },
    { BUT_EDITOR_LEFT, BUT_EDITOR_GOTO_TOP, BUT_EDITOR_LEFT + BUT_EDITOR_WIDTH, BUT_EDITOR_GOTO_TOP, BUT_EDITOR_WIDTH, BUT_EDITOR_HEIGHT }
};
    
CButtonCtrl::CButtonCtrl()
{
}

BOOL CButtonCtrl::Create(
    enum_button_style style,
    CWnd * pParent,
    UINT id,
    CPoint & pos )
{
    m_style = style;
    
	CWnd::Create(
	    AfxRegisterWndClass( 0, AfxGetApp( )->LoadStandardCursor( IDC_ARROW ), 0, 0 ),
	    "pot" , WS_VISIBLE | WS_CHILD, CRect(pos.x, pos.y,
		pos.x + g_bd[ style ].width, pos.y + g_bd[ style ].height), pParent, id, NULL);
	
	return TRUE;
}

CButtonCtrl::~CButtonCtrl()
{
}

BEGIN_MESSAGE_MAP(CButtonCtrl, CWnd)
//{{AFX_MSG_MAP(CButtonCtrl)
ON_WM_PAINT()
ON_WM_LBUTTONDOWN()
ON_WM_LBUTTONUP()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CButtonCtrl message handlers

void CButtonCtrl::OnPaint() 
{

	CPaintDC dcScreen(this);

    // Draw background	
    
	if (this == GetCapture())
	{
	    back_dc().BitBlt(
            0, 0, g_bd[ m_style ].width, g_bd[ m_style ].height,
            & control_dc(), g_bd[ m_style ].down_left, g_bd[ m_style ].down_top, SRCCOPY );	
	}
	else
	{    
	    back_dc().BitBlt(
            0, 0, g_bd[ m_style ].width, g_bd[ m_style ].height,
            & control_dc(), g_bd[ m_style ].up_left, g_bd[ m_style ].up_top, SRCCOPY );	
    }

    // Blast it to the screen
    	
	dcScreen.BitBlt(0,0, g_bd[ m_style ].width, g_bd[ m_style ].height, &back_dc(), 0, 0, SRCCOPY);
}

void CButtonCtrl::OnLButtonDown(UINT nFlags, CPoint point) 
{
    if( this != GetCapture( ) )
    {
        SetCapture();
        InvalidateRect( 0 );
	
	    CWnd::OnLButtonDown(nFlags, point);
	}
}

void CButtonCtrl::OnLButtonUp(UINT nFlags, CPoint point) 
{
	if (this == GetCapture( ) )
	{
		ReleaseCapture();
        InvalidateRect( 0 );
        
        UINT id = GetDlgCtrlID( );
        GetParent( )->PostMessage(
            WM_COMMAND,
            MAKEWPARAM(id,0),
            (LPARAM)this->m_hWnd );
    }
	
	CWnd::OnLButtonUp(nFlags, point);
}

