//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        thread.cpp
//
// Subsystem:	Radical Threading Services - Thread and Fiber Implementation
//
// Description:	This file contains the implementation of the threading services
//              thread and fibers. It also contains the thread local storage
//              implementation.
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
    #define _WIN32_WINNT 0x400
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
#include "system.hpp"
#include "thread.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

//
// These static functions and data structure are used to perform the thread sleep
// functionality.
//
#ifdef RAD_PS2
    //
    // On the PS2, we can only create an alarm which runs for a maximum of 
    // 2.275 seconds. As such, we need to accumulate multiple alarm triggers
    // to achieve larger durations. This structure is used to hold the information
    // need to do this.
    //
    struct PS2SleepInfo
    {
        int             m_ThreadId;         // Thread to ultimately wake up.
        unsigned short  m_AlarmSetting;     // Value loaded into alarm;
        unsigned int    m_AlarmCount;       // Count that must be decremented before waking thread.
        int             m_AlarmId;          // Id of alarm.
    };         

    static void PS2SleepAlarm( int id, unsigned short time, PS2SleepInfo* pInfo );

#endif

#ifdef RAD_GAMECUBE
    //
    // On the GameCube, they screwed up with there alarm functions in that there
    // is no user data. Hence I have to perform a hack by enclosing their
    // alarm object in a container object and performing a cast.
    //
    struct GCNSleepInfo
    {
        OSAlarm         m_Alarm;            // Alarm. Not required, used to get to thread queue.
        OSThreadQueue   m_ThreadQueue;      // Thread is sleeping on this.
    };

    static void GCNSleepAlarm( OSAlarm *pAlarm, OSContext* pContext );   

    //
    // This thread object is used to perform round robin scheduling.
    //
    static void* RescheduleThreadEntry( void* param );
    static unsigned int  s_RescheduleSleepTime;
    static OSThread      s_RescheduleThread;
    static unsigned char s_RescheculeStack[ 4096 ];

#endif

//=============================================================================
// Statics
//=============================================================================

//
// This memory is used for the thread object that exists. We do not want to new
// up memory as this will require the memory system to be initialized.
// 
static unsigned int s_theThreadMemory[ ((sizeof( radThread)) / sizeof(unsigned int)) + 1 ];

//
// This table is used to manage pointers to currently created threads. Pointers
// are no reference counted.
//
radThread* radThread::s_ThreadTable[ MAX_RADTHREADS ];

//
// The following table are provided to map our priorities to OS specific 
// priorities.
//
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    int radThread::s_PriorityMap[ PriorityHigh + 1 ] =
        { THREAD_PRIORITY_IDLE, THREAD_PRIORITY_LOWEST, THREAD_PRIORITY_NORMAL, 
          THREAD_PRIORITY_HIGHEST, THREAD_PRIORITY_TIME_CRITICAL };
#endif 
#ifdef RAD_PS2
    int radThread::s_PriorityMap[ PriorityHigh + 1 ] = { 63, 47, 31, 15, 1 };
#endif
#ifdef RAD_GAMECUBE
    //  
    // Please not that priority 0 is reserved by our internal thread used to 
    // perform round robin scheduling.
    //
    OSPriority radThread::s_PriorityMap[ PriorityHigh + 1 ] = { 31, 23, 15, 7, 1 };
#endif

//
// On the PS2, we require additional stuff to manage round-robin scheduling.
// 
#ifdef RAD_PS2
    //
    // On the PS2, round robin scheduling occurs at 60Hz. May need to expose
    // this setting to callers if this is not adequate. The time is expressed
    // in HSYNCS
    //
    #define RADTHREAD_PS2_ROUNDROBINTIME 480            

    int radThread::s_AlarmId = -1;
#endif

//
// This static is used to manage free thread local storgage objects. The
// entry is set true if the index has been consumed. This table relies on 
// statics being initialized to zero (false) by the compiler.
//
bool radThreadLocalStorage::s_InUseIndexTable[ MAX_THREADLOCALSTORAGE_OBJECTS ];
 
//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    radThreadCreateThread
//=============================================================================
// Description: This is the factory for the thread object. 
//
// Parameters:  ppThread    -      where to return interface
//              pEntryFunction     thread entry
//              userdata
//              priority           
//              stack size         
//              memory allocator
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadCreateThread
( 
    IRadThread**            ppThread,
    RADTHREADENTRY          pEntryFunction,
    void*                   userData,   
    IRadThread::Priority    priority,   
    unsigned int            stackSize,  
    radMemoryAllocator      allocator
)
{
    *ppThread = new( allocator ) radThread( pEntryFunction, userData,
                                            priority, stackSize );
}

//=============================================================================
// Function:    radThreadGetActiveThread
//=============================================================================
// Description: This member will return the actively running thread.
//
// Parameters:  none
//              
// Returns:     Interace pointer to thread object
//
// Notes:
//------------------------------------------------------------------------------

IRadThread* radThreadGetActiveThread( void )
{
    return( radThread::GetActiveThread( ) );
}

//=============================================================================
// Function:    radThreadSleep
//=============================================================================
// Description: This function causes the calling thread to sleep for the 
//              specified duration. If zero is specified, the calling thread
//              just relinquishes its time slice.
//
// Parameters:  milliseconds
//              
// Returns:     N/A
//
// Notes:       Need platform specific implementation of this function.
//------------------------------------------------------------------------------

