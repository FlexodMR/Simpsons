//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"console.hpp"
#include"viewp3d.hpp"
#include"quickviewp3d.hpp"
#include"commandline.hpp"
#include"objectscripter.hpp"

#include <viewer/log.hpp>

namespace Console
{

Console::Console()
{
    active = quick = false;

    interpreter = new ObjectScripter;
    commandLine = new CommandLine(interpreter, Log::GetText());
    commandLine->SetCursor(IsActive() ?  '|' : ' ');
    interpreter->SetOutput(commandLine);

    // some useful symbolic constants
    interpreter->SetInt("true",1);
    interpreter->SetInt("false",0);
    interpreter->SetInt("on",1);
    interpreter->SetInt("off",0);

    interpreter->SetClosure("echo", (Buffer*)commandLine, &Buffer::Echo);
}

Console::~Console()
{
    delete commandLine;
    delete interpreter;
}

void Console::Text(char c)
{
    if(active || quick)
        commandLine->Text(c);

    if((c == '\r') && quick)
        quick = false;
}

void Console::Activate(void)
{
    active = !active;
    
    if(quick)
        quick = false;

    commandLine->SetCursor(IsActive() ?  '|' : ' ');
}

void Console::QuickActivate(void)
{
    if(active)
        return;

    quick = !quick;

    commandLine->SetCursor(IsActive() ?  '|' : ' ');
}

void Console::Escape(void)
{
    if(!IsActive())
        return;

    commandLine->Escape();

    if(quick)
        quick = false;

    commandLine->SetCursor(IsActive() ?  '|' : ' ');
}

void Console::Up(void)
{
    if(!IsActive())
        return;

    commandLine->Up();
}

void Console::Down(void)
{
    if(!IsActive())
        return;

    commandLine->Down();
}

}
