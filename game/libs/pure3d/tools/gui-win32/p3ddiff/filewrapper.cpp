//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <stdio.h>
#include <time.h>

#include "filewrapper.hpp"
#include "winmain.hpp"
#include "treeviewwindow.hpp"
#include "listviewwindow.hpp"
#include "menu.hpp"
#include "imgwnd.hpp"

#include "resource.h"

#define MAX_PATH_LEN  30

//-----------------
// global variables
//-----------------


tlDataChunk* P3DSrcFile_TopChunk = 0;       //top chunk of the src file
tlDataChunk* P3DDstFile_TopChunk = 0;       //top chunk of the destination file
char P3DSrcFile_Name[256] = "";
char P3DDstFile_Name[256] = "";



//------------------------------------------------------------------------
const char * P3DFile_GetP3DDiffVersion()
{
    static char p3ddiff_version[256];
    static bool p3ddiff_version_initialized = false;

    if (!p3ddiff_version_initialized)
    {
        GetModuleFileName(NULL, p3ddiff_version, 256);
        DWORD version_len, zero_ptr;
        version_len = GetFileVersionInfoSize(p3ddiff_version, &zero_ptr);
        char* version_data = new char[version_len];
        GetFileVersionInfo(p3ddiff_version, 0, version_len, version_data);
        VS_FIXEDFILEINFO* vsffi;
        UINT vsffi_len;
        VerQueryValue(version_data, "\\", (void**)(&vsffi), &vsffi_len);
        sprintf(p3ddiff_version, "%d.%d.%d.%d", (vsffi->dwFileVersionMS >> 16),
                                                                  (vsffi->dwFileVersionMS & 0x0ffff),
                                                                  (vsffi->dwFileVersionLS >> 16),
                                                                  (vsffi->dwFileVersionLS & 0x0ffff));
        delete version_data;
    }

    return p3ddiff_version;
}


//------------------------------------------------------------------------
const char * P3DFile_GetToollibVersion()
{
    return ATG_VERSION;
}


//------------------------------------------------------------------------
bool P3DFile_GetDirty()
{
    return false;
}

//------------------------------------------------------------------------
static void P3DFile_SetDirty(bool dirty)
{
    if (P3DSrcFile_TopChunk)
    {
        char buf[512];

        if (dirty)
        {
            sprintf(buf, "P3DDiff - [%s *]", P3DSrcFile_Name);
        }
        else
        {
            //window title
            int slen = strlen( P3DSrcFile_Name );
            int dlen = strlen( P3DDstFile_Name );

            char sname[ 100 ];
            char dname[ 100 ];

            if( slen > MAX_PATH_LEN )
                 sprintf( sname, "...%s", &(P3DSrcFile_Name[ slen - MAX_PATH_LEN ]) );             
            else
                 sprintf( sname, "%s", P3DSrcFile_Name );

            if( dlen > MAX_PATH_LEN )
                 sprintf( dname, "...%s", &(P3DDstFile_Name[ dlen - MAX_PATH_LEN ]) );             
            else
                 sprintf( dname, "%s", P3DDstFile_Name );

            sprintf( buf, "P3DDiff - [%s] -vs- [%s]", sname, dname );
        }

        SetWindowText(P3DWin_Main, buf);
    }
    else
    {
        SetWindowText(P3DWin_Main, "P3DDiff");
    }

}

//------------------------------------------------------------------------
bool P3DFile_Compare(const char* fSrcName, const char* fDstName)
{
    // Check to see if chunk already open
    if (!P3DFile_Close())
        return false;

    // Open file
    tlFile srcInput(new tlFileByteStream((char*)fSrcName, omREAD),tlFile::FROMFILE);
    if (!srcInput.IsOpen())
    {
        char buf[1024];
        sprintf(buf, "File \"%s\" could not be opened.", fSrcName);

        MessageBox(P3DWin_Main, buf, "Error Opening File", MB_ICONERROR | MB_OK);

        return false;
    }

    tlFile dstInput(new tlFileByteStream((char*)fDstName, omREAD),tlFile::FROMFILE);
    if (!dstInput.IsOpen())
    {
        char buf[1024];
        sprintf(buf, "File \"%s\" could not be opened.", fDstName);

        MessageBox(P3DWin_Main, buf, "Error Opening File", MB_ICONERROR | MB_OK);

        return false;
    }

    // Load chunk
    tlDataChunk::RegisterDefaultChunks();
    P3DSrcFile_TopChunk = new tlDataChunk(&srcInput);
    P3DDstFile_TopChunk = new tlDataChunk(&dstInput);

    // Close file
    srcInput.Close();
    dstInput.Close();

    // Fill local state
    strcpy(P3DSrcFile_Name, fSrcName);
    strcpy(P3DDstFile_Name, fDstName);

    // Fill tree view
    P3DTree_Fill();

    EnableMenuItem(P3DWin_Menu, IDM_CLOSE, MF_ENABLED);
    EnableMenuItem(P3DWin_Menu, IDM_SAVE, MF_ENABLED);
    EnableMenuItem(P3DWin_Menu, IDM_SAVE_AS, MF_ENABLED);

    P3DFile_SetDirty(false);

    P3DTree_ExpandWindow();

    return true;
}


//------------------------------------------------------------------------
bool P3DFile_Close()
{
    if (P3DSrcFile_TopChunk)
    {
        P3DTree_Clear();
        P3DList_Clear( false );
        P3DList_Clear( true );

        delete P3DSrcFile_TopChunk;
        delete P3DDstFile_TopChunk;

        P3DSrcFile_TopChunk = 0;
        P3DDstFile_TopChunk = 0;

        P3DSrcFile_Name[0] = 0;
        P3DDstFile_Name[0] = 0;

        P3DFile_SetDirty(false);
    }

    EnableMenuItem(P3DWin_Menu, IDM_DELETE, MF_GRAYED);
    EnableMenuItem(P3DWin_Menu, IDM_CLOSE, MF_GRAYED);

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