void radThreadSleep
( 
    unsigned int milliseconds
)
{
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    //
    // Windows is very easy. Just invoke the OS sleep call.
    // 
    Sleep( milliseconds );
#endif

#ifdef RAD_PS2
    //
    // On the PS2, check if the timeout is zero. If so, rotate threads of this 
    // priority.
    //
    if( milliseconds == 0 )
    {
        //
        // Get priority of calling thread and rotate threads of this priority.       
        //
        ThreadParam threadInfo;
        ReferThreadStatus( GetThreadId( ), &threadInfo );
        RotateThreadReadyQueue( threadInfo.currentPriority );
    }
    else
    {
        //
        // Here we need to create an alarm. The alarm is used to wakeup the thread.
        // Alarms use units of horizontal retraces, but though experimentation,
        // the value was determine to be 16000 ticks per second. We only have a short to work 
        // with. ie max duration of about 4.095 seconds. 
        //
        PS2SleepInfo Info;

        if( milliseconds < 4096 )
        {
            //
            // Here we create an alarm programmed in one shot. The alarm will issue a
            // wake-up on this thread. There are 16000 horizontal retraces per second
            //
            Info.m_AlarmCount = 1;          
            Info.m_AlarmSetting = milliseconds * (16000 / 1000);
        }
        else
        {
            //
            // Here we program the alarm to fire in tenths of seconds as this will be resonable
            // resolution for a value greater than 4.096 seconds. 
            //
            Info.m_AlarmCount = milliseconds / 100 ;
            Info.m_AlarmSetting = ( 100 * 16000 ) / 1000 ;
        }

        Info.m_ThreadId = GetThreadId( );
        Info.m_AlarmId = SetAlarm( Info.m_AlarmSetting, (void(*)(int,unsigned short,void*)) PS2SleepAlarm, &Info );           
    
        //
        // Sleep until the alarm wakes us up.
        //
        SleepThread( );

        //
        // Since sleep is a counted operation, make sure we did not wake up due a some 
        // other signal and leave the alarm running. This needs to be checked under
        // protection from interrupts as the alarm runs as an interrupt.
        //
        DI( );

        if( Info.m_AlarmId != -1 )
        {
            ReleaseAlarm( Info.m_AlarmId );
        }
        
        EI( );
    }


#endif        

#ifdef RAD_GAMECUBE
    //
    // The Game cube uses a technique similar to that of the PS2. We use
    // an alarm to wake us up.
    //
    if( milliseconds == 0 )
    {
        //
        // Just allow threads at this priority to run.
        //
        OSYieldThread( );
    }
    else
    {
        //
        // Create an alarm and thread queue to sleep on. The alarm wakes the
        // thread.
        //
        GCNSleepInfo SleepInfo;

        OSInitAlarm( );
    
        OSCreateAlarm( &SleepInfo.m_Alarm );
        OSInitThreadQueue( &SleepInfo.m_ThreadQueue );
    
        OSSetAlarm( &SleepInfo.m_Alarm, OSMillisecondsToTicks( milliseconds ), GCNSleepAlarm );

        //
        // Now sleep on the thread queue. Alarm will wake us up.
        //
        OSSleepThread( &SleepInfo.m_ThreadQueue );
    }
    
#endif

}

//=============================================================================
// Function:    PS2SleepAlarm
//=============================================================================
// Description: This function is invoked under interrupts by the Sony alarms.
//              It is used to create a sleep functionality. Its job is
//              to wake the sleeping thread after time has elapsed.
//
// Parameters:  id - id of alarm.
//              time - time of alarm setting.
//              pInfo - used data.
//              
// Returns:     N/A
//
//------------------------------------------------------------------------------

#ifdef RAD_PS2

void PS2SleepAlarm( int id, unsigned short time, PS2SleepInfo* pInfo )
{
    //
    // The Sony alarm has exired. Update the alarm count and check if
    // zero.
    //
    pInfo->m_AlarmCount--;

    if( pInfo->m_AlarmCount == 0 )
    {
        //
        // We are done. Indicate no alarm needs to be terminated and wake up
        // the thread.
        //
        pInfo->m_AlarmId = -1;

        iWakeupThread( pInfo->m_ThreadId );
    }
    else
    {
        //
        // Reset the alarm for another count.
        //
        pInfo->m_AlarmId = iSetAlarm( pInfo->m_AlarmSetting,
                                      (void(*)(int,unsigned short,void*)) PS2SleepAlarm,
                                      pInfo );
    }
}

#endif

//=============================================================================
// Function:    GCNSleepAlarm
//=============================================================================
// Description: This function is invoked by the game cube os after a specified
//              duration has expired. We wake up the thread.
//
// Parameters:  alarm
//              context - not used
//              
// Returns:     N/A
//
// Note:        We must perform a hack as the GameCube libs provide no used
//              data. We need to get the thread queue to wake up.
//
//------------------------------------------------------------------------------

#ifdef RAD_GAMECUBE

void GCNSleepAlarm( OSAlarm *pAlarm, OSContext* pContext )
{   
    (void) pContext;
    
    GCNSleepInfo* pSleepInfo = (GCNSleepInfo*) pAlarm;
    
    OSWakeupThread( &pSleepInfo->m_ThreadQueue );

}
#endif

//=============================================================================
// Function:    radThreadCreateLocalStorage
//=============================================================================
// Description: This is the factory for the thread local storage object. 
//              Just new up a thread local storage object.
//
// Parameters:  pThreadLocalStorage  -  where to return interface
//              memory allocator
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadCreateLocalStorage
( 
    IRadThreadLocalStorage** pThreadLocalStorage,
    radMemoryAllocator       allocator
)
{
    *pThreadLocalStorage = new( allocator ) radThreadLocalStorage( );
}

//=============================================================================
// Function:    radThreadCreateFiber
//=============================================================================
// Description: This is the factory for the fiber object. 
//              Just new up a fiber object.
//
// Parameters:  ppFiber - return interface
//              pEntryFunction - entry point of the fiber
//              userData - user data
//              stackSize
//              memoryAllocator
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThreadCreateFiber
( 
    IRadThreadFiber** ppFiber,
    RADFIBERENTRY     pEntryFunction,
    void*             userData,
    unsigned int      stackSize,
    radMemoryAllocator allocator
)
{
    *ppFiber = new( allocator ) radThreadFiber( pEntryFunction,
                                                userData,
                                                stackSize );
}

//=============================================================================
// Function:    radThreadGetActiveFiber
//=============================================================================
// Description: This member will return the actively running fiber.
//
// Parameters:  none
//              
// Returns:     Interace pointer to fiber object
//
// Notes:
//------------------------------------------------------------------------------

IRadThreadFiber* radThreadGetActiveFiber( void )
{
    return( radThread::GetActiveFiber( ) );
}

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// Function:    radThread::Initialize
//=============================================================================
// Description: This static member is used to initialize this system. Essentially
//              it clears the thread table and sets up an initial thread object
//              to represent the main thread.
//
// Parameters:  unsigned int milliseconds - round robin scheduling periond
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThread::Initialize( unsigned int milliseconds )
{
    //
    // First zero the thread table. Don't have to worry about thread protection
    // at this time, since no thread can be created until system is initialized.
    //
    for( unsigned int i = 0 ; i < MAX_RADTHREADS ; i++ )
    {
        s_ThreadTable[ i ] = NULL;   
    }

    //
    // Construct the default thread object. It is 
    // statically defined since we do not want to perform memory allocations 
    // as the memory system may require the threading system be initialized.
    // (chicken - egg problem ).
    //
    new( s_theThreadMemory ) radThread( );

    #if defined( RAD_WIN32 ) || defined( RAD_XBOX )
        //
        // On the windows and XBOX, there currently is no way to control round robin
        // scheduling.
        //
        (void) milliseconds;
        
    #endif

    #ifdef RAD_PS2

        //
        // On the PS2, we create an alarm (whichs runs as an interrupt) to rotate
        // threads of the same proirity. There is no built in round-robin of threads
        // of equal priority. 
        //
        if( milliseconds == 0 )
        {
            //
            // Set alarm id to -1 indicating no round robin scheduling.
            //
            s_AlarmId = -1;
        }
        else
        {
            //
            // Start an alarm to periodically reschule the threads. 
            // There are 16000 horizontal retraces per second
            //
            s_AlarmId = SetAlarm( milliseconds * 16, AlarmHandler, NULL );
        }

    #endif

    #ifdef RAD_GAMECUBE
    
        // 
        // On the game cube we need to do something more complex to get round
        // robin scheduling running. We must create a very high priority thread
        // that always sleeps for . We then use an alarm to wake it up. When is goes
        // back to sleep, the OS will reschedule other threads. This info was
        // obtain by directly taking to Nintendo as there stuff does not work
        // as advertized.
        //
        if( milliseconds == 0 )
        {
            s_RescheduleSleepTime = 0;
        }
        else
        {
            //
            // Use static data so no allocations occur.
            //
            s_RescheduleSleepTime = milliseconds;

            OSCreateThread( &s_RescheduleThread, RescheduleThreadEntry, NULL, 
                            (char*) s_RescheculeStack + sizeof( s_RescheculeStack ),
                             sizeof( s_RescheculeStack ), 0, 0 );

            OSResumeThread( &s_RescheduleThread );
        }

    #endif
}

