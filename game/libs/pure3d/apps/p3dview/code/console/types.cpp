//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"objectscripter.hpp"
#include"class.hpp"
#include"function.hpp"
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<assert.h>

namespace Console
{

class Int
{
public:
    int   as_int(void) { return val; }
    void  get(char* buffer) { sprintf(buffer,"%d", val);}
    void  set(char* newval) { val = atoi(newval); }

    int val;
};

class Bool
{
public:
    int   as_int(void) { return (int)val; }
    void  get(char* buffer) { sprintf(buffer,"%d", (int)val);}
    void  set(char* newval) { val = atoi(newval) != 0; }

    bool val;
};

class Float
{
public:
    int   as_int(void) { return (int)val; }
    void  get(char* buffer) { sprintf(buffer,"%f", val);}
    void  set(char* newval) { val = (float)atof(newval); }

    float val;
};

class String
{
public:
    void get(char* buffer) { strcpy(buffer,string); }
    void set(char* value) { assert(strlen(value) < 256); strcpy(string, value); }

    char string[256];
};

class Vector
{
public:
    void get(char* buffer) { sprintf(buffer,"( %f %f %f )", f[0], f[1], f[2]);}
    void set(char* value) { sscanf(value,"%f %f %f", &f[0],&f[1], &f[2]); }

    float f[3];
};

class Colour
{
public:
    void get(char* buffer, void* obj){ sprintf(buffer,"(%u %u %u %u)", f[2], f[1], f[0], f[3]); }
    void set(char* value)
    {
        int d[4] = {255,255,255,255};
        sscanf(value,"%d %d %d %d", &d[2],&d[1], &d[0], &d[3]);
        f[0] = d[0];
        f[1] = d[1];
        f[2] = d[2];
        f[3] = d[3];
    }

    unsigned char f[4];
};

void InitBasicTypes(ObjectScripter* scripter)
{
    Class* intClass = new Class("int", sizeof(Int));
    intClass->AddMethod("_as_int",&Int::as_int);
    intClass->AddMethod("_get",&Int::get);
    intClass->AddMethod("_set",&Int::set);
    scripter->AddClass(intClass);

    Class* boolClass = new Class("bool", sizeof(Bool));
    boolClass->AddMethod("_as_int",&Bool::as_int);
    boolClass->AddMethod("_get",&Bool::get);
    boolClass->AddMethod("_set",&Bool::set);
    scripter->AddClass(boolClass);

    Class* floatClass = new Class("float", sizeof(Float));
    floatClass->AddMethod("_as_int",&Float::as_int);
    floatClass->AddMethod("_get",&Float::get);
    floatClass->AddMethod("_set",&Float::set);
    scripter->AddClass(floatClass);

    Class* stringClass = new Class("string", sizeof(String));
    stringClass->AddMethod("_get",&String::get);
    stringClass->AddMethod("_set",&String::set);
    scripter->AddClass(stringClass);

    Class* vectorClass = new Class("vector", sizeof(Vector));
    vectorClass->AddMethod("_get",&Vector::get);
    vectorClass->AddMethod("_set",&Vector::set);
    scripter->AddClass(vectorClass);

    Class* colourClass = new Class("colour", sizeof(Colour));
    colourClass->AddMethod("_get",&Colour::get);
    colourClass->AddMethod("_set",&Colour::set);
    scripter->AddClass(colourClass);

}

}
