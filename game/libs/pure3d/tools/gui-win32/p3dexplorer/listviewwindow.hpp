//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: filewrapper.hpp
// Greg Mayer
// Nov 26, 1998


#ifndef __P3DEXPL_LISTVIEWWINDOW_HPP__
#define __P3DEXPL_LISTVIEWWINDOW_HPP__


//----------------
// system includes
//----------------
#include <windows.h>

//----------------
// Pure3D includes
//----------------
#include <toollib.hpp>


extern tlDataChunk* P3DList_Chunk;


extern void P3DList_Clear();
extern void P3DList_Fill(tlDataChunk*);
extern void P3DList_EditField(tlDataChunk* chunk, int field_idx, int array_idx);
extern int P3DList_GetItemID( int field_idx, int array_idx );
extern LRESULT CALLBACK P3DList_Proc(HWND, UINT, WPARAM, LPARAM);


#endif // __P3DEXPL_LISTVIEWWINDOW_HPP__

