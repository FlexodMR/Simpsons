//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include<windows.h>

typedef int (*dllmain)(HINSTANCE, int, char*, char*);

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpszCmdParam, int nCmdShow)
{
    // retreive some information about where we were run from 
    char module[1024];
    char working_dir[1024];
    char *appname;

    // the module file name, something like "C:\wherever\whatever.exe"
    GetModuleFileName(hInstance, module, 1024);

    // break it into path and application name
    int end = strlen(module) - 1;
    char* walk = &module[end];
    for( ; *walk != '\\'; walk--);
    *walk = 0;
    strcpy(working_dir, &module[0]);
    walk++;
    appname = walk;
    walk = &module[end];
    for( ; (*walk != 0) && (*walk != '.'); walk--);
    *walk = 0;

    // append working directory to the path so that we can guarantee that dlls will get loaded
    char buffer[2048];
    char buffer2[2048];
    GetEnvironmentVariable("PATH", buffer, 2048);
    strcpy(buffer2, buffer);
    strcat(buffer2, ";");
    strcat(buffer2, "working_dir");
    SetEnvironmentVariable("PATH", buffer2);
    
    // load the dll with the real code in it
    HINSTANCE dll = LoadLibrary(appname);
    dllmain main = NULL;
    
    int rc = -1;

    if(dll)
    {
        dllmain main = (dllmain)GetProcAddress(dll, "viewer_dll_main");
        if(main)
        {
            rc = main(hInstance, nCmdShow, lpszCmdParam, working_dir);
            FreeLibrary(dll);
        }
        else
        {
            MessageBox(NULL, "Could not find DLL main procedure", "Launch Error", MB_OK);
        }
    }
    else
    {
        MessageBox(NULL, "Could not find p3dview.dll", "Launch Error", MB_OK);
    }

    SetEnvironmentVariable("PATH", buffer);
    return rc;
}

