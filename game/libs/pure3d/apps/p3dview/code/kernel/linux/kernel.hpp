//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _KERNEL_HPP_
#define _KERNEL_HPP_

#include <interface/framework.hpp>
class tPlatform;

class Linux : public Kernel
{
public:
    Linux();
    ~Linux();

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

    void Sleep(unsigned);
    unsigned Time(void);

    InStream*  OpenFileIn(const char* filename);
    OutStream* OpenFileOut(const char* filename, bool trunc = true);

    const char* UserName(void);
    const char* MachineName(void);

    bool Idle(void);

    const char* GetWorkingDirectory(void);
    void        SetWorkingDirectory(const char*);

private:
    static void AddCommand(char* c);
    static void EventHandler(int event, int param, void* o);

    tPlatform*        platform;
    CommandRecipient* shell;

    char  workingDirectory[256];

    int serverSocket;
    int connectionSocket;

    static int  nCommands;
    static char commands [256][256];

};

#endif _KERNEL_HPP_

