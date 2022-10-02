// FaderCtrl.cpp : implementation file
//

#include "pch.hpp"
#include "../../res/resource.h"
#include "FaderCtrl.h"
#include "controls.h"
/////////////////////////////////////////////////////////////////////////////
// CFaderCtrl

#define FADER_RANGE  65
#define FADER_POS_FROM_LEFT 3
#define FADER_POS_FROM_TOP 2

CFaderCtrl::CFaderCtrl() : m_position(0),
m_userMax(1.0), m_userMin(0.0), m_color(FC_WHITE)
{
}

BOOL CFaderCtrl::Create(
    CString & name,
    CWnd * pParent,
    UINT id,
    CPoint & pos )
{
    m_Name = name;
    
    
	CWnd::Create(
	    AfxRegisterWndClass( CS_DBLCLKS, AfxGetApp( )->LoadStandardCursor( IDC_ARROW ), 0, 0 ),
	    "pot" , WS_VISIBLE | WS_CHILD, CRect(pos.x, pos.y,
		pos.x + FADER_HOUSING_WIDTH + 10, pos.y + FADER_HOUSING_HEIGHT), pParent, id, NULL);
	
	m_nmhdr.hwndFrom = m_hWnd;
	m_nmhdr.code = FDN_POSCHANGED;
	m_nmhdr.idFrom = id;
	m_nmhdr.position = 0.0;
	
	return TRUE;
}

CFaderCtrl::~CFaderCtrl()
{
}

BEGIN_MESSAGE_MAP(CFaderCtrl, CWnd)
//{{AFX_MSG_MAP(CFaderCtrl)
ON_WM_PAINT()
ON_WM_LBUTTONDOWN()
ON_WM_LBUTTONUP()
ON_WM_MOUSEMOVE()
ON_WM_SETCURSOR()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CFaderCtrl message handlers

void CFaderCtrl::OnPaint() 
{
	CRect r;
	GetFaderRect(&r);
	
	CRect clientRect;
	
	GetClientRect( & clientRect );
	CPaintDC dcScreen(this);

    // Draw background	
	back_dc().BitBlt(
        SWGREEN_LED_CHAR_HEIGHT,
        0,
        FADER_HOUSING_WIDTH,
        FADER_HOUSING_HEIGHT,
        & control_dc(), FADER_HOUSING_LEFT, FADER_HOUSING_TOP, SRCCOPY );

    // Draw "knob"

	back_dc().BitBlt(
	    r.left,
	    r.top,
	    FADER_KNOB_WIDTH,
	    FADER_KNOB_HEIGHT,
	    & control_dc(),
	    FADER_KNOB_LEFT,
		FADER_KNOB_TOP,
		SRCCOPY);
		
    // Draw text
    
    CString s;
    s.Format( "%s:%.2f", m_Name, m_nmhdr.position );
    sw_led_text_out( 0, FADER_HOUSING_HEIGHT, s, 15 );

    // Blast it to the screen
    	
	dcScreen.BitBlt(0,0, clientRect.Width( ), clientRect.Height( ), &back_dc(), 0, 0, SRCCOPY);
}

void CFaderCtrl::OnLButtonDown(UINT nFlags, CPoint point) 
{
	CRect r;
	GetFaderRect(&r);
	if (r.PtInRect(point))
	{
		m_prevPos = point;
		SetCapture();
	}
	
	CWnd::OnLButtonDown(nFlags, point);
}

void CFaderCtrl::OnLButtonUp(UINT nFlags, CPoint point) 
{
	if (this == GetCapture())
		ReleaseCapture();
	
	CWnd::OnLButtonUp(nFlags, point);
}

void CFaderCtrl::OnMouseMove(UINT nFlags, CPoint point) 
{
	if (this == GetCapture())
	{
		CRect r;
		GetClientRect(&r);
		if (r.PtInRect(point))
		{
			m_position += m_prevPos.y - point.y;
			if (m_position > FADER_RANGE)
				m_position = FADER_RANGE;
			if (m_position < 0)
				m_position = 0;
			m_prevPos = point;
			CalculateUserPos();
			GetParent()->SendMessage(WM_NOTIFY, m_nmhdr.idFrom,
				(LONG)&m_nmhdr);
			InvalidateRect(NULL, FALSE);
		}
		
	}
	
	CWnd::OnMouseMove(nFlags, point);
}

void CFaderCtrl::GetFaderRect(CRect * pRect)
{
	pRect->left = SWGREEN_LED_CHAR_HEIGHT + FADER_POS_FROM_LEFT;
	pRect->right = SWGREEN_LED_CHAR_HEIGHT + FADER_KNOB_WIDTH + FADER_POS_FROM_LEFT;
	pRect->top = FADER_POS_FROM_TOP + (FADER_RANGE - m_position);
	pRect->bottom = pRect->top + FADER_KNOB_HEIGHT;
} 


void CFaderCtrl::SetRange(float min, float max)
{
	m_userMin = min;
	m_userMax = max;
}

float CFaderCtrl::GetPos()
{
	return m_nmhdr.position;
}

void CFaderCtrl::SetColor(FADERCOLOR fc)
{
	m_color = fc;
	InvalidateRect(NULL, FALSE);
}

void CFaderCtrl::SetPos(float pos)
{
	if (pos < m_userMin)
		m_position = 0;
	else if (pos > m_userMax)
		m_position = FADER_RANGE;
	else
		m_position = (int)(FADER_RANGE * (pos / (m_userMax - m_userMin)));
	CalculateUserPos();
	
	InvalidateRect(NULL, FALSE);
}

void CFaderCtrl::CalculateUserPos()
{
	m_nmhdr.position =
		(( (float) m_position / (float) FADER_RANGE )
		* (m_userMax - m_userMin)) + m_userMin;
}
