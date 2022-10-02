//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        semaphore.cpp
//
// Subsystem:	Radical Threading Services - Semaphore Implementation
//
// Description:	This file contains the implementation of the threading services
//              semaphore. A semaphore is an object which can be used to coordinate
//              and sychronize threads
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
#include "semaphore.hpp"
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
// Function:    radThreadCreateSemaphore
//=============================================================================
// Description: This is the factory for the semaphore object. Invoke this to create
//              a semaphore object.
//
// Parameters:  ppSemaphore - where to return the semaphore interface pointer
//              count - initial semaphore count.
//              allocator - where to allocate object from.
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadCreateSemaphore
( 
    IRadThreadSemaphore** ppSemaphore,
    unsigned int count,
    radMemoryAllocator allocator
)
{
    //
    // Simply new up the object. The object sets its reference count to 1 so
    // we need not add ref it here.
    //
    *ppSemaphore = new( allocator ) radThreadSemaphore( count );
}

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// Function:    radThreadSemaphore::radThreadSemaphore
//=============================================================================
// Description: This is the constructor for the semaphore object. Create the platform
//              specific primitive.
//
// Parameters:  count - initail semaphore count
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

radThreadSemaphore::radThreadSemaphore( unsigned int count )
    :
    m_ReferenceCount( 1 )
{ 
    radMemoryMonitorIdentifyAllocation( this, g_nameFTech, "radThreadSemaphore" );

#if defined(RAD_WIN32) || defined(RAD_XBOX)

    //
    // Under Win32 and XBOX simply create a semaphore object.
    //
    m_Semaphore = CreateSemaphore( NULL, count, 32000, NULL );

#endif

#ifdef RAD_PS2
    //
    // Under PS2, we use a semaphore.
    //
  	struct SemaParam semaphoreParam;
    semaphoreParam.maxCount = 32000;
    semaphoreParam.initCount = count;

    m_Semaphore = CreateSema( &semaphoreParam );

#endif

#ifdef RAD_GAMECUBE
    //
    // Gamecube realizes the semaphore object using a condition adn
    // a mutex. We manage the count ourselff.
    //       
    m_Count = count;
    OSInitMutex( &m_Mutex );
    OSInitCond( &m_Condition );   

#endif

}

//=============================================================================
// Function:    radThreadSemaphore::~radThreadSemaphore
//=============================================================================
// Description: This is the destructor for the semaphore object. Simply free the
//              OS resource.
//
// Parameters:  none
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

radThreadSemaphore::~radThreadSemaphore( void )
{
    //
    // Under the Windows operation system, we simply delete the semaphore
    // section.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    
    CloseHandle( m_Semaphore );

#endif

    //  
    // Under the PS2EE delete the semaphore
    //
#ifdef RAD_PS2
    
    DeleteSema( m_Semaphore );

#endif


#ifdef RAD_GAMECUBE
    //
    // Under gamecube, we don't do anything.
    //
#endif

}

//=============================================================================
// Function:    radThreadSemaphore::Wait
//=============================================================================
// Description: This is invoked to wait on the semaphore. The thread is
//              suspended if the count goes to zero.
//
// Parameters:  none
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadSemaphore::Wait( void )
{ 
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    //
    // Under Win32 and XBOX simply wait for the semaphore to be signaled.
    //
    WaitForSingleObject( m_Semaphore, INFINITE );
#endif

#ifdef RAD_PS2
    //
    // Under PS2, wait also
    //
    WaitSema( m_Semaphore );

#endif

#ifdef RAD_GAMECUBE
    
    //
    // Obtain mutex to protect our counter.
    //
    OSLockMutex( &m_Mutex );

    m_Count--;

    //
    // Enter a while loop waiting for condition to be meet.
    //
    while( m_Count < 0 )
    {
        //
        // This operation release mutex and suspends thread. When
        // condition is singaled, mutex is reaquired.
        //
        OSWaitCond(&m_Condition, &m_Mutex);
    }

    OSUnlockMutex(&m_Mutex);      

#endif
}

//=============================================================================
// Function:    radThreadSemaphore::Signal
//=============================================================================
// Description: This is invoke to signal the semaphore.
//
// Parameters:  none
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadSemaphore::Signal( void )
{ 
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    //
    // Under Win32 and XBOX simply release semaphore
    //
    ReleaseSemaphore( m_Semaphore, 1, NULL );

#endif

#ifdef RAD_PS2   
    //
    // Under PS2, just signal semaphore
    //
    SignalSema( m_Semaphore );

#endif

#ifdef RAD_GAMECUBE

    //
    // Obtain mutex to protect our counter.
    //
    OSLockMutex( &m_Mutex );

    m_Count++;

    //
    // Wake up any threads waiting on the condition.
    //
    OSSignalCond( &m_Condition );

    OSUnlockMutex( &m_Mutex );

#endif

}

//=============================================================================
// Function:    radThreadSemaphore::AddRef
//=============================================================================
// Description: Reference Management.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThreadSemaphore::AddRef
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
// Function:    radThreadSemaphore::Release
//=============================================================================
// Description: Reference Management.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThreadSemaphore::Release
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
// Function:    radThreadSemaphore::Dump
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

void radThreadSemaphore::Dump( char* pStringBuffer, unsigned int bufferSize )
{
    sprintf( pStringBuffer, "Object: [radThreadSemaphore] At Memory Location:[0x%x]\n", (unsigned int) this );
}

#endif


