//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlString.hpp"

#include <string.h>
#include <assert.h>
#include <stdio.h>

#include <iostream>

char*
strnew(const char* str)
{
    if (!str)
        return NULL;
    char* ret = new char[strlen(str)+1];
    strcpy(ret,str);
    //printf("strnew(\"%s\") 0x%08x\n",str, (int)ret);
    return ret;
}

char*
strcatnew(const char* str1, const char* str2)
{
    assert(str1 && "No string specified");
    assert(str2 && "No string specified");

    char* ret = new char[strlen(str1)+strlen(str2)+1];
    strcpy(ret,str1);
    strcat(ret,str2);
    //printf("strnew(\"%s\") 0x%08x\n",str, (int)ret);
    return ret;
}

void
strdelete(char* str)
{
    //printf("strdelete(\"%s\") 0x%08x\n",str, (int)str);
    //fflush(stdout);
    
    delete[] str;
}

unsigned long
MakeID(char a, char b, char c, char d)
{
    unsigned long result;
    result = d;
    result = result << 8 | c;
    result = result << 8 | b;
    result = result << 8 | a;
    return result;
}

tlString::tlString() :
    str(NULL)
{
}

tlString::tlString(const tlString& s) :
    str(NULL)
{
    SetString(s.str);
}

tlString::tlString(const char* s) :
    str(NULL)
{
    SetString(s);
}
 
tlString::~tlString()
{
    strdelete(str);
}

void
tlString::SetString(const char* s)
{
    if (str)
    {
        strdelete(str);
        str = NULL;
    }

    if (s)
    {
        str = strnew(s);
    }
}

const char*
tlString::GetString() const
{
    return str;
}

long 
tlString::Length(void)
{ 
    if(str)
    {
        return(strlen(str)); 
    }
    else
    {
        return(0);
    }
}


bool 
tlString::operator==(const tlString& s) const
{
    return (strcmp(str,s.GetString())==0);
}

bool
tlString::operator==(const char* s) const
{
    return (strcmp(str,s)==0);
}

tlString&
tlString::operator=(const tlString& s)
{
    SetString(s.GetString());
    return *this;
}

tlString&
tlString::operator=(const char* s)
{
    SetString(s);
    return *this;
}

std::ostream& 
operator<<(std::ostream& os, const tlString& str)
{
    os << str.GetString();
    return os;
}

