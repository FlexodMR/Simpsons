/*===========================================================================
    File:: tlCompressedByteStream.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlCompressedByteStream.hpp"
#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "lzr.hpp"

tlCompressedByteStream::tlCompressedByteStream(tlByteStream* source)
        :
        stream(source),
        position(0),
        blockposition(0)
{
    int magicnumber;
    stream->GetBytes(&magicnumber, 4);
    stream->GetBytes(&length, 4);
    ReadBlock();
}

tlCompressedByteStream::~tlCompressedByteStream()
{
    // should we delete the stream?
}

unsigned long 
tlCompressedByteStream::GetPosition(void)
{
    return position;
}


bool
tlCompressedByteStream::SetPosition(long offset)
{
    assert(offset >= position);
    char data;
    for(int i = 0; i < offset - position; i++)
    {
        GetBytes(&data, 1);
    }
    return true;
}

bool
tlCompressedByteStream::GetBytes(void* buf, unsigned long nbytes)
{
    if(blockposition + nbytes < 4096)
    {
        memcpy(buf, &block[blockposition] ,nbytes);
        position += nbytes;
        blockposition += nbytes;
        return true;
    }

    while(nbytes)
    {
        unsigned int size = 4096 - blockposition;
        if(size > nbytes)
        {
            size = nbytes;
        }
        memcpy(buf, &block[blockposition], size);
        buf = (char*)buf + size;
        blockposition += size;
        position += size;
        nbytes -= size;
        if(blockposition == 4096)
        {
            ReadBlock();
        }
    }
    return true;
}

bool
tlCompressedByteStream::PutBytes(const void* buf, unsigned long nbytes)
{
    assert(0 == "PutBytes not implemented for compressed files");
    return false;
}

bool
tlCompressedByteStream::Eof()
{
    return position >= length;
}

bool
tlCompressedByteStream::IsOpen()
{
    return true;
}

void
tlCompressedByteStream::ReadBlock()
{
    unsigned int compressedsize;
    unsigned int uncompressedsize;
    
    stream->GetBytes(&compressedsize, 4);
    stream->GetBytes(&uncompressedsize, 4);

    unsigned char* compressed = new unsigned char[compressedsize];

    stream->GetBytes(compressed, compressedsize);

    lzr_decompress (compressed, compressedsize,
                            block, uncompressedsize);

    blockposition = 0;
    delete[] compressed;
}

