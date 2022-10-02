//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <windows.h>
#include <commctrl.h>

#include <toollib.hpp>

#include "treeviewwindow.hpp"
#include "listviewwindow.hpp"
#include "winmain.hpp"
#include "wndproc.hpp"
#include "filewrapper.hpp"
#include "imgwnd.hpp"

#include "resource.h"


LONG P3DTree_PrevWndProc = 0;
static bool P3DTree_Clearing = false;
static const int CONTAIN_N_SAME = 1;                  //a chunk contain a subchunk the same as the compared one
static const int CONTAIN_N_DIFF = 2;                  //a chunk contain a subchunk that has the same name as the compared one, but content is different
static const int CONTAIN_NONE = 3;                    //no subchunk has the same name and type as the compared one

#define IMG_NODE_SRC   0
#define IMG_NODE_DST   1
#define IMG_NODE_SAME       3
#define IMG_NODE_DIFF       2
#define IMG_NODE_DOCS       4

class DiffNode{
public:
     DiffNode( ){ srcChunk = NULL; dstChunk = NULL; };
     ~DiffNode( ){ };

     tlDataChunk * srcChunk;
     tlDataChunk * dstChunk;
};
//------------------------------------------------------------------------
tlDataChunk * P3DTree_GetChunkFromItem( TVITEM *item )
{
  if( P3DTree_IsDiffItem( item->hItem ) ){
         DiffNode *pNode = (DiffNode*)item->lParam;
         assert( pNode );
         return pNode->srcChunk;
    }
  else{
         tlDataChunk *chunk = (tlDataChunk*)item->lParam;
         return chunk;
  }
}
         
