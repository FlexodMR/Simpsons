//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//----------------
// system includes
//----------------
#include <windows.h>
#include <commctrl.h>

#include "statusbar.hpp"

#include "listviewwindow.hpp"
#include "treeviewwindow.hpp"
#include "filewrapper.hpp"
#include "winmain.hpp"
#include "resource.h"
#include "chunks.h"


const int nNumPane = 5;
const int nFindPaneId = 0;
const int nFilterPaneId = 1;

static char * P3DStatus_AppenedPaneText( int nId )
{
     switch( nId ){
     case nFindPaneId:
          return P3DTree_fs.str;
     break;

     case nFilterPaneId:
     break;
     }
}

void P3DStatus_Create( HWND hwndParent, int nStatusID, HINSTANCE hinst )
{ 
    //do nothing if status bar was created
     if( P3DWin_StatusBar )
        return;

     RECT rcClient; 
     HLOCAL hloc; 
     LPINT lpParts; 
 
     // Create the status bar. 
     P3DWin_StatusBar  = CreateWindowEx( 
          0,                       // no extended styles 
          STATUSCLASSNAME,         // name of status bar class 
          (LPCTSTR) NULL,          // no text when first created 
          SBARS_SIZEGRIP |         // includes a sizing grip 
          WS_CHILD,                // creates a child window 
          0, 0, 0, 0,              // ignores size and position 
          hwndParent,              // handle to parent window 
          (HMENU) nStatusID,       // child window identifier 
          hinst,                   // handle to application instance 
          NULL);                   // no window creation data 
 
     // Get the coordinates of the parent window's client area. 
     GetClientRect(hwndParent, &rcClient); 
 
     // Allocate an array for holding the right edge coordinates. 
     hloc = LocalAlloc(LHND, sizeof(int) * nNumPane); 
     lpParts = (LPINT) LocalLock(hloc); 
 
     // Calculate the right edge coordinate for each pane, and 
     // copy the coordinates to the array. 
     int nWidth = (rcClient.right - rcClient.left) / nNumPane; 
     int nStart = nWidth;
     for (int i = 0; i < nNumPane - 1; i++) { 
          lpParts[i] = nStart; 
          nStart += nWidth; 
     } 
 
    lpParts[ 0 ] = 100;     
    lpParts[ 1 ] = 200;     
    lpParts[ 2 ] = 400;     
    lpParts[ 3 ] = 600;
    lpParts[ 4 ] = -1;

     // Tell the status bar to create the window pane. 
     SendMessage(P3DWin_StatusBar, SB_SETPARTS, (WPARAM) nNumPane, (LPARAM) lpParts); 
 
     //initialize the pane text    
     P3DStatus_RefreshPane(  );

     // Free the array, and return. 
     LocalUnlock(hloc); 
     LocalFree(hloc); 
     
} 
//---------------------------------------------------------------------------
static const char * P3DStatus_ChunkFilter( )
{

    static char buf[ 256 ];
    buf[ 0 ] = 0;

    switch( P3DWin_Filter ){
    case P3DEXP_ALL_ELEMENT:
        LoadString( P3DWin_hInstance, IDM_ALL, buf, 256 );
        return buf;
    break;

    case Pure3D::Mesh::MESH:
        LoadString( P3DWin_hInstance, IDM_MESH, buf, 256 );
        return buf;
    break;

    case Pure3D::Mesh::SKIN:
        LoadString( P3DWin_hInstance, IDM_SKIN, buf, 256 );
        return buf;
    break;

    case Pure3D::Shader::SHADER:
        LoadString( P3DWin_hInstance, IDM_SHADER, buf, 256 );
        return buf;
    break;

    case P3D_SKELETON:
        LoadString( P3DWin_hInstance, IDM_SKELETON, buf, 256 );
        return buf;
    break;

    case Pure3D::Texture::TEXTURE:    
        LoadString( P3DWin_hInstance, IDM_TEXTURE, buf, 256 );
        return buf;
    break;


    case P3DEXP_ANIMATION:
        LoadString( P3DWin_hInstance, IDM_ANIMATION, buf, 256 );
        return buf;
    break;

    case Pure3D::Font::TEXTURE_FONT:
        LoadString( P3DWin_hInstance, IDM_FONT, buf, 256 );
        return buf;
    break;

    case P3DEXP_HISTORY:
        LoadString( P3DWin_hInstance, IDM_HISTORY, buf, 256 );
        return buf;
    break;

    case P3DEXP_EFFECTS:
        LoadString( P3DWin_hInstance, IDM_EFFECTS, buf, 256 );
        return buf;
    break;

    case P3DEXP_DRAWABLE:
        LoadString( P3DWin_hInstance, IDM_DRAWABLE, buf, 256 );
        return buf;
    break;

    case P3DEXP_LIGHT_CAMERA:
        LoadString( P3DWin_hInstance, IDM_LIGHT_CAMERA, buf, 256 );
        return buf;
    break;

    default:
        return "";
    }
}

static void P3DStatus_ComposePaneText( int idx, char buf[ 256 ] )
{


     buf[ 0 ] = 0;
     switch( idx ){
     case 0:            //chunks pane
          sprintf( buf, "CHUNKS: %d", P3DTree_FilteredChunks );
     break;

     case 1: 
          sprintf( buf, "SUBCHUNKS: %d",  P3DTree_SubChunks);
     break;

     case 2:        //chunk filter pane
          //sprintf( buf, "CHUNK FILTER: %s", P3DStatus_ChunkFilter( ) );
          sprintf( buf, "CHUNK SIZE: %dBytes", P3DTree_ChunkSize );
     break;

     case 3:
          sprintf( buf, "CHUNKS SIZE: %dBytes", P3DTree_ChunksSize );
     break;


     case 4:            //find pane
          sprintf( buf, "FIND: %s", P3DTree_fs.str );
     break;

     }
     
}

void P3DStatus_RefreshPane( )
{

     char buf[ 256 ];

     for( int i = 0; i < nNumPane; ++i ){        
          P3DStatus_ComposePaneText( i, buf  );
          SendMessage(P3DWin_StatusBar, SB_SETTEXT, (WPARAM) i, (LPARAM)buf );
     }
          
}
