//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        dispatcher.cpp
//
// Subsystem:	Foundation Technologies - Dispatcher
//
// Description:	This file contains the implementation of the Foundation 
//              Technologies Dispatcher. The dispatcher is responsible
//              for controlling the flow of low level events within the system.
//
// Date:    	Mar 12, 2001
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

#include <raddispatch.hpp>
#include <radobject.hpp>
#include <radmemory.hpp>
#include <raddebug.hpp>
#include <radmemorymonitor.hpp>

#include "dispatcher.hpp"

//=============================================================================
// Local Defintions
//=============================================================================

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// Function:    radDispatchCreate
//=============================================================================
// Description: This is the object factory for the dispatcher.
//
// Parameters:  pIRadDispatcher - returns the object.
//              maxCallback,    - max queued callbacks
//              alloc           - where to get memory
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radDispatchCreate
( 
    IRadDispatcher**   pIRadDispatcher, 
    unsigned int       maxCallbacks,
    radMemoryAllocator alloc
)
{
    //
    // Simply new up a a dispatcher object.
    //
    *pIRadDispatcher = new( alloc ) radDispatcher( maxCallbacks, alloc );
}


//=============================================================================
// Function:    radDispatcher::radDispatcher
//=============================================================================
// Description: Constructor.Nothing to interesting. Just initialize members.
//
// Parameters:  maxcallbacks
//              allocator
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

radDispatcher::radDispatcher
( 
    unsigned int maxCallbacks,
    radMemoryAllocator alloc    
)
    :
    m_ReferenceCount( 1 ),
    m_MaxEvents( maxCallbacks ),
    m_EventQueueHeadIndex( 0 ),
    m_EventQueueTailIndex( 0 ),
    m_EventsQueued( 0 )
{
    radMemoryMonitorIdentifyAllocation( this, g_nameFTech, "radDispatcher" );
    //
    // Allocate memory to use for queing events.
    //
    m_EventQueue = (Event*) radMemoryAlloc( alloc, sizeof(Event) * m_MaxEvents );

    //
    // Under windows, initialize a critical section for protection.
    //
    #if defined ( RAD_WIN32 ) || defined( RAD_XBOX )
    InitializeCriticalSection( &m_CriticalSection );
    #endif
}

//=============================================================================
// Function:    fDispatcher::~fDispatcher
//=============================================================================
// Description: Destructor. Free any resources.
//
// Parameters:  none
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

radDispatcher::~radDispatcher( void )
{
    //
    // If this asserts the caller did not call purge.
    //
    rAssert( m_EventsQueued == 0 );
   
    #if defined ( RAD_WIN32 ) || defined( RAD_XBOX )
    
    DeleteCriticalSection( &m_CriticalSection );

    #endif

    //
    // Free up the memory
    //
    radMemoryFree( m_EventQueue );
}

//=============================================================================
// Function:    radDispatcher::AddRef
//=============================================================================
// Description: This member can be invoked to update the reference count of
//              the dispatcher.
//
// Parameters:  none
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radDispatcher::AddRef( void )
{
    m_ReferenceCount++;
}

//=============================================================================
// Function:    radDispatcher::Release
//=============================================================================
// Description: This member can be invoked to update the reference count of
//              the dispatcher. When reaches zero, dispatcher is deleted.
//
// Parameters:  none
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radDispatcher::Release( void )
{
    m_ReferenceCount--;
    
    if( m_ReferenceCount == 0 )
    {
       delete this;
    }
}

//=============================================================================
// Function:    radDispatcher::Dump
//=============================================================================
// Description: In a debug build, report the name of this class.
//
// Parameters:  pStringBuffer - where to copy name,
//              bufferSize    - size of buffer
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

#ifdef RAD_DEBUG

void radDispatcher::Dump( char * pStringBuffer, unsigned int bufferSize )
{
    sprintf( pStringBuffer, "Object: [radDispatcher] At Memory Location:[0x%x]\n", (unsigned int) this );
}

#endif

//=============================================================================
// Function:    fDispatcher::QueueCallback
//=============================================================================
// Description: This member is invoked to post an event to the event queue. It
//              can be safely called from another thread.
//
// Parameters:  dispatchEvent - event to add to queue.
//              user data,
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radDispatcher::QueueCallback
( 
    IRadDispatchCallback* pDispatchCallback,
    void*                 userData 
)
{
    //
    // Update reference count on the dispatch event object since we are holding
    // a pointer to it,
    //      
    pDispatchCallback->AddRef( );

    //
    // Protect the addtion of this record the event list. Platform specif locks
    // required.
    //
    #if defined ( RAD_WIN32 ) || defined( RAD_XBOX )
    EnterCriticalSection( &m_CriticalSection );
    #endif
    #ifdef RAD_PS2
    DI( );
    #endif
    #ifdef RAD_GAMECUBE
    BOOL   oldInterruptMask = OSDisableInterrupts( ); 
    #endif

    //
    // Assert that we have not exceeded the maximum number of events in the queue.
    //
    rAssert( m_EventsQueued != m_MaxEvents );                         

    //
    // Add it to the queue at the head.
    //
    m_EventQueue[ m_EventQueueHeadIndex ].m_Callback = pDispatchCallback;
    m_EventQueue[ m_EventQueueHeadIndex ].m_UserData = userData;
    m_EventQueueHeadIndex++;
    if( m_EventQueueHeadIndex == m_MaxEvents )
    {
        m_EventQueueHeadIndex = 0;
    }        
    m_EventsQueued++;

    //
    // Remove protection,
    //
    #if defined ( RAD_WIN32 ) || defined( RAD_XBOX )
    LeaveCriticalSection( &m_CriticalSection );
    #endif
    #ifdef RAD_PS2
    EI( );
    #endif
    #ifdef RAD_GAMECUBE
    OSRestoreInterrupts( oldInterruptMask );
    #endif
}


