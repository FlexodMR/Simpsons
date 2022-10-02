/*===========================================================================
    File:: tlMemByteStream.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlMemByteStream.hpp"
#include <assert.h>
#include <stdlib.h>
#include <string.h>

tlMemByteStream::tlMemByteStream(unsigned char* data, unsigned long len)
{
    if(data==NULL)
    {
        CreatedData = true;
        length = len;
        memory = new unsigned char[length];
        position = memory;
    }
    else
    {
        CreatedData = false;
        memory = data;
        length = len;
        position = memory;
    }  
}

tlMemByteStream::~tlMemByteStream(void)
{
    if(CreatedData)
        delete memory;
}

unsigned long 
tlMemByteStream::GetPosition(void)
{
    return position - memory;
}

bool
tlMemByteStream::SetPosition(long offset)
{
    // should check bounds
    position = memory + offset;
    return true;
}

bool
tlMemByteStream::GetBytes(void* buf, unsigned long nbytes)
{
    memcpy(buf,position,nbytes);
    position += nbytes;
    return true;
}

bool
tlMemByteStream::PutBytes(const void* buf, unsigned long nbytes)
{
    // This resizing stuff isn't very efficient.
    // Use it only for tools.
    
    int relpos = position - memory;
    int space = length - relpos;
    int needspace = nbytes;
    if(needspace>space)
    {
        // resize
        unsigned long newlen = (length + (needspace-space)) * 2;
        unsigned char* newmem = new unsigned char[newlen];
        memcpy(newmem,memory,length);
        delete memory;
        memory = newmem;
        length = newlen;
        position = memory + relpos;
    }
    memcpy(position,buf,nbytes);
    position += nbytes;
    return true;
}

bool  tlMemByteStream::Eof()
{
    return position >= memory + length;
}

bool  tlMemByteStream::IsOpen()
{
    return true;
}