//=============================================================================
// Function:    RescheduleThreadEntry
//=============================================================================
// Description: On the Gamecube, round robin scheduling of equal priority 
//              threads does not work as advertized. To get it to work
//              we create a high priority thread that sleeps. When in awakes,
//              lower priory threads are rescheduled when this thread goes
//              back to sleep.
//
// Parameters:  usedData - not used.
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

#ifdef RAD_GAMECUBE

void* RescheduleThreadEntry( void* param )
{
    while( true )
    {
        radThreadSleep( s_RescheduleSleepTime );
    }

    return( NULL );
}

#endif

//=============================================================================
// Function:    radThread::Terminate
//=============================================================================
// Description: This static member is used to shut down the thread stuff. 
//              Clean up 
//
// Parameters:  N/A
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void radThread::Terminate( void )
{
    //
    // On the PS2, release the alarm that is performing our round robin 
    // scheduling. Protect this operation as the alarm may expired while 
    // releasing it. This could cause a new one to be created.
    //
#ifdef RAD_PS2

    DI( );
    
    if( s_AlarmId != -1 )
    {
        ReleaseAlarm( s_AlarmId );
    }

    EI( );

#endif

#ifdef RAD_GAMECUBE

    if( s_RescheduleSleepTime != 0 )
    {
        //
        // Must cancel high priority thread which is causing round
        // robin scheduling.
        //
        OSCancelThread( &s_RescheduleThread );
    }

#endif

    //
    // Exlicitly destruct our thread object that represents the main thread.
    //
    ((radThread*)s_theThreadMemory)->~radThread( );

    //
    // Lets make sure all threads have been released. If not assert. 
    //
    for( unsigned int i = 0 ; i < MAX_RADTHREADS ; i++ )
    {
        rAssert( s_ThreadTable[ i ] == NULL );
    }
}

//=============================================================================
// Function:    radThread::AlarmHandler
//=============================================================================
// Description: On the PS2, this routine is invoked as an interrupt handler.
//              This routine goes rotates threads of each prioity this 
//              system supports. This stuff should be very fast (hopefully).
//
// Parameters:  alarm id, 
//              time
//              userdata
//              
// Returns:     N/A
//
//------------------------------------------------------------------------------

#ifdef RAD_PS2

void radThread::AlarmHandler( int id, unsigned short time, void* userData )
{
    (void) id; (void) time; (void) userData;

    //
    // For each prioirty we support, rotate threads of that proirity.
    //
    for( unsigned int i = 0 ; i < (sizeof( s_PriorityMap ) / sizeof( int ) ) ; i++ )
    {
        iRotateThreadReadyQueue( s_PriorityMap[ i ] );
    }

    //
    // Reset the alarm.
    //
    s_AlarmId = iSetAlarm( RADTHREAD_PS2_ROUNDROBINTIME, AlarmHandler, NULL );

}

#endif


//=============================================================================
// Function:    radThread::radThread
//=============================================================================
// Description: This is the default constructor for single thread used to 
//              represent the main thread. All we do is get the current thread 
//              id and add ourself the the active thread table.
//
// Parameters:  N/A
//              
// Returns:     N/A
//
// Notes:       We are reference counted but the object will never be deleted
//              using release.
//------------------------------------------------------------------------------

radThread::radThread( void )
    :
    m_ReferenceCount( 1 ),
    m_IsRunning( true ),
    m_pActiveFiber( &m_Fiber )
{
    radMemoryMonitorIdentifyAllocation( this, g_nameFTech, "radThread" );
    //
    // Using the various platform specific functions, get our current thread id.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    m_ThreadId = GetCurrentThreadId( );
    m_ThreadHandle = GetCurrentThread( );

    //
    // Under windows also initialize this thread as the initial fiber.
    //
    m_Fiber.m_Win32Fiber = ConvertThreadToFiber( NULL );

#endif

#ifdef RAD_PS2
    m_ThreadId = GetThreadId( );
    m_SuspendCount = 0;
#endif           

#ifdef RAD_GAMECUBE
    m_ThreadId = OSGetCurrentThread( );
#endif

    //
    // Add ourself as the first entry in the thread table. No protection
    // required as no other threads are running yet.
    //
    s_ThreadTable[ 0 ] = this;  

    //
    // Alter the thread proirity to ensure that things are running at the 
    // default proirity.
    //
    SetPriority( IRadThread::PriorityNormal );

    //
    // Set the default ThreadLocalStorage values to NULL
    //
    for ( unsigned int i = 0; i < MAX_THREADLOCALSTORAGE_OBJECTS; i++ )
    {
        m_ThreadLocalStorageValues[i] = NULL;
    }
}

//=============================================================================
// Function:    radThread::radThread
//=============================================================================
// Description: This is construct is used for threads created by the application.
//              Create thread using platform specific functions.
//
// Parameters:  pEntryFunction     thread entry
//              userdata
//              priority           
//              stack size         
//              
// Returns:     N/A
//
//------------------------------------------------------------------------------

