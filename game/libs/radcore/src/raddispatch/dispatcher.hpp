//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        dispatcher.hpp
//
// Subsystem:	Foundation Technologies - Dispatcher
//
// Description:	This file the actual class definition used to implement the
//              interface defined by the dispather.
//
//				For complete description of Manager, refer to the Foundation
//              Technologies technical reference manual.
//
// Revisions:   Mar 12, 2001     Creation
//
//=============================================================================

#ifndef	DISPATCHER_HPP
#define DISPATCHER_HPP

//=============================================================================
// Include Files
//=============================================================================

#ifdef RAD_WIN32
#include <windows.h>
#endif
#ifdef RAD_XBOX
#include <xtl.h>
#endif 


#include <raddispatch.hpp>
#include <radobject.hpp>
#include <radmemory.hpp>

//=============================================================================
// Forward Class Declarations
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================

// 
// This is the Implementation of the Dispatcher. 
//
class radDispatcher : public IRadDispatcher,
                      public radObject
{
    public:

    //
    // Constructor. Pass allocator and max event to queue. Nothing to interesting.
    //
    radDispatcher( unsigned int maxCallbacks, radMemoryAllocator alloc );
    virtual ~radDispatcher( void );   // Only virtual to prevent warning

    //
    // Virtual members to implement.
    //
    virtual unsigned int Service( void ); 

    //
    // Use this member of queue a dispatch callback for deffered exectuion.
    //
    virtual void QueueCallback( IRadDispatchCallback* pDispatchCallback, void* userData );

    //
    // This member also queues an event. However, it supports queing from
    // an interrupt context. It will not modify the state of the interrupt mask. Need due
    // to limitations of some OSs.
    //
    virtual void QueueCallbackFromInterrupt( IRadDispatchCallback* pDispatchCallback, void* userData );

    //
    // Used to reference counting.
    //
    virtual void AddRef( void ); 
    virtual void Release( void );
    
    #ifdef RAD_DEBUG

    virtual void Dump( char * pStringBuffer, unsigned int bufferSize );
    
    #endif

    private:
    
    //
    // Referecnce count.
    //
    unsigned int        m_ReferenceCount;

    //
    // This data structure is used to manage a circular queue of dispatch objects.
    // Event objects are added to the added to the head and removed from the tail.
    //
    struct  Event
    {
        IRadDispatchCallback* m_Callback;
        void*                 m_UserData;
    };             

    Event*              m_EventQueue; 
    unsigned int        m_MaxEvents;
    unsigned int        m_EventQueueHeadIndex;
    unsigned int        m_EventQueueTailIndex;
    unsigned int        m_EventsQueued;

    //
    // Under Windows we require a critical section to protect data structures.
    //
    #if defined ( RAD_WIN32 ) || defined( RAD_XBOX )
    
    CRITICAL_SECTION    m_CriticalSection;

    #endif

};

#endif