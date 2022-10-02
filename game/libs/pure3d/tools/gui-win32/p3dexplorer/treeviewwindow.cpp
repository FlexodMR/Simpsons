//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: treeviewwindow.cpp
// Greg Mayer
// Nov 26, 1998


//----------------
// system includes
//----------------
#include <windows.h>
#include <commctrl.h>

//-----------------
// Pure3D includes
//-----------------
#include <toollib.hpp>

//-----------------
// project includes
//-----------------
#include "treeviewwindow.hpp"
#include "listviewwindow.hpp"
#include "winmain.hpp"
#include "wndproc.hpp"
#include "filewrapper.hpp"
#include "imgwnd.hpp"
#include "menu.hpp"

#include "resource.h"
#include "statusbar.hpp"

//----------------
// local functions
//----------------
const int POPUP_MENU_NUM = 3;
LONG P3DTree_PrevWndProc = 0;
static bool P3DTree_Clearing = false;

static char * P3DTree_ChunkPopupIndex[ POPUP_MENU_NUM - 1 ] = { 
    "tlTextureChunk",
    "tlImageChunk"
};

int P3DTree_FilteredChunks = 0;             //the first-level chunks number in the tree
int P3DTree_SubChunks = 0;                  //the sub chunks of currently selected tree node
long P3DTree_ChunkSize = 0;
long P3DTree_ChunksSize = 0;
P3DTree_FindStruct  P3DTree_fs;

//-------------------------------------------------------------------------------
static int P3DTree_GetPopupID( tlDataChunk *chunk )
{
    for( int i = 0; i < POPUP_MENU_NUM - 1; ++i ){
        if( strcmp( chunk->GetType( ), P3DTree_ChunkPopupIndex[ i ] ) == 0 )
            return i;
    }

    //the last submenu of popup menu is the default one
    return POPUP_MENU_NUM - 1;
}

//-------------------------------------------------------------------------------
static void P3DTree_HandlePopup( tlDataChunk *chunk, POINT point )
{
    HMENU hMenu;
    HMENU hMenuTrackPopup;

    /* Get the popup menu for the treeview from the resource file. */
    hMenu = LoadMenu ( P3DWin_hInstance, "TREEVIEW_POPUPMENU" );
    if (!hMenu)
        return;

    hMenuTrackPopup = GetSubMenu ( hMenu, P3DTree_GetPopupID( chunk ) );

    /* Convert the mouse point to screen coordinates since that is what
     * TrackPopup expects.
     */
    ClientToScreen ( P3DWin_Tree, (LPPOINT)&point );

    /* Draw and track the "floating" popup */
    TrackPopupMenu ( hMenuTrackPopup, 0, point.x, point.y, 0, P3DWin_Tree, NULL);

    /* Destroy the menu since were are done with it. */
    DestroyMenu (hMenu);
}

//-------------------------------------------------------------------------------
static bool P3DTree_IsFirstLevelItem( HTREEITEM hItem )
{
     HTREEITEM hParent = TreeView_GetParent( P3DWin_Tree, hItem );

     if( hParent && ( TreeView_GetParent( P3DWin_Tree, hParent )  == NULL ) )
          return true;
     else
          return false;
}

//-------------------------------------------------------------------------------
static HTREEITEM P3DTree_GetFirstLevelItem( HTREEITEM hItem )
{
     if( P3DTree_IsFirstLevelItem( hItem ) )
          return hItem;

     HTREEITEM hFinal = hItem;
     HTREEITEM hParent = TreeView_GetParent( P3DWin_Tree, hItem );


     while( hParent ){
          HTREEITEM hGrandpa = TreeView_GetParent( P3DWin_Tree, hParent );
          if( hGrandpa == NULL )
                return hFinal;
          else{
                hFinal = hParent;
                hParent = hGrandpa;
          }
     }

     return NULL;
}
//------------------------------------------------------------------------------------
static bool P3DTree_SearchItemForStr( HTREEITEM hItem, int & fieldIdx )
{
     // -1 means no field is searched for or no field is matched
     fieldIdx = -1;

     char buf[ 1024 ];
     char str[ 1024 ];
     TVITEM item;

     if( P3DTree_fs.bContent == false ){
          
          item.hItem = hItem;
          item.mask = TVIF_TEXT;
     
          strcpy( str, P3DTree_fs.str );

          item.pszText = buf;
          item.cchTextMax = 1024;

          TreeView_GetItem( P3DWin_Tree, &item );

     
          if( P3DTree_fs.bCase == false ){
                strupr( buf );
                strupr( str );
          }

          if( strstr( buf, str ) )
                return true;
          else
                return false;
     }
     else{           //search for content of this node
          //no content for root node
          if( TreeView_GetRoot( P3DWin_Tree ) == hItem )
                return false;

          //non-root node
          item.hItem = hItem;
          item.mask = TVIF_PARAM;

          TreeView_GetItem( P3DWin_Tree, &item );
          tlDataChunk *chunk = (tlDataChunk *)item.lParam;

          strcpy( str, P3DTree_fs.str );

          for( int i = 0; i < chunk->GetFieldCount( ); ++i ){
                //don't check array field
                if( chunk->GetFieldIsArray( i ) )
                     continue;

                chunk->GetFieldValue( i, buf, 1024 );

                if( P3DTree_fs.bCase == false ){
                     strupr( buf );
                     strupr( str );
                }

                if( strstr( buf, str ) ){
                     fieldIdx = i;
                     return true;
                }                

          }
          return false;
     }

     return false;
}

