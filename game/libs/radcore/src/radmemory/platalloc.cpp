//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include "pch.hpp"
#include <raddebug.hpp>
#include "platalloc.hpp"

#if defined RAD_PS2

    #include <malloc.h>

#elif defined RAD_WIN32 || defined RAD_XBOX
    
    #include <stdlib.h>
    
    #if defined MALLOC_DEBUG
        #include <crtdbg.h>
    #endif

#elif defined RAD_GAMECUBE

    #include <dolphin.h>
    #include <dolphin/vm.h>

static bool sVMMInitialized = false;
OSHeapHandle gGCHeap = -1;

#endif

//============================================================================
// ::radMemoryPlatInitialize
//============================================================================

#ifdef RAD_GAMECUBE
void radMemoryPlatInitialize( unsigned int sizeVMMainMemory, unsigned int sizeVMARAM)
{
    // Looking for some VMM?
    sVMMInitialized = false;
    if ((sizeVMMainMemory != 0) && (sizeVMARAM != 0))
    {
        unsigned int baseVMARAM = (1024 * 1024 * 16) - sizeVMARAM;

        VMInit(sizeVMMainMemory, baseVMARAM, sizeVMARAM);
        sVMMInitialized = true;
    }

	// Initializes the Dolphin OS memory allocator and ensures that
	// new and delete will work properly.

	void *pArenaLo = OSGetArenaLo( );
	void *pArenaHi = OSGetArenaHi( );

	// Create a heap
	// OSInitAlloc should only ever be invoked once.

	pArenaLo = OSInitAlloc( pArenaLo, pArenaHi, 1); // 1 heap size
	OSSetArenaLo( pArenaLo );

	// Ensure boundaries are 32B aligned

	pArenaLo = (void*) OSRoundUp32B( pArenaLo );
	pArenaHi = (void*) OSRoundDown32B( pArenaHi );

	// The boundaries given to OSCreateHeap should be 32B aligned
    gGCHeap = OSCreateHeap( pArenaLo, pArenaHi );
    rAssert( gGCHeap != -1 );
	OSSetCurrentHeap( gGCHeap );

	//
	// From here on out, OSAlloc and OSFree behave like malloc and free
	// respectively.
	//
	OSSetArenaLo( pArenaLo = pArenaHi );
}
#else
// ---Non-GameCube Memory Plat init --------------------------------------------------
void radMemoryPlatInitialize( void )
{

}
#endif


//============================================================================
// ::radMemoryPlatTerminate
//============================================================================

void radMemoryPlatTerminate( void )
{
#ifdef RAD_GAMECUBE
    if (sVMMInitialized)
    {
        VMQuit();
        sVMMInitialized = false;
    }

#endif
}

//============================================================================
// ::radMemoryPlatAlloc
//============================================================================

void * radMemoryPlatAlloc( unsigned int numberOfBytes )
{
    void * pMemory;
    //
    // C++ standard says you can allocate 0 byte memory object.
    //
    if ( numberOfBytes == 0 )
    {
        numberOfBytes = 1;
    }

#if defined MALLOC_DEBUG
#define MALLOC_OK
    pMemory = _malloc_dbg(numberOfBytes, _NORMAL_BLOCK, NULL, 0);
#endif

#ifdef RAD_GAMECUBE
#define MALLOC_OK
    pMemory = OSAlloc( numberOfBytes );
#endif

#if ! defined( MALLOC_OK )
    pMemory = malloc( numberOfBytes );
#endif
    
    rWarningMsg( pMemory != NULL, "radMemory: Platform (malloc) allocator failed to allocate memory\n" );
    return pMemory;
}

//============================================================================
// ::radMemoryPlatFree
//============================================================================

void radMemoryPlatFree( void * pMemory )
{
#if defined MALLOC_DEBUG
    _free_dbg(pMemory, _NORMAL_BLOCK);
#endif

#ifdef RAD_GAMECUBE
    if ( pMemory != NULL )
    {	
        OSFree( pMemory );
    }
#endif

#if ! defined( MALLOC_OK )
	free( pMemory );
#endif
}

//============================================================================
// ::radMemoryPlatAllocAligned
//============================================================================

void * radMemoryPlatAllocAligned( unsigned int numberOfBytes, unsigned int alignment )
{
	#ifdef RAD_PS2

		return ::memalign( alignment, numberOfBytes );

	#else

		//
		// Roll our own with Os allocator
		//

		unsigned int pMemory = (unsigned int ) radMemoryPlatAlloc( numberOfBytes + alignment );
		rAssert( numberOfBytes == 0 || pMemory != 0 ); 

		unsigned int pAlignedMemory = pMemory + ( alignment - ( pMemory % alignment ) );

		((unsigned int*)pAlignedMemory)[ -1 ] = pMemory;   

		return (void*) pAlignedMemory;

	#endif
}

//============================================================================
// ::radMemoryPlatFreeAligned
//============================================================================

void radMemoryPlatFreeAligned( void * pAlignedMemory )
{

	#ifdef RAD_PS2
		
		free( pAlignedMemory );
	
	#else

        if ( pAlignedMemory != NULL )
        {
		    //
		    // UnRoll our own using Os allocator
		    //

		    radMemoryPlatFree( (void*) ((unsigned int*)pAlignedMemory)[ -1 ] );
        }

	#endif
}
