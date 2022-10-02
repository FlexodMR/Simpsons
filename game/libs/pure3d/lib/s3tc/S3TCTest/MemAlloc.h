// MemAlloc.h
// Routines for platform independant memory allocation
//
// Part of S3TCTest, example application using S3TCLib.
// Developed for S3 by Seth Sowerby, Volume 11 Software

#ifdef MAC
#	include <MacMemory.h>
#else // !MAC
typedef char** Handle;
#endif // !MAC

Handle AllocateMemory(long lSize);
void FreeMemory(Handle hMemory);
