//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"class.hpp"
#include<stddef.h>
#include<string.h>
#include<p3d/memheap.hpp>

namespace Console {

tMemHeap* consoleTypeHeap = NULL;
unsigned consoleTypeHeapRef = 0;

Class::Class(char* n, unsigned s, Class* p, int nMethods)
{
    strcpy(name, n);
    parent = p;
    methods = new SymbolTable<Function>(nMethods);
    size = s;
}

Class::~Class()
{
    delete methods;
}

void Class::AddMethodI(char* name, Function* function)
{
    methods->Add(name, function);
}

Function* Class::GetMethod(char* name)
{
    Function* function = (Function*)methods->Find(name);
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

Object::Object(Class* c)
{
    type = c;
    object = consoleTypeHeap->malloc(type->GetSize());
    Function* constructor = type->GetMethod("create");
    if(constructor)
        constructor->Dispatch(object,NULL,NULL);
    del = 1;
}

Object::Object(Class* c, void* o, bool d)
{
    type = c;
    object = o;
    del = d;
}

Object::~Object()
{
    if(del)
    {
        Function* destructor = type->GetMethod("destroy");
        if(destructor)
            destructor->Dispatch(object, NULL, NULL);
    }
}

}
