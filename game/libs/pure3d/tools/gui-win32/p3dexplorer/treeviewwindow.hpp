//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: treeviewwindow.hpp
// Greg Mayer
// Nov 26, 1998


#ifndef __P3DEXPL_TREEVIEWWINDOW_HPP__
#define __P3DEXPL_TREEVIEWWINDOW_HPP__


//----------------
// system includes
//----------------
#include <windows.h>
#include <tlDataChunk.hpp>

//-------------------------------------------------------------------------
struct P3DTree_FindStruct
{
    bool bWord;                  //word only
    bool bCase;                  //case sensitive
    bool bUp;                    //search up to down
    bool bContent;               //search content
    char str[1024];
};

extern P3DTree_FindStruct P3DTree_fs;
extern int P3DTree_FilteredChunks;      //the number of chunks in the tree
extern int P3DTree_SubChunks;           //the number of subchunks of presently selected node
extern long P3DTree_ChunkSize;          //the size of seleted chunk
extern long P3DTree_ChunksSize;          //the size of seleted chunk
extern LONG P3DTree_PrevWndProc;
extern void P3DTree_Clear();
extern void P3DTree_ExpandWindow();
extern void P3DTree_Fill();
extern void P3DTree_CutChunk();
extern void P3DTree_CopyChunk();
extern void P3DTree_PasteChunk();
extern void P3DTree_DeleteChunk();
extern void P3DTree_InsertHistoryChunk();
extern void P3DTree_UpdateSelected();
extern void P3DTree_UpdateRoot();
extern void P3DTree_Refresh( );
extern void P3DTree_Find( );
extern void P3DTree_FindNext( );
extern long P3DTree_FilteredChunksSize( );
extern void P3DTree_DisplayImage(tlDataChunk* imageChunk);
extern bool P3DTree_InsertChunk(unsigned parent_id, tlDataChunk* chunk);
extern LRESULT CALLBACK P3DTree_Proc(HWND, UINT, WPARAM, LPARAM);


#endif // __P3DEXPL_TREEVIEWWINDOW_HPP__

