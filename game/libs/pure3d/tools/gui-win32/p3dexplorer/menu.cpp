//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: menu.cpp
// Bryan Brandt
// June 2, 2000


//----------------
// system includes
//----------------
#include <windows.h>
#include <commctrl.h>

//-----------------
// project includes
//-----------------
#include "menu.hpp"
#include "winmain.hpp"
#include "filewrapper.hpp"
#include "treeviewwindow.hpp"
#include "listviewwindow.hpp"
#include "imgwnd.hpp"
#include "tlImageChunk.hpp"
#include "tlTextureChunk.hpp"
#include "statusbar.hpp"

#include "resource.h"


//----------------
// local functions
//----------------


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

            sprintf(buf, "Pure3D Explorer v%s", P3DFile_GetP3DExplorerVersion());
            SetDlgItemText(hwnd, IDC_HELP_P3DEXPLORER_STATIC, buf);

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
bool P3DMenu_SaveAs()
{
    OPENFILENAME ofn;
    memset(&ofn, 0, sizeof(ofn));

    char buf[1024];
    buf[0] = 0;

    ofn.lStructSize = sizeof(ofn);
    ofn.hwndOwner = P3DWin_Main;
    ofn.lpstrFilter = "Pure3D Files (*.p3d)\0*.p3d\0"
                            "PSX Chunks (*.p3x)\0*.p3x\0"
                            "All Files (*.*)\0*.*\0\0";
    ofn.lpstrCustomFilter = 0;
    ofn.nFilterIndex = 1;
    ofn.lpstrFile = buf;
    ofn.nMaxFile = sizeof(buf);
    ofn.lpstrFileTitle = 0;
    ofn.lpstrInitialDir = 0;
    ofn.lpstrTitle = "Save Pure3D File As...";
    ofn.Flags = OFN_OVERWRITEPROMPT |
                    OFN_EXPLORER |
                    OFN_PATHMUSTEXIST;
    ofn.lpstrDefExt = "p3d";
    ofn.lCustData = 0;

    if (GetSaveFileName(&ofn))
    {
        return P3DFile_SaveAs(buf);
    }

    return false;
}

//---------------------------------------------------------------------------
bool P3DMenu_ExportImage()
{
 

    tlImageChunk* imgchunk = (tlImageChunk*)P3DList_Chunk;
    assert( imgchunk );

    ULONG format = imgchunk->Format( );

    const char * ext;
    switch( format ){
          case IMG_BMP:
                ext = "bmp";
          break;

          case IMG_PNG:
                ext = "png";
          break;

          case IMG_TGA:
                ext = "tga";
          break;

          case IMG_DXT:
                ext = "dxt";
          break;

          case IMG_RAW:
                ext = "raw";
          break;

          case IMG_DXT1:
          case IMG_DXT3:
          case IMG_DXT5:
                ext = "dds";
          break;

          default:
              ext = "bmp";
          break;
    }


    OPENFILENAME ofn;
    memset(&ofn, 0, sizeof(ofn));

    char buf[1024];
    buf[0] = 0;

    ofn.lStructSize = sizeof(ofn);
    ofn.hwndOwner = P3DWin_Main;
  
    char filter[ 1024 ];
    wsprintf( filter, "Image Files (*.%s)\0*.%s\0", ext );
    ofn.lpstrFilter = filter;
                            
    ofn.lpstrCustomFilter = 0;
    ofn.nFilterIndex = 1;
    ofn.lpstrFile = buf;
    ofn.nMaxFile = sizeof(buf);
    ofn.lpstrFileTitle = 0;
    ofn.lpstrInitialDir = 0;
    ofn.lpstrTitle = "Export Image Chunk As...";
    ofn.Flags = OFN_OVERWRITEPROMPT |
                    OFN_EXPLORER |
                    OFN_PATHMUSTEXIST;
    ofn.lpstrDefExt = ext;
    ofn.lCustData = 0;

    if (GetSaveFileName(&ofn))
    {
        return P3DFile_ExportImage( imgchunk, buf );
    }

    return false;
}