//------------------------------------------------------------------------
static void P3DTree_ReleaseDiffNode(  HTREEITEM root )
{

     if( !root )
          return;

     TVITEM item;
     item.hItem = root;
     item.mask = TVIF_IMAGE | TVIF_PARAM;

     TreeView_GetItem( P3DWin_Tree, &item );

     //a diff node
     if( item.iImage == IMG_NODE_DIFF ){
          DiffNode *pNode = (DiffNode*) item.lParam;
          delete pNode;
     }

     HTREEITEM sibling, child;
     child = TreeView_GetChild( P3DWin_Tree, root );
     P3DTree_ReleaseDiffNode( child );

     sibling = TreeView_GetNextSibling( P3DWin_Tree, root );
     P3DTree_ReleaseDiffNode( sibling );

}
//------------------------------------------------------------------------
void P3DTree_Clear()
{
    P3DTree_Clearing = true;

    //delete all diff node allocated;
    HTREEITEM root = TreeView_GetRoot( P3DWin_Tree );
    P3DTree_ReleaseDiffNode( root );

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

    if (max_x > P3DSplitter_GetPosition( false ))
    {
        P3DSplitter_SetPosition(max_x, false);
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
              chunkID == Pure3D::OpticEffect::LENS_FLARE || 
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
//          if the subitem of the item contains the subchunk
//------------------------------------------------------------------------
int P3DTree_ContainSubChunk( TV_ITEM *item, tlDataChunk *subchunk, HTREEITEM &subitem, bool bFirstMatchOnly )
{
     subitem = 0;
     tlDataChunk * chunk = P3DTree_GetChunkFromItem( item );
     
     HTREEITEM hChildItem = TreeView_GetNextItem( P3DWin_Tree, item->hItem, TVGN_CHILD );

     int nResult = CONTAIN_NONE;
     while( hChildItem != NULL ){
          TVITEM cItem;
          cItem.mask = TVIF_PARAM | TVIF_IMAGE;
          cItem.hItem = hChildItem;
          TreeView_GetItem( P3DWin_Tree, &cItem );
          
          //we find the an tree item which is a src item and
          //has a same name and chunk id as the compared one
          if( cItem.iImage == IMG_NODE_SRC ){
                tlDataChunk *chunk = (tlDataChunk*)cItem.lParam;
                if( ( strcmp( chunk->GetName( ), subchunk->GetName( ) ) == 0 ) &&
                     ( chunk->ID( ) == subchunk->ID( ) ) ){
                     
                     if( *chunk == *subchunk ){
                          subitem = hChildItem;
                          return CONTAIN_N_SAME;
                     }
                     else{
                         if( bFirstMatchOnly ){
                            subitem = hChildItem;
                            return CONTAIN_N_DIFF;
                         }
                         else{
                              //don't flush nResult to keep the order, first matched
                              //diff node returns
                             if( nResult == CONTAIN_NONE ){
                                    subitem = hChildItem;
                                    nResult = CONTAIN_N_DIFF;                
                              }
                         }

                     }
                }                    
          }
          hChildItem = TreeView_GetNextSibling( P3DWin_Tree, hChildItem );
     }
     
     return nResult;
}
//------------------------------------------------------------------------
static bool P3DTree_IsSrcItem( TV_ITEM *item )
{
     TVITEM hItem;
     hItem.hItem = item->hItem;
     hItem.mask = TVIF_IMAGE;

     TreeView_GetItem( P3DWin_Tree, &hItem  );
     return ( hItem.iImage != IMG_NODE_DST );
}
//------------------------------------------------------------------------
bool P3DTree_IsDiffItem( HTREEITEM hItem )
{

     TVITEM tvItem;
     tvItem.hItem = hItem;
     tvItem.mask = TVIF_IMAGE;

     TreeView_GetItem( P3DWin_Tree, &tvItem  );
     return ( tvItem.iImage == IMG_NODE_DIFF );
}
//------------------------------------------------------------------------
static int P3DTree_ItemImgID( TV_ITEM *item )
{
     TVITEM hItem;
     hItem.hItem = item->hItem;
     hItem.mask = TVIF_IMAGE;

     TreeView_GetItem( P3DWin_Tree, &hItem  );
     return ( hItem.iImage  );
}

////////////////////////////////////////////////////////////////////////////////////
///     Search the destinational parent chunk for the sourc sub-chunk
static tlDataChunk * P3DTree_GetComparedSubChunk( tlDataChunk * dstParent, tlDataChunk *srcParent, tlDataChunk *srcSub )
{
     //if the searched chunk does have a name
     if( strcmp( srcSub->GetName( ), "NAMELESS" ) != 0 ){
          for( int i = 0; i < dstParent->SubChunkCount( ); ++i ){
                tlDataChunk *subchunk = dstParent->GetSubChunk( i );

                //find one the same as srcSub, then return it
                if( *srcSub == *subchunk )
                     return subchunk;

                //otherwise, return the one with same name and chunk-id as srcSub
                if( ( strcmp( srcSub->GetName( ), subchunk->GetName( ) ) == 0 ) &&
                     ( srcSub->ID( ) == subchunk->ID( ) ) )
                     return subchunk;
          }
          return NULL;
     }
     else{   //the searched chunk has no-name, ambiguity might exist
          tlDataChunk *chunk = NULL;
          int priority = 0;

          for( int i = 0; i < dstParent->SubChunkCount( ); ++i ){
                tlDataChunk *subchunk = dstParent->GetSubChunk( i );
                int counts = 0;            

                //find one the same as srcSub, then return it
                if( *srcSub == *subchunk )
                     return subchunk;

                if( ( strcmp( srcSub->GetName( ), subchunk->GetName( ) ) != 0 ) ||
                     ( srcSub->ID( ) != subchunk->ID( ) ) )
                     continue;
                
                //subchunk has same name and chunk-id as srcSub; we increase 
                //similarity couting number
                counts += 2;

                if( srcSub->SubChunkCount( ) == subchunk->SubChunkCount( ) )
                     ++counts;                            

                if( counts > priority ){
                     priority = counts;
                     chunk = subchunk;
                }
          }    
          return chunk;
     }
}

static tlDataChunk * P3DTree_GetComparedChunk( TV_ITEM* item )
{
     TVITEM hItem;
     hItem.hItem = item->hItem;
     hItem.mask = TVIF_IMAGE | TVIF_PARAM;

     TreeView_GetItem( P3DWin_Tree, &hItem  );
     HTREEITEM root = TreeView_GetRoot( P3DWin_Tree );

     if( root == item->hItem )
          return P3DDstFile_TopChunk;
     else{
          if( hItem.iImage != IMG_NODE_DIFF )
                return NULL;

          DiffNode *pNode = (DiffNode *)hItem.lParam; 

          return pNode->dstChunk;
     }
}

//------------------------------------------------------------------------
static void P3DTree_FillChunkEx(TV_ITEM* item)
{
    tlDataChunk* chunk = P3DTree_GetChunkFromItem( item );

    //filter the root node's children only
    bool bFilter = ( TreeView_GetParent( P3DWin_Tree, item->hItem ) == NULL );
    if ((chunk != 0) && (chunk->SubChunkCount() > 0))
    {
        TV_INSERTSTRUCT tv_ins;
        char buf[256];

        tv_ins.hParent = item->hItem;
        tv_ins.hInsertAfter = TVI_LAST;

        tv_ins.item.mask = TVIF_CHILDREN | TVIF_PARAM | TVIF_TEXT | TVIF_IMAGE | TVIF_SELECTEDIMAGE;
        tv_ins.item.pszText = buf;

        if( P3DTree_IsSrcItem( item ) ){
             int iImage = P3DTree_ItemImgID( item );
             switch( iImage ){
                case IMG_NODE_DOCS:
                     tv_ins.item.iImage = tv_ins.item.iSelectedImage = IMG_NODE_SRC;
                break;
                case IMG_NODE_SRC:
                case IMG_NODE_SAME:
                     tv_ins.item.iImage = tv_ins.item.iSelectedImage = iImage;;
                break;

                case IMG_NODE_DIFF:
                     tv_ins.item.iImage = tv_ins.item.iSelectedImage = IMG_NODE_SRC;
                break;
             }
        }          
        else
             tv_ins.item.iImage = tv_ins.item.iSelectedImage = IMG_NODE_DST;

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

                 TreeView_InsertItem(P3DWin_Tree, &tv_ins);
             }
        }
    }

    //now insert extra chunk from destination file 
    //and re-mark the sub-item's image if the sbu-item is different 
    //from the one contained in destination file
    tlDataChunk *dstChunk = P3DTree_GetComparedChunk( item );

    if ((dstChunk != 0) && (dstChunk->SubChunkCount() > 0))
    {
        TV_INSERTSTRUCT tv_ins;
        char buf[256];
        char * stack = new char[ dstChunk->SubChunkCount() ]; 
        ZeroMemory( stack, dstChunk->SubChunkCount() );      

        tv_ins.hParent = item->hItem;
        tv_ins.hInsertAfter = TVI_LAST;

        tv_ins.item.mask = TVIF_CHILDREN | TVIF_PARAM | TVIF_TEXT | TVIF_IMAGE | TVIF_SELECTEDIMAGE;
        tv_ins.item.pszText = buf;
        tv_ins.item.iImage = tv_ins.item.iSelectedImage = IMG_NODE_DST;
        
        //first pass, we insert all subchunks of dstChunk which are either
        //        - HAS A CHUNK IN THE SOURCE FILE THAT IS THE SAME AS ITSELF
        //        - BELONG TO DESTINATIONAL FILE AT ALL
        for(int i = 0; i < dstChunk->SubChunkCount(); ++i)
        {
 
             tlDataChunk* subchunk = dstChunk->GetSubChunk(i);

             HTREEITEM subitem;

             bool bMatchFirst = !bFilter && P3D_CompareInOrder;

             int nResult = P3DTree_ContainSubChunk( item, subchunk, subitem, bMatchFirst );

             switch( nResult ){
                case CONTAIN_N_SAME:
                     P3DTree_SetItemImage( subitem, IMG_NODE_SAME );
                     stack[ i ] = 1;
                break;

                case CONTAIN_NONE:
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

                            TreeView_InsertItem(P3DWin_Tree, &tv_ins);
                     }
                     stack[ i ] = 1;
                break;

                case CONTAIN_N_DIFF:
                    if( !bFilter && P3D_CompareInOrder ){         //process diff node inside the first pass for non-first level chunks
                         TVITEM item;
                         item.hItem = subitem;
                         item.mask = TVIF_PARAM;
                         TreeView_GetItem( P3DWin_Tree, &item );

                         DiffNode *pNode = new DiffNode;
                         pNode->srcChunk = (tlDataChunk *)item.lParam;
                         pNode->dstChunk = subchunk;

                         //attach pNode to subitem's lParam
                         item.mask = TVIF_PARAM;
                         item.lParam = (LPARAM) pNode;
                         TreeView_SetItem( P3DWin_Tree, &item );
                         P3DTree_SetItemImage( subitem, IMG_NODE_DIFF );
                    }
                break;

             }
        }

        //do the second pass processing for all first-level node
        if( ( bFilter && P3D_CompareInOrder ) || !P3D_CompareInOrder ){
            //second pass deal with all chunks that are differet for source file
            for( i = 0; i < dstChunk->SubChunkCount(); ++i)
            {          
                 if( stack[ i ] )
                      continue;

                 tlDataChunk* subchunk = dstChunk->GetSubChunk(i);

                 HTREEITEM subitem;
                 int nResult = P3DTree_ContainSubChunk( item, subchunk, subitem, !bFilter );

                 switch( nResult ){
                
                    case CONTAIN_N_DIFF:{
                         TVITEM item;
                         item.hItem = subitem;
                         item.mask = TVIF_PARAM;
                         TreeView_GetItem( P3DWin_Tree, &item );

                         DiffNode *pNode = new DiffNode;
                         pNode->srcChunk = (tlDataChunk *)item.lParam;
                         pNode->dstChunk = subchunk;

                         //attach pNode to subitem's lParam
                         item.mask = TVIF_PARAM;
                         item.lParam = (LPARAM) pNode;
                         TreeView_SetItem( P3DWin_Tree, &item );
                         P3DTree_SetItemImage( subitem, IMG_NODE_DIFF );
                    }
                    break;

                    case CONTAIN_NONE:
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

                                TreeView_InsertItem(P3DWin_Tree, &tv_ins);
                         }                
                    break;
                 }
            }
        }

        delete[ ] stack;
    }

}

