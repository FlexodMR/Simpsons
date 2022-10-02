//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: wndproc.cpp
// Greg Mayer
// Nov 19, 1998


//----------------
// system includes
//----------------
#include <windows.h>
#include <windowsx.h>
#include <commdlg.h>
#include <string.h>
#include <commctrl.h>   // includes the common control header

//-----------------
// project includes
//-----------------
#include "wndproc.hpp"
#include "winmain.hpp"
#include "filewrapper.hpp"
#include "menu.hpp"
#include "treeviewwindow.hpp"
#include "listviewwindow.hpp"


//-----------------
// global variables
//-----------------
#define P3DSPLITTER_DRAGLIMIT 32

static bool P3DSplitter_Moving = false;
static int P3DSplitter_Pos;


//----------------
// local functions
//----------------

//---------------------------------------------------------------------------
int P3DSplitter_GetPosition()
{
    return P3DSplitter_Pos;
}


//---------------------------------------------------------------------------
void P3DSplitter_SetPosition(int new_pos)
{
    P3DSplitter_Pos = new_pos;

    RECT rect;
    GetClientRect(P3DWin_Main, &rect);

    if (P3DSplitter_Pos < P3DSPLITTER_DRAGLIMIT)
        P3DSplitter_Pos = P3DSPLITTER_DRAGLIMIT;
    if (P3DSplitter_Pos > (rect.right - P3DSPLITTER_DRAGLIMIT))
        P3DSplitter_Pos = rect.right - P3DSPLITTER_DRAGLIMIT;

    SendMessage(P3DWin_Main, WM_SIZE, 0, MAKELPARAM(rect.right, rect.bottom));
}


//---------------------------------------------------------------------------
LRESULT CALLBACK P3D_WindowProc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
    static CHAR szBuf[128];
    LPTOOLTIPTEXT lpToolTipText;


    switch(msg)
    {
        case WM_CREATE:
        {
            // set up main window for drag and drop files
            DragAcceptFiles(hwnd, TRUE);           

            P3DSplitter_Moving = false;

            RECT rect;
            GetClientRect(hwnd, &rect);
            P3DSplitter_Pos = (int)(rect.right * P3DWIN_SPLITTER_RATIO);

            return 0;
        }

        case WM_DROPFILES:
        {
            HDROP hDrop = (HDROP)wparam;  // handle of internal drop structure 

            char buf[256];
            unsigned int result = DragQueryFile((HDROP)hDrop, 0, buf, 256);

            // buf should have the full path and filename now
            P3DFile_Open(buf);
     
            return 0;
        }

        case WM_SIZE:
        {
            int w = GET_X_LPARAM(lparam);
            int h = GET_Y_LPARAM(lparam);
            int y;

            RECT rect;
            GetWindowRect( P3DWin_Toolbar, &rect );
            y = rect.bottom - rect.top - 1;
            h -= y;

            GetWindowRect( P3DWin_StatusBar, &rect );
            h -= ( rect.bottom - rect.top );

            int cxedge = GetSystemMetrics(SM_CXFRAME);
            MoveWindow(P3DWin_Tree, 0, y, P3DSplitter_Pos - (cxedge / 2), h,  TRUE);
            MoveWindow(P3DWin_List, P3DSplitter_Pos + (cxedge / 2) + (cxedge % 2), y,
                          w - P3DSplitter_Pos - (cxedge / 2) - (cxedge % 2), h, TRUE);
            SendMessage( P3DWin_Toolbar, msg, wparam, lparam );
            SendMessage( P3DWin_StatusBar, msg, wparam, lparam );
            return 0;
        }

        case WM_MOUSEMOVE:
            if (wparam == MK_LBUTTON)
            {
                if (P3DSplitter_Moving)
                {
                    P3DSplitter_SetPosition(GET_X_LPARAM(lparam));
                }
            }
            break;

        case WM_LBUTTONDOWN:
            P3DSplitter_Moving = true;
            SetCapture(hwnd);
            return 0;

        case WM_LBUTTONDBLCLK:
             return P3DTree_Proc( hwnd, msg, wparam, lparam);

        case WM_LBUTTONUP:
            ReleaseCapture();
            P3DSplitter_Moving = false;
            return 0;

        case WM_CLOSE:
            if (!P3DFile_Close())
                return 0;
            break;

        case WM_DESTROY:
            if (P3DWin_Menu)
                DestroyMenu(P3DWin_Menu);
            PostQuitMessage(0);
            return 0;

        case WM_KEYDOWN:
        {
            switch( wparam )
            {
                case VK_TAB:
                    SetFocus(P3DWin_Tree);
                    break;
            }
            break;
        }

        case WM_INITMENU:
        {
            return P3DMenu_Proc(hwnd, msg, wparam, lparam);
            break;
        }

        case WM_COMMAND:
        {
            LRESULT rc = P3DMenu_Proc(hwnd, msg, wparam, lparam);
            rc |= P3DList_Proc(hwnd, msg, wparam, lparam);
            break;
        }

        case WM_NOTIFY: 
        {

            switch (((LPNMHDR) lparam)->code) 
            {
                case TTN_NEEDTEXT:    
                     // Display tool tip text.
                 lpToolTipText = (LPTOOLTIPTEXT)lparam;
                LoadString ( P3DWin_hInstance, 
                    lpToolTipText->hdr.idFrom,    // string ID == cmd ID
                    szBuf,
                    sizeof(szBuf));
                     lpToolTipText->lpszText = szBuf;
                 break;

                case TBN_QUERYDELETE:
                     // Toolbar customization -- can we delete this button?
                     return TRUE;
                     break;

                case TBN_GETBUTTONINFO:
                     // The toolbar needs information about a button.
                     return FALSE;
                     break;

                case TBN_QUERYINSERT:
                     // Can this button be inserted? Just say yo.
                     return TRUE;
                     break;

                case TBN_CUSTHELP:
                     // Need to display custom help.
                     return TRUE;
                     break;

                case TBN_TOOLBARCHANGE:
                     // Done dragging a bitmap to the toolbar.
                     SendMessage(P3DWin_Toolbar, TB_AUTOSIZE, 0L, 0L);
                     break;

                default:
                      P3DTree_Proc(hwnd, msg, wparam, lparam);
                      P3DList_Proc(hwnd, msg, wparam, lparam);                
                      break;
            }
            break;
        }

        case WM_MEASUREITEM:
            return P3DList_Proc(hwnd, msg, wparam, lparam);

        case WM_DRAWITEM:
            return P3DList_Proc(hwnd, msg, wparam, lparam);

        case WM_VKEYTOITEM:
            return P3DList_Proc(hwnd, msg, wparam, lparam);
    }

    return DefWindowProc(hwnd, msg, wparam, lparam);
}


// End of file.

