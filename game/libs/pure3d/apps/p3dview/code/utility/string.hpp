//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _STRING_HPP_
#define _STRING_HPP_

// a extremly braindead string
// simple creation and access only, no attempt to share or resuse memory
class String
{
public:
    // run this to verify that string is working properly
    static void UnitTest(void);

    // construct a string from various things
    String(const String& str);
    String(const char* str);
    String(unsigned length = 0);

    // destroy the string
    virtual ~String();

    // assign values to an existing string
    String& operator =(const char* str);
    String& operator =(const String& str);

    // test for equality and inequality
    bool operator ==(const String& str) const;
    bool operator !=(const String& str) const;
    bool operator ==(const char* str) const;
    bool operator !=(const char* str) const;

    // cast back to a char* to go to non string aware functions
    operator const char* () const { return data; }

    // get the length of the string
    unsigned GetLength(void);

protected:
    char* data;
};


#endif