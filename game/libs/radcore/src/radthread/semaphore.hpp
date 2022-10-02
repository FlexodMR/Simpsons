//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        semaphore.hpp
//
// Subsystem:	Radical Threading Services - Semaphore
//
// Description:	This file contains all definitions and classes relevant to
//              the implementation of the radical threading services semaphore
//
// Revisions:	January 7, 2002  PGM    Creation
//
// Notes:       
//=============================================================================

#ifndef	SEMAPHORE_HPP
#define SEMAPHORE_HPP

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
// This class derives from the semaphore interface. It has platform specific 
// implementations.
//
class radThreadSemaphore : public IRadThreadSemaphore,
                           public radObject
{
    public:

    //
    // Constructor, destructor. Constructor gets initial semaphore count
    //
    radThreadSemaphore( unsigned int count );
    ~radThreadSemaphore( void );

    //
    // Members of the IRadThreadSemaphore
    //
    virtual void Wait( void );
    virtual void Signal( void );

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
    // Windows and XBOX this is implemented using the a semaphore
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    HANDLE    m_Semaphore;
#endif

    //
    // PS2 uses semaphore object
    //
#ifdef RAD_PS2
    int       m_Semaphore;        
#endif

    //
    // Gamecube uses their weird condition object and a mutex.
    //
#ifdef RAD_GAMECUBE
    OSCond          m_Condition;
    OSMutex         m_Mutex;
    int             m_Count;
#endif

};

#endif


