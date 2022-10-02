//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _WINMAIN_HPP
#define _WINMAIN_HPP


#include <windows.h>


#define P3DWIN_SPLITTER_RATIO 0.4f
#define P3DEXP_ALL_ELEMENT     -1
#define P3DEXP_LIGHT_CAMERA    -2
#define P3DEXP_HISTORY         -3
#define P3DEXP_EFFECTS         -4
#define P3DEXP_DRAWABLE        -5
#define P3DEXP_ANIMATION       -6

extern HWND P3DWin_Main;
extern HWND P3DWin_Tree;
extern HWND P3DWin_SrcList;
extern HWND P3DWin_DstList;
extern HWND P3DWin_Image;
extern HWND P3DWin_Toolbar;
extern HINSTANCE P3DWin_hInstance;

extern HMENU P3DWin_Menu;

extern UINT P3DWin_ClipboardFormat;

extern int  P3DWin_Filter;

extern bool P3D_CompareInOrder;

#endif // _WINMAIN_HPP

