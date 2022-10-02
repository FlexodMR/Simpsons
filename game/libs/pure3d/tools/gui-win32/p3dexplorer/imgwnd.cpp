//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// Hongzhi Wang
// Mar, 2001
#include <windows.h>
#include <commctrl.h>

//-----------------
// Pure3D includes
//-----------------
#include <toollib.hpp>

#include "treeviewwindow.hpp"
#include "listviewwindow.hpp"
#include "winmain.hpp"
#include "wndproc.hpp"
#include "filewrapper.hpp"

#include "resource.h"

HBITMAP P3DImg_hBmpToDraw = 0;
tlImage * P3DImg_pImg = 0;

static void P3DImgWnd_FilterImg( unsigned char *pBuffer, int scanline, int height  )
{
     unsigned int *pPixel = (unsigned int *)pBuffer;

     unsigned char rm = 0;
     unsigned char gm = 0;
     unsigned char bm = 0;
     unsigned char am = 0;

     switch( P3DImg_Filter ){
          case P3DIMG_CHANNEL_ALL:
                return;
          break;

          case P3DIMG_CHANNEL_RED:
                rm = 0xff;
          break;

          case P3DIMG_CHANNEL_GREEN:
                gm = 0xff;
          break;

          case P3DIMG_CHANNEL_BLUE:
                bm = 0xff;
          break;

          case P3DIMG_CHANNEL_ALPHA:
                am = 0xff;
          break;
     }

     unsigned char *ls = pBuffer;     //line start
     int len = scanline/4;

     for( int i = 0; i < height; ++i ){
          unsigned char *pPixel = ls;
          for( int j = 0; j < len; ++j ){
                //for alpha channel filter, we copy alpha to r, g, b channel 
                if( P3DImg_Filter == P3DIMG_CHANNEL_ALPHA ){
                     unsigned char alpha = *(pPixel + 3 );
                     *pPixel = alpha;
                     ++pPixel;
                     *pPixel = alpha;
                     ++pPixel;
                     *pPixel = alpha;
                     ++pPixel;
                     //increase by one to pass the alpha value
                     ++pPixel;
                }
                else{           //otherwise, filter the unspecified channel
                     *pPixel &= bm;
                     ++pPixel;
                     *pPixel &= gm;
                     ++pPixel;
                     *pPixel &= rm;
                     ++pPixel;
                     *pPixel &= am;
                     ++pPixel;
                }
          }
          ls += scanline;
     }

}

//--------------------------------------------------------------------------------
HBITMAP P3DImgWnd_CreateBMPFromtlImage( )
{
     if( P3DImg_pImg == NULL ){
          P3DImg_hBmpToDraw = 0;
          return 0;
     }

     if( P3DImg_hBmpToDraw )
          DeleteObject( P3DImg_hBmpToDraw );

     int scanline_size = P3DImg_pImg->GetScanlineSize();
     int scanline_diff = (scanline_size % 4);
     if (scanline_diff != 0)
     {
        scanline_diff = 4 - scanline_diff;
     }

     // Fixed red-blue swap - P3DImg_pImg->SwapChannels(2, 1, 0);


     P3DImg_pImg->FlipY();

     unsigned char * pBmpData = new unsigned char[ (scanline_size + scanline_diff) * P3DImg_pImg->GetHeight( ) ];
     unsigned char *pBuffer = pBmpData;

     char ignored = 0;
     unsigned char **pPixels = P3DImg_pImg->GetPixels( );
     for (int y = 0; y < P3DImg_pImg->GetHeight( ); ++y)
     {
        memcpy( pBmpData, pPixels[y], scanline_size);
        pBmpData += scanline_size;

        for (int i = 0; i < scanline_diff; ++i){
             *pBmpData++ = ignored;         
        }
     }

     P3DImgWnd_FilterImg( pBuffer, scanline_size + scanline_diff, P3DImg_pImg->GetHeight( ) );

     //recover the image data
     P3DImg_pImg->FlipY();
     // Fixed red-blue swap - P3DImg_pImg->SwapChannels(2, 1, 0);

     BITMAPINFOHEADER bmiHeader;
     bmiHeader.biSize = 40;
     bmiHeader.biWidth = P3DImg_pImg->GetWidth( );
     bmiHeader.biHeight = P3DImg_pImg->GetHeight( );
     bmiHeader.biPlanes = 1;
     bmiHeader.biBitCount = P3DImg_pImg->GetBpp( );
     bmiHeader.biCompression = 0;
     bmiHeader.biSizeImage = (scanline_size + scanline_diff) * P3DImg_pImg->GetHeight( );
     bmiHeader.biXPelsPerMeter = 2795;
     bmiHeader.biYPelsPerMeter = 2795;
     bmiHeader.biClrUsed = 0;
     bmiHeader.biClrImportant = 0;


     HDC hdc = GetDC( P3DWin_Image );
     P3DImg_hBmpToDraw = CreateDIBitmap( hdc, &bmiHeader, CBM_INIT, (const void*)pBuffer, (BITMAPINFO*)&bmiHeader, DIB_RGB_COLORS );
//    P3DImg_hBmpToDraw = CreateBitmap( P3DImg_pImg->GetWidth( ), P3DImg_pImg->GetHeight( ), 0, P3DImg_pImg->GetBpp( ), (const void*) pBuffer );

     DWORD err = GetLastError( );

     delete[] pBuffer;

     ReleaseDC( P3DWin_Image, hdc );

     return P3DImg_hBmpToDraw;
}

//--------------------------------------------------------------------------------
void P3DImgWnd_Redraw( )
{
     if( IsWindowVisible( P3DWin_Image) ){
          P3DImgWnd_CreateBMPFromtlImage( );
          InvalidateRect( P3DWin_Image, NULL, TRUE );
     }
}
//--------------------------------------------------------------------------------
LRESULT CALLBACK P3DImgWnd_Proc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
    switch(msg)
    {
     case WM_PAINT:
     {
          if( P3DImg_hBmpToDraw == NULL )
                return 0;

          HDC hdc = ( HDC )wparam;

          BOOL bReleaseDC = FALSE;
          
          RECT rect;
          BOOL bUpdate;
          bUpdate = GetUpdateRect( P3DWin_Image, &rect, false );

          if( !bUpdate )
                return 0;

          PAINTSTRUCT ps;
          BeginPaint( P3DWin_Image, &ps );

          HDC hSrcDc = CreateCompatibleDC( ps.hdc );
          HGDIOBJ hOldObj = SelectObject( hSrcDc, P3DImg_hBmpToDraw );

          rect = ps.rcPaint;

          BitBlt( ps.hdc, rect.left, rect.top,  rect.right - rect.left, rect.bottom - rect.top, 
                hSrcDc, rect.left, rect.top, SRCCOPY );

          EndPaint( P3DWin_Image, &ps );

          SelectObject( hSrcDc, hOldObj );
          DeleteDC( hSrcDc );

          return 0;
     }
     break;

     case WM_CLOSE:
          ShowWindow( hwnd, SW_HIDE );
          return 0;
     break;

    }

    return DefWindowProc(hwnd, msg, wparam, lparam);;
}


