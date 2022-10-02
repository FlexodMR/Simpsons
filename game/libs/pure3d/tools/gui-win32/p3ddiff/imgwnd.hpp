//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef P3DImageWnd_HPP
#define P3DImageWnd_HPP


//----------------
// system includes
//----------------
#include <windows.h>

extern HBITMAP P3DImg_hBmpToDraw;
extern tlImage * P3DImg_pImg;

extern LRESULT CALLBACK P3DImgWnd_Proc(HWND, UINT, WPARAM, LPARAM );
extern HBITMAP P3DImgWnd_CreateBMPFromtlImage( );

#endif // P3DImageWnd_HPP
