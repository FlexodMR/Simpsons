//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef __P3DEXPL_TREEVIEWWINDOW_HPP__
#define __P3DEXPL_TREEVIEWWINDOW_HPP__


//----------------
// system includes
//----------------
#include <windows.h>
#include <commctrl.h>

extern LONG P3DTree_PrevWndProc;
extern void P3DTree_Clear();
extern void P3DTree_ExpandWindow();
extern void P3DTree_Fill();
extern void P3DTree_UpdateSelected();
extern void P3DTree_UpdateRoot();
extern void P3DTree_Refresh( );
extern LRESULT CALLBACK P3DTree_Proc(HWND, UINT, WPARAM, LPARAM);
extern void P3DTree_SetItemImage( HTREEITEM hItem, int iImage );
extern HTREEITEM P3DTree_GetNextDiffItem( HTREEITEM hItem );
extern HTREEITEM P3DTree_GetPrevDiffItem( HTREEITEM hItem );
extern void P3DTree_GoToNextDiffItem(  );
extern void P3DTree_GoToLastDiffItem(  );
extern bool P3DTree_IsDiffItem( HTREEITEM hItem );
extern tlDataChunk * P3DTree_GetChunkFromItem( TVITEM *item );

#endif // __P3DEXPL_TREEVIEWWINDOW_HPP__

