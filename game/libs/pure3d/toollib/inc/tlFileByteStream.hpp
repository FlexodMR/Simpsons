/*===========================================================================
    File:: tlFileByteStream.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLFILEBYTESTREAM_HPP
#define _TLFILEBYTESTREAM_HPP

#include "tlByteStream.hpp"
#include <stdio.h>

enum tlOpenMode { omREAD, omWRITE };

class tlFileByteStream : public tlByteStream 
{
public:
    tlFileByteStream();
    tlFileByteStream(const char *FileName, tlOpenMode);
    tlFileByteStream(FILE *file);

    virtual ~tlFileByteStream(void);
    virtual unsigned long  GetPosition(void);
    virtual bool   SetPosition(long);
    virtual bool   GetBytes(void* buf, unsigned long nbytes);
    virtual bool   PutBytes(const void* buf, unsigned long nbytes);
    virtual bool   Eof();
    virtual bool   IsOpen();


    virtual unsigned long GetFileSize();
    virtual unsigned char*  GetMemPosition(void) { return NULL; }
    inline char*   GetName() { return name;  }
    
private :
    char* name;
    unsigned long Position;
    FILE* f;

    tlFileByteStream(const tlFileByteStream&);
    tlFileByteStream& operator=(const tlFileByteStream&);
};

#endif

