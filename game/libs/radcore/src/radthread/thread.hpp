//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        thread.hpp
//
// Subsystem:	Radical Threading Services - Threads amd Fibers
//
// Description:	This file contains all definitions and classes relevant to
//              the implementation of the radical threading and fiber services.
//
// Revisions:	January 7, 2002  PGM    Creation
//
// Notes:       
//=============================================================================

#ifndef	THREAD_HPP
#define THREAD_HPP

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

//
// This constant governs the maximum number of threads supported by this 
// system. It was choosen as a reasonable number. If exceeded, simply increase.
//
#define MAX_RADTHREADS     32

//
// This constant governs the maximum thread local storage objects that can
// be constructed. Rather arbritarily choosen.
//
#define MAX_THREADLOCALSTORAGE_OBJECTS  16


//=============================================================================
// Class Declarations
//=============================================================================

//
// Here we have the declaration of the Fiber object.
//
class radThreadFiber : public IRadThreadFiber,
                       public radObject
{
    public:

    //
    // Constructor and destructor. Need a default constructor for 
    // fibers created for when even thread created.
    //
    radThreadFiber( void );
    radThreadFiber( RADFIBERENTRY   pEntryFunction,
                    void*           userData,
                    unsigned int    stackSize );
    ~radThreadFiber( void );

    //
    // Members of IRadThreadFiber
    //
    virtual void SwitchTo( void );    
    virtual void* GetValue( void );
    virtual void  SetValue( void* value );

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
    // Need these for maintaining callers info.
    //
    RADFIBERENTRY   m_pEntryFunction;
    unsigned int    m_StackSize;
    
    //
    // Maintains the user value.
    //
    void*       m_Value;

    //
    // OS Specific stuff.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
public:
    LPVOID      m_Win32Fiber;
private:
    static void CALLBACK FiberEntry( void* param );
#endif

#ifdef RAD_GAMECUBE
    static void FiberEntry( void );
    static void GCNSwitchToFiber( unsigned int* OldSp, unsigned int* OldPc, 
                                  unsigned int NewSp, unsigned int NewPc );
    void*        m_Stack;
    unsigned int m_CurrentStackPointer;
    unsigned int m_CurrentProgramCounter;
#endif

#ifdef RAD_PS2
    static void FiberEntry( void );
    static void PS2SwitchToFiber( unsigned int* OldSp, unsigned int* OldPc, 
                                  unsigned int NewSp, unsigned int NewPc );
    void*        m_Stack;
    unsigned int m_CurrentStackPointer;
    unsigned int m_CurrentProgramCounter;
#endif

};

