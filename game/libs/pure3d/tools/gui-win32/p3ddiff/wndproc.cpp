//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <windows.h>
#include <windowsx.h>
#include <commdlg.h>
#include <string.h>
#include <commctrl.h>   // includes the common control header

#include "wndproc.hpp"
#include "winmain.hpp"
#include "filewrapper.hpp"
#include "menu.hpp"
#include "treeviewwindow.hpp"
#include "listviewwindow.hpp"

#define P3DSPLITTER_DRAGLIMIT 32

static bool P3DSplitter_Moving = false;
static bool P3DSplitter_MovingFirst = false;
static int P3DSplitter_FirstPos;            //the position of first splitter bar
static int P3DSplitter_SecondPos;           //the position of second splitter bar

//---------------------------------------------------------------------------
int P3DSplitter_GetPosition( bool bFirstSplitter )
{
    if( bFirstSplitter )
         return P3DSplitter_FirstPos;
    else
         return P3DSplitter_SecondPos;
}


//---------------------------------------------------------------------------
void P3DSplitter_SetPosition( int new_pos, bool bFirstSplitter )
{
    if( bFirstSplitter )
          P3DSplitter_FirstPos = new_pos;
    else
          P3DSplitter_SecondPos = new_pos;

    RECT rect;
    GetClientRect(P3DWin_Main, &rect);

    if( bFirstSplitter ){
         if (P3DSplitter_FirstPos < P3DSPLITTER_DRAGLIMIT)
             P3DSplitter_FirstPos = P3DSPLITTER_DRAGLIMIT;

         if (P3DSplitter_FirstPos > (P3DSplitter_SecondPos - P3DSPLITTER_DRAGLIMIT))
             P3DSplitter_FirstPos = P3DSplitter_SecondPos - P3DSPLITTER_DRAGLIMIT;
    }
    else{
         if (P3DSplitter_SecondPos < P3DSplitter_FirstPos + P3DSPLITTER_DRAGLIMIT)
             P3DSplitter_SecondPos = P3DSplitter_FirstPos + P3DSPLITTER_DRAGLIMIT;

         if (P3DSplitter_SecondPos > (rect.right - P3DSPLITTER_DRAGLIMIT))
             P3DSplitter_SecondPos = rect.right - P3DSPLITTER_DRAGLIMIT;
    }

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

            P3DSplitter_FirstPos = (int)(rect.right * P3DWIN_SPLITTER_RATIO);
            int cxedge = GetSystemMetrics(SM_CXFRAME);
            int listWidth = rect.right - rect.left - P3DSplitter_FirstPos - cxedge;
            listWidth /= 2;
            P3DSplitter_SecondPos  = P3DSplitter_FirstPos + cxedge + listWidth;

            return 0;
        }

        case WM_DROPFILES:
        {
            HDROP hDrop = (HDROP)wparam;  // handle of internal drop structure 
            char buf1[1024], buf2[1024];
            unsigned int result = DragQueryFile((HDROP)hDrop, 0xFFFFFFFF, buf1, 0);

            if( result != 2 ){      //we accept only two files to start diffing
                 MessageBox( hwnd, "P3DDiff only accept two files to compare the difference!",
                      "Error", MB_OK );

                 return 0;
            }

            
            result = DragQueryFile((HDROP)hDrop, 0, buf1, 1024);
            result = DragQueryFile((HDROP)hDrop, 1, buf2, 1024);

            // buf should have the full path and filename now
            P3DFile_Compare( buf1, buf2 );
     
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

            int cxedge = GetSystemMetrics(SM_CXFRAME);
            MoveWindow(P3DWin_Tree, 0, y, P3DSplitter_FirstPos, h,  TRUE);
            MoveWindow(P3DWin_SrcList, P3DSplitter_FirstPos + cxedge, y,
                          P3DSplitter_SecondPos - P3DSplitter_FirstPos - cxedge, h, TRUE);
            MoveWindow(P3DWin_DstList, P3DSplitter_SecondPos + cxedge, y,
                          w - cxedge - P3DSplitter_SecondPos, h, TRUE);
            SendMessage( P3DWin_Toolbar, msg, wparam, lparam );
            return 0;
        }

        case WM_MOUSEMOVE:
            if (wparam == MK_LBUTTON)
            {
                if (P3DSplitter_Moving)
                {
                    P3DSplitter_SetPosition(GET_X_LPARAM(lparam), P3DSplitter_MovingFirst);
                }
            }
            break;

        case WM_LBUTTONDOWN:
        {
            P3DSplitter_Moving = true;
            int x = LOWORD(lparam);
            int len = GetSystemMetrics(SM_CXFRAME);
            if( x >= P3DSplitter_FirstPos && x <= P3DSplitter_FirstPos + len )
                 P3DSplitter_MovingFirst = true;
            else
                 P3DSplitter_MovingFirst = false;
            SetCapture(hwnd);
            return 0;
        }

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
            rc |= P3DList_Proc(P3DWin_SrcList, msg, wparam, lparam);
            rc |= P3DList_Proc(P3DWin_DstList, msg, wparam, lparam);
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

        case WM_VSCROLL:
        case SBM_SETPOS:
             return P3DList_Proc(hwnd, msg, wparam, lparam);
    }

    return DefWindowProc(hwnd, msg, wparam, lparam);
}


// End of file.

