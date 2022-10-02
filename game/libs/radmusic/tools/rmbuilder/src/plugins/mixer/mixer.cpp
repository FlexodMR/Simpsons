// MixerWnd.cpp : implementation file
//

#include "pch.hpp"
#include "mixer.h"
#include "../controls/FaderCtrl.h"
#include "../controls/controls.h"


// CMixerWnd

IMPLEMENT_DYNAMIC(CMixerWnd, CWnd)
CMixerWnd::CMixerWnd()
{
}

CMixerWnd::~CMixerWnd()
{
}

BEGIN_MESSAGE_MAP(CMixerWnd, CWnd)
    ON_WM_CREATE()
    ON_WM_PAINT()
    ON_WM_TIMER()
    ON_WM_DESTROY()
    ON_WM_SYSCOMMAND()
END_MESSAGE_MAP()

void CMixerWnd::AddSlider( const char * p_data_item_name )
{
    for( unsigned int i = 0; i < 20; i ++ )
    {
        char buf[ 256 ];
        sprintf( buf, "Fader%d", i );
        CFaderCtrl * p_fader = new CFaderCtrl( );
        
        p_fader->Create(
            CString( buf ),
            this,
            i,
            CPoint( 30 + i * 30, 30 ) );
    }
}


int CMixerWnd::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CWnd::OnCreate(lpCreateStruct) == -1)
        return -1;

    AddSlider( "test" );
    
    SetTimer( 0, 100, NULL );

    return 0;
}

void CMixerWnd::OnPaint()
{
    CPaintDC dc(this); // device context for painting
    
    CRect clientRect;    
    GetClientRect( & clientRect );
    
    draw_bg( & clientRect );
    
    dc.BitBlt( 0, 0, clientRect.Width( ), clientRect.Height( ),
        & back_dc( ), 0, 0, SRCCOPY );
}

void CMixerWnd::OnTimer(UINT nIDEvent)
{
    float time = (float) radTimeGetMilliseconds( );
    
    for( unsigned int i = 0; i < 20; i ++ )
    {
        CFaderCtrl* pFader = (CFaderCtrl*) GetDlgItem( i );
        
        float offset = (((2.0f / 10.0f)*(float)i) - 1.0f );
        float pos = ( (sinf( (time / 1000.0f ) + offset  ) + 1.0f ) / 2.0f );
        pFader->SetPos( pos );
    }

    CWnd::OnTimer(nIDEvent);
}

void CMixerWnd::OnDestroy()
{
    CWnd::OnDestroy();

    for( unsigned int i = 0; i < 20; i ++ )
    {
        CFaderCtrl* pFader = (CFaderCtrl*) GetDlgItem( i );
        
        pFader->DestroyWindow( );
        delete pFader;
    }
}

void CMixerWnd::OnSysCommand(UINT nID, LPARAM lParam)
{
    BringWindowToTop();
    SetFocus( );

    CWnd::OnSysCommand(nID, lParam);
}
