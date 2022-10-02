//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "client.hpp"

#include <interface/kernel.hpp>
#include <input/inputdriver.hpp>
#include <input/consolebindings.hpp>
#include <console/objectscripter.hpp>
#include <console/commandline.hpp>
#include <console/shatter.hpp>
#include <config/settings.hpp>
#include <gui/win32/menu.hpp>
#include <gui/win32/window.hpp>
#include <gui/win32/dragadapter.hpp>
#include <gui/win32/copydataadapter.hpp>
#include <gui/win32/filedialog.hpp>
#include <file/textfile.hpp>

#include <viewer/compile.h>
#include <viewer/version.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <io.h>
#include <direct.h>
#include <fstream.h>

static Client* g_Client = NULL;

ofstream* memProfile;
_finddata_t memProfileFind;
long memProfileHandle; 
char oldcwd[4096];
char newcwd[4096];

void BeginMemProfile(const char* filename, const char* path)
{
    memProfile = new ofstream(filename);
    *memProfile << "Name\tTex\tGeo\tOther" << endl;

    getcwd(oldcwd, 4096);
    _chdir(path);
    
    strcpy(newcwd,path);
    
    memProfileHandle = _findfirst("*.p3d",&memProfileFind);

    if(memProfileHandle == -1) return;

    g_Client->Command("flush");

    char tmp[256];
    int length = strlen(newcwd);
    if (length>0)
    {
        if ((newcwd[length-1]=='\\') || (newcwd[length-1]=='/'))
        {
            sprintf(tmp,"load %s%s", newcwd, memProfileFind.name);
        }
        else
        {
            sprintf(tmp,"load %s\\%s", newcwd, memProfileFind.name);
        }
    }
    else
    {
        sprintf(tmp,"load %s", memProfileFind.name);
    }
    g_Client->Command(tmp);
}

void WriteMemProfile(const char* data)
{
    if(!memProfile)
        return;

    *memProfile << data << endl;

    int res = _findnext(memProfileHandle , &memProfileFind);
    g_Client->Command("flush");

    if(res == -1)
    {
        delete memProfile;
        memProfile = NULL;
        _chdir(oldcwd);
        return;
    }

    char tmp[256];
    int length = strlen(newcwd);
    if (length>0)
    {
        if ((newcwd[length-1]=='\\') || (newcwd[length-1]=='/'))
        {
            sprintf(tmp,"load %s%s", newcwd, memProfileFind.name);
        }
        else
        {
            sprintf(tmp,"load %s\\%s", newcwd, memProfileFind.name);
        }
    }
    else
    {
        sprintf(tmp,"load %s", memProfileFind.name);
    }
    g_Client->Command(tmp);
}


void ClientCommand(const char* c)
{
    if(g_Client)
        g_Client->ClientCommand(c);
}

Client::Client(Kernel* k)
{
    kernel = k;
    server = NULL;
    consoleWindow = NULL;
    interpreter = NULL;
    drag = NULL;
    copyData = NULL;
    menu = NULL;

    clientCommandsOnly = false;
    nServerCommands = 0;

    g_Client = this;
}