//------------------------------------------------------------------------
void P3DTree_Clear()
{
    P3DTree_Clearing = true;
    P3DTree_FilteredChunks = 0;
    TreeView_DeleteAllItems(P3DWin_Tree);
    P3DTree_Clearing = false;
}


//------------------------------------------------------------------------
void P3DTree_ExpandWindow()
{
    HTREEITEM hitem, hroot;
    RECT rect;
    int max_x = 0;

    hroot = TreeView_GetRoot(P3DWin_Tree);
    hitem = TreeView_GetFirstVisible(P3DWin_Tree);

    while (hitem != NULL)
    {
        if (hitem != hroot)
        {
            if (TreeView_GetItemRect(P3DWin_Tree, hitem, &rect, TRUE))
            {
                if (rect.right > max_x)
                {
                    max_x = rect.right;
                }
            }
        }

        hitem = TreeView_GetNextVisible(P3DWin_Tree, hitem);
    }

    max_x += GetSystemMetrics(SM_CXVSCROLL);
    int cx_frame = GetSystemMetrics(SM_CXFRAME);
    max_x += cx_frame;
    max_x += (cx_frame / 2);

    if (max_x > P3DSplitter_GetPosition())
    {
        P3DSplitter_SetPosition(max_x);
    }
}


//------------------------------------------------------------------------
static void P3DTree_GetChunkString(tlDataChunk* chunk, int idx, char* buf)
{
    // Check to see if subchunk has a "Name" field
    int j = 0;
    while (j < chunk->GetFieldCount())
    {
        if (!chunk->GetFieldIsArray(j) &&
             (strcmp(chunk->GetFieldName(j), "Name") == 0))
        {
            break;
        }

        ++j;
    }

    // If so, put the name in the item text
    if (j < chunk->GetFieldCount())
    {
        char chunk_name[256];

        chunk->GetFieldValue(j, chunk_name, 255);
        sprintf(buf, "[%d] \"%s\" %s (%04x)",
                  idx, chunk_name,
                  chunk->GetType(),
                  chunk->ID());
    }
    else
    {
        sprintf(buf, "[%d] %s (%04x)",
                  idx, chunk->GetType(),
                  chunk->ID());
    }
}
//------------------------------------------------------------------------
//  check if a chunk should be filtered or not
//------------------------------------------------------------------------
static bool P3DTree_IsFiltered( bool bFilter, int chunkID )
{

     if( !bFilter )
          return false;

     switch( P3DWin_Filter ){
     case P3DEXP_ALL_ELEMENT:
          return false;
     break;

     case P3DEXP_HISTORY:
          if( chunkID == P3D_HISTORY || chunkID == P3D_EXPORT_INFO )
                return false;
          else
                return true;
     break;

     case P3DEXP_DRAWABLE:
          if( chunkID == Pure3D::Mesh::MESH || chunkID == Pure3D::Mesh::SKIN ||                
                chunkID == Pure3D::SceneGraph::SCENEGRAPH )
                return false;
          else
                return true;
     break;

     case P3DEXP_EFFECTS:
          if( chunkID == Pure3D::ParticleSystem::SYSTEM_FACTORY || 
              chunkID == Pure3D::ParticleSystem::SYSTEM || 
              chunkID == Pure3D::OpticEffect::LENS_FLARE_GROUP )
                return false;
          else
                return true;
     break;

     case P3DEXP_LIGHT_CAMERA:
          if( chunkID == Pure3D::Light::LIGHT || chunkID == P3D_CAMERA )
                return false;
          else
                return true;
     break;

     case Pure3D::Texture::TEXTURE:    
          if( chunkID == Pure3D::Texture::TEXTURE )
                return false;
          else
                return true;
     break;

     case Pure3D::Mesh::MESH:
          if( chunkID == Pure3D::Mesh::MESH )
                return false;
          else
                return true;
     break;

     case Pure3D::Mesh::SKIN:
          if( chunkID == Pure3D::Mesh::SKIN )
                return false;
          else
                return true;
     break;

     case P3DEXP_ANIMATION:
         if( chunkID == Pure3D::Animation::AnimationData::ANIMATION || chunkID == Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER )
             return false;
         else
             return true;
     break;

     default:
          if( chunkID == P3DWin_Filter )
                return false;
          else
                return true;
     }
}

