//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        system.cpp
//
// Subsystem:	Radical Threading Services - System wide services
//
// Description:	This file contains the implementation of the threading system
//              initialization and helper functions.
//
// Author:		Peter Mielcarski
//
// Revisions:	V1.00	Jan 8, 2002
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "pch.hpp"
#ifdef RAD_WIN32
    #include <windows.h>
#endif
#ifdef RAD_XBOX
    #include <xtl.h>
#endif
#ifdef RAD_PS2
    #include <eekernel.h>
#endif
#ifdef RAD_GAMECUBE
    #include <os.h>
#endif 

#include <raddebug.hpp>
#include <radthread.hpp>
#include "system.hpp"
#include "thread.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

//=============================================================================
// Statics
//=============================================================================

//
// Flag to make sure initialization occurs and not more than once.
//
static bool g_SystemInitialized = false;

//
// Need an exclusion object for each of the various platforms.
//
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    static CRITICAL_SECTION g_ExclusionObject;
#endif
#ifdef RAD_PS2
    static int              g_ExclusionObject;        
#endif
#ifdef RAD_GAMECUBE
    static OSMutex          g_ExclusionObject;
#endif

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    radThreadInitialize
//=============================================================================
// Description: This function should be invoked prior to invoking any other
//              threading services. It illegal to call it more than once.
//
// Parameters:  milliseconds - round robin periond
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadInitialize( unsigned int milliseconds )
{
    rAssertMsg( !g_SystemInitialized, "radThread system already initialized\n");

    //
    // To manage our threading objects we in a thread safe manner, we need 
    // OS exculision objects for our own use. Create them here.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    InitializeCriticalSection( &g_ExclusionObject );
#endif

#ifdef RAD_PS2
  	struct SemaParam semaphoreParam;
    semaphoreParam.maxCount = 1;
    semaphoreParam.initCount = 1;
    g_ExclusionObject = CreateSema( &semaphoreParam );
#endif

#ifdef RAD_GAMECUBE
    OSInitMutex( &g_ExclusionObject );
#endif    

    g_SystemInitialized = true;

    //
    // Initialize the threading components.
    //
    radThread::Initialize( milliseconds );
}

//=============================================================================
// Function:    radThreadTerminate
//=============================================================================
// Description: This function should be at the end of all other threading objects
//              have beem released. It performs some simple cleanup.
//
// Parameters:  N/A
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadTerminate( void )
{
    rAssertMsg( g_SystemInitialized, "radThread system has not been initialized\n");

    //
    // Terminate the threading components.
    //
    radThread::Terminate( );

    //
    // Free up the exclusion object using the appropriate platform specific 
    // function.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    DeleteCriticalSection( &g_ExclusionObject );
#endif

#ifdef RAD_PS2   
    DeleteSema( g_ExclusionObject );
#endif

#ifdef RAD_GAMECUBE
    // Nothing to do on the gamecube.
#endif    

    g_SystemInitialized = false;
}

//=============================================================================
// Function:    radThreadInternalLock
//=============================================================================
// Description: This function is used internally to provide thread exculision
//
// Parameters:  N/A
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadInternalLock( void )
{
    rAssertMsg( g_SystemInitialized, "radThread system has not been initialized\n");

    //
    // Just perform the OS specific implementation.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    EnterCriticalSection( &g_ExclusionObject );
#endif

#ifdef RAD_PS2   
    WaitSema( g_ExclusionObject );
#endif

#ifdef RAD_GAMECUBE
    OSLockMutex( &g_ExclusionObject );
#endif

}

//=============================================================================
// Function:    radThreadInternalUnlock
//=============================================================================
// Description: This function is used internally to provide release thread exclusion
//
// Parameters:  N/A
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadInternalUnlock( void )
{
    rAssertMsg( g_SystemInitialized, "radThread system has not been initialized\n");

    //
    // Just perform the OS specific implementation.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    LeaveCriticalSection( &g_ExclusionObject );
#endif

#ifdef RAD_PS2   
    SignalSema( g_ExclusionObject );
#endif

#ifdef RAD_GAMECUBE
    OSUnlockMutex( &g_ExclusionObject );
#endif

}