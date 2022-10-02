//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        mutex.cpp
//
// Subsystem:	Radical Threading Services - Mutex Implementation
//
// Description:	This file contains the implementation of the threading services
//              mutex. A mutex provide a way of creating thread mutual exclusion.
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

#include <radthread.hpp>
#include <radmemorymonitor.hpp>
#include "mutex.hpp"
#include "system.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

//=============================================================================
// Statics
//=============================================================================

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    radThreadCreateMutex
//=============================================================================
// Description: This is the factory for the mutex object. Invoke this to create
//              a mutual exclusion object.
//
// Parameters:  ppMutex - where to retrun the mutex interface pointer
//              allocator - where to allocate object from.
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadCreateMutex
( 
    IRadThreadMutex**   ppMutex,  
    radMemoryAllocator  allocator
)
{
    //
    // Simply new up the object. The object sets its reference count to 1 so
    // we need not add ref it here.
    //
    *ppMutex = new( allocator ) radThreadMutex( );
}

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// Function:    radThreadMutex::radThreadMutex
//=============================================================================
// Description: This is the constructor for the mutex object. Create the platform
//              specific primitive.
//
// Parameters:  none
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

radThreadMutex::radThreadMutex( void )
    :
    m_ReferenceCount( 1 )
{ 
    radMemoryMonitorIdentifyAllocation( this, g_nameFTech, "radThreadMutex" );
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    //
    // Under Win32 and XBOX simply create a mutex object.
    //
    InitializeCriticalSection( &m_CriticalSection );

#endif

#ifdef RAD_PS2   
    //
    // Under PS2, we use a semaphore. The semaphore does not allow the same 
    // thread to own more than once so we must implement this stuff ourself.
    //
  	struct SemaParam semaphoreParam;
    semaphoreParam.maxCount = 1;
    semaphoreParam.initCount = 1;

    m_Semaphore = CreateSema( &semaphoreParam );

    m_CurrentOwner = -1;
    m_OwnedCount = 0;

#endif

#ifdef RAD_GAMECUBE
    //
    // Simply initialize the OS mutex object.
    //
    OSInitMutex( &m_Mutex );

#endif

}

//=============================================================================
// Function:    radThreadMutex::~radThreadMutex
//=============================================================================
// Description: This is the destructor for the mutex object. Simply free the
//              OS resource.
//
// Parameters:  none
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

radThreadMutex::~radThreadMutex( void )
{
    //
    // Under the Windows operation system, we simply delete the critcal
    // section.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    
    DeleteCriticalSection( &m_CriticalSection );

#endif

    //  
    // Under the PS2EE delete the semaphore
    //
#ifdef RAD_PS2
    
    DeleteSema( m_Semaphore );

#endif

    //
    // Under gamecube, we don't do anything.
    //
}

//=============================================================================
// Function:    radThreadMutex::Lock
//=============================================================================
// Description: This is invoked to lock a critcal section of code for execution
//              by only a single thread. If invoked by same thread more than once,
//              ownership is granted.
//
// Parameters:  none
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadMutex::Lock( void )
{ 

#if defined(RAD_WIN32) || defined(RAD_XBOX)
    //
    // Under Win32 and XBOX simply enter critical section
    //
    EnterCriticalSection( &m_CriticalSection );
#endif

#ifdef RAD_PS2
    //
    // Under PS2, check if current thread is already the owner.
    //
    if( m_CurrentOwner == GetThreadId( ) )
    {
        //
        // Here we are the owner. Update the owned count and we are done.
        //
        m_OwnedCount++;
    }
    else
    {
        //
        // We don't owm the object. Wait for it.
        //
        WaitSema( m_Semaphore );

        //
        // Now that we own it. Save our ID as the owner and set owned count
        // to one.
        //
        m_CurrentOwner = GetThreadId( );
        m_OwnedCount = 1;
    }

#endif

#ifdef RAD_GAMECUBE
    //
    // Simply lock OS mutex object.
    //
    OSLockMutex( &m_Mutex );

#endif

}

//=============================================================================
// Function:    radThreadMutex::Unlock
//=============================================================================
// Description: This is invoke to unlock the critical section.
//
// Parameters:  none
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadMutex::Unlock( void )
{ 
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    //
    // Under Win32 and XBOX simply leave critical section
    //
    LeaveCriticalSection( &m_CriticalSection );

#endif

#ifdef RAD_PS2   
    //
    // Under PS2, Update the owned count. In non zero, we still own it and simply
    // return.
    //
    m_OwnedCount--;

    if( m_OwnedCount == 0 )
    {
        //
        // Here we are done with the object. Clear the owner id
        // and release the semaphore.
        //
        m_CurrentOwner = -1;

        SignalSema( m_Semaphore );
    }

#endif

#ifdef RAD_GAMECUBE
    //
    // Simply unlock OS mutex object.
    //
    OSUnlockMutex( &m_Mutex );

#endif

}

//=============================================================================
// Function:    radThreadMutex::AddRef
//=============================================================================
// Description: Reference Management.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThreadMutex::AddRef
(
	void
)
{
    //
    // Protect this operation with mutex as this is not guarenteed to be thread
    // safe.
    //
    radThreadInternalLock( );
	m_ReferenceCount++;
    radThreadInternalUnlock( );
}

//=============================================================================
// Function:    radThreadMutex::Release
//=============================================================================
// Description: Reference Management.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThreadMutex::Release
(
	void
)
{
    //
    // Protect this operation with mutex as this is not guarenteed to be thread
    // safe.
    //
    radThreadInternalLock( );

	m_ReferenceCount--;

	if ( m_ReferenceCount == 0 )
	{
        radThreadInternalUnlock( );
		delete this;
	}
    else
    {
        radThreadInternalUnlock( );
    }
}

//=============================================================================
// Function:    radThreadMutex::Dump
//=============================================================================
// Description: This member is used to display object info
//
// Parameters:  string buffer and size of buffer
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

#ifdef RAD_DEBUG

void radThreadMutex::Dump( char* pStringBuffer, unsigned int bufferSize )
{
    sprintf( pStringBuffer, "Object: [radThreadMutex] At Memory Location:[0x%x]\n", (unsigned int) this );
}

#endif


