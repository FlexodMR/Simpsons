//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "bufferstream.hpp"
#include <interface/io.hpp>

#include <string.h>


BufferStream::BufferStream(InStream* real, unsigned buf)
{
    bufferSize = buf;
    buffer = new unsigned char[bufferSize];
    stream = real;
    bufferBase = stream->GetPosition();
    streamLen = stream->GetLength();
    FillBuffer();
}

BufferStream::~BufferStream()
{
    delete [] buffer;
    delete stream;
}

unsigned BufferStream::GetPosition(void)
{
    return bufferBase + bufferOffset;
}

unsigned BufferStream::GetLength(void)
{
    return streamLen;
}

void BufferStream::Advance(unsigned count)
{
    if(count == 0)
        return;
    
    int c = int(count);
    if(((bufferOffset + c) >= 0) && ((bufferOffset + c) < bufferUsed))
    {
        bufferOffset += c;
        return;
    }

    stream->Advance(count - (bufferUsed - bufferOffset));
    bufferBase = bufferBase + bufferOffset + c;
    FillBuffer();
}

void BufferStream::Get(unsigned count, void* data)
{
    if(count == 0)
        return;
        
    unsigned char* out = (unsigned char*)data;

    while(count)
    {
        unsigned req = (count < (bufferUsed - bufferOffset)) ? count : (bufferUsed - bufferOffset);
        memcpy(out, &buffer[bufferOffset], req);

        bufferOffset += req;
        out += req;
        count -= req;

        if(bufferOffset >= bufferSize)
        {
            bufferBase += bufferSize;
            FillBuffer();
        }
    }
}

void BufferStream::FillBuffer(void)
{
    unsigned left = streamLen - bufferBase;
    bufferUsed = (left > bufferSize) ? bufferSize : left;
    
    if(bufferUsed)
        stream->Get(bufferUsed, (void*)buffer);  
        
    bufferOffset = 0;
}


