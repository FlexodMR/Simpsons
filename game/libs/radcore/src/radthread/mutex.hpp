//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        mutex.hpp
//
// Subsystem:	Radical Threading Services - Mutex 
//
// Description:	This file contains all definitions and classes relevant to
//              the implementation of the radical threading services mutex
//
// Revisions:	January 7, 2002  PGM    Creation
//
// Notes:       
//=============================================================================

#ifndef	MUTEX_HPP
#define MUTEX_HPP

//=============================================================================
// Include Files
//=============================================================================

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

#include <radobject.hpp>
#include <radmemory.hpp>
#include <radthread.hpp>

//=============================================================================
// Forward Class Declarations
//=============================================================================

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================

//
// This class derives from the mutex interface. It has platform specific 
// implementations.
//
class radThreadMutex : public IRadThreadMutex,
                       public radObject
{
    public:

    //
    // Constructor, destructor. Nothing interesting
    //
    radThreadMutex( void );
    ~radThreadMutex( void );

    //
    // Members of the IRadThreadMutex
    //
    virtual void Lock( void );
    virtual void Unlock( void );

    //
    // Members of IRefCount
    //
    virtual void AddRef( void );
    virtual void Release( void );

    //
    // Used for tracking active objects.
    //
    #ifdef RAD_DEBUG
    virtual void Dump( char* pStringBuffer, unsigned int bufferSize );
    #endif

    private:

    //
    // This member maintains the reference count of this object.
    //
    unsigned int m_ReferenceCount;    

    //
    // Windows and XBOX this is implemented using the critcal section primitive.
    //
    #if defined(RAD_WIN32) || defined(RAD_XBOX)
    CRITICAL_SECTION    m_CriticalSection;
    #endif

    //
    // PS2 we us a semaphore. We need to use extra members since the os primitive
    // does not allow same thread to own the critical section more than once.
    //
    #ifdef RAD_PS2
    
    int             m_Semaphore;        
    int             m_CurrentOwner;
    unsigned int    m_OwnedCount;

    #endif

    //
    // On the GameCube, we use the OS primitive. It does exactly what we want.
    //
    #ifdef RAD_GAMECUBE

    OSMutex         m_Mutex;

    #endif
};

#endif


