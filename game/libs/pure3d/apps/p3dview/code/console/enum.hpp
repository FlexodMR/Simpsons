//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _ENUM_HPP_
#define _ENUM_HPP

#include<utility/symboltable.hpp>

namespace Console {

class Enum
{
public:
    Enum(char* name, int values);
    ~Enum();

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

    SymbolTable<tEnumValue>* values;
    char name[256];

};

}
#endif