//------------------------------------------------------------------------
//      Change the image of the subitem
//------------------------------------------------------------------------
void P3DTree_SetItemImage( HTREEITEM hItem, int iImage )
{

     TVITEM item;
     item.mask = TVIF_IMAGE | TVIF_SELECTEDIMAGE;
     item.hItem = hItem;
     item.iImage = item.iSelectedImage = iImage;
     TreeView_SetItem( P3DWin_Tree, &item );
}


//------------------------------------------------------------------------
void P3DTree_Fill()
{
    TV_INSERTSTRUCT tv_ins;

    tv_ins.hParent = TVI_ROOT;
    tv_ins.hInsertAfter = TVI_FIRST;

    tv_ins.item.mask = TVIF_CHILDREN | TVIF_PARAM | TVIF_TEXT | TVIF_IMAGE | TVIF_SELECTEDIMAGE;

    if( P3DSrcFile_TopChunk->SubChunkCount() > 0 )
        tv_ins.item.cChildren = 1;
    else{
        if( P3DDstFile_TopChunk->SubChunkCount() > 0 )
                tv_ins.item.cChildren = 1;
        else
                tv_ins.item.cChildren = 0;
    }

    tv_ins.item.iImage = tv_ins.item.iSelectedImage = IMG_NODE_DOCS;

    tv_ins.item.lParam = (LPARAM)P3DSrcFile_TopChunk;
    char roottitle[ 1024 ];
    sprintf( roottitle,  "%s vs %s", P3DSrcFile_Name, P3DDstFile_Name );
    tv_ins.item.pszText = roottitle;

    tv_ins.item.hItem = TreeView_InsertItem(P3DWin_Tree, &tv_ins);

    // We expand all the first-level chunks, and keep them.
    // All other chunks are expanded on the fly.
    if(tv_ins.item.cChildren)
    {
        TreeView_Expand(P3DWin_Tree, tv_ins.item.hItem, TVE_EXPAND);
    }

    SetFocus(P3DWin_Tree);
    TreeView_SelectItem(P3DWin_Tree, tv_ins.item.hItem);
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

    for (int i = parent_idx; i < parent_chunk->SubChunkCount(); ++i)
    {
        item.hItem = TreeView_GetNextSibling(P3DWin_Tree, item.hItem);
        P3DTree_GetChunkString(parent_chunk->GetSubChunk(i), i, buf);
        TreeView_SetItem(P3DWin_Tree, &item);
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
    if( P3DSrcFile_TopChunk->SubChunkCount() > 0 )
         item.cChildren = 1;
    else if (P3DDstFile_TopChunk->SubChunkCount() > 0)
         item.cChildren = 1;
    else
         item.cChildren = 0;

    char roottitle[ 1024 ];
    sprintf( roottitle,  "%s vs %s", P3DSrcFile_Name, P3DDstFile_Name );
    item.pszText = roottitle;

    TreeView_SetItem(P3DWin_Tree, &item);
}

//--------------------------------------------------------------------------------
void P3DTree_Refresh( )
{
     if( TreeView_GetRoot( P3DWin_Tree ) ){
          TreeView_DeleteAllItems( P3DWin_Tree );

          P3DTree_Fill( );
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
                        

                        if (!P3DTree_Clearing){
                             P3DList_Clear( true );
                             P3DList_Clear( false );

                             switch( P3DTree_ItemImgID( &(nmtv->itemNew) ) ){
                                case IMG_NODE_SAME:
                                case IMG_NODE_SRC: {
                                     tlDataChunk* chunk = (tlDataChunk*)nmtv->itemNew.lParam;
                                     P3DList_DstChunk = 0;
                                     P3DList_Fill(chunk, true);
                                }
                                break;

                                case IMG_NODE_DIFF:
                                {
                                     DiffNode *pNode = (DiffNode *)nmtv->itemNew.lParam;
                                     tlDataChunk* chunk = pNode->srcChunk;
                                     tlDataChunk *dstChunk = P3DTree_GetComparedChunk( &(nmtv->itemNew) );
                                     P3DList_DstChunk = dstChunk;
                                     P3DList_Fill(chunk, true);                            
                                     P3DList_Fill( dstChunk, false );
                                }
                                break;

                                case IMG_NODE_DST:{
                                     tlDataChunk* chunk = (tlDataChunk*)nmtv->itemNew.lParam;
                                     P3DList_SrcChunk = 0;
                                     P3DList_Fill(chunk, false);                            
                                }
                                break;
                             }
                        }                     
                        break;
                    } // TVN_SELCHANGED

                    case TVN_KEYDOWN:
                    {
                        TV_KEYDOWN* ptvkd = (TV_KEYDOWN*)lparam;

                        switch(ptvkd->wVKey)
                        {
                            case VK_TAB:
                            {
                                SetFocus(P3DWin_SrcList);
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
                            P3DTree_FillChunkEx(&(nmtv->itemNew));
                        }

                        break;
                    } // TVN_ITEMEXPANDING
                }
            }

            break;
        }

      case WM_LBUTTONDBLCLK:
      
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
          if( pChunk->ID( ) != Pure3D::Texture::TEXTURE )
                return 0;

          tlDataChunk *pImgChunk = pChunk->GetSubChunk( 0 );
          if( pImgChunk->ID( ) != Pure3D::Texture::IMAGE )
                return 0;

          if( P3DImg_pImg != NULL ){
                delete P3DImg_pImg;
                P3DImg_pImg = NULL;
          }
          //create tlImage and BITMAP for the given chunk
          P3DImg_pImg = new tlImage( pImgChunk );
          P3DImg_pImg->Convert( 32, false, false );

          //pop up the image window to display the image
          RECT rect, rc;
          GetWindowRect( P3DWin_Image, &rect );
          GetClientRect( P3DWin_Image, &rc );

          int cx = rect.right - rc.right - rect.left + rc.left + P3DImg_pImg->GetWidth( );
          int cy = rect.bottom - rc.bottom - rect.top + rc.top + P3DImg_pImg->GetHeight( );

          SetWindowPos( P3DWin_Image, HWND_TOP, 0, 0, cx, cy, SWP_NOMOVE );

          P3DImgWnd_CreateBMPFromtlImage( );

          ShowWindow( P3DWin_Image, SW_SHOW );
          InvalidateRect( P3DWin_Image, NULL, TRUE );
          
          
          return 0;

      
        break;

    }

    return CallWindowProc( (WNDPROC) P3DTree_PrevWndProc, hwnd, msg, wparam, lparam);
}

