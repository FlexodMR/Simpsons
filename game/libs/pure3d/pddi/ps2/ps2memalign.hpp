//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PS2MEMALIGN_HPP
#define _PS2MEMALIGN_HPP

#include <malloc.h>
#include <eekernel.h>

#include <radmemory.hpp>

inline void* MallocAligned(size_t alignment, size_t nBytes)
{
    void *p = radMemoryAllocAligned( ::radMemoryGetCurrentAllocator (), nBytes, alignment );

    return p;
}

inline void Free(void* ptr)
{
    radMemoryFreeAligned(ptr);
}

void pddiMemRegAlloc(void* d, unsigned s);
void pddiMemRegFree(void* d);

//--------------------------------------------------------------------
inline void* malloc_uncached_accel(const int nBytes)
{
   char* ptr = (char*)MallocAligned(64, (nBytes+63) & ~63);
   ptr = (char*)((unsigned)ptr | 0x30000000);
   FlushCache(0);
   pddiMemRegAlloc(ptr,nBytes);

   return ptr;
}

inline void free_uncached_accel(void* ptr)
{
   Free((char*)((unsigned)ptr & ~0x30000000));
   pddiMemRegFree(ptr);
}


#endif // _PS2MEMALIGN_HPP
