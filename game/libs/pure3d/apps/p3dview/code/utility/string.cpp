//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <utility/string.hpp>

// a replacement for strcmp, to avoid having to pull in and standard library stuff
// returns true if strings are exactly the same
static bool StringCompare(const char* a, const char* b)
{
    while(*a && *b)
    {
        if(*a != *b)
            return false;
        a++;
        b++;
    }
    return *a == *b;
};

// a replacemnt for strlen, again to avoid having to pull in and standard library stuff
// determines length of string excluding closing '\0'
static inline int StringLength(const char* s)
{
    unsigned len = 0;
    while(*s)
    {
        s++;
        len++;
    }
    return len;
}

// copy one string to another, no range checking
static inline void StringCopy(char* dest, const char* src)
{
    while(*src)
        *dest++ = *src++;

    *dest = 0;
}

String::String(const String& str)
{
    data = new char[StringLength(str.data)+1]; // plus one for null termination
    StringCopy(data, str.data);
}

String::String(const char* str)
{
    data = new char[StringLength(str)+1]; // plus one for null termination
    StringCopy(data, str);
}

String::String(unsigned length)
{
    data = new char[length+1]; // plus one for null termination
    data[0] = 0;
}

String::~String()
{
    delete [] data;
}

String& String::operator=(const char* str)
{
    delete [] data;
    data = new char[StringLength(str)+1];
    StringCopy(data, str);
    return *this;
}

String& String::operator=(const String& str)
{
    delete [] data;
    data = new char[StringLength(str.data)+1];
    StringCopy(data, str.data);
    return *this;
}

bool String::operator==(const String& str) const
{
    return StringCompare(data, str.data);
}

bool String::operator!=(const String& str) const
{
    return !StringCompare(data, str.data);
}

bool String::operator==(const char* str) const
{
    return StringCompare(data, str);
}

bool String::operator!=(const char* str) const
{
    return !StringCompare(data, str);
}

unsigned String::GetLength(void)
{
    return StringLength(data);
}

#if 1

#include<assert.h>
#include<string.h>

void String::UnitTest(void)
{
    String hello1("hello world");
    String hello2(hello1);
    String hello3 = hello2;
    String hello4 = "hello world";
    String somethingElse("blah blah blah");

    assert(hello1.GetLength() == 11);
    assert(hello1 == hello2);
    assert(hello3 == hello4);
    assert(hello1 == hello4);
    assert(hello1 != somethingElse);
    assert(strcmp(hello1, "hello world") == 0);

};

#endif
