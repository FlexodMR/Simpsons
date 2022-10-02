//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLSTRING_HPP
#define _TLSTRING_HPP

#include <iostream>

class tlString;

char* strnew(const char* str);
char* strcatnew(const char* str1, const char* str2 );
void strdelete(char* str);
unsigned long MakeID(char a, char b, char c, char d);

std::ostream& operator<<(std::ostream& os, const tlString& str);

class tlString
{
public :
    tlString();
    tlString(const tlString& str);
    tlString(const char* str);
    ~tlString();

    void SetString(const char* str);
    const char* GetString() const;
    long Length(void);

    bool operator==(const tlString& str) const;
    bool operator==(const char* str) const;
    tlString& operator=(const tlString& str);
    tlString& operator=(const char* str);

    friend std::ostream& operator<<(std::ostream& os, const tlString& str);

protected:
    char* str;
};

#endif

