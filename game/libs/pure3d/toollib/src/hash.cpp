//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "hash.hpp"

// p3dHash() - a hashing function that uses the "hashpjw"
// algorithm.  Taken from Dragon book, p436
unsigned long p3dHash(const char *x)
{
    unsigned long h = 0;
    unsigned long g;

    while(*x != 0)
    {
        h = (h << 4) + *x++;
        if ((g = h & 0xf0000000) != 0)
        {
            h = (h ^ (g >> 24)) ^ g;
        }
    }
    return h;
}

