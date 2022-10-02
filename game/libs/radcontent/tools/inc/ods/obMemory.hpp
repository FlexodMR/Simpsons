//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBMEMORY_HPP
#define OBMEMORY_HPP

inline void * obMalloc( size_t size )
{
    return new char[ size ];
}

inline void obFree( void * pMemory )
{
    delete [] pMemory;
}

#endif // OBMEMORY_HPP