//
// This class derives from the thread interface. It has platform specific 
// implementations.
//
class radThread : public IRadThread,
                  public radObject
{
    public:

    //
    // Constructor, destructor. We need two constructors. On is used for
    // our thread that represents the main thread.
    //
    radThread( RADTHREADENTRY       pEntryFunction,
               void*                userData, 
               IRadThread::Priority priority, 
               unsigned int         stackSize );

    radThread( void );
    ~radThread( void );

    //
    // Members of the IRadThread
    //
    virtual void SetPriority( Priority priority );
    virtual Priority GetPriority( void );
    virtual void Suspend( void );
    virtual void Resume( void );
    virtual bool IsRunning( unsigned int* pReturnCode );
    virtual unsigned int WaitForTermination( void );

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

    //
    // Used to obtain the active thread.
    //
    static IRadThread* GetActiveThread( );

    //
    // Statics to initialize and terminate this system.
    // 
    static void Initialize( unsigned int milliseconds );
    static void Terminate( void );

    //
    // These statics are used by the thread local storage objects to set
    // and get the value. Management of indexs is done by the thread local
    // storage objects.
    //
    static void SetLocalStorage( unsigned int index, void* value );
    static void* GetLocalStorage( unsigned int index );
    static void SetDefaultLocalStorage ( unsigned int index );

    //
    // Static to obtain the active threads active fiber.
    //
    static IRadThreadFiber* GetActiveFiber( void );
        
    private:
    
    //
    // This help member function is invoked to determine if this
    // thread is the currently active thread.
    //
    bool IsActive( void );

    //
    // These statics are the actual thread OS specific entry points.
    // 
    #if defined(RAD_WIN32) || defined(RAD_XBOX)
        static DWORD WINAPI InternalThreadEntry( void* param );
    #endif 
    #ifdef RAD_PS2
        static void InternalThreadEntry( void* param );
    #endif
    #ifdef RAD_GAMECUBE
        static void* InternalThreadEntry( void* param );
    #endif
    
    //
    // This static is the alarm entry point used by the PS2 to cause
    // threads of equal priority to be rescheduled.
    //
    #ifdef RAD_PS2
        static void AlarmHandler( int id, unsigned short time, void* userData );
    #endif

    //
    // This member maintains the reference count of this object.
    //
    unsigned int m_ReferenceCount;

    //
    // This maintains a flag indicating that the thread is running
    // and the return code from the thread if it has termiated;
    //
    bool            m_IsRunning;
    unsigned int    m_ReturnCode;

    //
    // Require these so we can invoke callers routine from our own,
    //
    RADTHREADENTRY  m_EntryFunction;
    void*           m_UserData; 
    
    //
    // Current priority setting.
    //
    Priority        m_Priority;

    //
    // This static table is used to maintain a pointer to each thread
    // created by this system. The pointers are weak references.
    //
    static radThread* s_ThreadTable[ MAX_RADTHREADS ];

    //
    // Platform specific information used to manage the thread.
    //
    #if defined(RAD_WIN32) || defined(RAD_XBOX)
        DWORD           m_ThreadId;
        HANDLE          m_ThreadHandle;
        static int      s_PriorityMap[ PriorityHigh + 1 ];
    #endif

    #ifdef RAD_PS2
        int             m_ThreadId;
        static int      s_PriorityMap[ PriorityHigh + 1 ];
        void*           m_Stack;
        int             m_SuspendCount;
        bool            m_SuspendedSelf;
        static int      s_AlarmId;
    #endif

    #ifdef RAD_GAMECUBE
        OSThread*           m_ThreadId;
        OSThread            m_ThreadObject;
        static OSPriority   s_PriorityMap[ PriorityHigh + 1 ];
        void*               m_Stack;
    #endif

    //
    // Here we maintain the actual values used  by the thread local
    // storage objects. Management of which ones are used are done 
    // by the thread local storage objects.
    //
    void* m_ThreadLocalStorageValues[ MAX_THREADLOCALSTORAGE_OBJECTS ];

    //
    // Each thread created in the system is by default a fiber as well.
    // 
    radThreadFiber      m_Fiber;

    //
    // A thread can create new fibers. This member maintains the active
    // fiber for this thread object.
    //
protected:
    friend class radThreadFiber;

    IRadThreadFiber*    m_pActiveFiber;

};

//
// This class is the implementation of the thread local storage interface.
// This class works with the radThread object to manage thread local storage.
//
class radThreadLocalStorage : public IRadThreadLocalStorage,
                              public radObject
{
    public:

    //
    // Constructor and destructor. Very simple
    //
    radThreadLocalStorage( void );
    ~radThreadLocalStorage( void );

    //
    // Members of the IRadThreadLocalStorage
    //
    virtual void* GetValue( void );
    virtual void  SetValue( void* value );   

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
    // This the index used to set/get the thread value.
    //
    unsigned int m_Index;

    //
    // This static data structure is used to manage free thread
    // local storage indexes. The enrty is marked true if the
    // coresponding index is in use.
    //
    static bool s_InUseIndexTable[ MAX_THREADLOCALSTORAGE_OBJECTS ];
   
};


#endif


