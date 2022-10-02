/*===========================================================================
    File:: tlCompressedByteStream.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLCOMPRESSEDBYTESTREAM_HPP
#define _TLCOMPRESSEDBYTESTREAM_HPP

#include "tlByteStream.hpp"

class tlCompressedByteStream : public tlByteStream
{
public:
    tlCompressedByteStream(tlByteStream* source);
    virtual ~tlCompressedByteStream();

    virtual unsigned long  GetPosition(void);
    virtual bool   SetPosition(long);
    virtual bool   GetBytes(void* buf, unsigned long nbytes);

    virtual bool   Eof();
    virtual bool   IsOpen();

    virtual bool  PutBytes(const void* buf, unsigned long nbytes);
    

private:

    tlByteStream* stream;
    int position;
    int length;

    int blockposition;
    unsigned char block[4096];

    void ReadBlock();
};

#endif

