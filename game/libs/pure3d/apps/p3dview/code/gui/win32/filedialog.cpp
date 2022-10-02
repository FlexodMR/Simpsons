//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <gui/win32/filedialog.hpp>
#include <interface/commandrecipient.hpp>
#include <windows.h>
#include <stdio.h>
#include <direct.h>

void FileDialog::Open(char* command)
{
    OPENFILENAME ofn;
    memset(&ofn, 0, sizeof(ofn));

    char buf[1024];
    buf[0] = 0;

    ofn.lStructSize = sizeof(ofn);
    ofn.hwndOwner = NULL;
    ofn.lpstrFilter = "Pure3D Files (*.p3d)\0*.p3d\0"
                      "All Files (*.*)\0*.*\0\0";
    ofn.lpstrCustomFilter = 0;
    ofn.nFilterIndex = 1;
    ofn.lpstrFile = buf;
    ofn.nMaxFile = sizeof(buf);
    ofn.lpstrFileTitle = 0;
    ofn.lpstrInitialDir = 0;
    ofn.lpstrTitle = "Open Files";
    ofn.Flags = OFN_FILEMUSTEXIST |
                    OFN_EXPLORER |
                    OFN_PATHMUSTEXIST |
                    OFN_HIDEREADONLY;
    ofn.lpstrDefExt = "p3d";
    ofn.lCustData = 0;

    if(GetOpenFileName(&ofn))
    {
        char tmpCommand[1024];
        strcpy(tmpCommand, command);
        strcat(tmpCommand, " ");
        strcat(tmpCommand, buf);
        recip->Command(tmpCommand);
    }

}

void FileDialog::Save(char* command)
{
    OPENFILENAME ofn;
    memset(&ofn, 0, sizeof(ofn));

    char buf[1024];
    buf[0] = 0;

    ofn.lStructSize = sizeof(ofn);
    ofn.hwndOwner = NULL;
    ofn.lpstrFilter = "Targa Files (*.tga)\0*.tga\0\0";
    ofn.lpstrCustomFilter = 0;
    ofn.nFilterIndex = 1;
    ofn.lpstrFile = buf;
    ofn.nMaxFile = sizeof(buf);
    ofn.lpstrFileTitle = 0;
    ofn.lpstrInitialDir = 0;
    ofn.lpstrTitle = "Save Screenshot As...";
    ofn.Flags = OFN_OVERWRITEPROMPT |
                    OFN_EXPLORER |
                    OFN_PATHMUSTEXIST;
    ofn.lpstrDefExt = "tga";
    ofn.lCustData = 0;

    if (GetSaveFileName(&ofn))
    {
        char tmpCommand[1024];
        strcpy(tmpCommand, command);
        strcat(tmpCommand, " ");
        strcat(tmpCommand, buf);
        recip->Command(tmpCommand);
    }

    return;
}

void FileDialog::SaveAvi(char* command)
{
    OPENFILENAME ofn;
    memset(&ofn, 0, sizeof(ofn));

    char buf[1024];
    buf[0] = 0;
    ofn.lStructSize = sizeof(ofn);
    ofn.hwndOwner = NULL;
    ofn.lpstrFilter = "Avi Files (*.avi)\0*.avi\0\0";
    ofn.lpstrCustomFilter = 0;
    ofn.nFilterIndex = 1;
    ofn.lpstrFile = buf;
    ofn.nMaxFile = sizeof(buf);
    ofn.lpstrFileTitle = 0;
    ofn.lpstrInitialDir = 0;
    ofn.lpstrTitle = "Save Avi As...";
    ofn.Flags = OFN_OVERWRITEPROMPT |
                    OFN_EXPLORER |
                    OFN_PATHMUSTEXIST;
    ofn.lpstrDefExt = "avi";
    ofn.lCustData = 0;

    char buffer[1024];

    /* Get the current working directory: */
    _getcwd(buffer, 1024);
       
    if (GetSaveFileName(&ofn))
    {
        _chdir(buffer);

        char tmpCommand[1024];
        strcpy(tmpCommand, command);
        strcat(tmpCommand, " ");
        strcat(tmpCommand, buf);
        recip->Command(tmpCommand);
    }

    return;
}