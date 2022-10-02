//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"winconsole.hpp"
#include"console.hpp"

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include<windows.h>

namespace Console
{

WinConsole::WinConsole(Console* c) 
{ 
    supressNextChar = false;
    console = c; 
}

WinConsole::~WinConsole() 
{ 
}

void WinConsole::Event(int msg, int wparam)
{
    switch(msg)
    {
        case WM_CHAR :
            if(!supressNextChar)
                console->Text(wparam);
            supressNextChar = false;
            break;

        case WM_KEYDOWN:
            supressNextChar = true;
            switch(wparam)
            {
                case 0xC0 : 
                    console->Activate();
                    break;
                case VK_TAB : 
                    if(!console->IsActive())
                        console->QuickActivate();
                    else
                        supressNextChar = false;
                    break;
                case VK_ESCAPE : 
                    console->Escape();
                    break;
                case VK_UP : 
                    console->Up();
                    break;
                case VK_DOWN : 
                    console->Down();
                    break;
                case VK_INSERT : 
                    // TODO : Cut and paste
                    /*
                        if(shifted) 
                        {
                            OpenClipboard(NULL);
                            char* text = (char*)GetClipboardData(CF_TEXT);
                            if(text)
                            {
                                strcpy(&typeLine[nTyped], text);
                                nTyped += strlen(text);
                            }
                            CloseClipboard();
                        }
                    */
                default:
                    supressNextChar = false; 
                    break;
            }
            break;

    }
}

}