//=============================================================================
// Function:    radDispatcher::QueueCallbackFromInterrupt
//=============================================================================
// Description: This member is invoked to post an event to the event queue. It
//              can be safely called from an interrupt service routine
//
// Parameters:  dispatchEvent - event to add to queue.
//              user data,
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radDispatcher::QueueCallbackFromInterrupt
( 
    IRadDispatchCallback* pDispatchCallback,
    void*                 userData 
)
{
    #if defined ( RAD_WIN32 ) || defined( RAD_XBOX )
        
    //
    // Not supported under windows or XBOX
    //
    (void) pDispatchCallback;
    (void) userData;
    rAssert( false );

    #endif

    #if defined( RAD_PS2 ) || defined( RAD_GAMECUBE )

    //
    // Update reference count on the dispatch event object since we are holding
    // a pointer to it,
    //      
    pDispatchCallback->AddRef( );

    //
    // Assert that we have not exceeded the maximum number of events in the queue.
    //
    rAssert( m_EventsQueued != m_MaxEvents );                         

    //
    // Add it to the queue at the head.
    //
    m_EventQueue[ m_EventQueueHeadIndex ].m_Callback = pDispatchCallback;
    m_EventQueue[ m_EventQueueHeadIndex ].m_UserData = userData;
    m_EventQueueHeadIndex++;
    if( m_EventQueueHeadIndex == m_MaxEvents )
    {
        m_EventQueueHeadIndex = 0;
    }        
    m_EventsQueued++;

    #endif
}

//=============================================================================
// Function:    radDispatcher::Service
//=============================================================================
// Description: Dispatches an events in the queue when the function is entered.
//
// Parameters:  none
//
// Returns:     number of events queued after exit.
//
// Notes:
//------------------------------------------------------------------------------

unsigned int radDispatcher::Service( void )
{
    //
    // For each invocation, we remove all of the events queued.
    //
    unsigned int eventsToDispatch = m_EventsQueued;

    //
    // On Ps2, get the callers thread prioriry.
    //
    #ifdef RAD_PS2

    ThreadParam threadInfo;
    ReferThreadStatus( GetThreadId( ), &threadInfo );
        
    #endif

    //
    // We only dispatch as many events that were initially in the queue. Since
    // it is possible for this routine to be invoked in a nested manner, we
    // also make sure there are events in the queue as well.
    //    
    //
    // Protect the manilpulation of this record the event list. Platform specif locks
    // required.
    //
    #if defined ( RAD_WIN32 ) || defined( RAD_XBOX )
    EnterCriticalSection( &m_CriticalSection );
    #endif
    #ifdef RAD_PS2
    DI( );
    #endif
    #ifdef RAD_GAMECUBE
    OSDisableInterrupts( );
    #endif

    while( (m_EventsQueued != 0) && (eventsToDispatch != 0) )
    {
        //
        // We have an event to dispatch. Remove it from the queue and update tail index.
        //
        Event event = m_EventQueue[ m_EventQueueTailIndex ];
        m_EventQueueTailIndex++;
        if( m_EventQueueTailIndex == m_MaxEvents )
        {
            m_EventQueueTailIndex = 0;
        }        
        m_EventsQueued--;
        eventsToDispatch--;

        //
        // Now remove lock and invoke event handler.
        //
        #if defined ( RAD_WIN32 ) || defined( RAD_XBOX )
        LeaveCriticalSection( &m_CriticalSection );
        #endif
        #ifdef RAD_PS2
        EI( );
        #endif
        #ifdef RAD_GAMECUBE
        OSEnableInterrupts( );
        #endif

        event.m_Callback->OnDispatchCallack( event.m_UserData );

        //
        // Since we are now finished with the event, we can update our reference to the object.
        //
        event.m_Callback->Release( );   // don't call radRelease( ) to report this release to memory monitor

        #ifdef RAD_PS2
        //
        // Under the PS2, we rotate the thread ready queue to allow other threads to
        // run. Rotate only those threads at the calling priority.
        //
        RotateThreadReadyQueue( threadInfo.currentPriority );
        #endif
    
        #ifdef RAD_GAMECUBE
        //
        // On GameCube, yield to threads at same priority.
        //
        OSYieldThread( );
        #endif    

        #if defined ( RAD_WIN32 ) || defined( RAD_XBOX )
        EnterCriticalSection( &m_CriticalSection );
        #endif
        #ifdef RAD_PS2
        DI( );
        #endif

        #ifdef RAD_GAMECUBE
        OSDisableInterrupts( );
        #endif
    }

    #if defined ( RAD_WIN32 ) || defined( RAD_XBOX )
    LeaveCriticalSection( &m_CriticalSection );
    #endif
    #ifdef RAD_PS2
    EI( );
    #endif
    #ifdef RAD_GAMECUBE
    OSEnableInterrupts( );
    #endif

    return( m_EventsQueued );
          
}