static bool P3DTree_IsFirstLevelItem( HTREEITEM hItem )
{
     HTREEITEM hParent = TreeView_GetParent( P3DWin_Tree, hItem );

     if( hParent && ( TreeView_GetParent( P3DWin_Tree, hParent )  == NULL ) )
          return true;
     else
          return false;
}

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

HTREEITEM P3DTree_GetNextDiffItem( HTREEITEM hItem )
{
     HTREEITEM hFLItem = P3DTree_GetFirstLevelItem( hItem );

     HTREEITEM hNext = TreeView_GetNextSibling( P3DWin_Tree, hFLItem );
     while( hNext ){
          if( P3DTree_IsDiffItem( hNext ) )
                return hNext;
          hNext = TreeView_GetNextSibling( P3DWin_Tree, hNext );
     }
     return NULL;
}

HTREEITEM P3DTree_GetPrevDiffItem( HTREEITEM hItem )
{
     HTREEITEM hFLItem = P3DTree_GetFirstLevelItem( hItem );

     HTREEITEM hLast = TreeView_GetPrevSibling( P3DWin_Tree, hFLItem );
     while( hLast ){
          if( P3DTree_IsDiffItem( hLast ) )
                return hLast;
          hLast = TreeView_GetPrevSibling( P3DWin_Tree, hLast );
     }
     return NULL;
}

void P3DTree_GoToNextDiffItem(  )
{
      HTREEITEM hCurr = TreeView_GetSelection( P3DWin_Tree );
      HTREEITEM hNext = P3DTree_GetNextDiffItem( hCurr );
      if( hNext )
          TreeView_SelectItem( P3DWin_Tree, hNext );
}

void  P3DTree_GoToLastDiffItem(  )
{
      HTREEITEM hCurr = TreeView_GetSelection( P3DWin_Tree );
      HTREEITEM hLast = P3DTree_GetPrevDiffItem( hCurr );
      if( hLast )
          TreeView_SelectItem( P3DWin_Tree, hLast );
}
// End of file.

