//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: winmain.hpp
// Greg Mayer
// Nov 19, 1998

#ifndef _WINMAIN_HPP
#define _WINMAIN_HPP


#include <windows.h>


#define P3DWIN_SPLITTER_RATIO 0.4f
#define P3DEXP_ALL_ELEMENT     -1
#define P3DEXP_LIGHT_CAMERA    -2
#define P3DEXP_HISTORY         -3
#define P3DEXP_EFFECTS         -4
#define P3DEXP_DRAWABLE        -5
#define P3DEXP_ANIMATION       -6               //filter for animation and frame contorller

#define P3DIMG_CHANNEL_ALL      0
#define P3DIMG_CHANNEL_RED      1
#define P3DIMG_CHANNEL_GREEN    2
#define P3DIMG_CHANNEL_BLUE     3
#define P3DIMG_CHANNEL_ALPHA    4

//-----------------
// global variables
//-----------------
extern HWND P3DWin_Main;
extern HWND P3DWin_Tree;
extern HWND P3DWin_List;
extern HWND P3DWin_Image;
extern HWND P3DWin_Toolbar;
extern HWND P3DWin_StatusBar;
extern HINSTANCE P3DWin_hInstance;

extern HMENU P3DWin_Menu;

extern UINT P3DWin_ClipboardFormat;

extern int  P3DWin_Filter;
extern int  P3DImg_Filter;
extern bool P3DImg_AutoRefresh;

#endif // _WINMAIN_HPP

