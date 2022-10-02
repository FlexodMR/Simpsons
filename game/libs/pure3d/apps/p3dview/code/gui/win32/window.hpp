//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _WIN32WINDOW_HPP_
#define _WIN32WINDOW_HPP_

#include <interface/window.hpp>
#include <console/console.hpp>

class Win32Window;

namespace Console
{
    class CommandLine;
}

namespace Input
{
    class Driver;
    class ConsoleBindings;
}


class Win32MessageHandler
{
public:
    virtual ~Win32MessageHandler() {};
    virtual long Event(Win32Window* win, int msg, int wparam, int lparam) = 0;
    virtual void Release(void) = 0;
};


class Win32Window : public Window
{
public:
    Win32Window(char* title);
    ~Win32Window();

    // Window interface
    bool Active(void);
    void Resize(unsigned, unsigned);
    void Show(bool);

    // win32 stuff
    virtual void AddHandler(Win32MessageHandler*);
    virtual void ClearHandlers(void);

    virtual long Event(int msg, int wparam, int lparam);

    void* GetHWND(void) { return win; }

protected:
    Win32Window();

    void* win;
    unsigned style;
    bool active;

    char title[128];

    bool absorbDestroy;

    int nHandlers;
    Win32MessageHandler* handlers[16];

    unsigned clientX, clientY;
};

class ConsoleWindow : public Win32Window, public Console::Console
{
public:
    ConsoleWindow(char* title);
    ~ConsoleWindow();

    void Refresh(void);

    virtual long Event(int msg, int wparam, int lparam);

    void* GetHWND(void) { return win; }

protected:
    void SetScrollPosition(unsigned);
    void SetupScrollBar(void);

    bool capture;
    bool supressNext;

    unsigned linesPerScreen;
    unsigned bufferedLines;
    unsigned startLine;

    unsigned timer;
};

#endif
