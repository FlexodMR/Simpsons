//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _CLIENT_HPP_
#define _CLIENT_HPP_

#include<interface/subsystem.hpp>
#include<utility/pointer.hpp>

class Kernel;
class ConsoleWindow;
class DragAdapter;
class CopyDataAdapter;
class MenuHandler;
class FileDialog;
class Window;

namespace Console
{
    class Console;
    class ObjectScripter;

}

namespace Input
{
    class ConsoleBindings;
}

class Client : public Subsystem
{
public:
    Client(Kernel* kernel);

    // Subsystem overrides
    void Initialize(Arguments*, Settings*);
    void Shutdown(void);

    void Tick(float time);

    void Command(const char*);
    void ClientCommand(const char*);

    // local
    void SetServer(Subsystem* server);
    void ExecFile(const char* filename);
    Console::Console* GetConsole(void);

protected:
    DumbPtr<Kernel> kernel;
    DumbPtr<Subsystem> server;

    DumbPtr<DragAdapter> drag;
    DumbPtr<CopyDataAdapter> copyData;

    AutoPtr<Input::ConsoleBindings> bindings;
    AutoPtr<ConsoleWindow> consoleWindow;
    AutoPtr<Window> displayWindow;
    AutoPtr<Console::ObjectScripter> interpreter;
    AutoPtr<FileDialog> fileDialog;

    AutoPtr<MenuHandler> menu;

    bool clientCommandsOnly;

    unsigned nServerCommands;
    char serverCommands[256][256];
};

#endif


