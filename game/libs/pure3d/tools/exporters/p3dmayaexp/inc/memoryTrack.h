#include <stdlib.h>
#include <iostream.h>

void AddTrack(void* addr, size_t asize, const char *fname, int lnum);
void RemoveTrack(void* addr);
void DumpUnfreed();

#ifdef _DEBUG
inline void* __cdecl operator new( size_t size, const char *file, int line )
{
    void *ptr = (void *)malloc(size);
    AddTrack( ptr, size, file, line);
    return(ptr);
};
inline void __cdecl operator delete(void *p) // , const char* file, int line)
{
    RemoveTrack( p );
    free(p);
};
inline void __cdecl operator delete(void *p, const char* file, int line)
{
    cerr << "WHAT THE FUCK ARE YOU DOING HERE?" << endl;
    __asm int 3;
    delete p;
}
#endif

//#ifdef _DEBUG
//#define DEBUG_NEW new(__FILE__, __LINE__)
//#else
//#define DEBUG_NEW new
//#endif
//#define new DEBUG_NEW
