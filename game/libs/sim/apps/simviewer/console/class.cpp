#include"class.hpp"
#include<stddef.h>
#include<string.h>

tClass::tClass(char* n, tClass* p, int nMethods)
{
   strcpy(name, n);
   parent = p;
   methods = new tSymbolTable<tFunction>(nMethods);
}

tClass::~tClass()
{
   delete methods;
}

void tClass::AddMethod(tFunction* function)
{
   methods->Add(function->GetName(), function);
}

tFunction* tClass::GetMethod(char* name)
{
   tFunction* function = (tFunction*)methods->Find(name);
   if(function == NULL)
   {
      if(parent == NULL)
      {
         return NULL;
      }
      else
      {
         return parent->GetMethod(name);
      }
   }
   return function;
}

tObject::tObject(tClass* c)
{
   type = c;
   tFunction* constructor = type->GetMethod("create");
   object = (void*)constructor->Dispatch(0,NULL);
   del = 1;
}

tObject::tObject(tClass* c, void* o, bool d)
{
   type = c;
   object = o;
   del = d;
}

tObject::~tObject()
{
   if(del)
   {
      tFunction* destructor = type->GetMethod("destroy");
      if(destructor)
      {
         destructor->Dispatch(1,(unsigned long*)&object);
      }
   }
}
