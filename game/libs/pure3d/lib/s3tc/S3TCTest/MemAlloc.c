// MemAlloc.c
// Routines for platform independant memory allocation
//
// Part of S3TCTest, example application using S3TCLib.
// Developed for S3 by Seth Sowerby, Volume 11 Software

#include <memory.h>
#ifndef MAC
#	include "malloc.h"
#endif // !MAC
#include "MemAlloc.h"

#ifdef MAC

Handle AllocateMemory(long lSize)
{
	OSErr Err;
	return TempNewHandle(lSize, &Err);
}

void FreeMemory(Handle hMemory)
{
	DisposeHandle(hMemory);
}

#else // !MAC

Handle AllocateMemory(long lSize)
{
	Handle hMemory = 0;
	char* pMemory = malloc(lSize);
	if(pMemory)
	{
		hMemory = malloc(sizeof(char*));
		*hMemory = pMemory;
	}

	return hMemory;
}

void FreeMemory(Handle hMemory)
{
	free(*hMemory);
	free(hMemory);
}

#endif // !MAC
