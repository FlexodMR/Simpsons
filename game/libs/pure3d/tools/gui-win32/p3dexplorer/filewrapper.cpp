//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: filewrapper.cpp
// Greg Mayer
// Nov 20, 1998


//----------------
// system includes
//----------------
#include <stdio.h>
#include <time.h>

//-----------------
// project includes
//-----------------
#include "tlTextureChunk.hpp"

#include "filewrapper.hpp"
#include "winmain.hpp"
#include "treeviewwindow.hpp"
#include "listviewwindow.hpp"
#include "menu.hpp"
#include "imgwnd.hpp"
#include "resource.h"
#include "statusbar.hpp"


//-----------------
// global variables
//-----------------


tlDataChunk* P3DFile_TopChunk = 0;
char P3DFile_Name[256] = "";

static bool P3DFile_Dirty_Modification = false;
static bool P3DFile_Dirty_Deletion = false;
static bool P3DFile_Dirty_Insertion = false;
static bool P3DFile_Dirty_New = false;

static int P3DFile_DocCount = 1;

//------------------------------------------------------------------------
static char * GetPureName( const char * fullPath )
{
    int len = strlen( fullPath );

    if( len <= 0 )
        return NULL;

    char * name = (char *)fullPath + len - 1;

    while( len >= 0 && (*name) != '/' && (*name) != '\\' ){
        --len;
        --name;
    }
    
    return ++name;
}

//------------------------------------------------------------------------
const char * P3DFile_GetP3DExplorerVersion()
{
    static char p3dexplorer_version[256];
    static bool p3dexplorer_version_initialized = false;

    if (!p3dexplorer_version_initialized)
    {
        GetModuleFileName(NULL, p3dexplorer_version, 256);
        DWORD version_len, zero_ptr;
        version_len = GetFileVersionInfoSize(p3dexplorer_version, &zero_ptr);
        char* version_data = new char[version_len];
        GetFileVersionInfo(p3dexplorer_version, 0, version_len, version_data);
        VS_FIXEDFILEINFO* vsffi;
        UINT vsffi_len;
        VerQueryValue(version_data, "\\", (void**)(&vsffi), &vsffi_len);
        sprintf(p3dexplorer_version, "%d.%d.%d.%d", (vsffi->dwFileVersionMS >> 16),
                                                                  (vsffi->dwFileVersionMS & 0x0ffff),
                                                                  (vsffi->dwFileVersionLS >> 16),
                                                                  (vsffi->dwFileVersionLS & 0x0ffff));
        delete version_data;
    }

    return p3dexplorer_version;
}


//------------------------------------------------------------------------
const char * P3DFile_GetToollibVersion()
{
    return ATG_VERSION;
}


//------------------------------------------------------------------------
bool P3DFile_GetDirty()
{
    return (P3DFile_Dirty_Modification ||
              P3DFile_Dirty_Deletion ||
              P3DFile_Dirty_Insertion ||
              P3DFile_Dirty_New);
}


//------------------------------------------------------------------------
static void P3DFile_SetDirty(bool dirty)
{
    if (P3DFile_TopChunk)
    {
        char buf[512];

        if (dirty)
        {
            sprintf(buf, "P3DExplorer - [%s *]", P3DFile_Name);
        }
        else
        {
            sprintf(buf, "P3DExplorer - [%s]", P3DFile_Name);
        }

        SetWindowText(P3DWin_Main, buf);
    }
    else
    {
        SetWindowText(P3DWin_Main, "P3DExplorer");
    }

    if (!dirty)
    {
        P3DFile_Dirty_Modification = false;
        P3DFile_Dirty_Deletion = false;
        P3DFile_Dirty_Insertion = false;
        P3DFile_Dirty_New = false;
    }
}


//------------------------------------------------------------------------
void P3DFile_SetDirty_Modified(bool dirty)
{
    P3DFile_Dirty_Modification = dirty;
    P3DFile_SetDirty(P3DFile_Dirty_Modification ||
                          P3DFile_Dirty_Deletion ||
                          P3DFile_Dirty_Insertion ||
                          P3DFile_Dirty_New);
}


//------------------------------------------------------------------------
void P3DFile_SetDirty_Deleted(bool dirty)
{
    P3DFile_Dirty_Deletion = dirty;
    P3DFile_SetDirty(P3DFile_Dirty_Modification ||
                          P3DFile_Dirty_Deletion ||
                          P3DFile_Dirty_Insertion ||
                          P3DFile_Dirty_New);
}


