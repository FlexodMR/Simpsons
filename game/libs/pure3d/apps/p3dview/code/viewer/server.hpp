//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _SERVER_HPP_
#define _SERVER_HPP_

#include<interface/subsystem.hpp>

class Kernel;
class Viewer;
class Window;
class Display;
class ShellAdapt;

namespace Console
{
    class Console;
    class ObjectScripter;
}

namespace Input
{
    class ConsoleBindings;
}

class Server : public Subsystem
{
public:
    Server(Kernel* kernel);

    // Subsystem overrides
    void Initialize(Arguments*, Settings*);
    void Shutdown(void);

    void Tick(float time);

    void Command(const char*);

    // local
    void DumpSettings(void);
    void AttachConsole(Console::Console*);

protected:

    Kernel* kernel;
    Console::ObjectScripter* interpreter;
    Console::Console* console;

    Viewer* viewer;
    Display* display;
    Settings* settings;

    Input::ConsoleBindings * bindings;
};

#endif
