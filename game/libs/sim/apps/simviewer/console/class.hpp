#ifndef _CLASS_HPP_
#define _CLASS_HPP_

#include"function.hpp"
#include"symbol.hpp"

class tObject;

class tClass
{

public:
   tClass(char* name, tClass* parent = 0, int nMethods = 64);
   ~tClass();

   char* GetName(void) {return name;}

   void       AddMethod(tFunction*);
   tFunction* GetMethod(char* name);

   tSymbolTable<tFunction>* GetFunctionTable(void) {return methods;}

private:
   tClass* parent;
   char name[128];

   tSymbolTable<tFunction>* methods;
};

class tObject
{
public:
   tObject(tClass*);
   tObject(tClass*, void*, bool del = false);
   ~tObject();

   tClass* GetClass(void)  { return type;  }
   void*   GetObject(void) { return object;}

private:
   tClass* type;
   void*   object;
   bool    del;
};

#endif