//------------------------------------------------------------------------
void P3DFile_SetDirty_Inserted(bool dirty)
{
    P3DFile_Dirty_Insertion = dirty;
    P3DFile_SetDirty(P3DFile_Dirty_Modification ||
                          P3DFile_Dirty_Deletion ||
                          P3DFile_Dirty_Insertion ||
                          P3DFile_Dirty_New);
}


//------------------------------------------------------------------------
bool P3DFile_CheckDirty()
{
    if (P3DFile_TopChunk)
    {
        if (P3DFile_GetDirty())
        {
            char buf[1024];
            sprintf(buf, "File \"%s\" has not been saved.\n"
                             "Do you want to save now?",
                      P3DFile_Name);

            int rc = MessageBox(P3DWin_Main, buf, "Do you want to save?",
                                      MB_YESNOCANCEL | MB_DEFBUTTON1);

            switch (rc)
            {
                case IDYES:
                    if (P3DFile_Dirty_New)
                    {
                        return P3DMenu_SaveAs();
                    }
                    else
                    {
                        return P3DFile_Save();
                    }
                    break;

                case IDNO:
                    break;

                case IDCANCEL:
                default:
                    return false;
            }
        }
    }

    return true;
}


//------------------------------------------------------------------------
bool P3DFile_New()
{
    if (!P3DFile_Close())
        return false;

    P3DFile_TopChunk = new tlDataChunk;
    sprintf(P3DFile_Name, "Document%d", P3DFile_DocCount);
    ++P3DFile_DocCount;
    P3DFile_Dirty_New = true;

    P3DTree_Fill();

    EnableMenuItem(P3DWin_Menu, IDM_CLOSE, MF_ENABLED);
    EnableMenuItem(P3DWin_Menu, IDM_SAVE, MF_ENABLED);
    EnableMenuItem(P3DWin_Menu, IDM_SAVE_AS, MF_ENABLED);

    P3DFile_SetDirty(true);

    return true;
}


//------------------------------------------------------------------------
bool P3DFile_IsNew()
{
    return P3DFile_Dirty_New;
}


//------------------------------------------------------------------------
bool P3DFile_Open(const char* fname)
{
    // Check to see if chunk already open
    if (!P3DFile_Close())
        return false;

    // Open file
    tlFile input(new tlFileByteStream((char*)fname, omREAD),tlFile::FROMFILE);
    if (!input.IsOpen())
    {
        char buf[1024];
        sprintf(buf, "File \"%s\" could not be opened.",
                  fname);

        MessageBox(P3DWin_Main, buf, "Error Opening File", MB_ICONERROR | MB_OK);

        return false;
    }

    // Load chunk
    tlDataChunk::RegisterDefaultChunks();
    P3DFile_TopChunk = new tlDataChunk(&input);

    // Close file
    input.Close();

    // Fill local state
    strcpy(P3DFile_Name, fname);

    // Fill tree view
    P3DTree_Fill();

    EnableMenuItem(P3DWin_Menu, IDM_CLOSE, MF_ENABLED);
    EnableMenuItem(P3DWin_Menu, IDM_SAVE, MF_ENABLED);
    EnableMenuItem(P3DWin_Menu, IDM_SAVE_AS, MF_ENABLED);

    P3DFile_SetDirty(false);

    P3DTree_ExpandWindow();

    P3DStatus_RefreshPane( );
    return true;
}


//------------------------------------------------------------------------
bool P3DFile_Save()
{
    return P3DFile_SaveAs(P3DFile_Name);
}