//------------------------------------------------------------------------
static void P3DTree_FillChunk(TV_ITEM* item)
{
    tlDataChunk* chunk = (tlDataChunk*)item->lParam;

    //filter the root node's children only
    bool bFilter = ( TreeView_GetParent( P3DWin_Tree, item->hItem ) == NULL );
    if ((chunk != 0) && (chunk->SubChunkCount() > 0))
    {
        TV_INSERTSTRUCT tv_ins;
        char buf[256];

        tv_ins.hParent = item->hItem;
        tv_ins.hInsertAfter = TVI_LAST;

        tv_ins.item.mask = TVIF_CHILDREN | TVIF_PARAM | TVIF_TEXT;
        tv_ins.item.pszText = buf;

        int count = 0;
        for(int i = 0; i < chunk->SubChunkCount(); ++i)
        {
 
             tlDataChunk* subchunk = chunk->GetSubChunk(i);

            //insert the chunk to the tree only when no-filter or the chunk id
             //match the filter
             if( P3DTree_IsFiltered(  bFilter, (int)subchunk->ID( ) ) == false ){
                 if (subchunk->SubChunkCount() > 0)
                 {
                     tv_ins.item.cChildren = I_CHILDRENCALLBACK;
                 }
                 else
                 {
                     tv_ins.item.cChildren = 0;
                 }

                 tv_ins.item.lParam = (LPARAM)subchunk;

                 P3DTree_GetChunkString(subchunk, i, buf);

                 ++count;

                 TreeView_InsertItem(P3DWin_Tree, &tv_ins);
             }
        }

        HTREEITEM hItem = TreeView_GetRoot( P3DWin_Tree );
        if( hItem == item->hItem )
             P3DTree_FilteredChunks = count;


    }
}



//------------------------------------------------------------------------
void P3DTree_Fill()
{
    TV_INSERTSTRUCT tv_ins;

    tv_ins.hParent = TVI_ROOT;
    tv_ins.hInsertAfter = TVI_FIRST;

    tv_ins.item.mask = TVIF_CHILDREN | TVIF_PARAM | TVIF_TEXT;

    if(P3DFile_TopChunk->SubChunkCount() > 0)
    {
        tv_ins.item.cChildren = 1;
    }
    else
    {
        tv_ins.item.cChildren = 0;
    }

    tv_ins.item.lParam = (LPARAM)P3DFile_TopChunk;
    tv_ins.item.pszText = P3DFile_Name;

    tv_ins.item.hItem = TreeView_InsertItem(P3DWin_Tree, &tv_ins);

    // We expand all the first-level chunks, and keep them.
    // All other chunks are expanded on the fly.
    if(tv_ins.item.cChildren)
    {
        TreeView_Expand(P3DWin_Tree, tv_ins.item.hItem, TVE_EXPAND);
    }

    SetFocus(P3DWin_Tree);
    TreeView_SelectItem(P3DWin_Tree, tv_ins.item.hItem);
    P3DTree_FilteredChunksSize( );
}


//------------------------------------------------------------------------
static void P3DTree_UpdateSiblings(HTREEITEM hitem,
                                              tlDataChunk* parent_chunk,
                                              int parent_idx)
{
    char buf[256];

    TV_ITEM item;
    item.hItem = hitem;
    item.mask = TVIF_TEXT;
    item.pszText = buf;

    bool bFilter = parent_chunk == P3DFile_TopChunk;

    for (int i = parent_idx; i < parent_chunk->SubChunkCount(); ++i)
    {      
        if( P3DTree_IsFiltered( bFilter, parent_chunk->GetSubChunk(i)->ID( ) ) == false ){
             item.hItem = TreeView_GetNextSibling(P3DWin_Tree, item.hItem);
             P3DTree_GetChunkString(parent_chunk->GetSubChunk(i), i, buf);
             TreeView_SetItem(P3DWin_Tree, &item);
        }
    }
}


//------------------------------------------------------------------------
void P3DTree_DeleteChunk()
{
    TV_ITEM item;

    item.hItem = TreeView_GetSelection(P3DWin_Tree);

    // get the item
    if (item.hItem == NULL)
        return;

    TV_ITEM parent;
    parent.hItem = TreeView_GetParent(P3DWin_Tree, item.hItem);

    // if it has no parent, it's probably the root node - beep!
    if (parent.hItem == NULL)
    {
        MessageBeep(MB_ICONEXCLAMATION);
        return;
    }

    parent.mask = TVIF_PARAM;
    TreeView_GetItem(P3DWin_Tree, &parent);
    tlDataChunk* parent_chunk = (tlDataChunk*)parent.lParam;

    item.mask = TVIF_PARAM;
    TreeView_GetItem(P3DWin_Tree, &item);
    tlDataChunk* chunk = (tlDataChunk*)item.lParam;

    // find the item's index in the parent subchunk list
    for (int i = 0; i < parent_chunk->SubChunkCount(); ++i)
    {
        if (chunk == parent_chunk->GetSubChunk(i))
        {
            // check to see if we should pop up a warning
            UINT state = GetMenuState(P3DWin_Menu, IDM_DELETION_WARNING, 0);
            int rc = IDYES;

            if ((state & MF_CHECKED) != 0)
            {
                // popup warning
                rc = MessageBox(P3DWin_Main,
                                     "Are you sure you wish to delete this chunk?",
                                     "Confirm Deletion",
                                     MB_YESNOCANCEL | MB_DEFBUTTON2 | MB_ICONWARNING);
            }

            if (rc == IDYES)
            {
                delete parent_chunk->GetSubChunk(i);
                parent_chunk->GetSubChunk(i) = NULL;
                parent_chunk->RemoveSubChunk(i);
                P3DFile_SetDirty_Deleted(true);

                P3DTree_UpdateSiblings(item.hItem, parent_chunk, i);
                TreeView_DeleteItem(P3DWin_Tree, item.hItem);

                if (parent_chunk->SubChunkCount() == 0)
                {
                    parent.mask = TVIF_CHILDREN;
                    parent.cChildren = 0;
                    TreeView_SetItem(P3DWin_Tree, &parent);
                }

                if (parent_chunk == P3DFile_TopChunk)
                {
                    P3DTree_UpdateRoot();
                }
            }

            break;
        }
    }

    SetFocus(P3DWin_Tree);
}


