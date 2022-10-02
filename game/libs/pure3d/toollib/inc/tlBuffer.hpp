/*===========================================================================
    File:: tlBuffer.hpp

    This class allows you to write lots of data to a memory buffer without
    knowing in advance how big it will get.

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLBUFFER_HPP
#define _TLBUFFER_HPP

class tlBuffer
{
public:
    tlBuffer();
    virtual ~tlBuffer();
    
    void  Allocate(int s);              // Set the allocated size
                                                    // You don't need to call this function
                                                    // but it will be faster if you do.
    int            GetSize() const { return size; }
    unsigned char* GetBuffer() const { return buffer; }
    
    void  Write(const unsigned char* data, unsigned int nbytes);

private:
    int            size;
    int            allocSize;
    unsigned char* buffer; 
};

#endif