radThread::radThread
(   
    RADTHREADENTRY          pEntryFunction,
    void*                   userData, 
    IRadThread::Priority    priority, 
    unsigned int            stackSize
)
    :
        m_ReferenceCount( 1 ),
        m_IsRunning( true ),
        m_EntryFunction( pEntryFunction ),
        m_UserData( userData ),
        m_pActiveFiber( &m_Fiber )
{
    //
    // Lets add ourself to the active thread table. Do so under protection 
    // since other threads may access this table.
    //   
    radThreadInternalLock( );   

    unsigned int i;
    for( i = 0 ; i < MAX_RADTHREADS ; i++ )
    {
        if( s_ThreadTable[ i ] == NULL )
        {
            s_ThreadTable[ i ] = this;
            break;
        }
   
    }   

    //
    // Make sure we did not exceed maximun number of threads.
    //
    rAssertMsg( i != MAX_RADTHREADS, "Too many threads created\n");

    //
    // Now create and start the thread using the OS specific implementation.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    //
    // Create thread suspended so we can set the priority. Then resume it once prioriry is set.
    //
    m_ThreadHandle = CreateThread( NULL, stackSize, InternalThreadEntry, this, CREATE_SUSPENDED, &m_ThreadId );
    
    SetPriority( priority );             
        
    ResumeThread( m_ThreadHandle );    

#endif

#ifdef RAD_PS2   

    //
    // Allocate memory for stack. Make sure aligned to 16. Also require addtion 16 bytes
    // for some strange Sony reason.
    //
    m_Stack = radMemoryAllocAligned( GetThisAllocator( ), stackSize + 16, 16 );

    ThreadParam threadParam;
    threadParam.attr = 0x02000000;                  
    threadParam.entry = InternalThreadEntry;
    threadParam.initPriority = s_PriorityMap[ priority ];
    threadParam.stack = m_Stack;
    threadParam.stackSize = stackSize; 
    threadParam.option = 0;
    threadParam.gpReg = &_gp;

    m_ThreadId = CreateThread( &threadParam );

    m_SuspendCount = 0;

    StartThread( m_ThreadId,  (void*) this );

#endif

#ifdef RAD_GAMECUBE
    //
    // Thread is initially created in a suspended state. Alter priority once then resume. 
    // Set up the thread id as GameCube uses a very strange method. Allocate memory for 
    // the stack.
    //      
    m_ThreadId = &m_ThreadObject;

    m_Stack = radMemoryAlloc( GetThisAllocator( ), stackSize );

    OSCreateThread( &m_ThreadObject, InternalThreadEntry, this, (char*) m_Stack + stackSize, stackSize, 15, 0 );

    SetPriority( priority );             

    OSResumeThread( m_ThreadId );

#endif

    //
    // Release our protection.
    //
    radThreadInternalUnlock( );

    //
    // Set the default ThreadLocalStorage values to NULL
    //
    for ( i = 0; i < MAX_THREADLOCALSTORAGE_OBJECTS; i++ )
    {
        m_ThreadLocalStorageValues[i] = NULL;
    }
}

//=============================================================================
// Function:    radThread::~radThread
//=============================================================================
// Description: This is the destructor for the mutex object. Simply free the
//              OS resources. If thread is running when we get here, we kill
//              it. This is harsh and should be avoided.
//
// Parameters:  none
//              
// Returns:     N/A
//
// Notes:       We need a special check for the main thread object. We do not
//              kill this one as it always runs.
//------------------------------------------------------------------------------

radThread::~radThread( void )
{
    //
    // No longer any active fibers.
    //
    m_pActiveFiber = NULL;

    //
    // Check if we are destructing the main thread object. This thread 
    // represents the main thread and was never created by this system.
    //
    if( s_ThreadTable[ 0 ] == this )
    {
        //
        // Just null the table entry and we are done.
        //
        s_ThreadTable[ 0 ] = NULL;
        return;
    }

    //
    // Protect the next series of operations.
    //
    radThreadInternalLock( );   

    //
    // First remove this thread from the active table.
    //
    unsigned int i;
    for( i = 0 ; i < MAX_RADTHREADS ; i++ )
    {
        if( s_ThreadTable[ i ] == this )
        {
            s_ThreadTable[ i ] = NULL;
            break;
        }
    }   
    rAssert( i != MAX_RADTHREADS );

    //
    // Here we must check if the thread is still running. This is the bad way
    // of killing a thread and should be avoided. However, we will try to deal with it.
    //
    if( m_IsRunning )
    {
        //
        // Here the thread is running. We will kill the thread. Need to deal with
        // special case where the thread we are killing is the actual running thread.
        //
        if( IsActive( ) )
        {
            //
            // Here we are killing ourself by releaseing the last reference.  This is
            // a very bad way of terminating the thread and will cause leaks.
            // Can release protection now.
            //
            radThreadInternalUnlock( );   

            //
            // We perform platform specific operations and commit suicide. Print
            // warning that memory leaks will may occur as we cannot release all
            // memory or call base class destructor.
            //
            rWarningMsg( false, "radThread: Memory leak has occurred due to bad thread termination\n");
   
#if defined(RAD_WIN32) || defined(RAD_XBOX)
            //
            // Under windows, things are not too bad. Close the thread handle. We will leak this
            // actual thread object memory.
            // 
            CloseHandle( m_ThreadHandle );

            ExitThread( 0 );
#endif

#ifdef RAD_PS2 
            //
            // Under PS2 we leak the memory associated with the stack as well since we cannot
            // free this memory.
            //
            ExitDeleteThread( );               
#endif

#ifdef GAMECUBE
            //
            // On Gamecube we also leak the stack memory.
            //
            OSExitThread( NULL );  
#endif 
        }
        else
        {
            //
            // Here we are killing a thread that is still running but the calling thread
            // is not the active thread. Perform OS specific terminations. Note on XBOX
            // this cannot be done. 
            //
#ifdef RAD_XBOX
            rAssertMsg( false, "On XBOX, thread cannot be terminated by another thread\n");
#endif

#ifdef RAD_WIN32
            TerminateThread( m_ThreadHandle, 0 );
            CloseHandle( m_ThreadHandle );
#endif

#ifdef RAD_PS2
            TerminateThread( m_ThreadId );
            DeleteThread( m_ThreadId );
            radMemoryFreeAligned( GetThisAllocator( ), m_Stack );
#endif

#ifdef RAD_GAMECUBE
            OSCancelThread( m_ThreadId );
            radMemoryFree( GetThisAllocator( ), m_Stack );
#endif
            
            //
            // Can release lock. Print warning that this is a bad way to terminate thread
            // as OS may not release all resources.
            //
            radThreadInternalUnlock( );   
                       
            rWarningMsg( false, "radThread: Termination of thread may leak resources.\n");
        }
    }
    else
    {
        //
        // Even though our internal flag indicates that the thread has terminated, we
        // want to make sure it has terminated from the OS perspective since we
        // will be freeing the stack in some cases.
        //
        radThreadInternalUnlock( );   

#if defined(RAD_WIN32) || defined(RAD_XBOX)
        WaitForSingleObject( m_ThreadHandle, INFINITE );            
        CloseHandle( m_ThreadHandle );
#endif

#ifdef RAD_PS2
        RotateThreadReadyQueue( s_PriorityMap[ m_Priority ] );
        DeleteThread( m_ThreadId );
        radMemoryFreeAligned( GetThisAllocator( ), m_Stack );
#endif

#ifdef RAD_GAMECUBE
        void* rcode;
        OSJoinThread( m_ThreadId, &rcode );
        radMemoryFree( GetThisAllocator( ), m_Stack );
#endif
    }
}

