//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _MENU_HPP
#define _MENU_HPP

class Window;
class CommandRecipient;

class MenuHandler
{
public:
    enum MenuType { TOP, ITEM, SUB, SUBITEM };

    MenuHandler(Window* w, CommandRecipient* c, unsigned max = 256);
    ~MenuHandler();

    void Select(unsigned i);

    void BeginMenu(char* name);
    void EndMenu();
    void BeginGroup(int def);
    void EndGroup(void);
    void AddCheck(char* name, char* command, int);
    void AddCommand(char* name, char* command);
    void AddSeparator();


private:
    struct MenuDef;
    MenuDef* menuDef;

    Window* window;;
    CommandRecipient* recipient;
    unsigned nItem;
    bool created;
    unsigned maxItem;
    void* menuBar;

    int curGroup;

    bool inGroup;
    int setDefault;
    int groupCount;
    void* menus[64];
    int curMenu;
};

#endif /* _MENU_HPP */
