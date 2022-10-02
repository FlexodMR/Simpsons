//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"enum.hpp"

#include<string.h>
#include<assert.h>

namespace Console {

Enum::Enum(char* n, int v)
{
    values = new SymbolTable<tEnumValue>(v);
    assert(strlen(n) < 255);
    strcpy(name,n);
}

Enum::~Enum()
{
}

void Enum::AddValue(char* name, int v)
{
    values->Add(name, new tEnumValue(v));
}

int  Enum::Value(char* name)
{
    return values->Find(name)->value;
}

}