//=============================================================================
// Function:    radThread::InternalThreadEntry
//=============================================================================
// Description: This is the entry point for threads we create. Needed to 
//              make the users thread entry point platform independant.
//
// Parameters:  param - the thread object
//              
// Returns:     platform specific returns. Not used as we use our own 
//              mechanism.
//
// Notes:
//------------------------------------------------------------------------------

#if defined(RAD_WIN32) || defined(RAD_XBOX)
    DWORD WINAPI radThread::InternalThreadEntry( void* param )
#endif 
#ifdef RAD_PS2
    void radThread::InternalThreadEntry( void* param )
#endif
#ifdef RAD_GAMECUBE
    void* radThread::InternalThreadEntry( void* param )
#endif
{
    //
    // Simply invoke the true entry point. Save return code upon return
    // from callers function.   
    //
    radThread* pThread = (radThread*) param;

    //
    // Under windows, convert this thread to a fiber.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    pThread->m_Fiber.m_Win32Fiber = ConvertThreadToFiber( NULL );
#endif

    pThread->m_ReturnCode = (pThread->m_EntryFunction)(pThread->m_UserData );

    //
    // Here we consider the thread no longer running.
    //
    pThread->m_IsRunning = false;
   
    //
    // Each OS has different return conventions. We don't use this stuff 
    // so just return default values.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    return( 0 );
#endif 
#ifdef RAD_PS2
    // Nothing for the PS2
#endif
#ifdef RAD_GAMECUBE
    return( NULL );
#endif

}

//=============================================================================
// Function:    radThread::SetPriority
//=============================================================================
// Description: Updates the threads priority
//
// Parameters:  new priority
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThread::SetPriority( Priority priority )
{
    //
    // Save the priority as our current setting and invoke the various OS
    // serives to alter the priority.
    //
    m_Priority = priority;

#if defined(RAD_WIN32) || defined(RAD_XBOX)
    SetThreadPriority( m_ThreadHandle, s_PriorityMap[ priority ] );
#endif

#ifdef RAD_PS2
    int oldPriority = ChangeThreadPriority( m_ThreadId, s_PriorityMap[ priority ] );
    rAssert( oldPriority >= 0 );
#endif           

#ifdef RAD_GAMECUBE
    OSSetThreadPriority( m_ThreadId, s_PriorityMap[ priority ] );
#endif

}

//=============================================================================
// Function:    radThread::GetPriority
//=============================================================================
// Description: Retrieves current thread priority
//
// Parameters:  
//
// Returns:     priority
//
// Notes:
//------------------------------------------------------------------------------

IRadThread::Priority radThread::GetPriority( void )
{
    return( m_Priority );
}

//=============================================================================
// Function:    radThread::Suspend
//=============================================================================
// Description: Suspends this thread. This member is counted, and number of
//              resumes must equal number of suspends.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThread::Suspend( void )
{ 
    //
    // Just invoke OS specific implementation.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    SuspendThread( m_ThreadHandle );    
#endif

#ifdef RAD_PS2
    //
    // The PS2 implementation of this service is more complex due to Sony's 
    // crappy implmentaiton. Must do this stuff under protection. The reason
    // for this stuff is that a thread cannot issue suspend on itself. 
    //
    radThreadInternalLock( );   

    //
    // Update the suspension count ourself. Check if someone has tried to resume us already.
    //
    m_SuspendCount--;

    if( m_SuspendCount != -1 )
    {
        //
        // Just return. Release protection.
        //
        radThreadInternalUnlock( );   
    }
    else
    {
        //
        // Here we are going to suspend this thread. If the calling thread is this 
        // object, then use sleep.
        //
        if( m_ThreadId == GetThreadId( ) )
        {
            //
            // Indicate that we suspended ourself, so the resume call can use the
            // correct sony service.
            //
            m_SuspendedSelf = true;

            //
            // Release exclusion before sleeping.
            //
            radThreadInternalUnlock( );   

            SleepThread( );
        }
        else
        {
            //
            // Here we are suspending this thread object from another thread.
            // Indicate this and suspend the thread.
            //
            m_SuspendedSelf = false;

            SuspendThread( m_ThreadId );

            radThreadInternalUnlock( );   
        }
    }

#endif           

#ifdef RAD_GAMECUBE
    OSSuspendThread( m_ThreadId );
#endif    

}

//=============================================================================
// Function:    radThread::Resume
//=============================================================================
// Description: Resume this thread. This member is counted, and number of
//              resumes must equal number of suspends.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThread::Resume( void )
{ 
    //
    // Just invoke OS specific implementation.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    ResumeThread( m_ThreadHandle );    
#endif

#ifdef RAD_PS2
    //
    // The PS2 implementation of this service is more complex due to Sony's 
    // crappy implmentaiton. Must do this stuff under protection. The reason
    // for this stuff is that a thread cannot issue suspend on itself. 
    //
    radThreadInternalLock( );   

    //
    // Update the suspension count ourself. Check if we need to resume a thread.
    //
    m_SuspendCount++;

    if( m_SuspendCount == 0 )
    {
        //
        // Here we need to resume the thread. Determine how it was suspended and
        // use the appropriate sony call.
        //
        if( m_SuspendedSelf )
        {
            //
            // Here the thread suspended itself by sleeping. Issue the wake up
            // call on this thread.
            //
            WakeupThread( m_ThreadId );
        }
        else
        {
            //  
            // Use resume as thread was suspended by another thread.
            //
            ResumeThread( m_ThreadId );
        }
    }
   
    radThreadInternalUnlock( );   

#endif           

#ifdef RAD_GAMECUBE
    OSResumeThread( m_ThreadId );
#endif    

}

//=============================================================================
// Function:    radThread::IsRunning
//=============================================================================
// Description: Use to check if a thread has terminated. 
//
// Parameters:  Address of where to receive the thread return code. Only
//              valid if thread has terminated.
//
// Returns:     true, thread running. false terminate.
//
// Notes:
//------------------------------------------------------------------------------

bool radThread::IsRunning
( 
    unsigned int* pReturnCode
)
{
    //
    // Check if running. If not return the return code. Care must be taken
    // here as these variables can be altered by the actual thread.
    //
    if( m_IsRunning )
    {
        return( true );
    }

    //
    // Terminated. Return code is valid.
    //
    *pReturnCode = m_ReturnCode;
    
    return( false );
}

