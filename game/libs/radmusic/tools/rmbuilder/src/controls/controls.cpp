#include "pch.hpp"
#include "controls.h"
#include "../../res/resource.h"

CDC dcMainBitmap;
CDC dcBackBuffer;
CBitmap backBitmap;
CBitmap mainBitmap;
	
void init_controls( CWnd * p_wnd )
{
    CClientDC clientDC( p_wnd );  
    
	mainBitmap.LoadBitmap( IDB_CONTROLS );
	dcMainBitmap.CreateCompatibleDC( & clientDC );
	dcMainBitmap.SelectObject( & mainBitmap );		
			
	dcBackBuffer.CreateCompatibleDC( & clientDC );
	backBitmap.CreateCompatibleBitmap(
	    & clientDC,
	    GetSystemMetrics( SM_CXSCREEN ),
	    GetSystemMetrics( SM_CYSCREEN ));
	    
	dcBackBuffer.SelectObject( & backBitmap );
	
    CFont font;
    font.CreateFont(14, 0,0,0,0, FALSE,FALSE,0,ANSI_CHARSET, OUT_DEFAULT_PRECIS,
                  CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, DEFAULT_PITCH | FF_SWISS,
                  "Arial Narrow");
                  
    /* font.CreateFont(9, 0,0,0,0, FALSE,FALSE,0,ANSI_CHARSET, OUT_DEFAULT_PRECIS,
                  CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, DEFAULT_PITCH | FF_SWISS,
                  "Small Fonts"); */                 
                  
    back_dc().SelectObject(&font);
    back_dc().SetBkMode( TRANSPARENT );
    back_dc().SetTextColor( RGB( 255,255,255 ) );
}

void destroy_controls( void )
{
}

CDC & back_dc( void )
{
    return dcBackBuffer;
}

CDC & control_dc( void )
{
    return dcMainBitmap;
}

void draw_bg( CRect * p_rect )
{
    // fill middle
    
    int row = 0;
    
    while( row < p_rect->Height( ) )
    {
        int col = 0;
        
        while( col < p_rect->Width( ) )
        {
            back_dc().BitBlt( col, row, BG1_BODY_HORIZ_WIDTH, BG1_BODY_VERT_HEIGHT,
                & control_dc( ), BG1_LEFT + BG1_CORNER_WIDTH, BG1_TOP + BG1_CORNER_HEIGHT, SRCCOPY ); 
                       
            col += BG1_BODY_HORIZ_WIDTH;
        }
        
        row += BG1_BODY_VERT_HEIGHT;
                    
    }
    
    // top border
    
    int c = 0;
    
    while ( c < p_rect->Width( ) )
    {
        back_dc().BitBlt( c, 0, BG1_BODY_HORIZ_WIDTH, BG1_BODY_HORIZ_HEIGHT,
            & control_dc( ), BG1_LEFT + BG1_CORNER_WIDTH, BG1_TOP, SRCCOPY );
            
        c += BG1_BODY_HORIZ_WIDTH;
    }
    
    // left border
    
    int r = 0;
    
    while ( r < p_rect->Height( ) )
    {
        back_dc().BitBlt( 0, r, BG1_BODY_VERT_WIDTH, BG1_BODY_VERT_HEIGHT,
            & control_dc( ), BG1_LEFT, BG1_TOP + BG1_CORNER_HEIGHT, SRCCOPY );
            
        r += BG1_BODY_VERT_HEIGHT;
    }
    
    // right border

    r = 0;
    
    while ( r < p_rect->Height( ) )
    {
        back_dc().BitBlt( p_rect->Width( ) - BG1_BODY_VERT_WIDTH , r, BG1_BODY_VERT_WIDTH, BG1_BODY_VERT_HEIGHT,
            & control_dc( ), BG1_LEFT + BG1_CORNER_WIDTH + BG1_BODY_HORIZ_WIDTH, BG1_TOP + BG1_CORNER_HEIGHT, SRCCOPY );
            
        r += BG1_BODY_VERT_HEIGHT;
    }
    
    // bottom border 
    
    c = 0;
    
    while ( c < p_rect->Width( ) )
    {
        back_dc().BitBlt( c, p_rect->Height( ) - BG1_BODY_HORIZ_HEIGHT, BG1_BODY_HORIZ_WIDTH, BG1_BODY_HORIZ_HEIGHT,
            & control_dc( ), BG1_LEFT + BG1_CORNER_WIDTH, BG1_TOP + BG1_CORNER_HEIGHT + BG1_BODY_VERT_HEIGHT, SRCCOPY );
            
        c += BG1_BODY_HORIZ_WIDTH;
    }    
  
    
   
   
    // top-left corner
    back_dc().BitBlt( 0, 0, BG1_CORNER_WIDTH, BG1_CORNER_HEIGHT,
        & control_dc( ), BG1_LEFT, BG1_TOP, SRCCOPY );
    
    // bottom-left corner
    back_dc().BitBlt( 0, p_rect->Height( ) - BG1_CORNER_HEIGHT, BG1_CORNER_WIDTH, BG1_CORNER_HEIGHT,
        & control_dc( ), BG1_LEFT, BG1_TOP + BG1_CORNER_HEIGHT + BG1_BODY_VERT_HEIGHT, SRCCOPY );
        
    // top-right corner
    back_dc().BitBlt( p_rect->Width( ) - BG1_CORNER_WIDTH, 0, BG1_CORNER_WIDTH, BG1_CORNER_HEIGHT,
        & control_dc( ), BG1_LEFT + BG1_CORNER_WIDTH+BG1_BODY_HORIZ_WIDTH, BG1_TOP, SRCCOPY );
        
    // top-right corner
    back_dc().BitBlt( p_rect->Width( ) - BG1_CORNER_WIDTH, p_rect->Height( ) - BG1_CORNER_HEIGHT, BG1_CORNER_WIDTH, BG1_CORNER_HEIGHT,
        & control_dc( ), BG1_LEFT + BG1_CORNER_WIDTH+BG1_BODY_HORIZ_WIDTH, BG1_TOP+ BG1_BODY_VERT_HEIGHT + BG1_CORNER_HEIGHT, SRCCOPY );                             
}

void text_out( int x, int y, const char * p_text )
{
    back_dc().TextOut( x, y, p_text );
}

void draw_text( int x, int y, int width, int height, const char * p_text )
{
    back_dc().DrawText( p_text, strlen( p_text ), CRect( x, y, x + width, y + height ), DT_VCENTER );
}

void sw_led_text_out( int x, int y, const char * p_text, unsigned int chars )
{
    unsigned int sl = strlen( p_text );
    
    char buffer[ 256 ];
    ::memset( buffer, 0, 256 );
    strcpy( buffer, p_text );
    
    for (unsigned int i = 0; i < chars; i ++ )
    {
        char c = buffer[ i ];
        
        unsigned int column = c / 16;
        unsigned int row    = c % 16;
        
        // Draw background	
	    back_dc().BitBlt(
            x, y - SWGREEN_LED_CHAR_WIDTH - (i * SWGREEN_LED_CHAR_WIDTH),
            SWGREEN_LED_CHAR_HEIGHT, SWGREEN_LED_CHAR_WIDTH,
            & control_dc(),
            SWGREEN_LED_LEFT + (column * SWGREEN_LED_CHAR_HEIGHT),
            SWGREEN_LED_BOTTOM + 1 - SWGREEN_LED_CHAR_WIDTH - (row * SWGREEN_LED_CHAR_WIDTH), SRCCOPY );
    }
}    
