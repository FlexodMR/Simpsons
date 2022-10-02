#ifndef __MEMORY_TRACK_H
#define __MEMORY_TRACK_H

#include "log/inc/log.h"

#include <stdlib.h>
#include <iostream>

typedef struct 
{
    void*   address;
    size_t  size;
    char    file[128];
    int     line;
    clock_t clock;
    LARGE_INTEGER               hpc;
} ALLOC_INFO;

#ifdef RAD_DEBUG

extern void AddTrack(void* addr, size_t asize, const char *fname, int lnum);
extern void RemoveTrack(void* addr);
extern bool IsTracked( void* addr );
extern void DumpUnfreed();
extern void MemoryTrackReset( void );  // Clears allocList.

extern CLog     gMemoryTrackLog;

#ifdef DEBUG_MEMORY_TRACK

inline void* __cdecl operator new( size_t size, const char *file, int line )
{
    void *ptr = (void *)malloc(size);
    AddTrack( ptr, size, file, line);
    return(ptr);
};
inline void __cdecl operator delete(void *p) // , const char* file, int line)
{
//    if ( IsTracked( p ) )
    {
        RemoveTrack( p );
//        clog << "FREE: " << hex << p << dec << endl;
    }
    free(p);
};
inline void __cdecl operator delete(void *p, const char* file, int line)
{
    std::cerr << "WHAT THE FUCK ARE YOU DOING HERE?" << std::endl;
    __asm int 3;
    delete p;
}

#endif
#endif

//#ifdef RAD_DEBUG
//#define DEBUG_NEW new(__FILE__, __LINE__)
//#else
//#define DEBUG_NEW new
//#endif
//#define new DEBUG_NEW

#endif      // __MEMORY_TRACK_H
