//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _SHATTER_HPP_
#define _SHATTER_HPP_

namespace Console {

class ShatterParser
{
public:
    ShatterParser(char character);
    ~ShatterParser();

    void SetBreakChar(char c) { breakChar = c; }

    void Parse(const char*);

    unsigned GetNumFragments(void) {return nFragments;}
    char* GetFragment(unsigned i, char* def = 0l)  {if(i < nFragments) return fragments[i]; else return def;}
    int IsQuoted(unsigned i) { return quoted[i]; }

private:
    char breakChar;
    unsigned nFragments;
    char* fragments[32];
    int quoted[32];
    char buffer[1024];
};

}
#endif



