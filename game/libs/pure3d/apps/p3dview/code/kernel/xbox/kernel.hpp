//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _KERNEL_HPP_
#define _KERNEL_HPP_

#include<interface/kernel.hpp>
#include<input/inputdriver.hpp>

class tPlatform;
class StreamServerSocket;
class StreamClientSocket;

class XBox : public Kernel
{
public:
    XBox();
    ~XBox();

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

    void Sleep(Time);
    Time SystemTime(void);

    InStream*  OpenFileIn(const char* filename);
    OutStream* OpenFileOut(const char* filename, bool trunc = true);

    const char* UserName(void);
    const char* MachineName(void);

    bool Idle(void);

    const char* GetWorkingDirectory(void);
    void        SetWorkingDirectory(const char*);

private:
    __int64 startTime;
    __int64 frequency;

    tPlatform*        platform;
    CommandRecipient* shell;

    char  userName[256];
    char  machineName[256];
    char  workingDirectory[256];

    Input::Driver* input;
};

#endif _KERNEL_HPP_

