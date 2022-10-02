#include "menu.hpp"
#include "simpleapp.hpp"
#include "eventreceiver.hpp"

#include <stdio.h>
#include <assert.h>

void MenuHandler::AddItem(char* name, MenuType type, int meGroup, bool checkable, bool checked, char* command)
{
   assert(nItem < MAX_MENU_DEF);
   menuDef[nItem].menu = 0;
   strncpy(menuDef[nItem].name, name, 64);
   menuDef[nItem].type = type;
   menuDef[nItem].meGroup = meGroup;
   menuDef[nItem].checkable = checkable;
   menuDef[nItem].checked = checked;
   strncpy(menuDef[nItem].command, command, 64);
   nItem++;
}

void MenuHandler::Create()
{
   if(created)
      return;

   created = true;
   HMENU menuBar = CreateMenu();
   HMENU menu = 0;
   HMENU subMenu = 0;

   for(int i=0; i < nItem; i++)
   {
      switch(menuDef[i].type)
      {
         case TOP:
         {
            menu = CreatePopupMenu();
            AppendMenu(menuBar, MF_POPUP|MF_STRING, (UINT)menu, menuDef[i].name);
            break;
         }
         case ITEM:
         {
            assert(menu);
            menuDef[i].menu = menu;
            unsigned checkedMask = (menuDef[i].checkable && menuDef[i].checked) ? MF_CHECKED : 0;
            AppendMenu(menu, MF_STRING | checkedMask, i, menuDef[i].name);
            break;
         }
         case SUB:
         {
            assert(menu);
            subMenu = CreatePopupMenu();
            AppendMenu(menu, MF_POPUP|MF_STRING, (UINT)subMenu, menuDef[i].name);
            break;
         }
         case SUBITEM:
         {
            assert(subMenu);
            menuDef[i].menu = subMenu;
            unsigned checkedMask = (menuDef[i].checkable && menuDef[i].checked) ? MF_CHECKED : 0;
            AppendMenu(subMenu, MF_STRING | checkedMask, i, menuDef[i].name);
            break;
         }
      }
   }
   SetMenu(hWnd, menuBar);
}

void MenuHandler::Select(int item)
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
            for(int i=0; i < nItem; i++)
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
         app->GetEventReceiver()->ScripterCommand(buf);
      }
      else
      {
         app->GetEventReceiver()->ScripterCommand(menuDef[item].command);
      }
   }
}
