//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef __P3DEXPL_WNDPROC_HPP__
#define __P3DEXPL_WNDPROC_HPP__


#include <windows.h>


extern int P3DSplitter_GetPosition( bool bFirstSplitter );
extern void P3DSplitter_SetPosition(int, bool bFirstSplitter);

extern LRESULT CALLBACK P3D_WindowProc(HWND, UINT, WPARAM, LPARAM);


#endif // __P3DEXPL_WNDPROC_HPP__