//--------------------------------------------------------------------------------
static void P3DTree_CopyChunkToClipboard(tlDataChunk* parent_chunk, tlDataChunk* chunk)
{
    if (chunk == 0)
        return;

    tlMemByteStream* mem_stream = new tlMemByteStream((BYTE*)NULL, 256);
    tlFile* fs = new tlFile(mem_stream, tlFile::CHUNK32, FALSE);

    // put the parent id into the memory stream
    // - the parent id is required so we know we're doing a legal insertion later
    if (parent_chunk != 0)
    {
        fs->PutLong(parent_chunk->ID());
    }
    else
    {
        fs->PutLong(0);
    }
    // put the chunk data into the memory stream
    chunk->Write(fs);
    delete fs;

    unsigned long mem_length = mem_stream->GetPosition();
    mem_stream->SetPosition(0);
    HANDLE mem_handle = GlobalAlloc(GMEM_MOVEABLE | GMEM_DDESHARE, mem_length);
    void* mem_ptr = GlobalLock(mem_handle);
    mem_stream->GetBytes(mem_ptr, mem_length);
    GlobalUnlock(mem_handle);

    OpenClipboard(P3DWin_Main);
    SetClipboardData(P3DWin_ClipboardFormat, mem_handle);
    CloseClipboard();

    delete mem_stream;
}


//--------------------------------------------------------------------------------
static void P3DTree_RetrieveChunkFromClipboard(int* parent_id, tlDataChunk** chunk)
{
    OpenClipboard(P3DWin_Main);
    UINT format = EnumClipboardFormats(0);

    while ((format != 0) && (format != P3DWin_ClipboardFormat))
    {
        format = EnumClipboardFormats(format);
    }
    if (format == 0)
    {
        *chunk = 0;
        return;
    }

    HANDLE mem_handle = GetClipboardData(P3DWin_ClipboardFormat);
    CloseClipboard();

    void* mem_ptr = GlobalLock(mem_handle);

    tlMemByteStream* mem_stream = new tlMemByteStream((BYTE*)mem_ptr);
    tlFile* fs = new tlFile(mem_stream, tlFile::CHUNK32, FALSE);

    // get parent id
    *parent_id = fs->GetLong();

    // get the chunk itself
    *chunk = tlDataChunk::LoadChunk(fs);
    delete fs;
    delete mem_stream;

    GlobalUnlock(mem_handle);
}


//--------------------------------------------------------------------------------
void P3DTree_CopyChunk()
{
    TV_ITEM item;
    item.hItem = TreeView_GetSelection(P3DWin_Tree);

    // get the item
    if (item.hItem == NULL)
        return;

    TV_ITEM parent;
    parent.hItem = TreeView_GetParent(P3DWin_Tree, item.hItem);

    // if it has no parent, it's probably the root node - beep!
    if (parent.hItem == NULL)
    {
        MessageBeep(MB_ICONEXCLAMATION);
        return;
    }

    parent.mask = TVIF_PARAM;
    TreeView_GetItem(P3DWin_Tree, &parent);
    tlDataChunk* parent_chunk = (tlDataChunk*)parent.lParam;

    item.mask = TVIF_PARAM;
    TreeView_GetItem(P3DWin_Tree, &item);
    tlDataChunk* chunk = (tlDataChunk*)item.lParam;

    P3DTree_CopyChunkToClipboard(parent_chunk, chunk);
}


//--------------------------------------------------------------------------------
void P3DTree_CutChunk()
{
    P3DTree_CopyChunk();
    P3DTree_DeleteChunk();
}


//--------------------------------------------------------------------------------
// Used for inserting new top-level history chunks as file is saved
//
void P3DTree_InsertHistoryChunk()
{
    TV_ITEM root;
    root.hItem = TreeView_GetRoot(P3DWin_Tree);
    root.mask = TVIF_STATE | TVIF_CHILDREN;
    root.stateMask = 0x0f;
    TreeView_GetItem(P3DWin_Tree, &root);

    // add "+" if necessary
    if (root.cChildren == 0)
    {
        root.mask = TVIF_CHILDREN;
        root.cChildren = 1;
        TreeView_SetItem(P3DWin_Tree, &root);
    }

    // expand root tree if necessary
    if ((root.state & TVIS_EXPANDED) == 0)
    {
        TreeView_Expand(P3DWin_Tree, root.hItem, TVE_EXPAND);
        return;
    }

    // insert the new history chunk if necessary
    TV_INSERTSTRUCT tv_ins;
    char buf[256];

    tv_ins.hParent = root.hItem;
    tv_ins.hInsertAfter = TVI_FIRST;

    tv_ins.item.mask = TVIF_CHILDREN | TVIF_PARAM | TVIF_TEXT;
    tv_ins.item.pszText = buf;
    tv_ins.item.cChildren = 0;
    tv_ins.item.lParam = (LPARAM)(P3DFile_TopChunk->GetSubChunk(0));

    P3DTree_GetChunkString(P3DFile_TopChunk->GetSubChunk(0), 0, buf);

    tv_ins.item.hItem = TreeView_InsertItem(P3DWin_Tree, &tv_ins);

    P3DTree_UpdateSiblings(tv_ins.item.hItem, P3DFile_TopChunk, 1);
}


