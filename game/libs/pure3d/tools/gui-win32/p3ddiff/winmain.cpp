//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <windows.h>
#include <commctrl.h>


#define P3DWIN_TITLE "P3DDiff"

#define P3DWIN_IMAGE "P3DImageWnd"

#define P3DWIN_TREE "P3DTreeView"

#include "winmain.hpp"
#include "wndproc.hpp"
#include "filewrapper.hpp"
#include "imgwnd.hpp"
#include "treeviewwindow.hpp"
#include "listviewwindow.hpp"
#include "menu.hpp"
#include "resource.h"


TBBUTTON tbButtons[] = {
     { 0, IDM_ALL, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 10,IDM_MOD_HISTORY, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 0, 0, TBSTATE_ENABLED, TBSTYLE_SEP, 0L, 0},
     { 1, IDM_MESH, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 2, IDM_SKIN, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 8, IDM_DRAWABLE, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 0, 0, TBSTATE_ENABLED, TBSTYLE_SEP, 0L, 0},
     { 3, IDM_SHADER, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 4, IDM_TEXTURE, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 7, IDM_FONT, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 9, IDM_LIGHT_CAMERA, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 11,IDM_EFFECTS, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 0, 0, TBSTATE_ENABLED, TBSTYLE_SEP, 0L, 0},
     { 5, IDM_SKELETON, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
     { 6, IDM_ANIMATION, TBSTATE_ENABLED, TBSTYLE_CHECK, 0L, 0},
};

//-----------------
// global variables
//-----------------
HWND P3DWin_Main = 0;
HWND P3DWin_Tree = 0;
HWND P3DWin_SrcList = 0;
HWND P3DWin_DstList = 0;
HWND P3DWin_Image = 0;
HWND P3DWin_Toolbar = 0;

HMENU P3DWin_Menu = 0;
HINSTANCE P3DWin_hInstance = 0;

HACCEL P3DWin_Accelerators = 0;

UINT P3DWin_ClipboardFormat = 0;

int P3DWin_Filter = P3DEXP_ALL_ELEMENT;
bool P3D_CompareInOrder = false;

//----------------
// local functions
//----------------

//------------------------------------------------------------------------------------
static int RetrieveFileNames( char* cmdline,  char *src, char *dst )
{
     int count = 0;

     int i = 0;

     while( cmdline[ i ] != ' ' && cmdline[ i ] != 0 )
          ++i;

     if( i > 0 ){
          ++count;
          strncpy( src, cmdline, i );
          src[ i ] = 0;

          cmdline += i;
     }
     else
          return count;

     i = 0;

     while( cmdline[ i ] == ' ' )
          ++i;

     cmdline += i;

     while( cmdline[ i ] != ' ' && cmdline[ i ] != 0 )
          ++i;

     if( i > 0 ){
          ++count;
          strncpy( dst, cmdline, i );
          dst[ i ] = 0;

          cmdline += i;
     }

     return count;
}


void P3DWin_Create(HINSTANCE instance, int nCmdShow)
{
    WNDCLASSEX  wc;

    wc.cbSize        = sizeof(wc);
    wc.style         = CS_HREDRAW | CS_VREDRAW;
    wc.lpfnWndProc   = P3D_WindowProc;
    wc.cbClsExtra    = 0;
    wc.cbWndExtra    = 0;
    wc.hInstance     = instance;
    wc.hIcon         = LoadIcon(instance, MAKEINTRESOURCE(IDI_ICON_P3DDIFF));
    wc.hCursor       = LoadCursor(NULL, MAKEINTRESOURCE(IDC_SIZEWE));
    wc.hbrBackground = (HBRUSH)(COLOR_ACTIVEBORDER + 1);
    wc.lpszMenuName  = NULL;         // MAKEINTRESOURCE(IDR_P3DEXP_MAINMENU);
    wc.lpszClassName = P3DWIN_TITLE;
    wc.hIconSm       = NULL;         // * LoadIcon(NULL, IDI_APPLICATION);

    RegisterClassEx(&wc);

    // now do the menu loading manually
    P3DWin_Menu = LoadMenu(instance, MAKEINTRESOURCE(IDR_P3DEXP_MAINMENU));

    // create the main, parent window
    P3DWin_Main = CreateWindowEx
    (
        WS_EX_WINDOWEDGE,         // WS_EX_CONTROLPARENT,  // //WS_EX_ACCEPTFILES
        P3DWIN_TITLE,                       // class 
        P3DWIN_TITLE,                       // caption
        WS_OVERLAPPEDWINDOW | WS_THICKFRAME | WS_CLIPCHILDREN | CS_DBLCLKS , // | WS_SIZEBOX,   //    style 
        CW_USEDEFAULT,                  // init. x pos 
        CW_USEDEFAULT,                  // init. y pos 
        640,                            // init. x size 
        480,                            // init. y size 
        NULL,                           // parent window 
        P3DWin_Menu,                      // menu handle 
        instance,                       // program handle 
        NULL                            // create parms 
    ); 


    //--------------------
    //   Toolbar
    //--------------------
     P3DWin_Toolbar = CreateToolbarEx( 
          P3DWin_Main,                   // parent
          WS_CHILD | WS_BORDER | WS_VISIBLE | TBSTYLE_TOOLTIPS | CCS_ADJUSTABLE | CCS_TOP,   // style
          ID_TOOLBAR,             // toolbar id
          12,                      // number of bitmaps
          instance,                  // mod instance
          IDB_TOOLBAR,            // resource id for the bitmap
          (LPCTBBUTTON)&tbButtons,// address of buttons
          15,                     // number of buttons
          16,16,                  // width & height of the buttons
          16,16,                  // width & height of the bitmaps
          sizeof(TBBUTTON));      // structure size

     if (P3DWin_Toolbar == NULL )
     {
          MessageBox (NULL, "Toolbar Bar not created!", NULL, MB_OK );
          return;
     }


    //----------------------
    // create treeSizeWindow
    //----------------------

    // figure out a good initial size for the window
    // tree view should start out as 40% of width
    RECT rect;
    GetClientRect(P3DWin_Main, &rect);

    int treeWidth = (int)(rect.right * P3DWIN_SPLITTER_RATIO);

    P3DWin_Tree = 
        CreateWindowEx( WS_EX_CLIENTEDGE,
                             WC_TREEVIEW,
                             "tree view",    // this doesn't matter does it?
                             WS_VISIBLE | WS_CHILD  | WS_CLIPSIBLINGS | WS_TABSTOP |
                             TVS_HASBUTTONS | TVS_SHOWSELALWAYS |
                             TVS_HASLINES | TVS_LINESATROOT /*| TVS_EDITLABELS*/, // TVS_SHOWSELALWAYS 
                             0, 0,           // init x and y positions
                             treeWidth, rect.bottom,
                             P3DWin_Main,
                             (HMENU)1,
                             instance,
                             0);

    HIMAGELIST hImgList = ImageList_LoadBitmap( instance, MAKEINTRESOURCE( IDB_BITMAP_TREE ), 16, 2, /*CLR_NONE*/ RGB( 255, 255, 255 ) );
    TreeView_SetImageList( P3DWin_Tree, hImgList, TVSIL_NORMAL );

    //store the old window proc of the tree
    P3DTree_PrevWndProc = GetWindowLong( P3DWin_Tree, GWL_WNDPROC );

    //set the window proc of tree
    SetWindowLong( P3DWin_Tree, GWL_WNDPROC, (LONG)P3DTree_Proc );
    //----------------------
    // create listSizeWindow
    //----------------------

    int splitterWidth = GetSystemMetrics(SM_CXFRAME) - 1;
    int viewWidth = rect.right - treeWidth - 2*splitterWidth;

    // calc initial x pos of listsize win
    int initListSizeXPos = treeWidth + splitterWidth;

    P3DWin_SrcList =
        CreateWindowEx( WS_EX_CLIENTEDGE,
                             "LISTBOX",
                             "list view",
                             WS_VISIBLE | WS_CHILD | WS_CLIPSIBLINGS | WS_TABSTOP |
                                 WS_HSCROLL | WS_VSCROLL |
                                 LBS_NODATA | LBS_NOINTEGRALHEIGHT | LBS_NOTIFY |
                                 LBS_OWNERDRAWFIXED | LBS_WANTKEYBOARDINPUT,
                             initListSizeXPos, 0,
                             viewWidth/2, rect.bottom,
                             P3DWin_Main,
                             NULL,
                             instance,
                             NULL);
  //store the old window proc of the list
    P3DList_PrevWndProc = GetWindowLong( P3DWin_SrcList, GWL_WNDPROC );

    //set the window proc of tree
    SetWindowLong( P3DWin_SrcList, GWL_WNDPROC, (LONG)P3DList_Proc );

    initListSizeXPos += viewWidth/2 + splitterWidth;

    
    P3DWin_DstList =
        CreateWindowEx( WS_EX_CLIENTEDGE,
                             "LISTBOX",
                             "list view",
                             WS_VISIBLE | WS_CHILD | WS_CLIPSIBLINGS | WS_TABSTOP |
                                 WS_HSCROLL | WS_VSCROLL |
                                 LBS_NODATA | LBS_NOINTEGRALHEIGHT | LBS_NOTIFY |
                                 LBS_OWNERDRAWFIXED | LBS_WANTKEYBOARDINPUT,
                             initListSizeXPos, 0,
                             viewWidth/2, rect.bottom,
                             P3DWin_Main,
                             NULL,
                             instance,
                             NULL);

    //set the window proc of tree
    SetWindowLong( P3DWin_DstList, GWL_WNDPROC, (LONG)P3DList_Proc );

    //----------------------
    //  create image window
    //----------------------
    wc.cbSize        = sizeof(wc);
    wc.style         = CS_HREDRAW | CS_VREDRAW;
    wc.lpfnWndProc   = P3DImgWnd_Proc;
    wc.cbClsExtra    = 0;
    wc.cbWndExtra    = 0;
    wc.hInstance     = instance;
    wc.hIcon         = LoadIcon(instance, MAKEINTRESOURCE(IDI_ICON_P3DDIFF));
    wc.hCursor       = LoadCursor(NULL, MAKEINTRESOURCE(IDC_ARROW));
    wc.hbrBackground = (HBRUSH)(COLOR_ACTIVEBORDER + 1);
    wc.lpszMenuName  = NULL;         // MAKEINTRESOURCE(IDR_P3DEXP_MAINMENU);
    wc.lpszClassName = P3DWIN_IMAGE;
    wc.hIconSm       = NULL;         // * LoadIcon(NULL, IDI_APPLICATION);

    RegisterClassEx(&wc);

    P3DWin_Image = 
        CreateWindowEx( WS_EX_CLIENTEDGE,
                             P3DWIN_IMAGE,
                             "Texture Window",    // this doesn't matter does it?
                             WS_POPUPWINDOW | WS_CAPTION | WS_BORDER, 
                             0, 0,           // init x and y positions
                             150, 150,
                             P3DWin_Main,
                             NULL,
                             instance,
                             0);



    // load keyboard accelerators
    P3DWin_Accelerators = LoadAccelerators(instance, MAKEINTRESOURCE(IDR_ACCELERATOR1));

    ShowWindow(P3DWin_Main, nCmdShow);
    ShowWindow(P3DWin_Tree, nCmdShow);
    ShowWindow(P3DWin_SrcList, nCmdShow);
    ShowWindow(P3DWin_DstList, nCmdShow);

    UpdateWindow(P3DWin_Main);  // sends a WM_PAINT message

    P3DWin_ClipboardFormat = RegisterClipboardFormat("Pure3D Explorer Chunk");
}


//------------------------------------------------------------------------
int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, PSTR lpszCmdParam, int nCmdShow)
{    
    InitCommonControls();

    //set the instance handle
    P3DWin_hInstance = hInstance;

    // Create and show the parent window
    // this fills 'frame'
    P3DWin_Create(hInstance, nCmdShow);

    P3DMenu_SetFilter( P3DEXP_ALL_ELEMENT );

    // might have drag and dropped onto the icon
    if(lpszCmdParam[0])
    {
        // Strip out any quotations
        char buf[1024];
        int len = strlen(lpszCmdParam);
        int j = 0;

        for (int i = 0; i < len; ++i)
        {
            if (lpszCmdParam[i] != '"')
            {
                buf[j] = lpszCmdParam[i];
                ++j;
            }
        }

        buf[j] = 0;
        char srcFile[ 1024 ], dstFile[ 1024 ];
        int count = RetrieveFileNames( buf, srcFile, dstFile );

        if( count == 2 )
          P3DFile_Compare( srcFile, dstFile );

    }

    MSG  msg;
    bool done = false;

    while(!done)
    {
        while (PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
        {
            if (msg.message == WM_QUIT)
            {
                done = true;
            }

            if (!TranslateAccelerator(P3DWin_Main, P3DWin_Accelerators, &msg))
            {
                TranslateMessage(&msg);
                DispatchMessage(&msg);
            }
        }

        if (!done)
            WaitMessage();
    }

    return msg.wParam;    
}


// End of file.

