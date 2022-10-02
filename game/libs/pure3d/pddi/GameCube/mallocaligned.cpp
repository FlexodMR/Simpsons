//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <pddi/gamecube/mallocaligned.hpp>


inline unsigned alignto(unsigned x, unsigned alignment)
{
    return ((x + (alignment - 1)) & ~(alignment - 1));
}


//*************************************************
//
//  mallocaligned
//  returns a pointer aligned to alignment
//  NOTE: alignment MUST be a power of two
//        Internally uses new to allocate memory
//
void *mallocaligned(std::size_t size, unsigned alignment)
{
    int realsize = alignto(size + sizeof(unsigned *), alignment);

    unsigned *freepointer = new unsigned[realsize / sizeof(unsigned)];

    unsigned irp = alignto(((unsigned)freepointer + sizeof(unsigned)), alignment);
    unsigned *rp = (unsigned *)irp;
    rp[-1] = (unsigned) freepointer;

    return (void *)rp;
}


//**************************************************
//
// freealigned
// used to free memory allocated with mallocaligned
//
void freealigned(void *p)
{
    unsigned *rp = (unsigned *) p;
    delete[] (unsigned *)(rp[-1]);
}




