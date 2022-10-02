//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <input/consolebindings.hpp>
#include <console/objectscripter.hpp>
#include <utility/symboltable.hpp>
#include <interface/io.hpp>

#include <string.h>
#include <stdio.h>

#ifdef RAD_GAMECUBE
    #include <stdlib.h>

    char *strdup(char *s)
    {
        if (s == NULL) return NULL;
        int len = strlen(s) + 1;
        char *sdup = (char *)malloc(len);
        strcpy(sdup, s);
        return sdup;
    }

#else
    #include <malloc.h>
#endif

namespace Input
{

ConsoleBindings::ConsoleBindings(CommandRecipient* c, Driver* d)
{
    recip = c;
    driver = d;
    supressKey = false;

    if(driver)
        driver->SetRecipient(this);

    bindings = new SymbolTable<char>;

    console = NULL;
}

ConsoleBindings::~ConsoleBindings(void)
{
    delete bindings;
}

void ConsoleBindings::Dump(OutText* out)
{
    char buffer[128];

    for(int i = 0; i < bindings->NumSymbols(); i++)
    {
        sprintf(buffer, "c_bind %s \"%s\"", bindings->GetName(i), bindings->Get(i));
        out->PutLine(buffer);
    }
}

static char* mystrdup(const char* in)
{
    char* newstring = new char[strlen(in) + 1];
    strcpy(newstring, in);
    return newstring;
}


void ConsoleBindings::Bind(char* input, char* command)
{
    if(bindings->Find(input))
    {
        char* old = bindings->Replace(input, strdup(command));
        free(old);
    }
    else
    {
        bindings->Add(input, strdup(command));
    }
}

void ConsoleBindings::Text(char c)
{
    if(!console)
        return;

    if(console->IsActive())
        console->Text(c);

    driver->CaptureText(console->IsActive());
}

void ConsoleBindings::Digital(Description* d, bool down)
{
    char* input = d->longName;

    char tmp[256];
    char* message;

    if(down && console)
    {
        if(strcmp(input, "KEY_TILDE") == 0)
        {
            console->Activate();
            driver->CaptureText(console->IsActive());
        }

        if(strcmp(input, "KEY_TAB") == 0)
        {
            if(!console->IsActive())
                console->QuickActivate();
            driver->CaptureText(console->IsActive());
        }

        if(strcmp(input, "KEY_ESCAPE") == 0)
        {
            console->Escape();
            driver->CaptureText(console->IsActive());
        }

        if(strcmp(input, "KEY_UP") == 0)
        {
            console->Up();
        }

        if(strcmp(input, "KEY_DOWN") == 0)
        {
            console->Down();
        }
    }

    if(strcmp(input, "MOUSE_BUTTON0") == 0)
    {
        driver->CaptureMouse(down);
    }

    if(strcmp(input, "MOUSE_BUTTON1") == 0)
    {
        driver->CaptureMouse(down);
    }

    if(strcmp(input, "MOUSE_BUTTON2") == 0)
    {
        driver->CaptureMouse(down);
    }

    // todo
    if(console && console->IsActive())
        return;

    if(supressKey && (d->device == DEVICE_KEYBOARD))
        return;

    message = bindings->Find(input);
    if(message)
    {
        sprintf(tmp, "%s %d", message, (int)down);
        recip->Command(tmp);
    }


    if(down)
    {
        sprintf(tmp, "+%s", input);
        message = bindings->Find(tmp);
        if(message)
        {
            recip->Command(message);
        }
    }
    else
    {
        sprintf(tmp, "-%s", input);
        message = bindings->Find(tmp);
        if(message)
        {
            recip->Command(message);
        }
    }
}

void ConsoleBindings::Ranged(Description* d, float v)
{
    char* input = d->longName;   
    char tmp[256];
    char* message;

    message = bindings->Find(input);
    if(message)
    {
        sprintf(tmp, "%s %f", message, v);
        recip->Command(tmp);
    }
}

void ConsoleBindings::Pointer(Description* d, unsigned x, unsigned y, PointerState s, unsigned buttons)
{
    char* input = d->longName;

    char tmp[256];
    char* message;

    message = bindings->Find(input);
    if(message)
    {
        sprintf(tmp, "%s %d %d %d %d", message, x, y, s, buttons);
        recip->Command(tmp);
    }
}

}
