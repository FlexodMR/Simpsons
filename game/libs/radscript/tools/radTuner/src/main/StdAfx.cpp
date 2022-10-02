//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// stdafx.cpp : source file that includes just the standard includes
//    radTuner.pch will be the pre-compiled header
//    stdafx.obj will contain the pre-compiled type information

#include "stdafx.h"

unsigned int X31Hash( const char * v )
{
    const char * p;
    unsigned int h = 0;

    for(p = v; *p != '\0'; p += 1)
    {
        h = ( h << 5 ) - h + *p;
    }

    return h;
}

