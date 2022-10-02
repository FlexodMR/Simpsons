//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: menu.hpp
// Bryan Brandt
// June 2, 2000


#ifndef __P3DEXPL_MENU_HPP__
#define __P3DEXPL_MENU_HPP__


//----------------
// system includes
//----------------
#include <windows.h>


extern bool P3DMenu_SaveAs();
extern bool P3DMenu_ExportImage( );
extern bool P3DMenu_ImportImage( );
extern void P3DMenu_SetFilter( int filter );
extern void P3DMenu_SetImgFilter( int filter );
extern LRESULT CALLBACK P3DMenu_Proc(HWND, UINT, WPARAM, LPARAM);


#endif // __P3DEXPL_MENU_HPP__

