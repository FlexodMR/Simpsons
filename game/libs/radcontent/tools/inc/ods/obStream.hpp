//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBSTREAM_HPP
#define OBSTREAM_HPP

#include <string.h>
#include <stdio.h>

class obDataStream
{
    public:
        virtual bool Read( void * pBytes, unsigned int numBytes ) = 0;
        virtual bool Write( const void * pBytes, unsigned int numBytes ) = 0;
};

#endif // OBSTREAM_HPP