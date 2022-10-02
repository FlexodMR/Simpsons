#ifndef _MENU_HPP
#define _MENU_HPP

class MenuHandler
{
public:
   enum MenuType { TOP, ITEM, SUB, SUBITEM };

   virtual void AddItem(char* name, MenuType type, int meGroup, bool checkable, bool checked, char* command) = 0;
   virtual void Create() = 0;
};

#endif
