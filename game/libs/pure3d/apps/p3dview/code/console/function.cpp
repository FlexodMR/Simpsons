//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "function.hpp"
#include<typeinfo>
#include<string.h>
#include<assert.h>

namespace Console {

Function::Function(char* n, int a)
{
    strcpy(name,n);
    nArgs = a;
}

Function::~Function()
{
}

bool Function::CheckClassType(unsigned i,char* name)
{
    /*
    if(arguments[i].type == argClass)
    {
        return((strcmp(arguments[i].name, name) == 0));
    }
    */
    return false;
}

char Function::ArgTypeI(const type_info& type)
{
    if(type == typeid(void))
        return 0;

    if(type == typeid(bool))
        return argBool;

    if(type == typeid(char*))
        return argString;

    if(type == typeid(const char*))
        return argString;

    if(type == typeid(int) || type == typeid(unsigned))
        return argInt;

    if(type == typeid(float))
        return argFloat;

    return 0;
}

}
