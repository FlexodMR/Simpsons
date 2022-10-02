//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _BUFFERSTREAM_HPP_
#define _BUFFERSTREAM_CPP_

#include<interface/io.hpp>

class BufferStream : public InStream
{
public:
    BufferStream(InStream* real, unsigned buf = 65536);
    ~BufferStream();

    unsigned GetPosition(void);
    unsigned GetLength(void);

    void Advance(unsigned count);
    void Get(unsigned count, void* data);

protected:
    void FillBuffer(void);

    unsigned bufferSize;
    unsigned bufferUsed;
    unsigned bufferBase;
    unsigned bufferOffset;

    unsigned char* buffer;
    InStream* stream;
    unsigned streamLen;
};


#endif

