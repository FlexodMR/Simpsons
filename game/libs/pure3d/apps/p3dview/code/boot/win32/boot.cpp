//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<interface/kernel.hpp>
#include<kernel/win32/kernel.hpp>
#include<config/arguments.hpp>

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include<windows.h>

Win32* kernel;

int ServerMain(Kernel* kernel, Arguments* args);

extern "C" __declspec(dllexport) int viewer_dll_main(HINSTANCE hInstance, int nCmdShow, char* commandLine, char* workingDirectory)
{
    Arguments args(commandLine);
    bool isServer = args.GetSwitch("server");
    bool forceReg = args.GetSwitch("install"); // should we set the quickviewer registry entry

    // test if the registry key for the quickviewer is set
    HKEY  viewerKey;
    DWORD pathSize = 1024;

    if(RegOpenKey (HKEY_LOCAL_MACHINE, "SOFTWARE\\Radical Entertainment\\Pure 3D Viewer", &viewerKey) != ERROR_SUCCESS) 
    {
        forceReg = true; // if not regester it
    }
    else
    {
        RegCloseKey(viewerKey);
    }

    // set the quickviewer key
    if(forceReg)
    {
        RegCreateKey (HKEY_LOCAL_MACHINE, "SOFTWARE\\Radical Entertainment\\Pure 3D Viewer", &viewerKey);
        RegSetValueEx(viewerKey, "Pathname", NULL, REG_SZ, (const unsigned char*)workingDirectory, strlen(workingDirectory) + 1);
        RegCloseKey(viewerKey);
    }

    // check if we've been ordered to not change the working directory, this is pretty rare
    if(!args.GetSwitch("no_dir"))
        SetCurrentDirectory(workingDirectory);

    bool done = false;
    int rc = 0;

    while(!done)
    {
        done = true;
        kernel = new Win32(hInstance);
        kernel->SetWorkingDirectory(workingDirectory);


        if(isServer)
            rc = ServerMain(kernel, &args);
        else
            rc = Main(kernel, &args);

        done = !kernel->Restart();
        delete kernel;
    }
    return rc;
}


