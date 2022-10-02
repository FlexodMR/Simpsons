//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        radoptions.hpp
//
// Subsystem:   Foundation Technologies - Preprocessor defines
//
// Description: This file contains all tunable defines game team can modify
//              for their own.
//
// Notes:       
//
// Revisions:   Feb 26, 2002        Creation
//
//=============================================================================

#ifndef RADOPTIONS_HPP
#define RADOPTIONS_HPP

#ifdef RAD_PS2

	// This represents the name of the currently supported IOP img file,
	// this define will change as our company migrates to new sony
	// libraries.

	#define RADPLATFORM_IOP_IMG_FILENAME "ioprp254.img"

#endif // RAD_PS2

#if defined RAD_DEBUG || defined RAD_TUNE

    // Enable Debug Communication

    #define RADDEBUGCOMMUNICATION

	// Enable the watcher

	#define DEBUGWATCH

    // Enable the memory monitor

    #define RADMEMORYMONITOR


#endif // RAD_RELEASE

//
// Enable general purpose profiling system
//
#define RADPROFILER

//
// Enable bin-allocator debuging and stats information
//

#ifdef RAD_DEBUG
    #define RADMEMORY_BIN_ALLOCATOR_STATS     // Keep high water mark stats
    #define RADMEMORY_BIN_ALLOCATOR_DEBUG     // Fill and check free block pattern
    #define RADMEMORY_BIN_ALLOCATOR_DEBUG_PAD // Pad pre & post, check fill.
    //#define RADMEMORY_BIN_ALLOCATOR_WARN_BYTE_WASTE 100  // Warn if wasting more that 100 bytes in a single allocation
    //#define RADMEMORY_BIN_ALLOCATOR_WARN_PERCENTAGE_WASTE 20.0f // Warn if wasting x % in a single allocation
#endif

//
// Enable external heap allocation name tracking.  Enabling this option causes
// the external heap object to store allocation names at runtime.  If the heap
// ever runs out of memory, it will dump out a memory map to the debug window
// with the names of the allocations in memory.
//

#ifdef RAD_DEBUG
    #define RADMEMORY_EXTERNAL_HEAP_TRACK_NAMES
#endif

#if ( defined RAD_WIN32 || defined RAD_XBOX ) && ( defined RAD_DEBUG || defined RAD_TUNE )
    #define MALLOC_DEBUG // use debug heap
#endif

//
// Enable warning messages in radfile.
//
#ifdef RAD_DEBUG
    #define RADFILE_DEBUG_WARNINGS
#endif

//
// Define which platforms will be using bink movie player
//

#if ( defined RAD_WIN32 || defined RAD_XBOX || defined RAD_GAMECUBE)
    #define RAD_MOVIEPLAYER_USE_BINK
#else
    #undef RAD_MOVIEPLAYER_USE_BINK
#endif

#endif // RADOPTIONS_HPP