//=============================================================================
// Function:    radThread::WaitForTermination
//=============================================================================
// Description: Use to wait until a thread has terminated.
//
// Parameters:  
//
// Returns:     Return value of the entry point
//
// Notes:       Just using a semaphore in the thread entry is not good enough
//              since the entry point might not return right away.
//------------------------------------------------------------------------------

unsigned int radThread::WaitForTermination( void )
{
    //
    // Some day we should make this semaphore-like, not polling
    //
    unsigned int ret = 0;
    while ( IsRunning( &ret ) )
    {
        radThreadSleep( 0 );
    }

    return ret;
}

//=============================================================================
// Function:    radThread::IsActive
//=============================================================================
// Description: This internal helper function is used to determine if the
//              thread object is currently the running thread.
//
// Parameters:  n/a
//
// Returns:     true if thread is the active one.
//
// Notes:
//------------------------------------------------------------------------------

bool radThread::IsActive( void )
{
    //
    // Perform platform specific checks.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    return( m_ThreadId == GetCurrentThreadId( ) );
#endif

#ifdef RAD_PS2
    return( m_ThreadId == GetThreadId( ) );
#endif           

#ifdef RAD_GAMECUBE
    return( m_ThreadId == OSGetCurrentThread( ) );
#endif

}

//=============================================================================
// Function:    radThread::GetActiveThread
//=============================================================================
// Description: This static function is invoked to get the running thread object.
//              We need it to translate OS specific thread ids to our thread
//              object.
//
// Parameters:  n/a
//
// Returns:     IRadThread* - actively running thread.
//
// Notes:
//------------------------------------------------------------------------------

IRadThread* radThread::GetActiveThread( void )
{
    unsigned int i;

    //
    // Tranverse the thread table asking each thread if it is the active.
    // Need protection because threads may terminate and we don't want
    // to vector into outerspace. This will not happen for the active thread
    // as this is who is calling this function.
    //
    radThreadInternalLock( );   
   
    for( i = 0 ; i < MAX_RADTHREADS ; i++ )
    {
        if( s_ThreadTable[ i ] != NULL )
        {
            if( s_ThreadTable[ i ]->IsActive( ) )
            {
                break;
            }
        }
    }
    
    radThreadInternalUnlock( );   
                                                
    //
    // Make sure not some logic problem if we failed to find a the active.
    //
    if( MAX_RADTHREADS == i )
    {
        return( NULL );
    }

    return( s_ThreadTable[ i ] );
}

//=============================================================================
// Function:    radThread::SetLocalStorage
//=============================================================================
// Description: This static function is used to set local storage. Indexs
//              are managed by the thread local storage object.
//
// Parameters:  index 
//              value
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void radThread::SetLocalStorage
(
     unsigned int index,
     void* value
)
{
     //
     // Get the actively running thread. Set the value
     //
     radThread* thread = (radThread*) GetActiveThread( );

     if( thread != NULL)
     {
         thread->m_ThreadLocalStorageValues[ index ] = value;
     }
}

//=============================================================================
// Function:    radThread::GetLocalStorage
//=============================================================================
// Description: This static function is used to get local storage. Indexs
//              are managed by the thread local storage object.
//
// Parameters:  index 
//
// Returns:     value
//
// Notes:
//------------------------------------------------------------------------------

void* radThread::GetLocalStorage
(
     unsigned int index
)
{
     //
     // Get the actively running thread. Return the value
     //
     radThread* thread = (radThread*) GetActiveThread( );
     if( thread != NULL )
     {
         return( thread->m_ThreadLocalStorageValues[ index ] );
     }
     return( NULL );
}


//=============================================================================
// Function:    radThread::SetDefaultLocalStorage
//=============================================================================
// Description: This static function is used to reset the local storage object
//              of all threads back to NULL. Indices are managed by the thread
//              local storage object.
//
// Parameters:  index 
//
// Returns:
//
// Notes:
//------------------------------------------------------------------------------

void radThread::SetDefaultLocalStorage 
( 
    unsigned int index 
)
{    //
    // Need protection in case a thread wants to terminate. Traverse all threads
    // and set the TLS back to NULL.
    //
    radThreadInternalLock( );   
   
    for ( unsigned int i = 0 ; i < MAX_RADTHREADS ; i++ )
    {
        if ( s_ThreadTable[ i ] != NULL )
        {
            ( s_ThreadTable[ i ] )->m_ThreadLocalStorageValues[ index ] = NULL;
        }
    }
    
    radThreadInternalUnlock( );
}

//=============================================================================
// Function:    radThread::GetActiveFiber
//=============================================================================
// Description: This static function is used to get the active threads, active
//              fiber.
//
// Parameters:  n/a
//
// Returns:     IRadThreadFiber;    
//
// Notes:
//------------------------------------------------------------------------------

IRadThreadFiber* radThread::GetActiveFiber( void )
{
    //
    // Get the actively running threads active fiber. We need to check for
    // null because during shutdown, we may not have an active thread.
    //
    radThread* pThread = (radThread*) GetActiveThread( );

    if( pThread == NULL )
    {
        return( NULL );
    }

    return( pThread->m_pActiveFiber );
}

//=============================================================================
// Function:    radThread::AddRef
//=============================================================================
// Description: Reference Management.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThread::AddRef
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
// Function:    radThread::Release
//=============================================================================
// Description: Reference Management.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThread::Release
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
// Function:    radThread::Dump
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

void radThread::Dump( char* pStringBuffer, unsigned int bufferSize )
{
    sprintf( pStringBuffer, "Object: [radThread] At Memory Location:[0x%x]\n", (unsigned int) this );
}

#endif

//=============================================================================
// Function:    radThreadLocalStorage::radThreadLocalStorage
//=============================================================================
// Description: Constructor for thread local storage. Find a free index under
//              the protection of the mutex. 
//
// Parameters:  N/A
//              
// Returns:     N/A
//
//------------------------------------------------------------------------------

radThreadLocalStorage::radThreadLocalStorage( void )
    :
    m_ReferenceCount( 1 )
{
    radMemoryMonitorIdentifyAllocation( this, g_nameFTech, "radThreadLocalStorage" );
    //
    // Protect the search for a free index.
    //
    radThreadInternalLock( );

    for( m_Index = 0 ; m_Index < MAX_THREADLOCALSTORAGE_OBJECTS ; m_Index++ )
    {
        if( !s_InUseIndexTable[ m_Index ] )
        {
            //
            // We have one. Set it in use and break out.
            //
            s_InUseIndexTable[ m_Index ] = true;
            break;
        }
    }

    radThreadInternalUnlock( );

    //
    // Assert if limit exceeded.
    //
    rAssertMsg( m_Index != MAX_THREADLOCALSTORAGE_OBJECTS, "Too many thread local storage objects created\n");

    //
    // NOTE: we don't need to set a default value here since radThread initializes
    // its values to NULL and our destructor sets the values back to NULL again.
    //
}