//--------------------------------------------------------------------------------
// Inserts new treeview item into the currently selected item
//
bool P3DTree_InsertChunk(unsigned parent_id, tlDataChunk* chunk)
{
    if (chunk == 0)
        return true;

    TV_ITEM item;
    item.hItem = TreeView_GetSelection(P3DWin_Tree);

    // get the item
    if (item.hItem == NULL)
        return false;

    TV_ITEM parent;
    parent.hItem = TreeView_GetParent(P3DWin_Tree, item.hItem);
    tlDataChunk* parent_chunk;

    if (parent.hItem == NULL)
    {
        parent_chunk = 0;
    }
    else
    {
        parent.mask = TVIF_PARAM;
        TreeView_GetItem(P3DWin_Tree, &parent);
        parent_chunk = (tlDataChunk*)parent.lParam;
    }

    item.mask = TVIF_PARAM;
    TreeView_GetItem(P3DWin_Tree, &item);
    tlDataChunk* sel_chunk = (tlDataChunk*)item.lParam;

    int chunk_idx = -1;

    if (sel_chunk->ID() == parent_id)
    {
        // we'll assume user meant to insert as a child into currently selected chunk
        parent.hItem = item.hItem;
        parent_chunk = sel_chunk;
        chunk_idx = 0;
        item.hItem = TVI_FIRST;
    }
    else if (parent_chunk == 0)
    {
        // inserting off the root node -- we'll allow that
        parent_chunk = P3DFile_TopChunk;
        parent.hItem = item.hItem;
        chunk_idx = 0;
        item.hItem = TVI_FIRST;
    }
    else if (parent_chunk->ID() == parent_id)
    {
        // we're inserting off the proper parent node
        // this is generally a good operation, so
        // do nothing
    }
    else if (parent_chunk == P3DFile_TopChunk)
    {
        // do nothing -- we allow inserting into the root node for any chunk
        // in general, this should be reasonably "safe"
    }
    else
    {
        // throw warning, if necessary -- inserting into a funny place
        int rc = MessageBox(P3DWin_Main,
                                  "Inserting the chunk currently in the clipboard into "
                                  "the current location is not recommended.\n"
                                  "Do you wish to continue with the insertion?",       
                                  "Chunk Insertion Warning",
                                  MB_YESNOCANCEL | MB_DEFBUTTON2 | MB_ICONWARNING);
        if (rc != IDYES)
        {
            return false;
        }
    }

    if (chunk_idx < 0)
    {
        for (int i = 0; i < parent_chunk->SubChunkCount(); ++i)
        {
            if (parent_chunk->GetSubChunk(i) == sel_chunk)
            {
                chunk_idx = i + 1;
                break;
            }
        }
    }

    assert(chunk_idx >= 0);

    // do the actual chunk insertion
    parent_chunk->InsertSubChunk(chunk, chunk_idx, 1);
    P3DFile_SetDirty_Inserted(true);

    // update the parent treeview item
    parent.mask = TVIF_CHILDREN;
    TreeView_GetItem(P3DWin_Tree, &parent);

    if (parent.cChildren == 0)
    {
        parent.cChildren = I_CHILDRENCALLBACK;
        TreeView_SetItem(P3DWin_Tree, &parent);
        TreeView_Expand(P3DWin_Tree, parent.hItem, TVE_EXPAND);
    }
    else
    {
        parent.mask = TVIF_STATE;
        parent.stateMask = 0x0f;
        TreeView_GetItem(P3DWin_Tree, &parent);

        if ((parent.state & TVIS_EXPANDED) == 0)
        {
            TreeView_Expand(P3DWin_Tree, parent.hItem, TVE_EXPAND);
            return true;
        }

        // insert the actual treeview item, if necessary
        TV_INSERTSTRUCT tv_ins;

        tv_ins.hParent = parent.hItem;
        tv_ins.hInsertAfter = item.hItem;

        tv_ins.item.mask = TVIF_CHILDREN | TVIF_PARAM | TVIF_TEXT;
        char buf[256];
        tv_ins.item.pszText = buf;

        if (chunk->SubChunkCount() > 0)
        {
            tv_ins.item.cChildren = I_CHILDRENCALLBACK;
        }
        else
        {
            tv_ins.item.cChildren = 0;
        }

        tv_ins.item.lParam = (LPARAM)chunk;

        P3DTree_GetChunkString(chunk, chunk_idx, buf);

        tv_ins.item.hItem = TreeView_InsertItem(P3DWin_Tree, &tv_ins);

        // update all treeview sibling indices
        P3DTree_UpdateSiblings(tv_ins.item.hItem, parent_chunk, chunk_idx + 1);
    }

    return true;
}


//--------------------------------------------------------------------------------
void P3DTree_PasteChunk()
{
    int parent_id;
    tlDataChunk* chunk;

    P3DTree_RetrieveChunkFromClipboard(&parent_id, &chunk);

    if (!P3DTree_InsertChunk(parent_id, chunk))
    {
        delete chunk;
        return;
    }
}


