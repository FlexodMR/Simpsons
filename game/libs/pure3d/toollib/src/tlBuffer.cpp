/*===========================================================================
    File:: tlBuffer.cpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlBuffer.hpp"
#include <assert.h>
#include <stdlib.h>
#include <string.h>

tlBuffer::tlBuffer():
        size(0),
        allocSize(0),
        buffer(NULL)
{
}

tlBuffer::~tlBuffer()
{
    delete[] buffer;
}

void
tlBuffer::Allocate(int s)
{
    unsigned char* newbuf = new unsigned char[s];
    int newsize = (size > s) ? s : size;   // newsize = min(size, s)
    if(newsize)
    {
        memcpy(newbuf, buffer, newsize);
    }
    delete[] buffer;
    buffer = newbuf;
    size = newsize;
    allocSize = s;
}

void
tlBuffer::Write(const unsigned char* data, unsigned int nbytes)
{
    // Make room
    Allocate(size + nbytes);
    // write
    memcpy(buffer + size, data, nbytes);
    size += nbytes;
}

