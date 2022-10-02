#ifndef _ENUM_HPP_
#define _ENUM_HPP

#include"symbol.hpp"

class tEnum
{
public:
   tEnum(char* name, int values);
   ~tEnum();

   char* GetName(void) {return name;}

   void AddValue(char* name, int value);
   int Value(char* name);

private:
   class tEnumValue
   {
   public:
      int value;
      tEnumValue(int v) {value = v;}
   };

   tSymbolTable<tEnumValue>* values;
   char name[256];

};

#endif