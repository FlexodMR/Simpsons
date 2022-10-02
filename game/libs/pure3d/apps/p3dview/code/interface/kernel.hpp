//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_KERNEL_INTERFACE_HPP_
#define _VIEWER_KERNEL_INTERFACE_HPP_

#include <utility/time.hpp>

class Kernel;
class Window;
class Display;
class Arguments;
class Settings;
class InStream;
class OutStream;
class TextInDevice;
class TextOutDevice;
class CommandRecipient;

class tContext;

namespace Input {
    class Driver;
}

class Kernel
{
public:
    virtual ~Kernel() {}

    enum ExitMode { EXIT_REQUEST = 0, EXIT_REQUEST_RESTART = 1, EXIT_FORCE = 2 };

    virtual void Message(const char* channel, const char * message, bool idle = false) = 0;
    virtual void Exit(ExitMode e = EXIT_REQUEST) = 0;

    virtual Window*  NewWindow(char* title) = 0;
    virtual Display* NewDisplay(Window* window) = 0;

    virtual void   CreateInput(char* driver) = 0;
    virtual Input::Driver* GetInput(void) = 0;

    virtual Window* GetMainWindow(void) = 0;
    virtual void SetMainWindow(Window* window) = 0;

    virtual CommandRecipient* GetMainShell(void) = 0;
    virtual void SetMainShell(CommandRecipient*) = 0;

    virtual void Sleep(Time = Time()) = 0;
    virtual Time SystemTime(void) = 0;

    virtual InStream*  OpenFileIn(const char* filename) = 0;
    virtual OutStream* OpenFileOut(const char* filename, bool trunc = true) = 0;

    virtual const char* UserName(void) = 0;
    virtual const char* MachineName(void) = 0;

    virtual const char* GetWorkingDirectory(void) = 0;

    virtual bool Idle(void) = 0;
};

int Main(Kernel* kernel, Arguments* args);

#endif