//------------------------------------------------------------------------
static tlDataChunk* P3DFile_HistoryChunk()
{
    char buf[256];
    char buf2[256];
    tlHistory history;

    // version info
    sprintf(buf, "p3dexplorer version %s (with toollib %s)",
                     P3DFile_GetP3DExplorerVersion(),
                     P3DFile_GetToollibVersion());
    history.AddLine(buf);

    // date info
    time_t ltime;
    struct tm *now;
    time(&ltime);
    now = localtime(&ltime);
    strftime(buf, 256, "Run at %B %d, %Y, %H:%M:%S by ", now);
    // user name
    DWORD size = sizeof(buf2);
    GetUserName(buf2, &size);
    strcat(buf, buf2);
    // append line
    history.AddLine(buf);

    // modification list
    if (P3DFile_Dirty_New)
    {
        sprintf(buf, "File was created");
        history.AddLine(buf);
    }
    if (P3DFile_Dirty_Modification)
    {
        sprintf(buf, "Chunks were modified");
        history.AddLine(buf);
    }
    if (P3DFile_Dirty_Deletion)
    {
        sprintf(buf, "Chunks were deleted");
        history.AddLine(buf);
    }
    if (P3DFile_Dirty_Insertion)
    {
        sprintf(buf, "Chunks were inserted");
        history.AddLine(buf);
    }

    return history.Chunk();
}


//------------------------------------------------------------------------
bool P3DFile_SaveAs(const char* fname)
{
    tlFile output(new tlFileByteStream((char*)fname, omWRITE), tlFile::CHUNK32);
    
//    P3DFile_TopChunk->ID() = Pure3D::DATA_FILE;

    if(!output.IsOpen())
    {
        char buf[1024];
        sprintf(buf, "Could not open file \"%s\" for writing.",
                  fname);

        MessageBox(P3DWin_Main, buf, "Warning:  Could not save!",
                      MB_OK | MB_ICONWARNING);

        return false;
    }

    UINT state = GetMenuState(P3DWin_Menu, IDM_HISTORY, 0);

    if ((state & MF_CHECKED) != 0)
    {
        // history chunk
        P3DFile_TopChunk->InsertSubChunk(P3DFile_HistoryChunk(), 0);
        P3DTree_InsertHistoryChunk();
    }

    P3DFile_TopChunk->Write(&output);
    output.Close();

    if (P3DFile_Name != fname)
        strcpy(P3DFile_Name, fname);
    P3DFile_SetDirty(false);
    P3DTree_UpdateRoot();

    return true;
}


//------------------------------------------------------------------------
bool P3DFile_ExportImage( tlImageChunk *imgchunk, const char* fname )
{
    tlFile output(new tlFileByteStream((char*)fname, omWRITE), tlFile::CHUNK32);

    tlImage image( (tlDataChunk* )imgchunk );

    image.Save( output );

    return true;
}

//------------------------------------------------------------------------
bool P3DFile_ImportImage( tlDataChunk *chunk, const char* fname )
{   

    tlFile output(new tlFileByteStream((char*)fname, omREAD), tlFile::CHUNK32);
    tlImage *image = new tlImage( output );

    image->SetName( GetPureName( fname ) );

    tlTextureChunk *texchunk = (tlTextureChunk *)chunk;

    texchunk->SetBpp( image->GetBpp( ) );
    texchunk->SetWidth( image->GetWidth( ) );
    texchunk->SetHeight( image->GetHeight( ) );
    

    P3DTree_InsertChunk( texchunk->ID( ), image->Chunk( ) );
    delete image;

    return true;
}

//------------------------------------------------------------------------
bool P3DFile_Close()
{
    if (P3DFile_TopChunk)
    {
        if (!P3DFile_CheckDirty())
            return false;

        P3DTree_Clear();
        P3DList_Clear();

        delete P3DFile_TopChunk;
        P3DFile_TopChunk = 0;
        P3DFile_Name[0] = 0;

        P3DStatus_RefreshPane( );
        P3DFile_SetDirty(false);
    }

    EnableMenuItem(P3DWin_Menu, IDM_DELETE, MF_GRAYED);
    EnableMenuItem(P3DWin_Menu, IDM_CLOSE, MF_GRAYED);
    EnableMenuItem(P3DWin_Menu, IDM_SAVE, MF_GRAYED);
    EnableMenuItem(P3DWin_Menu, IDM_SAVE_AS, MF_GRAYED);
    EnableMenuItem(P3DWin_Menu, IDM_FIND, MF_GRAYED);

    EnableMenuItem(P3DWin_Menu, IDM_FINDNEXT, MF_GRAYED);


    //delete the p3dimg if it is created
    if( P3DImg_pImg ){
         delete P3DImg_pImg;
         P3DImg_pImg = NULL;

         
         if( P3DImg_hBmpToDraw ){
                DeleteObject( P3DImg_hBmpToDraw );
                P3DImg_hBmpToDraw = 0;
         }
    }

    return true;
}


// End of file.