void Client::Initialize(Arguments* arguments, Settings* settings)
{
    bool local = false;

    {
        Console::ShatterParser parse(' ');
        parse.Parse(settings->Get("platform.targets"));

        for(unsigned i = 0; i < parse.GetNumFragments(); i++)
        {
            if(strcmp(parse.GetFragment(i), "local") == 0)
                local = true;
        }
    }

    bool useMenu =  true;

    interpreter = new Console::ObjectScripter;
    interpreter->SetAliasRedirect(this);

    char title[256];
    sprintf(title, "Pure3D Viewer %s", ViewerVersionString());
    consoleWindow = new ConsoleWindow(title);
    
    interpreter->SetClosure("echo", consoleWindow->GetCommandLine(), &Console::CommandLine::Echo);
    consoleWindow->GetCommandLine()->SetInterpreter(this);

    char tmp[256];
    sprintf(tmp, "Pure3D Viewer %s",ViewerVersionString());
    consoleWindow->GetCommandLine()->Echo(tmp);
    sprintf(tmp, "(Compiled %s, by %s, against %s#%s)", compileTime, compileUser, compileServer, compileChangelist);
    consoleWindow->GetCommandLine()->Echo(tmp);

    if(local)
    {
            char title[256];
            sprintf(title, "Pure3D Viewer %s (Compiled %s, by %s, against %s#%s)", ViewerVersionString(), compileTime, compileUser, compileServer, compileChangelist);

            displayWindow = kernel->NewWindow(title);

    }
    if(settings->GetBool("consoleWindow.show") || !local)
    {
        consoleWindow->Show(true);
    }
    else
    {
        consoleWindow->Show(false);
    }

    if(settings->GetBool("consoleWindow.input") || !local)
    {
        kernel->SetMainWindow(consoleWindow);
    }
    else
    {
        kernel->SetMainWindow(displayWindow);
    }

    fileDialog = new FileDialog(this);

    kernel->CreateInput("win32");
    bindings = new Input::ConsoleBindings(this, kernel->GetInput());

    bindings->SetConsole(consoleWindow);

    interpreter->SetFunction("c_system",  system);
    interpreter->SetClosure("c_bind",  (Input::ConsoleBindings*)bindings, &Input::ConsoleBindings::Bind);
    interpreter->SetClosure("c_exec",  this, &Client::ExecFile);
    interpreter->SetClosure("c_set",   settings, &Settings::SetString);
    interpreter->SetClosure("c_alias", (Console::ObjectScripter*)interpreter, &Console::ObjectScripter::Alias);
    interpreter->SetClosure("c_exit",  (Kernel*)kernel, &Kernel::Exit);
    interpreter->SetClosure("c_open",  (FileDialog*)fileDialog, &FileDialog::Open);
    interpreter->SetClosure("c_save",  (FileDialog*)fileDialog, &FileDialog::Save);
    interpreter->SetClosure("c_saveavi", (FileDialog*)fileDialog, &FileDialog::SaveAvi);
    interpreter->SetFunction("c_memProfile", BeginMemProfile);
    interpreter->SetFunction("c_writeMemProfile", WriteMemProfile);

    kernel->SetMainShell(this);
    drag = new DragAdapter(this, kernel->GetMainWindow());
    copyData = new CopyDataAdapter(this, kernel->GetMainWindow());

    if(useMenu)
    {
        menu = new MenuHandler(kernel->GetMainWindow(), this);
        interpreter->SetClosure("menu_begin", (MenuHandler*)menu, &MenuHandler::BeginMenu);
        interpreter->SetClosure("menu_end", (MenuHandler*)menu, &MenuHandler::EndMenu);
        interpreter->SetClosure("menu_beginGroup", (MenuHandler*)menu, &MenuHandler::BeginGroup);
        interpreter->SetClosure("menu_endGroup", (MenuHandler*)menu, &MenuHandler::EndGroup);
        interpreter->SetClosure("menu_command", (MenuHandler*)menu, &MenuHandler::AddCommand);
        interpreter->SetClosure("menu_check", (MenuHandler*)menu, &MenuHandler::AddCheck);
        interpreter->SetClosure("menu_separator", (MenuHandler*)menu, &MenuHandler::AddSeparator);

        clientCommandsOnly = true;
        ExecFile("menu.cfg");
        clientCommandsOnly = false;

        _chdir("targets");

        _finddata_t find;
        long handle = _findfirst("*.ini",&find);
        int res = handle;

        menu->BeginMenu("Platforms");
        while(res != -1)
        {
            char command[1024];
            sprintf(command,"c_set settings.additional targets\\%s; c_exit 1", find.name);
            find.name[strlen(find.name)-4] = 0;
            menu->AddCommand(find.name, command);
            res = _findnext(handle, &find);
        }
        menu->EndMenu();
        _chdir("..");
    }

    clientCommandsOnly = true;
    ExecFile("input.cfg");
    clientCommandsOnly = false;
}

void Client::Shutdown(void)
{
    bindings->Dump(&TextOutStream(kernel->OpenFileOut("input.cfg")));
    kernel->SetMainWindow(NULL);
}

void Client::Tick(float time)
{
    kernel->GetInput()->IssueEvents();

    if(nServerCommands && (server != NULL))
    {
        for(unsigned i = 0; i < nServerCommands; i++)
        {
            server->Command(serverCommands[i]);
        }
        nServerCommands = 0;
    }
}

void Client::ClientCommand(const char* c)
{
    if(interpreter)
        interpreter->Command(c);
}

void Client::Command(const char* c)
{
    if(interpreter)
        interpreter->Command(c);

    if((server != NULL) && !clientCommandsOnly)
    {
        if(nServerCommands)
        {
            for(unsigned i = 0; i < nServerCommands; i++)
            {
                server->Command(serverCommands[i]);
            }
            nServerCommands = 0;
        }

        server->Command(c);
    }

    if(!server && !clientCommandsOnly)
    {
        if(nServerCommands < 256)
            strcpy(serverCommands[nServerCommands++], c);
    }
}

void Client::SetServer(Subsystem* s)
{
    server = s;
}

Console::Console* Client::GetConsole(void)
{
    return consoleWindow;
}

void Client::ExecFile(const char* filename)
{
    InStream * instream = kernel->OpenFileIn(filename);

    if(!instream)
        return;

    TextInStream in(instream);
    while(!in.Done())
    {
        char buf[256];
        in.GetLine(buf,256);
        if(buf[0] != '#')
            Command(buf);
    }
}

