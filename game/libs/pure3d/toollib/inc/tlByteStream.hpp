/*===========================================================================
    File:: tlByteStream.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLBYTESTREAM_HPP
#define _TLBYTESTREAM_HPP

class tlByteStream {
public:
    tlByteStream() {}
    virtual ~tlByteStream(void) = 0;

    virtual unsigned long  GetPosition(void) = 0;
    virtual bool   SetPosition(long) = 0;
    virtual bool   GetBytes(void* buf, unsigned long nbytes) = 0;

    virtual bool   Eof() = 0;
    virtual bool   IsOpen() = 0;

    virtual bool   PutBytes(const void* buf, unsigned long nbytes) = 0;
};


#endif

