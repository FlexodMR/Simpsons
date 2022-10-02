//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     22 February, 2002
// Modified:    22 February, 2002
// Version:     
//
// Component:   
//
// Description: Bryan Ewert's debug defines.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __BEWERT_DEBUG_H_
#define __BEWERT_DEBUG_H_

//===========================================================================
// Nested Includes
//===========================================================================

#include <iostream.h>
#include <assert.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

// BRYAN'S DEBUG DEFINES (hopes to avoid debug spew in release builds)
#ifndef COUT
    #define COUT(condition)  if (condition) cout 
#endif
#ifdef RAD_DEBUG
    static const bool kVerbose = true;
    #define CDEBUG COUT(true)
#else
    static const bool kVerbose = false;
    #define CDEBUG COUT(false)
#endif


#ifdef DEBUG_MEMORY_TRACK
#include <memoryTrack/inc/memoryTrack.h>
#ifdef RAD_DEBUG
#define DEBUG_NEW new(__FILE__, __LINE__)
#else
#define DEBUG_NEW new
#endif
#define new DEBUG_NEW
#endif      // DEBUG_MEMORY_TRACK

#endif // __BEWERT_DEBUG_H_

