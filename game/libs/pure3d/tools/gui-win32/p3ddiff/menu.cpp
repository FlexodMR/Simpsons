//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <windows.h>
#include <commctrl.h>

#include "menu.hpp"
#include "winmain.hpp"
#include "filewrapper.hpp"
#include "treeviewwindow.hpp"
#include "listviewwindow.hpp"

#include "resource.h"


//-------------------------------------------------------------------------
static BOOL CALLBACK P3DMenu_HelpProc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
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

            char buf[256];

            sprintf(buf, "Pure3D Diff v%s", P3DFile_GetP3DDiffVersion());
            SetDlgItemText(hwnd, IDC_HELP_P3DDIFF_STATIC, buf);

            sprintf(buf, "Using ATG v%s Changelist %s", ATG_VERSION, compileChangelist);
            SetDlgItemText(hwnd, IDC_HELP_TOOLLIB_STATIC, buf);

            sprintf(buf, "Compiled %s", compileTime);
            SetDlgItemText(hwnd, IDC_HELP_TOOLLIB_INFO_STATIC, buf);

            return TRUE;
        }

        case WM_COMMAND:
        {
            switch(LOWORD(wparam))
            {
                case IDOK:
                case ID_OK:
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


//---------------------------------------------------------------------------
void P3DMenu_SetFilter( int filter )
{

     switch( P3DWin_Filter ){
     case P3DEXP_ALL_ELEMENT:
          CheckMenuItem( P3DWin_Menu, IDM_ALL, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_ALL, MAKELONG(FALSE, 0) );
     break;

     case Pure3D::Mesh::MESH:
          CheckMenuItem( P3DWin_Menu, IDM_MESH, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_MESH, MAKELONG(FALSE, 0) );
     break;

     case Pure3D::Mesh::SKIN:
          CheckMenuItem( P3DWin_Menu, IDM_SKIN,  MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_SKIN, MAKELONG(FALSE, 0) );
     break;

     case Pure3D::Shader::SHADER:
          CheckMenuItem( P3DWin_Menu, IDM_SHADER, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_SHADER, MAKELONG(FALSE, 0) );
     break;

     case P3D_SKELETON:
          CheckMenuItem( P3DWin_Menu, IDM_SKELETON,  MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_SKELETON, MAKELONG(FALSE, 0) );
     break;

     case Pure3D::Texture::TEXTURE:
          CheckMenuItem( P3DWin_Menu, IDM_TEXTURE, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_TEXTURE, MAKELONG(FALSE, 0) );
     break;

     case P3DEXP_ANIMATION:
          CheckMenuItem( P3DWin_Menu, IDM_ANIMATION, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_ANIMATION, MAKELONG(FALSE, 0) );
     break;

     case Pure3D::Font::TEXTURE_FONT:
          CheckMenuItem( P3DWin_Menu, IDM_FONT, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_FONT, MAKELONG(FALSE, 0) );
     break;

     case P3DEXP_HISTORY:
          CheckMenuItem( P3DWin_Menu, IDM_MOD_HISTORY, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_MOD_HISTORY, MAKELONG(FALSE, 0) );
     break;

     case P3DEXP_EFFECTS:
          CheckMenuItem( P3DWin_Menu, IDM_EFFECTS, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_EFFECTS, MAKELONG(FALSE, 0) );
     break;

     case P3DEXP_DRAWABLE:
          CheckMenuItem( P3DWin_Menu, IDM_DRAWABLE, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_DRAWABLE, MAKELONG(FALSE, 0) );
     break;

     case P3DEXP_LIGHT_CAMERA:
          CheckMenuItem( P3DWin_Menu, IDM_LIGHT_CAMERA, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_LIGHT_CAMERA, MAKELONG(FALSE, 0) );
     break;


     }

     P3DWin_Filter = filter;

     switch( P3DWin_Filter ){
     case P3DEXP_ALL_ELEMENT:
          CheckMenuItem( P3DWin_Menu, IDM_ALL, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_ALL, MAKELONG(TRUE, 0) );
     break;

     case Pure3D::Mesh::MESH:
          CheckMenuItem( P3DWin_Menu, IDM_MESH, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_MESH, MAKELONG(TRUE, 0) );
     break;

     case Pure3D::Mesh::SKIN:
          CheckMenuItem( P3DWin_Menu, IDM_SKIN,  MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_SKIN, MAKELONG(TRUE, 0) );
     break;

     case Pure3D::Shader::SHADER:
          CheckMenuItem( P3DWin_Menu, IDM_SHADER, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_SHADER, MAKELONG(TRUE, 0) );
     break;

     case P3D_SKELETON:
          CheckMenuItem( P3DWin_Menu, IDM_SKELETON,  MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_SKELETON, MAKELONG(TRUE, 0) );
     break;

     case Pure3D::Texture::TEXTURE:
          CheckMenuItem( P3DWin_Menu, IDM_TEXTURE, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_TEXTURE, MAKELONG(TRUE, 0) );
     break;

     case P3DEXP_ANIMATION:
          CheckMenuItem( P3DWin_Menu, IDM_ANIMATION,  MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_ANIMATION, MAKELONG(TRUE, 0) );
     break;

     case Pure3D::Font::TEXTURE_FONT:
          CheckMenuItem( P3DWin_Menu, IDM_FONT, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_FONT, MAKELONG(TRUE, 0) );
     break;

     case P3DEXP_HISTORY:
          CheckMenuItem( P3DWin_Menu, IDM_MOD_HISTORY, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_MOD_HISTORY, MAKELONG(TRUE, 0) );
     break;

     case P3DEXP_EFFECTS:
          CheckMenuItem( P3DWin_Menu, IDM_EFFECTS, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_EFFECTS, MAKELONG(TRUE, 0) );
     break;

     case P3DEXP_DRAWABLE:
          CheckMenuItem( P3DWin_Menu, IDM_DRAWABLE, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_DRAWABLE, MAKELONG(TRUE, 0) );
     break;

     case P3DEXP_LIGHT_CAMERA:
          CheckMenuItem( P3DWin_Menu, IDM_LIGHT_CAMERA, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_LIGHT_CAMERA, MAKELONG(TRUE, 0) );
     break;
     }

     P3DTree_Refresh( );
}

//---------------------------------------------------------------------------
LRESULT CALLBACK P3DMenu_Proc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
    // Handle all WM_COMMAND msgs from menu

    switch(msg)
    {
        case WM_INITMENU:
        {
            // check to see if a chunk is in the clipboard
            OpenClipboard(P3DWin_Main);
            UINT format = EnumClipboardFormats(0);
            while ((format != 0) && (format != P3DWin_ClipboardFormat))
            {
                format = EnumClipboardFormats(format);
            }
            CloseClipboard();

            EnableMenuItem(P3DWin_Menu, IDM_PASTE,
                                ((format == P3DWin_ClipboardFormat) && (P3DSrcFile_TopChunk != 0)) ?
                                    MF_ENABLED : MF_GRAYED);
            break;
        }

        case WM_COMMAND:
            if(lparam == 0 || lparam == (LPARAM)P3DWin_Toolbar ) // from menu or toolbar
            {
                switch(LOWORD(wparam))
                {

                    case IDM_COMPARE:
                    {
                        // the file open dialog box seems to maintain the
                        // last dir visited automatically

                        OPENFILENAME ofn;
                        memset(&ofn, 0, sizeof(ofn));

                        char srcBuf[1024];
                        char dstBuf[1024];
                        srcBuf[ 0 ] = 0;
                        dstBuf[ 0 ] = 0;

                        ofn.lStructSize = sizeof(ofn);
                        ofn.hwndOwner = hwnd;
                        ofn.lpstrFilter = "Pure3D Files (*.p3d)\0*.p3d\0"
                                                "PSX Chunks (*.p3x)\0*.p3x\0"
                                                "All Files (*.*)\0*.*\0\0";
                        ofn.lpstrCustomFilter = 0;
                        ofn.nFilterIndex = 1;
                        ofn.lpstrFile = srcBuf;
                        ofn.nMaxFile = sizeof(srcBuf);
                        ofn.lpstrFileTitle = 0;
                        ofn.lpstrInitialDir = 0;
                        ofn.lpstrTitle = "Select First File";
                        ofn.Flags = OFN_FILEMUSTEXIST |
                                        OFN_EXPLORER |
                                        OFN_PATHMUSTEXIST |
                                        OFN_HIDEREADONLY;
                        ofn.lpstrDefExt = "p3d";
                        ofn.lCustData = 0;

                        if(GetOpenFileName(&ofn)){
                            ofn.lpstrFile = dstBuf;
                            if( GetOpenFileName(&ofn) )
                                P3DFile_Compare( srcBuf, dstBuf );
                        }

                        return 0;
                    } // IDM_COMPARE

                    case IDM_CLOSE:
                    {
                        P3DFile_Close();
                        return 0;
                    } // IDM_CLOSE

                    case IDM_EXIT:
                    {
                        PostMessage(hwnd, WM_CLOSE, 0, 0);
                        return 0;
                    } // IDM_EXIT

                    //---------------------------------------------------------
                    //View Menu
                    //---------------------------------------------------------
                    case IDM_ALL:
                         P3DMenu_SetFilter( P3DEXP_ALL_ELEMENT );
                    break;

                    case IDM_MESH:
                         P3DMenu_SetFilter( Pure3D::Mesh::MESH );
                    break;

                    case IDM_SKIN:
                         P3DMenu_SetFilter( Pure3D::Mesh::SKIN );
                    break;

                    case IDM_SHADER:
                         P3DMenu_SetFilter( Pure3D::Shader::SHADER );
                    break;

                    case IDM_SKELETON:
                         P3DMenu_SetFilter( P3D_SKELETON );
                    break;

                    case IDM_TEXTURE:
                         P3DMenu_SetFilter( Pure3D::Texture::TEXTURE );
                    break;

                    case IDM_ANIMATION:
                         P3DMenu_SetFilter( P3DEXP_ANIMATION );
                    break;

                    case IDM_FONT:
                         P3DMenu_SetFilter( Pure3D::Font::TEXTURE_FONT);
                    break;

                    case IDM_MOD_HISTORY:
                         P3DMenu_SetFilter( P3DEXP_HISTORY );
                    break;

                    case IDM_DRAWABLE:
                         P3DMenu_SetFilter( P3DEXP_DRAWABLE );
                    break;

                    case IDM_EFFECTS:
                         P3DMenu_SetFilter( P3DEXP_EFFECTS );
                    break;

                    case IDM_LIGHT_CAMERA:
                         P3DMenu_SetFilter( P3DEXP_LIGHT_CAMERA );
                    break;

                    //---------------------------------------------------------
                    //       Search for different chunk&field
                    //---------------------------------------------------------
                    case IDM_VIEW_LAST_DIFF_CHUNK:
                        P3DTree_GoToLastDiffItem( );
                    break;

                    case IDM_VIEW_NEXT_DIFF_CHUNK:
                        P3DTree_GoToNextDiffItem( );
                    break;

                    case IDM_VIEW_LAST_DIFF_FIELD:
                         P3DList_GoToLastDiffField( );
                    break;

                    case IDM_VIEW_NEXT_DIFF_FIELD:
                         P3DList_GoToNextDiffField( );
                    break;

                    //---------------------------------------------------------
                    // Tools menu   
                    //---------------------------------------------------------
                    case IDM_COMPARE_IN_ORDER:
                    {
                        P3D_CompareInOrder = !P3D_CompareInOrder;
                        UINT state = GetMenuState(P3DWin_Menu, IDM_COMPARE_IN_ORDER, 0);

                        if ((state & MF_CHECKED) != 0)
                        {
                            CheckMenuItem(P3DWin_Menu, IDM_COMPARE_IN_ORDER, MF_UNCHECKED);
                        }
                        else
                        {
                            CheckMenuItem(P3DWin_Menu, IDM_COMPARE_IN_ORDER, MF_CHECKED);
                        }
                        P3DTree_Refresh( );
                        break;
                    } // IDM_COMPARE_IN_ORDER

                    //---------------------------------------------------------
                    // Help menu   
                    //---------------------------------------------------------
                    case IDM_HELP_HMM:
                    {
                        DialogBox(GetModuleHandle(NULL),
                                     MAKEINTRESOURCE(IDD_HELP_HMM),
                                     P3DWin_Main, DLGPROC(P3DMenu_HelpProc));
                        return 0;
                    } // IDM_HELP_HMM

                    default:
                    {
                        break;           
                    }
                }   // end switch (LOWORD(wparam))
            }   // end if(lparam == 0)

            break;
        //}   // end case WM_COMMAND
    }

    return TRUE;
}

// End of file.

