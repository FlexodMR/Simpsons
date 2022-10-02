/*===========================================================================
    File:: tlFileByteStream.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlFileByteStream.hpp"
#include <assert.h>
#include <string.h>
#include <zlib.h>

#ifdef P3DWIN95
#include <io.h>
#endif


#include "tlString.hpp"

tlFileByteStream::tlFileByteStream(): 
        name(NULL),
        Position(0), 
        f(NULL)
{

}

tlFileByteStream::tlFileByteStream(const char *FileName, tlOpenMode OpenMode):
        name(NULL),
        Position(0), 
        f(NULL)
{
    char   mode[10];
    switch (OpenMode)
    {
        case omREAD:            strcpy(mode, "rb"); break;
        case omWRITE:           strcpy(mode, "wb"); break;
        default:                assert(0); break;
    }

    if (FileName) 
    {
        f = fopen(FileName, mode);
        name = strnew(FileName);
    }

    Position = 0;
}

tlFileByteStream::tlFileByteStream(FILE *file)
{
    f = NULL;

    if (file)
    {
        f = file;
    } else {
        f = NULL;
    }
    name = NULL;

    Position = 0;
}


tlFileByteStream::~tlFileByteStream(void) 
{
    if(f)
    {
        fclose(f);
    }

    if(name) 
    {
        strdelete(name);
    }
  
}

unsigned long 
tlFileByteStream::GetFileSize(void)
{
#ifdef P3DWIN95
     return _filelength(_fileno(f));
#else
    return 0;
#endif   
}


unsigned long
tlFileByteStream::GetPosition(void)
{
    return Position;
}

bool
tlFileByteStream::SetPosition(long offset)
{
    if((unsigned long)offset != Position)
    {
        int rc = fseek(f, offset, SEEK_SET);

        if(!rc)
        {
            Position = ftell(f);
            return true;    
        }
        return false;
    }
    return true;  
}

bool
tlFileByteStream::GetBytes(void* buf, unsigned long nbytes) 
{
    size_t count;
    count = fread(buf, 1, nbytes, f);
    Position += count;
    return ((size_t)nbytes == count);
}

bool
tlFileByteStream::PutBytes(const void* buf, unsigned long nbytes)
{
    size_t count;
    count = fwrite(buf, 1, nbytes, f);
    Position += count;
    return ((size_t)nbytes == count);
}

bool
tlFileByteStream::Eof() 
{
    return feof(f) != 0;
}

bool
tlFileByteStream::IsOpen()
{
  return (f != NULL);
}