//=============================================================================
// Function:    radThreadLocalStorage::~radThreadLocalStorage
//=============================================================================
// Description: Destructor. Just free the local storage index and return the
//              unused entry to NULL.
//
// Parameters:  none
//              
// Returns:     N/A
//
//------------------------------------------------------------------------------

radThreadLocalStorage::~radThreadLocalStorage( void )
{
    radThread::SetDefaultLocalStorage ( m_Index );

    //
    // Don't need to protect as assignments are automic operations.
    //
    s_InUseIndexTable[ m_Index ] = false;
}

//=============================================================================
// Function:    radThreadLocalStorage::GetValue
//=============================================================================
// Description: This is used to obtain the value. The value will be unique to
//              each thread accessing this object.
//
// Parameters:  n/a
//
// Returns:     value
//
// Notes:
//------------------------------------------------------------------------------

void* radThreadLocalStorage::GetValue( void )
{
    return( radThread::GetLocalStorage( m_Index ) );   
}

//=============================================================================
// Function:    radThreadLocalStorage::SetValue
//=============================================================================
// Description: This is used to set the value of this object. Each thread has
//              a unique value for this object.
//
// Parameters:  value
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThreadLocalStorage::SetValue
( 
    void* value
)
{

    radThread::SetLocalStorage( m_Index, value );   
}

//=============================================================================
// Function:    radThreadLocalStorage::AddRef
//=============================================================================
// Description: Reference Management.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThreadLocalStorage::AddRef
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
// Function:    radThreadLocalStorage::Release
//=============================================================================
// Description: Reference Management.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThreadLocalStorage::Release
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
// Function:    radThreadLocalStorage::Dump
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

void radThreadLocalStorage::Dump( char* pStringBuffer, unsigned int bufferSize )
{
    sprintf( pStringBuffer, "Object: [radThreadLocalStorage] At Memory Location:[0x%x]\n", (unsigned int) this );
}

#endif

//=============================================================================
// Function:    radThreadFiber::radThreadFiber
//=============================================================================
// Description: Default constructor is invoked when a thread is created. Each
//              thread is a fiber by default.
//
// Parameters:  N/A
//              
// Returns:     N/A
//
//------------------------------------------------------------------------------

radThreadFiber::radThreadFiber( void )
    :
    m_ReferenceCount( 1 ),
    m_StackSize( 0 )
{
    radMemoryMonitorIdentifyAllocation( this, g_nameFTech, "radThreadFiber" );
}

//=============================================================================
// Function:    radThreadFiber::radThreadFiber
//=============================================================================
// Description: Constructor for new fiber objects created by a client.
//
// Parameters:  N/A
//              
// Returns:     N/A
//
//------------------------------------------------------------------------------

radThreadFiber::radThreadFiber
( 
    RADFIBERENTRY   pEntryFunction,
    void*           userData,
    unsigned int    stackSize
)
    :
    m_ReferenceCount( 1 ),
    m_pEntryFunction( pEntryFunction ),
    m_StackSize( stackSize ),
    m_Value( userData )
{
    radMemoryMonitorIdentifyAllocation( this, g_nameFTech, "radThreadFiber" );
    rAssert( stackSize != 0 );   

#if defined(RAD_WIN32) || defined(RAD_XBOX)

    m_Win32Fiber = CreateFiber( stackSize, FiberEntry, this );

#endif

#ifdef RAD_PS2

    //
    // One the ps2ee, allocate a stack and set up the entry 
    // point for this fiber.
    //
    m_Stack = radMemoryAllocAligned( GetThisAllocator( ), stackSize + 16, 16 );

    m_CurrentStackPointer = (unsigned int) ((char*) m_Stack + stackSize );
    m_CurrentProgramCounter = (unsigned int) FiberEntry;

#endif

#ifdef RAD_GAMECUBE

    //
    // One the gamecube, allocate a stack and set up the entry 
    // point for this fiber.
    //
    m_Stack = radMemoryAllocAligned( GetThisAllocator( ), stackSize + 16, 16 );

    m_CurrentStackPointer = (unsigned int) ((char*) m_Stack + stackSize );
    m_CurrentProgramCounter = (unsigned int) FiberEntry;

#endif

}

//=============================================================================
// Function:    radThreadFiber::~radThreadFiber
//=============================================================================
// Description: Invoke to destroy a fiber. Cannot be the active fiber.
//
// Parameters:  none
//              
// Returns:     N/A
//
//------------------------------------------------------------------------------

radThreadFiber::~radThreadFiber( void )
{
    rAssertMsg( radThreadGetActiveFiber( ) != this, "Cannot destroy active fiber" );
    
    //
    // If the stack size is zero, it indicates this is the object contained
    // be the parent thread. No need to cleau up.
    //
    if( m_StackSize != 0 )
    {
#if defined(RAD_WIN32) || defined(RAD_XBOX)
        //
        // Under windows, delete the fiber.
        //
        DeleteFiber( m_Win32Fiber );
#endif    

#ifdef RAD_PS2
        radMemoryFreeAligned( GetThisAllocator( ), m_Stack );
#endif

#ifdef RAD_GAMECUBE
        radMemoryFreeAligned( GetThisAllocator( ), m_Stack );
#endif

    }
}

//=============================================================================
// Function:    radThreadFiber::SwitchTo
//=============================================================================
// Description: Member function to switch this fiber.
//
// Parameters:  
//
// Returns:     n/a
//
// Notes:       It is illegal to switch to the actively running fiber. 
//------------------------------------------------------------------------------

void radThreadFiber::SwitchTo( void )
{
    //
    // Verify not the actively running fiber.
    //
    rAssertMsg( radThreadGetActiveFiber( ) != this, "Cannot switch to active fiber" );

    //
    // Perform OS specific switch.
    //
#if defined(RAD_WIN32) || defined(RAD_XBOX)
    
    // 
    // Set this fiber as the calling threads active fiber and switch,
    //
    ((radThread*) radThread::GetActiveThread( ))->m_pActiveFiber = this;

    SwitchToFiber( m_Win32Fiber );        

#endif

#ifdef RAD_PS2

    //
    // Get the active fiber. Sets its program counter and stack to where we 
    // are. Then switch to new one.
    //
    radThreadFiber* oldFiber = (radThreadFiber*) radThreadGetActiveFiber( );
    ((radThread*) radThread::GetActiveThread( ))->m_pActiveFiber = this;

    PS2SwitchToFiber( &(oldFiber->m_CurrentStackPointer), &(oldFiber->m_CurrentProgramCounter),
                      m_CurrentStackPointer, m_CurrentProgramCounter );

#endif


#ifdef RAD_GAMECUBE

    //
    // Get the active fiber. Sets its program counter and stack to where we 
    // are. Then switch to need one.
    //
    radThreadFiber* oldFiber = (radThreadFiber*) radThreadGetActiveFiber( );
    ((radThread*) radThread::GetActiveThread( ))->m_pActiveFiber = this;

    GCNSwitchToFiber( &(oldFiber->m_CurrentStackPointer), &(oldFiber->m_CurrentProgramCounter),
                      m_CurrentStackPointer, m_CurrentProgramCounter );
   
#endif

}