//--------------------------------------------------------------------------------
void P3DTree_UpdateSelected()
{
    TV_ITEM item;
    item.hItem = TreeView_GetSelection(P3DWin_Tree);
    item.mask = TVIF_PARAM;
    TreeView_GetItem(P3DWin_Tree, &item);

    tlDataChunk* chunk = (tlDataChunk*)item.lParam;

    TV_ITEM parent;
    parent.hItem = TreeView_GetParent(P3DWin_Tree, item.hItem);

    if (parent.hItem != 0)
    {
        parent.mask = TVIF_PARAM;
        TreeView_GetItem(P3DWin_Tree, &parent);

        tlDataChunk* parent_chunk = (tlDataChunk*)parent.lParam;

        int idx = -1;
        for (int i = 0; i < parent_chunk->SubChunkCount(); ++i)
        {
            if (parent_chunk->GetSubChunk(i) == chunk)
            {
                idx = i;
                break;
            }
        }

        if (idx >= 0)
        {
            char buf[256];
            P3DTree_GetChunkString(chunk, idx, buf);

            item.mask = TVIF_TEXT;
            item.pszText = buf;

            TreeView_SetItem(P3DWin_Tree, &item);
        }
    }
}


//--------------------------------------------------------------------------------
void P3DTree_UpdateRoot()
{
    TV_ITEM item;

    item.hItem = TreeView_GetRoot(P3DWin_Tree);
    item.mask = TVIF_TEXT | TVIF_CHILDREN;
    item.cChildren = (P3DFile_TopChunk->SubChunkCount() > 0) ? 1 : 0;
    item.pszText = P3DFile_Name;

    TreeView_SetItem(P3DWin_Tree, &item);
}

//--------------------------------------------------------------------------------
void P3DTree_Refresh( )
{
    if( TreeView_GetRoot( P3DWin_Tree ) )
    {
        TreeView_DeleteAllItems( P3DWin_Tree );

        P3DTree_Fill( );
    }
}

//--------------------------------------------------------------------------------
void P3DTree_DisplayImage(tlDataChunk* imageChunk)
{
    if ( imageChunk->ID()!=Pure3D::Texture::IMAGE )
        return;
    
    if( P3DImg_pImg != NULL )
    {
        delete P3DImg_pImg;
        P3DImg_pImg = NULL;
    }
    //create tlImage and BITMAP for the given chunk
    P3DImg_pImg = new tlImage( imageChunk );
    P3DImg_pImg->Convert( 32, false, false );

    //pop up the image window to display the image
    RECT rect, rc;
    GetWindowRect( P3DWin_Image, &rect );
    GetClientRect( P3DWin_Image, &rc );

    int cx = rect.right - rc.right - rect.left + rc.left + P3DImg_pImg->GetWidth( );
    int cy = rect.bottom - rc.bottom - rect.top + rc.top + P3DImg_pImg->GetHeight( );

    SetWindowPos( P3DWin_Image, HWND_TOPMOST, 10, 10, cx, cy, SWP_NOMOVE );

    P3DImgWnd_CreateBMPFromtlImage( );

    ShowWindow( P3DWin_Image, SW_SHOW );
    InvalidateRect( P3DWin_Image, NULL, TRUE );
}