//---------------------------------------------------------------------------
bool P3DMenu_ImportImage()
{
    tlTextureChunk* texchunk = (tlTextureChunk*)P3DList_Chunk;
    assert( texchunk );

    OPENFILENAME ofn;
    memset(&ofn, 0, sizeof(ofn));

    char buf[1024];
    buf[0] = 0;

    ofn.lStructSize = sizeof(ofn);
    ofn.hwndOwner = P3DWin_Main;
    ofn.lpstrFilter = "BMP Files (*.bmp)\0*.bmp\0"
                            "PNG Files(*.png)\0*.png\0"
                            "TGA Files(*.tga)\0*.tga\0"
                            "DXT Files(*.dxt)\0*.dxt\0"
                            "RAW Files(*.raw)\0*.raw\0"
                            "All Files (*.*)\0*.*\0\0";
    ofn.lpstrCustomFilter = 0;
    ofn.nFilterIndex = 1;
    ofn.lpstrFile = buf;
    ofn.nMaxFile = sizeof(buf);
    ofn.lpstrFileTitle = 0;
    ofn.lpstrInitialDir = 0;
    ofn.lpstrTitle = "Import Image Chunk From...";
    ofn.Flags = OFN_OVERWRITEPROMPT |
                    OFN_EXPLORER |
                    OFN_PATHMUSTEXIST;
    ofn.lpstrDefExt = "bmp";
    ofn.lCustData = 0;

    if (GetOpenFileName(&ofn))
    {
        return P3DFile_ImportImage( texchunk, buf );
    }

    return false;
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
     P3DStatus_RefreshPane( );
}

//---------------------------------------------------------------------------
void P3DMenu_SetImgFilter( int filter )
{

     switch( P3DImg_Filter ){
     case P3DIMG_CHANNEL_ALL:
          CheckMenuItem( P3DWin_Menu, IDM_RGBA_CHANNEL, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_RGBA_CHANNEL, MAKELONG(FALSE, 0) );
     break;

     case P3DIMG_CHANNEL_RED:
          CheckMenuItem( P3DWin_Menu, IDM_RCHANNEL, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_RCHANNEL, MAKELONG(FALSE, 0) );
     break;

     case P3DIMG_CHANNEL_BLUE:
          CheckMenuItem( P3DWin_Menu, IDM_BCHANNEL, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_BCHANNEL, MAKELONG(FALSE, 0) );
     break;

     case P3DIMG_CHANNEL_GREEN:
          CheckMenuItem( P3DWin_Menu, IDM_GCHANNEL, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_GCHANNEL, MAKELONG(FALSE, 0) );
     break;

     case P3DIMG_CHANNEL_ALPHA:
          CheckMenuItem( P3DWin_Menu, IDM_ACHANNEL, MF_UNCHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_ACHANNEL, MAKELONG(FALSE, 0) );
     break;
     }

     P3DImg_Filter = filter;

     switch( P3DImg_Filter ){

     case P3DIMG_CHANNEL_ALL:
          CheckMenuItem( P3DWin_Menu, IDM_RGBA_CHANNEL, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_RGBA_CHANNEL, MAKELONG(TRUE, 0) );
     break;

     case P3DIMG_CHANNEL_RED:
          CheckMenuItem( P3DWin_Menu, IDM_RCHANNEL, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_RCHANNEL, MAKELONG(TRUE, 0) );
     break;

     case P3DIMG_CHANNEL_BLUE:
          CheckMenuItem( P3DWin_Menu, IDM_BCHANNEL, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_BCHANNEL, MAKELONG(TRUE, 0) );
     break;

     case P3DIMG_CHANNEL_GREEN:
          CheckMenuItem( P3DWin_Menu, IDM_GCHANNEL, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_GCHANNEL, MAKELONG(TRUE, 0) );
     break;

     case P3DIMG_CHANNEL_ALPHA:
          CheckMenuItem( P3DWin_Menu, IDM_ACHANNEL, MF_CHECKED );
          SendMessage( P3DWin_Toolbar, TB_CHECKBUTTON, IDM_ACHANNEL, MAKELONG(TRUE, 0) );
     break;
     }

     P3DImgWnd_Redraw( );

}


