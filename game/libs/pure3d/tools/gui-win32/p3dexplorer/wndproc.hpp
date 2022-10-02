//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: wndproc.hpp
// Greg Mayer
// Nov 19, 1998

#ifndef __P3DEXPL_WNDPROC_HPP__
#define __P3DEXPL_WNDPROC_HPP__


#include <windows.h>


extern int P3DSplitter_GetPosition();
extern void P3DSplitter_SetPosition(int);

extern LRESULT CALLBACK P3D_WindowProc(HWND, UINT, WPARAM, LPARAM);


#endif // __P3DEXPL_WNDPROC_HPP__