//-------------------------------------------------------------------------------
static void P3DTree_DisplayImageChunk( tlDataChunk *chunk )
{
    switch (chunk->ID())
    {
        case Pure3D::Texture::IMAGE:              
        {
          P3DTree_DisplayImage(chunk);
          break;
        }
        case Pure3D::Texture::TEXTURE:              
        {
          tlDataChunk* subChunk = chunk->GetSubChunk( 0 );

          switch (subChunk->ID())
          {
              case Pure3D::Texture::IMAGE:                      
              {
                  P3DTree_DisplayImage(subChunk);
                  break;
              }
              case Pure3D::Texture::VOLUME_IMAGE:
              {
                  P3DTree_DisplayImage(subChunk->GetSubChunk( 0 ));
                  break;
              }
          }
          break;
        }
        case Pure3D::Texture::VOLUME_IMAGE:
        {
          P3DTree_DisplayImage(chunk->GetSubChunk( 0 ));
          break;
        }
    }
}
//--------------------------------------------------------------------------------
LRESULT CALLBACK P3DTree_Proc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
    switch(msg)
    {
        case WM_NOTIFY:
        {
            NMHDR* nmhdrPtr = (NMHDR*)lparam;

            if(nmhdrPtr->hwndFrom == P3DWin_Tree)
            {
                switch(nmhdrPtr->code)
                {
                    case TVN_SELCHANGED:
                    {
                        NM_TREEVIEW* nmtv = (NM_TREEVIEW*)lparam;
                        tlDataChunk* chunk = (tlDataChunk*)nmtv->itemNew.lParam;

                        if (!P3DTree_Clearing)
                            P3DList_Fill(chunk);

                        if( chunk == P3DFile_TopChunk )
                            P3DTree_ChunkSize = 0;
                        else
                            P3DTree_ChunkSize = chunk->Size( );                        

                        P3DTree_SubChunks = chunk->SubChunkCount( );
                        P3DStatus_RefreshPane( );

                        //display the current selected image chunk in the image window 
                        //if the image window is visiable 
                        if( IsWindowVisible( P3DWin_Image) && P3DImg_AutoRefresh ){
                            P3DTree_DisplayImageChunk( chunk );
                            SetFocus( P3DWin_Tree );
                        }
                        break;
                    } // TVN_SELCHANGED

                    case TVN_KEYDOWN:
                    {
                        TV_KEYDOWN* ptvkd = (TV_KEYDOWN*)lparam;

                        switch(ptvkd->wVKey)
                        {
                            case VK_DELETE:
                            {
                                P3DTree_DeleteChunk();
                                break;
                            }

                            case VK_TAB:
                            {
                                SetFocus(P3DWin_List);
                                break;
                            }
                        }

                        break;
                    } // TVN_KEYDOWN

                    case TVN_GETDISPINFO:
                    {
                        TV_DISPINFO *tvdpi = (TV_DISPINFO *)lparam;
                        tvdpi->item.cChildren = 1;
                        break;
                    } // TVN_GETDISPINFO

                    case TVN_ITEMEXPANDED:
                    {
                        NM_TREEVIEW* nmtv = (NM_TREEVIEW*)lparam;

                        if (!(nmtv->itemNew.state & TVIS_EXPANDED))
                        {
                            HTREEITEM tmp, item;
                            tmp = TreeView_GetChild(P3DWin_Tree, nmtv->itemNew.hItem);

                            while (tmp != NULL)
                            {
                                item = tmp;
                                tmp = TreeView_GetNextSibling(P3DWin_Tree, item);

                                TreeView_DeleteItem(P3DWin_Tree, item);
                            };
                        }

                        nmtv->itemNew.state &= ~(TVIS_EXPANDEDONCE);
                        TreeView_SetItem(P3DWin_Tree, &(nmtv->itemNew));

                        break;
                    } // TVN_ITEMEXPANDED

                    case TVN_ITEMEXPANDING:
                    {
                        NM_TREEVIEW* nmtv = (NM_TREEVIEW*)lparam;

                        if (!(nmtv->itemNew.state & TVIS_EXPANDED))
                        {
                            P3DTree_FillChunk(&(nmtv->itemNew));
                        }

                        break;
                    } // TVN_ITEMEXPANDING
                }
            }

            break;
        }

      case WM_LBUTTONDBLCLK:
      {
          if( hwnd != P3DWin_Tree )
                return 0;
 
          TVHITTESTINFO info;
          info.pt.x = LOWORD(lparam);  // horizontal position of cursor 
          info.pt.y = HIWORD(lparam);  // vertical position of cursor 

          HTREEITEM hItem = TreeView_HitTest( hwnd, &info );        

          if( !hItem  )
                return 0;

          TVITEM item;
          item.mask = TVIF_PARAM;
          item.hItem = hItem;
          BOOL bResult = TreeView_GetItem( hwnd, &item );

          if( !bResult )
                return 0;
          tlDataChunk *pChunk = ( tlDataChunk *)item.lParam;
          
          assert( pChunk );

          //process dbclk on texture chunk only
          P3DTree_DisplayImageChunk( pChunk );
          
          return 0;

      }
      break;


      case WM_RBUTTONDOWN:
      {
          if( hwnd != P3DWin_Tree )
                return 0;
 
          TVHITTESTINFO info;
          POINT hitp;

          info.pt.x = hitp.x = LOWORD(lparam);  // horizontal position of cursor 
          info.pt.y = hitp.y = HIWORD(lparam);  // vertical position of cursor 
          

          HTREEITEM hItem = TreeView_HitTest( hwnd, &info );        

          if( !hItem  )
                return 0;

          TVITEM item;
          item.mask = TVIF_PARAM;
          item.hItem = hItem;
          BOOL bResult = TreeView_GetItem( hwnd, &item );

          if( !bResult )
                return 0;

          TreeView_SelectItem( P3DWin_Tree, hItem );

          tlDataChunk *pChunk = ( tlDataChunk *)item.lParam;
          
          assert( pChunk );

          //process dbclk on texture chunk only
          P3DTree_HandlePopup( pChunk,  hitp );
          
          return 0;
      }
      break;

      case WM_COMMAND:             
        switch (LOWORD(wparam)){
             case IDM_IMPORT_IMAGE:
                 P3DMenu_ImportImage( );
             break;

             case IDM_EXPORT_IMAGE:
                 P3DMenu_ExportImage( );
             break;
        }
      break;
    }

    return CallWindowProc( (WNDPROC) P3DTree_PrevWndProc, hwnd, msg, wparam, lparam);
}

