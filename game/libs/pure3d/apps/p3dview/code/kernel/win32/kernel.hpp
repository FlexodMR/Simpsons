//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _KERNEL_HPP_
#define _KERNEL_HPP_

#include<interface/kernel.hpp>

class tPlatform;
class Win32Window;

class Win32 : public Kernel
{
public:
    Win32(void* instance);
    ~Win32();

    void Message(const char* channel, const char * message, bool idle = false);
    void Exit(ExitMode e = EXIT_REQUEST);

    void CreateInput(char*);
    Input::Driver* GetInput(void);

    Window* NewWindow(char* title);

    void SetMainWindow(Window* win);
    Window* GetMainWindow(void);

    CommandRecipient* GetMainShell(void) { return shell;}
    void SetMainShell(CommandRecipient* s) { shell = s;}

    Display* NewDisplay(Window* window);

    Time SystemTime(void); // hundredths of a millisecond
    void Sleep(Time);

    InStream*  OpenFileIn(const char* filename);
    OutStream* OpenFileOut(const char* filename, bool trunc = true);

    TextInDevice*  OpenTextFileIn(const char* filename);
    TextOutDevice* OpenTextFileOut(const char* filename, bool trunc = true);

    const char* UserName(void);
    const char* MachineName(void);

    bool Idle(void);

    const char* GetWorkingDirectory(void);
    void        SetWorkingDirectory(const char*);

    // local
    bool Restart(void) { return restarting;}

private:
    __int64 startTime;
    __int64 frequency;

    tPlatform*        platform;
    Input::Driver*    input;
    Win32Window*      mainWindow;
    CommandRecipient* shell;

    void* hInstance;

    char  userName[256];
    char  machineName[256];
    char  workingDirectory[256];

    bool exiting;
    bool restarting;
};

#endif _KERNEL_HPP_