//---------------------------------------------------------------------------
LRESULT CALLBACK P3DMenu_Proc(HWND hwnd, UINT msg, WPARAM wparam, LPARAM lparam)
{
    // Handle all WM_COMMAND msgs from menu

    switch(msg)
    {
        case WM_INITMENU:
        {
            UINT enable = ((P3DList_Chunk != P3DFile_TopChunk) &&
                                (P3DList_Chunk != 0)) ? MF_ENABLED : MF_GRAYED;

            EnableMenuItem(P3DWin_Menu, IDM_CUT, enable);
            EnableMenuItem(P3DWin_Menu, IDM_COPY, enable);
            EnableMenuItem(P3DWin_Menu, IDM_DELETE, enable);
            EnableMenuItem(P3DWin_Menu, IDM_FIND, P3DFile_TopChunk ? MF_ENABLED : MF_GRAYED );
            EnableMenuItem(P3DWin_Menu, IDM_FINDNEXT, P3DFile_TopChunk ? MF_ENABLED : MF_GRAYED );


            enable = ( P3DList_Chunk != 0 && ( P3DList_Chunk->ID( ) == Pure3D::Texture::IMAGE  || 
                          P3DList_Chunk->ID( ) == P3D_IMAGE ) )?
                        MF_ENABLED : MF_GRAYED;

            EnableMenuItem(P3DWin_Menu, IDM_EXPORT_IMAGE, enable );
            
            enable = ( P3DList_Chunk != 0 && ( P3DList_Chunk->ID( ) == Pure3D::Texture::TEXTURE ) )?
                        MF_ENABLED : MF_GRAYED;

            EnableMenuItem(P3DWin_Menu, IDM_IMPORT_IMAGE, enable );

            // check to see if a chunk is in the clipboard
            OpenClipboard(P3DWin_Main);
            UINT format = EnumClipboardFormats(0);
            while ((format != 0) && (format != P3DWin_ClipboardFormat))
            {
                format = EnumClipboardFormats(format);
            }
            CloseClipboard();

            EnableMenuItem(P3DWin_Menu, IDM_PASTE,
                                ((format == P3DWin_ClipboardFormat) && (P3DFile_TopChunk != 0)) ?
                                    MF_ENABLED : MF_GRAYED);
            break;
        }

        case WM_COMMAND:
            if(lparam == 0 || lparam == (LPARAM)P3DWin_Toolbar ) // from menu or toolbar
            {
                switch(LOWORD(wparam))
                {
                    //---------------------------------------------------------
                    // File menu   
                    //---------------------------------------------------------
                    case IDM_NEW:
                    {
                        P3DFile_New();
                        return 0;
                    }

                    case IDM_OPEN:
                    {
                        // the file open dialog box seems to maintain the
                        // last dir visited automatically

                        OPENFILENAME ofn;
                        memset(&ofn, 0, sizeof(ofn));

                        char buf[1024];
                        buf[0] = 0;

                        ofn.lStructSize = sizeof(ofn);
                        ofn.hwndOwner = hwnd;
                        ofn.lpstrFilter = "Pure3D Files (*.p3d)\0*.p3d\0"
                                                "PSX Chunks (*.p3x)\0*.p3x\0"
                                                "All Files (*.*)\0*.*\0\0";
                        ofn.lpstrCustomFilter = 0;
                        ofn.nFilterIndex = 1;
                        ofn.lpstrFile = buf;
                        ofn.nMaxFile = sizeof(buf);
                        ofn.lpstrFileTitle = 0;
                        ofn.lpstrInitialDir = 0;
                        ofn.lpstrTitle = "Open Pure3D Files";
                        ofn.Flags = OFN_FILEMUSTEXIST |
                                        OFN_EXPLORER |
                                        OFN_PATHMUSTEXIST |
                                        OFN_HIDEREADONLY;
                        ofn.lpstrDefExt = "p3d";
                        ofn.lCustData = 0;

                        if(GetOpenFileName(&ofn))
                        {
                            P3DFile_Open(buf);
                        }

                        return 0;
                    } // IDM_OPEN

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

                    case IDM_SAVE:
                    {
                        if (P3DFile_IsNew())
                        {
                            P3DMenu_SaveAs();
                        }
                        else
                        {
                            P3DFile_Save();
                        }
                        return 0;
                    } // IDM_SAVE

                    case IDM_SAVE_AS:
                    {
                        P3DMenu_SaveAs();
                        return 0;                      
                    } // IDM_SAVE_AS


                    case IDM_EXPORT_IMAGE:
                    {
                         P3DMenu_ExportImage( );
                         return 0;
                    } //IDM_EXPORT_IMAGE
                              

                    case IDM_IMPORT_IMAGE:
                    {
                         P3DMenu_ImportImage( );
                         return 0;
                    } //IDM_EXPORT_IMAGE
                    //---------------------------------------------------------
                    // Edit menu   
                    //---------------------------------------------------------
                    case IDM_CUT:
                    {
                        P3DTree_CutChunk();
                        break;
                    } // IDM_CUT

                    case IDM_COPY:
                    {
                        P3DTree_CopyChunk();
                        break;
                    } // IDM_COPY

                    case IDM_PASTE:
                    {
                        P3DTree_PasteChunk();
                        break;
                    } // IDM_PASTE

                    case IDM_DELETE:
                    {
                        P3DTree_DeleteChunk();
                        break;
                    } // IDM_DELETE

                    case IDM_FIND:
                    {
                         P3DTree_Find( );
                         break;
                    }
                    case IDM_FINDNEXT:
                    {
                         P3DTree_FindNext( );
                         break;
                    }
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

                    /////
                    //Image Filter
                    /////

                    case IDM_RGBA_CHANNEL:
                         P3DMenu_SetImgFilter( P3DIMG_CHANNEL_ALL );
                    break;

                    case IDM_RCHANNEL:
                         P3DMenu_SetImgFilter( P3DIMG_CHANNEL_RED );
                    break;

                    case IDM_GCHANNEL:
                         P3DMenu_SetImgFilter( P3DIMG_CHANNEL_GREEN );
                    break;

                    case IDM_BCHANNEL:
                         P3DMenu_SetImgFilter( P3DIMG_CHANNEL_BLUE );
                    break;

                    case IDM_ACHANNEL:
                         P3DMenu_SetImgFilter( P3DIMG_CHANNEL_ALPHA );
                    break;


                    //---------------------------------------------------------
                    // Tools menu   
                    //---------------------------------------------------------
                    case IDM_DELETION_WARNING:
                    {
                        UINT state = GetMenuState(P3DWin_Menu, IDM_DELETION_WARNING, 0);

                        if ((state & MF_CHECKED) != 0)
                        {
                            CheckMenuItem(P3DWin_Menu, IDM_DELETION_WARNING, MF_UNCHECKED);
                        }
                        else
                        {
                            CheckMenuItem(P3DWin_Menu, IDM_DELETION_WARNING, MF_CHECKED);
                        }
                        break;
                    } // IDM_DELETION_WARNING

                    case IDM_MODIFY_WARNING:
                    {
                        UINT state = GetMenuState(P3DWin_Menu, IDM_MODIFY_WARNING, 0);

                        if ((state & MF_CHECKED) != 0)
                        {
                            CheckMenuItem(P3DWin_Menu, IDM_MODIFY_WARNING, MF_UNCHECKED);
                        }
                        else
                        {
                            CheckMenuItem(P3DWin_Menu, IDM_MODIFY_WARNING, MF_CHECKED);
                        }
                        break;
                    } // IDM_MODIFY_WARNING

                    case IDM_HISTORY:
                    {
                        UINT state = GetMenuState(P3DWin_Menu, IDM_HISTORY, 0);

                        if ((state & MF_CHECKED) != 0)
                        {
                            CheckMenuItem(P3DWin_Menu, IDM_HISTORY, MF_UNCHECKED);
                        }
                        else
                        {
                            CheckMenuItem(P3DWin_Menu, IDM_HISTORY, MF_CHECKED);
                        }
                        break;
                    } // IDM_HISTORY

                    case IDM_REFRESH_IMAGE_WINDOW:
                    {
                        P3DImg_AutoRefresh = !P3DImg_AutoRefresh;

                        UINT state = GetMenuState(P3DWin_Menu, IDM_REFRESH_IMAGE_WINDOW, 0);

                        if ((state & MF_CHECKED) != 0)
                        {
                            CheckMenuItem(P3DWin_Menu, IDM_REFRESH_IMAGE_WINDOW, MF_UNCHECKED);
                        }
                        else
                        {
                            CheckMenuItem(P3DWin_Menu, IDM_REFRESH_IMAGE_WINDOW, MF_CHECKED);
                        }
                        break;
                    } // IDM_REFRESH_IMAGE_WINDOW

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