static BOOL CALLBACK P3DTree_FindDlgProc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
    switch(msg)
    {
        case WM_INITDIALOG:
        {
            RECT rc, rcOwner, rcDlg;
            GetWindowRect(P3DWin_Main, &rcOwner);
            GetWindowRect(hwnd, &rcDlg);
            CopyRect(&rc, &rcOwner);

            OffsetRect(&rcDlg, -rcDlg.left, -rcDlg.top);
            OffsetRect(&rc, -rc.left, -rc.top);
            OffsetRect(&rc, -rcDlg.right, -rcDlg.bottom);
 
            SetWindowPos(hwnd, HWND_TOP,
                             rcOwner.left + (rc.right / 2),
                             rcOwner.top + (rc.bottom / 2),
                             0, 0, SWP_NOSIZE);

            SetDlgItemText(hwnd, IDC_EDIT_FIND, P3DTree_fs.str );
            
            CheckDlgButton( hwnd, IDC_CHECK_CASE, P3DTree_fs.bCase ? BST_CHECKED : BST_UNCHECKED );
            CheckDlgButton( hwnd, IDC_CHECK_CONTENT, P3DTree_fs.bContent ? BST_CHECKED : BST_UNCHECKED );
            
            CheckDlgButton( hwnd, IDC_RADIO_UP, P3DTree_fs.bUp ? BST_CHECKED : BST_UNCHECKED );
            CheckDlgButton( hwnd, IDC_RADIO_DOWN, P3DTree_fs.bUp ? BST_UNCHECKED : BST_CHECKED );         


            return TRUE;
        }

        case WM_COMMAND:
        {   
            switch(LOWORD(wparam))
            {
                case IDOK:      //find next
                {
                    char tmp[256];
                    tmp[0] = 0;

                    GetDlgItemText(hwnd, IDC_EDIT_FIND, P3DTree_fs.str, 1024);
                    P3DTree_fs.bCase = (IsDlgButtonChecked( hwnd, IDC_CHECK_CASE ) != 0);
                    P3DTree_fs.bContent = (IsDlgButtonChecked( hwnd, IDC_CHECK_CONTENT ) != 0);
                    P3DTree_fs.bUp = (IsDlgButtonChecked( hwnd, IDC_RADIO_UP ) != 0);
 
                    EndDialog(hwnd, 1);
                  
                    return TRUE;
                }

                case IDCANCEL:
                {
                    EndDialog(hwnd, 0);
                    return TRUE;
                }
            }

            break;
        }

    }

    return FALSE;
}

//-------------------------------------------------------------------------
void P3DTree_FindNext( )
{
     //we don't search for null string
     if( P3DTree_fs.str[ 0 ] == 0 )
          return;

     HTREEITEM hSelect = TreeView_GetSelection( P3DWin_Tree );
     HTREEITEM hRoot = TreeView_GetRoot( P3DWin_Tree );

     if( !hSelect )
          hSelect = hRoot;

     if( P3DTree_fs.bUp ){       //search above current selection
         

          if( hRoot == hSelect )       //nothing above the root
                return;

          HTREEITEM hStart = P3DTree_GetFirstLevelItem( hSelect );

          HTREEITEM hCurr = TreeView_GetPrevSibling( P3DWin_Tree, hStart );

          while( hCurr  ){
                int fieldIdx = -1;
                if( P3DTree_SearchItemForStr( hCurr, fieldIdx ) ){
                     TreeView_SelectItem( P3DWin_Tree, hCurr );
                     //a field that contains searched string has been found
                     if( fieldIdx >= 0 ){
                          int id = P3DList_GetItemID( fieldIdx, -1 );
                          if( id >= 0 )
                                ListView_SetSelectionMark( P3DWin_List, id );
                     }

                     return;
                }
                else
                     hCurr = TreeView_GetPrevSibling( P3DWin_Tree, hCurr );
          }
     }
     else{           //search down current selection
          HTREEITEM hCurr;

          if( hSelect == hRoot )
                hCurr = TreeView_GetChild( P3DWin_Tree, hRoot );
          else{
                HTREEITEM hStart = P3DTree_GetFirstLevelItem( hSelect );
                hCurr = TreeView_GetNextSibling( P3DWin_Tree, hStart );
          }

          while( hCurr ){
             int fieldIdx = -1;
             if( P3DTree_SearchItemForStr( hCurr, fieldIdx ) ){
                     TreeView_SelectItem( P3DWin_Tree, hCurr );
                     //a field that contains searched string has been found
                     if( fieldIdx >= 0 ){
                          int id = P3DList_GetItemID( fieldIdx, -1 );
                          if( id >= 0 )
                                ListView_SetSelectionMark( P3DWin_List, id );
                     }
                     return;
                }
                else
                     hCurr = TreeView_GetNextSibling( P3DWin_Tree, hCurr );
          }
     }


    SetFocus(P3DWin_Tree);
}
//-------------------------------------------------------------------------
void P3DTree_Find( )
{
    if (DialogBoxParam(GetModuleHandle(NULL),
                             MAKEINTRESOURCE(IDD_FIND_CHUNK),
                             P3DWin_Main, DLGPROC(P3DTree_FindDlgProc),
                             (LPARAM)(0)))
    {
         P3DStatus_RefreshPane( );
         P3DTree_FindNext( );
    }

}


//-------------------------------------------------------------------------
long P3DTree_FilteredChunksSize( )
{
    if( !P3DFile_TopChunk )
        return 0;

    P3DTree_ChunksSize = 0;
    for( int i = 0; i < P3DFile_TopChunk->SubChunkCount( ); ++i ){
        tlDataChunk *subch = P3DFile_TopChunk->GetSubChunk( i );

        if( P3DTree_IsFiltered( true, subch->ID( ) ) == false )
            P3DTree_ChunksSize += subch->Size( );
    }

    return P3DTree_ChunksSize;
}

