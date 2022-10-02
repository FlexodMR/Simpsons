//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "quickview.hpp"

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
#include <stdio.h>

namespace QuickViewer
{

HWND GetWindowHandle(void)
{
    HWND viewerHWND = FindWindow("p3dviewWindow",NULL);

    if(!viewerHWND)
        viewerHWND = FindWindow("p3dviewConsoleWindow",NULL);

    return viewerHWND;
}

void Start(const char* commandLine, const char* execPath)
{
    char viewerPath[1024];
    DWORD viewerProcessId = 0;
    HANDLE viewerHandle = 0;

    if(execPath)
    {
        strcpy(viewerPath, execPath);
    }
    else
    {
        HKEY  viewerKey;
        DWORD pathSize = 1024;

        RegOpenKey (HKEY_LOCAL_MACHINE, "SOFTWARE\\Radical Entertainment\\Pure 3D Viewer", &viewerKey);
        RegQueryValueEx(viewerKey, "Pathname", NULL, NULL, (unsigned char*)viewerPath, &pathSize);
    }

    strcat(viewerPath,"\\p3dview.exe");

    HWND viewerHWND = GetWindowHandle();

    if (viewerHWND)
    {
        GetWindowThreadProcessId(viewerHWND,&(viewerProcessId));
        viewerHandle = OpenProcess(PROCESS_ALL_ACCESS,true,viewerProcessId);
    }
    else
    {
        PROCESS_INFORMATION piProcInfo;
        STARTUPINFO siStartInfo;
        ZeroMemory( &siStartInfo, sizeof(STARTUPINFO) );
        siStartInfo.cb = sizeof(STARTUPINFO);
        char final[4096];
        sprintf(final, "%s %s", viewerPath, commandLine);
        CreateProcess( NULL, final, NULL, NULL, FALSE, DETACHED_PROCESS , NULL, NULL, &siStartInfo, &piProcInfo ); 
        viewerHandle = piProcInfo.hProcess;
        viewerProcessId = piProcInfo.dwProcessId;
    }
}

void Shutdown(void)
{
    if (IsRunning())
    {
        Command("c_exit 0");

        unsigned count = 0;
        while ( IsRunning() && (count < 100))
        {
            Sleep(0);
            count++;
        }
    }
}

bool IsRunning(void)
{
    return ( GetWindowHandle() != NULL );
}

void Command(const char* command)
{
    // wait for a while if the window isn't there, just in case
    unsigned count = 0;
    while ( !IsRunning() && (count < 100))
    {
        Sleep(0);
        count++;
    }

    HWND viewerHWND = GetWindowHandle();

    if(viewerHWND)
    {
        char buffer[1024];
        COPYDATASTRUCT copyData;

        copyData.dwData = 0; 
        copyData.cbData = strlen(command);
        copyData.lpData = buffer;
        memcpy(buffer, command, copyData.cbData); 
        SendMessage(viewerHWND, WM_COPYDATA, NULL, (LPARAM)&copyData);
    }
}

}


#ifdef QUICKVIEW_TEST
void main(int argc, char* argv[])
{
    QuickViewer::Start(""); //("-ini targets\\ps2tool.ini");
    Sleep(3000);
    QuickViewer::Shutdown();
    Sleep(3000);
}
#endif

