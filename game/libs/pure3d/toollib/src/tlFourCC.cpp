//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlFourCC.hpp"
#include <string.h>
#include <assert.h>

tlFourCC::tlFourCC(unsigned int c) : code(c)
{}

tlFourCC::tlFourCC(const char* c) : code(0)
{
    assert(strlen(c)>2);
    code = (unsigned long)c[0]
        |((unsigned long)c[1]<<8)
        |((unsigned long)c[2]<<16)
        |((unsigned long)c[3]<<24);
}

tlFourCC::tlFourCC(char code0, char code1, char code2, char code3)
{
    code = (unsigned long)code0
        |((unsigned long)code1<<8)
        |((unsigned long)code2<<16)
        |((unsigned long)code3<<24);
}

const char*
tlFourCC::AsChar() const
{
    static char buf[5];
    buf[0] = (char) (code & 0x000000ff);
    buf[1] = (char) ((code & 0x0000ff00) >> 8);
    buf[2] = (char) ((code & 0x00ff0000) >> 16);
    buf[3] = (char) ((code & 0xff000000) >> 24);
    buf[4] = 0;

    return buf;
}

