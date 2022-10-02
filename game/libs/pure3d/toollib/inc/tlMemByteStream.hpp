/*===========================================================================
    File:: tlMemByteStream.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLMEMBYTESTREAM_HPP
#define _TLMEMBYTESTREAM_HPP

#include "tlByteStream.hpp"

class tlMemByteStream : public tlByteStream 
{
public:
    tlMemByteStream(unsigned char* data, unsigned long len = (unsigned long) -1);
    virtual ~tlMemByteStream(void);

    virtual unsigned long  GetPosition(void);
    virtual bool   SetPosition(long);
    virtual bool   GetBytes(void* buf, unsigned long nbytes);

    virtual bool   Eof();
    virtual bool   IsOpen();

    virtual bool  PutBytes(const void* buf, unsigned long nbytes);
    unsigned char* GetMemory() {return memory;}

private :
    unsigned char* memory;
    unsigned char* position;
    unsigned long length;
    bool CreatedData;
    
    tlMemByteStream(const tlMemByteStream&);
    tlMemByteStream& operator=(const tlMemByteStream&);
};

#endif

