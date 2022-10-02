//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "menu.hpp"
#include <gui/win32/window.hpp>
#include <interface/commandrecipient.hpp>

#include <windows.h>

#include <stdio.h>
#include <assert.h>

const int COMMAND_LENGTH = 1024;

struct MenuHandler::MenuDef
{
    HMENU menu;
    char name[64];
    unsigned meGroup;
    bool checkable;
    bool checked;
    char command[COMMAND_LENGTH];
};

class MenuMessageHandler : public Win32MessageHandler
{
public:
    MenuMessageHandler(MenuHandler* m)
    {
        menu = m;
    }

    long Event(Win32Window* win, int msg, int wparam, int lparam)
    {
        if(msg == WM_COMMAND)
        {
            menu->Select(wparam);
        }
        return 0;
    }

    void Recreate(Win32Window* win) 
    {
    }

    void Release(void)
    {
        delete this;
    }

    MenuHandler* menu;
};

MenuHandler::MenuHandler(Window* w, CommandRecipient* c, unsigned m) : window(w), recipient(c), nItem(0), created(false), maxItem(m)
{ 
    menuDef = new MenuDef[maxItem];

    menuBar = CreateMenu();

    Win32Window* win = ((Win32Window*)window);
    SetMenu((HWND)win->GetHWND(), (HMENU)menuBar);
    win->AddHandler(new MenuMessageHandler(this));

    inGroup = false;
    menus[0] = menuBar;
    curMenu = 0;
    curGroup = 1;
}

MenuHandler::~MenuHandler()
{
    delete [] menuDef;
}

void MenuHandler::BeginMenu(char* name)
{
    curMenu++;
    menus[curMenu] = CreatePopupMenu();
    AppendMenu((HMENU)menus[curMenu-1], MF_POPUP|MF_STRING, (UINT)menus[curMenu], name);
}

void MenuHandler::EndMenu()
{
    curMenu--;

    if(curMenu == 0)
        DrawMenuBar((HWND)((Win32Window*)window)->GetHWND());
}

void MenuHandler::AddCommand(char* name, char* command)
{
    assert(nItem < maxItem);
    menuDef[nItem].menu = 0;
    strncpy(menuDef[nItem].name, name, COMMAND_LENGTH);
    menuDef[nItem].meGroup = inGroup ? curGroup : 0;
    menuDef[nItem].checkable = inGroup ? true : false;
    //This line of code doesn't work because Default items aren't retreived from server.
    //menuDef[nItem].checked = inGroup ?  (groupCount == setDefault) : false;
    strncpy(menuDef[nItem].command, command, COMMAND_LENGTH);
    menuDef[nItem].menu = (HMENU)menus[curMenu];

    unsigned checkedMask = (menuDef[nItem].checkable && menuDef[nItem].checked) ? MF_CHECKED : 0;
    AppendMenu((HMENU)menus[curMenu], MF_STRING | checkedMask, nItem, menuDef[nItem].name);

    nItem++;
    groupCount++;
}

void MenuHandler::AddCheck(char* name, char* command, int on)
{
    assert(nItem < maxItem);
    menuDef[nItem].menu = 0;
    strncpy(menuDef[nItem].name, name, 64);
    menuDef[nItem].meGroup = 0;
    menuDef[nItem].checkable = true;
    menuDef[nItem].checked = (on != 0);
    strncpy(menuDef[nItem].command, command, COMMAND_LENGTH);
    menuDef[nItem].menu = (HMENU)menus[curMenu];

    unsigned checkedMask = (menuDef[nItem].checkable && menuDef[nItem].checked) ? MF_CHECKED : 0;
    AppendMenu((HMENU)menus[curMenu], MF_STRING | checkedMask, nItem, menuDef[nItem].name);

    nItem++;
    groupCount++;
}

void MenuHandler::AddSeparator(void)
{
    AppendMenu((HMENU)menus[curMenu], MF_SEPARATOR,0,0);
}

void MenuHandler::BeginGroup(int def)
{
    inGroup = true;
    setDefault = def;
    groupCount = 0;
}

void MenuHandler::EndGroup(void)
{
    inGroup = false;
}


void MenuHandler::Select(unsigned item)
{
    if(item < 0 || item >= nItem)
        return;

    if(menuDef[item].command)
    {
        if(menuDef[item].checkable)
        {
            // Items with an meGroup of 0 are toggles
            if(menuDef[item].meGroup == 0)
            {
                menuDef[item].checked = !menuDef[item].checked;
                unsigned checkedMask = (menuDef[item].checkable && menuDef[item].checked) ? MF_CHECKED : 0;
                ModifyMenu(menuDef[item].menu, item, MF_STRING|checkedMask, item, menuDef[item].name);
            }
            else
            {
                // Items with a non-zero meGroup are one of a list of items in which
                // only one can be selected.  This code unchecks all items in the meGroup,
                // then checks the one that was selected.
                for(unsigned i=0; i < nItem; i++)
                {
                    if(menuDef[i].meGroup == menuDef[item].meGroup)
                    {
                        menuDef[i].checked = false;
                        ModifyMenu(menuDef[i].menu, i, MF_STRING|MF_UNCHECKED, i, menuDef[i].name); 
                    }
                }
                menuDef[item].checked = true;
                ModifyMenu(menuDef[item].menu, item, MF_STRING|MF_CHECKED, item, menuDef[item].name); 
            }
        }

        if(strstr(menuDef[item].command, "%d"))
        {
            char buf[255];
            sprintf(buf, menuDef[item].command, menuDef[item].checked);
            recipient->Command(buf);
        }
        else
        {
            recipient->Command(menuDef[item].command);
        }
    }
}


/*

  */
