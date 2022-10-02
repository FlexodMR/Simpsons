//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef __P3DEXPL_LISTVIEWWINDOW_HPP__
#define __P3DEXPL_LISTVIEWWINDOW_HPP__

#include <windows.h>
#include <toollib.hpp>

extern LONG P3DList_PrevWndProc;
extern tlDataChunk* P3DList_SrcChunk;
extern tlDataChunk* P3DList_DstChunk;


extern void P3DList_Clear( bool bSrcList );
extern void P3DList_Fill(tlDataChunk*, bool bSrcList);
extern LRESULT CALLBACK P3DList_Proc(HWND, UINT, WPARAM, LPARAM);
extern void P3DList_GoToNextDiffField( );
extern void P3DList_GoToLastDiffField( );


#endif // __P3DEXPL_LISTVIEWWINDOW_HPP__