//=============================================================================
// Function:    radThreadFiber::GetValue
//=============================================================================
// Description: Just a helper function whereby client can associate a value
//              with the fiber.
//
// Parameters:  n/a
//
// Returns:     value
//
// Notes:
//------------------------------------------------------------------------------

void* radThreadFiber::GetValue( void )
{
    return( m_Value );   
}

//=============================================================================
// Function:    radThreadFiber::SetValue
//=============================================================================
// Description: Just a helper function whereby client can associate a value
//              with the fiber.
//
// Parameters:  value
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThreadFiber::SetValue
( 
    void* value
)
{
    m_Value = value;
}

//=============================================================================
// Function:    radThreadFiber::AddRef
//=============================================================================
// Description: Reference Management.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:       Fiber objects should not be accessed by more than one thread,
//              hence no need for protection.
//------------------------------------------------------------------------------

void radThreadFiber::AddRef
(
	void
)
{
	m_ReferenceCount++;
}

//=============================================================================
// Function:    radThreadFiber::Release
//=============================================================================
// Description: Reference Management.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radThreadFiber::Release
(
	void
)
{
	m_ReferenceCount--;

	if ( m_ReferenceCount == 0 )
	{
		delete this;
	}
}

//=============================================================================
// Function:    radThreadFiber::Dump
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

void radThreadFiber::Dump( char* pStringBuffer, unsigned int bufferSize )
{
    sprintf( pStringBuffer, "Object: [radThreadFiber] At Memory Location:[0x%x]\n", (unsigned int) this );
}

#endif

//=============================================================================
// Function:    radThreadFiber::FiberEntry
//=============================================================================
// Description: This member is our internal entry point. We use it to 
//              normalize fiber entry
//
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

#if defined(RAD_WIN32) || defined(RAD_XBOX)
void CALLBACK radThreadFiber::FiberEntry( void* param )
{
    (void) param;
#endif
#ifdef RAD_GAMECUBE
void radThreadFiber::FiberEntry( void )
{
#endif
#ifdef RAD_PS2
void radThreadFiber::FiberEntry( void )
{
#endif
    //
    // Get the active thread and invoke callers function with user data.
    //
    radThreadFiber* pFiber = (radThreadFiber*) radThreadGetActiveFiber( );

    (pFiber->m_pEntryFunction)( pFiber->m_Value );

    //
    // If we ever get here things are screwed up.
    //
    rAssertMsg( false, "Fibers are not allowed to return\n");

}

//=============================================================================
// Function:    radThreadFiber::PS2SwitchToFiber
//=============================================================================
// Description: This static is used on the PS2 to switch fibers.
//
// Parameters:  Where to copy old SP and old PC
//              new values for SP and PC
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

#ifdef RAD_PS2

#ifndef RAD_MW

void radThreadFiber::PS2SwitchToFiber( unsigned int* oldSp, unsigned int* oldPc, unsigned int newSp, unsigned int newPc )
{
    asm( "addiu $29, 0xfff8" );         // Make room on stack to store frame pointer and return address
    asm( "sw $31, 0($29)" );            // Save return address on stack
    asm( "sw $30, 4($29)" );            // Save frame pointer on stack
    asm( "sw $29, 0($4 )" );            // Save the current stack pointer to *oldSp 
    asm( "la $8, returnpoint" );        // Load return address in temp register
    asm( "sw $8, 0($5)" );              // Save temp register into *oldPc
    asm( "add $29,$6,$0" );             // Set the stack pointer to newSP
    asm( "jr $7 " );                    // Set PC to newCP

    asm( "returnpoint: nop" );          // Were we return to
    asm( "lw $30,4($29)" );             // Restore frame pointer
    asm( "lw $31,0($29)" );             // Restore return address
    asm( "addiu $29, 0x8" );            // Balance stack
}

#else

//
// Metrowerks verions is a little different    
//
asm void radThreadFiber::PS2SwitchToFiber( unsigned int* oldSp, unsigned int* oldPc, unsigned int newSp, unsigned int newPc )
{
    addiu $29, -8           // Make room on stack to store frame pointer and return address
    sw $31, 0($29)              // Save return address on stack
    sw $30, 4($29)              // Save frame pointer on stack
    sw $29, 0($4 )              // Save the current stack pointer to *oldSp 
    
    jal next                    // load retrun address to point to next
    nop
next:
    add $8,$31, 16              // Temp now has the address of return point 
    sw $8, 0($5)                // Save temp register into *oldPc
    add $29,$6,$0               // Set the stack pointer to newSP
    jr $7                       // Set PC to newCP

    returnpoint: nop            // Were we return to
    lw $30,4($29)               // Restore frame pointer
    lw $31,0($29)               // Restore return address
    addiu $29, 0x8              // Balance stack
    jr  $31
    nop
}

#endif

#endif


//=============================================================================
// Function:    radThreadFiber::GCNSwitchToFiber
//=============================================================================
// Description: This static is used on the GameCube to switch fibers.
//
// Parameters:  Where to copy old SP and old PC
//              new values for SP and PC
//
// Returns:     n/a
//
// Notes:       Static function, no this pointer
//------------------------------------------------------------------------------

#ifdef RAD_GAMECUBE

asm void radThreadFiber::GCNSwitchToFiber( unsigned int* oldSp, unsigned int* oldPc, unsigned int newSp, unsigned int newPc )
{
    nofralloc

    mflr    r7          // save link reg ( return address ) in temp reg r7
    stwu    r1,-8(r1)   // make space on stack and save sp
    stw     r7,4(r1)    // store link register
    stw     r1,0(r3)    // save sp in oldSp
    bl      next        // load the link register with the address of next.    
next:
    mflr    r7          // Save link register in temporary register
    addi    r7,r7,6 * 4 // Add 6 instruction to the temp register pointing us to the return point
    stw     r7, 0(r4)   // save this as oldPc
    mr      r1, r5      // load newSp into stack pointer
    mtlr    r6          // load newPc into link register
    blr                 // branch to link register
returnpoint:
    lwz     r7, 4(r1)   // get return address    
    mtlr    r7          // move into link register
    addi    r1, r1, 8   // balance stack
    blr                 // return
}

#endif



















