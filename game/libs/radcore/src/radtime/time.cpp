//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        time.cpp
//
// Subsystem:	Foundation Technologies - Timer
//
// Description:	This file contains the implementation of the Foundation 
//              Technologies timer. This module provides services for generating
//              time based events.
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
#include <eeregs.h>
#include <libcdvd.h>
#include <libscf.h>
#endif

#ifdef RAD_GAMECUBE
#include <dolphin/os.h>
#include <dolphin.h>
#endif // RAD_GAMECUBE

#include <radtime.hpp>
#include <radobject.hpp>
#include <radmemory.hpp>
#include <radmemorymonitor.hpp>
#include "time.hpp"

//=============================================================================
// Local Defintions
//=============================================================================

//=============================================================================
// Static Data Definitions
//=============================================================================

//
// This maintains a count of the number of times initialize invoked.
//
static unsigned int s_InitializedCount = 0;

//
// The total number of days of the year which passed on the start of a month. This is
// for a non-leap-year. Element 0 is January.
//
static unsigned int MonthToDay[] = { 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334 };

//
// Under windows, maintain frequency of high performance counter.
//
#if defined ( RAD_WIN32 ) || defined ( RAD_XBOX )
static __int64  s_Win32CountsPerSecond = 0;
#endif

//
// Under PS2, maintain free running counters ourself.
//

#ifdef RAD_PS2
static volatile unsigned long s_Milliseconds;
static unsigned long s_MilliCount;   // This stays between 0 and 1000
static unsigned long s_Seconds;
static int           s_HandlerId;
#endif

// 
// Under RAD_GAMECUBE, retreives time base registers from clcok
#ifdef RAD_GAMECUBE
static unsigned int s_Microseconds;
static unsigned int s_Milliseconds;
static unsigned int s_Seconds;
#endif

//=============================================================================
// Local Function Prototypes
//=============================================================================

#ifdef RAD_PS2
static int PS2_TimerIsr( int cause );
static unsigned long PS2_Microseconds( void );
static unsigned char PS2BCDtoBin( unsigned char bcd );
#endif

#if defined ( RAD_WIN32 ) || defined ( RAD_XBOX )
static void QueryPerformanceCounterFix( LARGE_INTEGER* count );
#endif

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    radTimeInitialize
//=============================================================================
// Description: Invoke this member prior to using any other timer service.
//
// Parameters:  n/a
//
// Returns:     n/a
//
//------------------------------------------------------------------------------

void radTimeInitialize(  )
{
    //
    // Update initialize count. If first time, set up platform stuff.
    //
    s_InitializedCount++;

    if( s_InitializedCount == 1 )
    {
        //
        // Under WIN32, query the performance counter to get the frequency of the
        // high resolution timer.
        //
        #if defined ( RAD_WIN32 ) || defined ( RAD_XBOX )
        //
        // Get the frequency of the high performance counter.
        //
        LARGE_INTEGER   frequency;
        QueryPerformanceFrequency( &frequency );
        s_Win32CountsPerSecond = frequency.QuadPart;
        
        #endif

        //
        // On the PS2, we install an interrupt handler to maintain a count of 
        // milliseconds.
        //
        #ifdef RAD_PS2

        s_Milliseconds = 0;
        s_MilliCount = 0;
        s_Seconds = 0;

        //
        // Grab a timer 0 interrupt.
        //
        s_HandlerId = AddIntcHandler( INTC_TIM0, PS2_TimerIsr, -1 );
        
        //
        // Set up the timer 0 to fire every millisecond. Count is based on a 294.912 Mhz clock divided by 2
        // divided by 16.
        //
        DPUT_T0_COMP( 9216 );               // Set the compare to 1ms 
        DPUT_T0_MODE( 0x05C1 );             // Start timer, divide by 16, auto reset,

        //
        // Enable the timer interrupt.
        //
        EnableIntc( INTC_TIM0 );

        #endif 

		//
		// On the RAD_GAMECUBE, we get the timer from OS_TIMER_CLOCK
		//
		#ifdef RAD_GAMECUBE
			s_Microseconds = 0;
			s_Milliseconds = 0;
			s_Seconds = 0;
		#endif // RAD_GAMECUBE
    }
}

//=============================================================================
// Function:    radTimeTermimate
//=============================================================================
// Description: Invoke this member when done with timer system.
//
// Parameters:  n/a
//
// Returns:     n/a
//
//------------------------------------------------------------------------------

void radTimeTerminate(  )
{
    rAssert( s_InitializedCount != 0 );

    //
    // Update initialize count. 
    //
    s_InitializedCount--;

    if( s_InitializedCount == 0 )
    {
        //
        // Under RAD_PS2, free the timer interrupt.
        //
        #ifdef RAD_PS2

        DisableIntc( INTC_TIM0 );
        DPUT_T0_MODE( 0 );            
        RemoveIntcHandler( INTC_TIM0, s_HandlerId );
    
        #endif
    }
}

//=============================================================================
// Function:    radTimeGetMicroseconds
//=============================================================================
// Description: Invoke this member to obtain free running counter.
//
// Parameters:  n/a
//
// Returns:     time in microseconds
//
//------------------------------------------------------------------------------

unsigned int radTimeGetMicroseconds( void )
{
    rAssert( s_InitializedCount != 0 );

    //
    // Under windows we use the high performance counter.
    //
    #if defined ( RAD_WIN32 ) || defined ( RAD_XBOX )
    LARGE_INTEGER   PerformanceCount;
    QueryPerformanceCounterFix( &PerformanceCount );

    return( (unsigned int) (( PerformanceCount.QuadPart * 1000000) / s_Win32CountsPerSecond) );
    #endif

    #ifdef RAD_PS2

    //
    // Invoke helper function to obtain value of microseond calculation. 
    //
    return( (unsigned int) PS2_Microseconds( ) );
   	
    #endif

	//
	// On the RAD_GAMECUBE, return value of timer in seconds
	//
	#ifdef RAD_GAMECUBE

		//
		// Retrieves 32-bit value of lower of time base register
		//
		OSTime time = OSGetTime();

		//
		// Converts ticks to microseconds
		//
		s_Microseconds = OSTicksToMicroseconds(time);
		
		return (s_Microseconds);
	
	#endif // RAD_GAMECUBE
}


//=============================================================================
// Function:    radTimeGetMicroseconds64
//=============================================================================
// Description: Invoke this member to obtain Micro Second in 64 bits.
//
// Parameters:  n/a
//
// Returns:     time in microseconds
//
//------------------------------------------------------------------------------

radTime64 radTimeGetMicroseconds64( void )
{
    rAssert( s_InitializedCount != 0 );

    //
    // Under windows we use the high performance counter.
    //
    #if defined ( RAD_WIN32 ) || defined ( RAD_XBOX )
    LARGE_INTEGER   PerformanceCount;
    QueryPerformanceCounterFix( &PerformanceCount );

    return( (unsigned __int64) (( ((unsigned __int64)PerformanceCount.QuadPart)) / (s_Win32CountsPerSecond / 1000000)));
    #endif

    #ifdef RAD_PS2

    //
    // Invoke helper function to obtain value of microseond calculation. 
    //
    return( PS2_Microseconds( ) );
	
    #endif

	//
	// On the RAD_GAMECUBE, return value of timer in seconds
	//
    #ifdef RAD_GAMECUBE

		//
		// Retrieves 64-bit value of lower of time base register
		//
		OSTime time = OSGetTime();

		//
		// Converts ticks to microseconds
		//
		return( OSTicksToMicroseconds(time) );
	
    #endif // RAD_GAMECUBE
}


//=============================================================================
// Function:    radTimeGetMilliseconds
//=============================================================================
// Description: Invoke this member to obtain free running counter.
//
// Parameters:  n/a
//
// Returns:     time in milliseconds
//
//------------------------------------------------------------------------------

unsigned int radTimeGetMilliseconds( void )
{
    rAssert( s_InitializedCount != 0 );

    //
    // Under windows we use the high performance counter.
    //
    #if defined ( RAD_WIN32 ) || defined ( RAD_XBOX )
    LARGE_INTEGER   PerformanceCount;
    QueryPerformanceCounterFix( &PerformanceCount );

    return( (unsigned int) (( PerformanceCount.QuadPart * 1000) / s_Win32CountsPerSecond) );
    #endif

    //
    // Under PS2, simmply return our count.
    //
    #ifdef RAD_PS2
            
    return( (unsigned int) s_Milliseconds );
    
    #endif

	//
	// On the RAD_GAMECUBE, simply returns value of timer in seconds
	//
	#ifdef RAD_GAMECUBE
		//
		// Retrieves 32-bit value of lower  of time base register
		//
		OSTime time = OSGetTime();

		//
		// Converts ticks to milliseconds
		//
		s_Milliseconds = OSTicksToMilliseconds(time);   

		return (s_Milliseconds);
	
	#endif // RAD_GAMECUBE
}

//=============================================================================
// Function:    radTimeGetSeconds
//=============================================================================
// Description: Invoke this member to obtain free running counter.
//
// Parameters:  n/a
//
// Returns:     time in seconds
//
//------------------------------------------------------------------------------

unsigned int radTimeGetSeconds( void )
{
    rAssert( s_InitializedCount != 0 );

    //
    // Under windows we use the high performance counter.
    //
    #if defined ( RAD_WIN32 ) || defined ( RAD_XBOX )
    LARGE_INTEGER   PerformanceCount;
    QueryPerformanceCounterFix( &PerformanceCount );

    return( (unsigned int) ( PerformanceCount.QuadPart / s_Win32CountsPerSecond) );
    #endif

    //
    // Under PS2, simmply return our count.
    //
    #ifdef RAD_PS2
            
    return( (unsigned int) s_Seconds );
    
    #endif

	//
	// On the RAD_GAMECUBE, simply returns value of timer in seconds
	//
	#ifdef RAD_GAMECUBE
		//
		// Retrieves 32-bit value of lower of time base register
		//
		OSTime time = OSGetTime();

		//
		// Converts ticks to seconds
		//	
		s_Seconds = OSTicksToSeconds(time);   
		
		return (s_Seconds);
	
	#endif // RAD_GAMECUBE
}

//=============================================================================
// Function:    radTimeGetDate
//=============================================================================
// Description: Return the local date.
//
// Parameters:  pDate -- [out] the date to be returned
//
// Returns:     
//------------------------------------------------------------------------------

void radTimeGetDate( radDate* pDate )
{
#if defined ( RAD_WIN32 ) || defined ( RAD_XBOX )
    SYSTEMTIME time;
    ::GetLocalTime( &time );

    //
    // Convert Win32 time to our structure
    //
    pDate->m_Year = (unsigned short) time.wYear;
    pDate->m_Month = (unsigned char) time.wMonth;
    pDate->m_Day = (unsigned char) time.wDay;
    pDate->m_Hour = (unsigned char) time.wHour;
    pDate->m_Minute = (unsigned char) time.wMinute;
    pDate->m_Second = (unsigned char) time.wSecond;

#elif defined ( RAD_PS2 )
    sceCdCLOCK time;
    if ( ::sceCdReadClock( &time ) == 0 || 
         time.stat & (1 << 0) != 0 || 
         time.stat & (1 << 1) != 0 ||
         time.stat & (1 << 7) != 0 
       )
    {
        rDebugPrintf( "radTime: getting date failed. The clock must be broken.\n" );
        pDate->m_Year = (unsigned short) 0;
        pDate->m_Month = pDate->m_Day = pDate->m_Hour = pDate->m_Minute = pDate->m_Second = (unsigned char) 0;
    }

    //
    // Convert PS2 time to our structure
    //
    ::sceScfGetLocalTimefromRTC( &time );
    pDate->m_Year = 2000 + (unsigned short) PS2BCDtoBin( time.year );
    pDate->m_Month = PS2BCDtoBin( time.month );
    pDate->m_Day = PS2BCDtoBin( time.day );
    pDate->m_Hour = PS2BCDtoBin( time.hour );
    pDate->m_Minute = PS2BCDtoBin( time.minute );
    pDate->m_Second = PS2BCDtoBin( time.second );

#elif defined ( RAD_GAMECUBE )
    OSTime time = ::OSGetTime( );
    OSCalendarTime calendar;
    ::OSTicksToCalendarTime( time, &calendar );

    //
    // Convert GCN time to our structure.
    //
    pDate->m_Year = calendar.year;
    pDate->m_Month = calendar.mon + 1;
    pDate->m_Day = calendar.mday;
    pDate->m_Hour = calendar.hour;
    pDate->m_Minute = calendar.min;
    pDate->m_Second = calendar.sec;

#else
    #error 'FTech requires definition of RAD_GAMECUBE, RAD_PS2, RAD_XBOX, or RAD_WIN32'
#endif


}

//=============================================================================
// Function:    TimeGetWeekday
//=============================================================================
// Description: Return the day of the week corresponding to a date.
//------------------------------------------------------------------------------

radWeekday radTimeGetWeekday( unsigned short year, unsigned char month, unsigned char day )
{
    rAssert( month >= 1 && month <= 12 );
    rAssert( day >= 1 && day <= 31 );

    //
    // Check if it's a leap year.
    //
    bool isLeapYear = ( ( year % 4 == 0 && year % 100 != 0 ) || year % 400 == 0 );

    //
    // Find the day of the year.
    //
    unsigned int dayOfYear = MonthToDay[ month - 1 ] + ( day - 1 );
    if ( isLeapYear && month > 2 ) dayOfYear++;

    //
    // Find the weekday of Jan 1. Every year divisible by 400 starts on a Saturday, and
    // is a leap year. So if ( year - 1 ) % 400 == 0, then it starts on a Monday. Every year
    // starts one day of the week later, except the year AFTER a leap year (i.e. 
    // ( year - 1 ) % 4 == 0 && ( year - 1 ) % 100 != 0 ). Since we only have to handle 400
    // year periods, we don't need to worry about leap year every 400 years.
    //
    unsigned int year4Hundred = ( year - 1 ) % 400;
    unsigned int jan1Weekday = ( year4Hundred + ( year4Hundred ) / 4 - ( year4Hundred ) / 100 ) % 7;

    //
    // Now find our day of the week.
    //
    return (radWeekday) ( ( jan1Weekday + dayOfYear ) % 7 );
}

//=============================================================================
// Function:    QueryPerformanceCounterFix
//=============================================================================
// Description: This implementation is designed to deal with the problem
//              of the XBOX reporting time going backwards.
//
// Parameters:  where to return performance count
//
// Returns:    
//------------------------------------------------------------------------------

#if defined ( RAD_WIN32 ) || defined ( RAD_XBOX )

static LARGE_INTEGER s_LastCount = {0};

void QueryPerformanceCounterFix( LARGE_INTEGER* count )
{
#ifndef RAD_XBOX

    //
    // If not XBOX, just use the standard performance counter.
    //
    QueryPerformanceCounter( count );

#else

    //
    // Here we make sure that time is not ever going backwards. Note we don't
    // worry about wrapping as this will occur very infrequenctly. Based on
    // my fast PC, it would occur every ~81715 years.
    //
    LARGE_INTEGER   currentCount;

    QueryPerformanceCounter( &currentCount );

    if( currentCount.QuadPart > s_LastCount.QuadPart )
    {
        count->QuadPart = currentCount.QuadPart;
        s_LastCount.QuadPart = currentCount.QuadPart;
    }
    else
    {
        rTuneString( "Warning: radTime has detected time going backwards\n");
        count->QuadPart = s_LastCount.QuadPart;  
    }
#endif

}
#endif

//=============================================================================
// Function:    radTimeCreateList
//=============================================================================
// Description: Invoke this member obtain a new time list. This object is
//              is used to serve ou timers and drive the processing of them.
//
// Parameters:  ppIRadTimerList - returned
//              numberOfTimers
//              allocator
//
// Returns:     n/a
//
//------------------------------------------------------------------------------

void radTimeCreateList
( 
    IRadTimerList**     ppIRadTimerList,
    unsigned int        numberOfTimers, 
    radMemoryAllocator  allocator
)
{
    //
    // Make sure system intialized. If so, just new up the timer list object.
    //
    rAssert( s_InitializedCount != 0 );

    *ppIRadTimerList = new( allocator ) radTimerList( numberOfTimers, allocator );
}

//=============================================================================
// PS2_TimerIsr
//=============================================================================
// Description: This function is invoked by the hardware every milliseconds.
//              Current implementation just maintains a free running count
//              of milliseconds.
//
// Parameters:  cause - not used.
//
// Returns:     -1. We do not want to share this with any other handler.
//
// Notes:       Interrupts are disabled.
//------------------------------------------------------------------------------

#ifdef RAD_PS2

int PS2_TimerIsr( int cause )
{
    (void) cause;

    //
    // Restart the timer as soon as possible.
    //
    DPUT_T0_MODE( 0x05C1 );             

    //
    // Update free running counters.
    //
    s_Milliseconds++;
    s_MilliCount++;

    if( s_MilliCount == 1000 )
    {
        s_MilliCount = 0;
        s_Seconds++;
    }

    ExitHandler( );

    return( -1 );
}

#endif

//=============================================================================
// Function:    PS2_Microseconds
//=============================================================================
// Description: This function is used to determine the value of the free running
//              microseconds counter on the PS2.
//
// Parameters:  
//
// Returns:     64 free running count.
//
// Notes:       
//------------------------------------------------------------------------------

#ifdef RAD_PS2

static volatile unsigned int delay;

unsigned long PS2_Microseconds( void )
{
    //
    // Take the value of the milliseconds counter ( counts number of timer wraps ) before
    // and after reading the free running counter.
    //
    unsigned long milliseconds1 = s_Milliseconds;    
    unsigned short count1 = DGET_T0_COUNT( );
    
    //
    // Add delay here to ensure that if we wrap, the interrupt will be sure to fire.
    // Without the delay, a problem can occur where the counter has wrapped but the interrupt
    // has not fired.
    //
    for( int i = 0 ; i < 10 ; i++ )
    {
        delay++;
    }
    unsigned long milliseconds2 = s_Milliseconds;   
    unsigned short count2 = DGET_T0_COUNT( );

    //
    // Lets check if the two samples of milliseconds are the same. If so, it means that
    // the count1 is correct.
    //
    if( milliseconds1 == milliseconds2 )
    {
        //
        // Here we base our time on count1. 
        // Calculate the time using the microseconds and milliseconds. The magic number 
        // (9216) is the value programmed into the timer chip. It is the number of counts
        // required to create a millisecond.
        //
        return( (milliseconds1 * 1000) + ( ( ( (unsigned int) count1 * 1000 ) / 9216 ) ) );
    }
    else
    {
        //
        // Here an interrupt occurred during the read of count1. Hence use count2 and
        // milliseconds2 as they reflect time better
        //
        return( (milliseconds2 * 1000) + ( ( ( (unsigned int) count2 * 1000) / 9216 ) ) );
    }
}

#endif

//=============================================================================
// Function:    PS2BCDtoBin
//=============================================================================
// Description: Convert an 8-bit BCD number with one decimal digit per nibble
//              into a binary number.
//
// Parameters:  binary equivalent of bcd
//
// Returns:     
//------------------------------------------------------------------------------
#ifdef RAD_PS2
unsigned char PS2BCDtoBin( unsigned char bcd )
{
    return ( ( bcd & 0xF ) + ( ( ( bcd >> 4 ) & 0xF ) * 10 ) );
}
#endif

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// Function:    radTimerList::radTimerList
//=============================================================================
// Description: This is the timer list constructor. All timers are obtained
//              from the time list object. 
//
// Parameters:  n/a
//
// Returns:     n/a
//
//------------------------------------------------------------------------------

radTimerList::radTimerList( unsigned int numberOfTimers, radMemoryAllocator allocator )
    :
    m_ReferenceCount( 1 ),
    m_Started( false ),
    m_NumberOfTimers( numberOfTimers )
{
    radMemoryMonitorIdentifyAllocation( this, g_nameFTech, "radTimerList" );
    //
    // Lets create a pool to manage timer objects.
    //
    radMemoryCreatePool( &m_TimerPool,  sizeof( radTimer ), numberOfTimers, 0 /* grow by */,
                         false, None, allocator, "radTimerList" );

    radMemoryMonitorReportAddRef( m_TimerPool, this );

    //
    // Lets also create an array which holds weak references to any running timers.
    //
    m_ActiveTimers = (radTimer**) radMemoryAlloc( allocator, numberOfTimers * sizeof(radTimer**) );
    
    for( unsigned int i = 0; i < numberOfTimers ; i++ )
    {
        m_ActiveTimers[ i ] = NULL;
    }
}

//=============================================================================
// Function:    radTimerList::~radTimerList
//=============================================================================
// Description: This is the timer manager destructor. Frees all resources.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radTimerList::~radTimerList( void )
{ 
    //
    // Free up memory allocated
    //
    radMemoryFree( m_ActiveTimers );
    radRelease( m_TimerPool, this );
}

//=============================================================================
// Function:    radTimerList::AddRef
//=============================================================================
// Description: This member is used to update the reference count of the object.
//
// Parameters:  none
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------
    
void radTimerList::AddRef( void )
{
    m_ReferenceCount++;
}

//=============================================================================
// Function:    radTimerList::Release
//=============================================================================
// Description: This member is used to update the reference count of the object.
//
// Parameters:  none
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------
    
void radTimerList::Release( void )
{
    m_ReferenceCount--;

    if( m_ReferenceCount == 0 )
    {
        delete this;
    }
}

//=============================================================================
// Function:    radTimerList::Dump
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

void radTimerList::Dump( char * pStringBuffer, unsigned int bufferSize )
{
    sprintf( pStringBuffer, "Object: [radTimerList] At Memory Location:[0x%x]\n", (unsigned int) this );
}

#endif

//=============================================================================
// Function:    radTimerList::CreateTimer
//=============================================================================
// Description: This member is used to create a timer. We basically allocate
//              the object and set it up based on the callers options.
//
// Parameters:  timeout     - in milliseconds ( minimum value of 1 )
//              handler     - optional routine to invoke on expiration.
//              user data   -
//              start       - flag indicating if timer should be start on creation.
//              resetMode   - one-shot or perdioc timer.
//
// Returns:     timer
//
// Notes:       
//------------------------------------------------------------------------------

void radTimerList::CreateTimer
( 
    IRadTimer**           ppTimer,
    unsigned int          timeout,		
    IRadTimerCallback*    callback, 
    void*                 pUserData,
    bool                  start,                
    IRadTimer::ResetMode  resetMode
)
{
    //
    // Simply new up the timer. The timer manager manages the memory, hence the need to
    // pass this to the new operator. 
    //
	*ppTimer = new( this ) radTimer( this, timeout, callback, pUserData, start, resetMode );
}

//=============================================================================
// Function:    radTimerList::Service
//=============================================================================
// Description: This member is to drive the processing of timers associated
//              with this list. Uses the system timer as the time base.
//
// Parameters:  
//
// Returns:     
//
// Notes:       
//------------------------------------------------------------------------------

void radTimerList::Service( void )
{
    //
    // Invoke the other one with the system time.
    //
    Service( radTimeGetMilliseconds( ) );
}

void radTimerList::Service( unsigned int currentTime )
{
    //
    // If first invocation, save the current time as the last time and return.
    //
    if( !m_Started )
    {
        m_PreviousTime = currentTime;
        m_Started = true;
        return;
    }

    //
    // Determine the delta time since last invoked. If zero, do nothing.
    //
    unsigned int deltaTime = currentTime - m_PreviousTime;
    m_PreviousTime = currentTime;

    //
    // Now process timers. We simply walk the active array, checking for non-null
    // entries.  
    //
    for( unsigned int i = 0 ; i <  m_NumberOfTimers ; i++ )
    {
        if( m_ActiveTimers[ i ] == NULL )
        {
            continue;
        }

        radTimer* currentTimer = m_ActiveTimers[ i ];

        //
        // Here we have a timer. Start by updating the accumulator.
        //
        currentTimer->m_TimeAccumulation += deltaTime;
        
        //
        // Check if timer expired. If not move onto next.
        //
        if( currentTimer->m_TimeAccumulation >= currentTimer->m_TimePeriod )
        {
            //
            // Current time has expired. Check if timer is one shot or
            // periodic. If one shot, stop the timer.
            //
            if( currentTimer->m_ResetMode == IRadTimer::ResetModeOneShot )
            {
                currentTimer->Stop( );
            }

            //
            // Get the accumlator and zero it.
            //
            unsigned int elapsedTime = currentTimer->m_TimeAccumulation;
            currentTimer->m_TimeAccumulation = 0;

            //
            // Check if callback exists for this timer. If so, invoke the callback.
            //
            if( currentTimer->m_Handler != NULL )                        
            {
                currentTimer->m_Handler->OnTimerDone( elapsedTime, currentTimer->m_UserData );
            }
        }
    }
}

//=============================================================================
// Function:    radTimerList::AllocateTimerMemory
//=============================================================================
// Description: This member is used allocate the memory for a timer object. 
//              Get it from our pool.
//
// Parameters:  n/a
//
// Returns:     pointer to memory
//
// Notes:       
//------------------------------------------------------------------------------

void* radTimerList::AllocateTimerMemory( void )
{
    return( m_TimerPool->GetMemory( ) );
}

//=============================================================================
// Function:    radTimerList::FreeTimerMemory
//=============================================================================
// Description: This member is used free the memory for a timer object. 
//
// Parameters:  pointer to timer memory
//
// Returns:     
//
// Notes:       
//------------------------------------------------------------------------------

void radTimerList::FreeTimerMemory( void* p )
{
    m_TimerPool->FreeMemory( p );
}

//=============================================================================
// Function:    radTimer::radTimer
//=============================================================================
// Description: This constructor is used to construct a timer. Not used directly
//              by the application.
//
// Parameters:  pRadTimerList - parent time manager.
//              timeout - period in milliseconds
//              handler - routine to invoke when expires.
//              userData
//              start   - boolean indicating if timer should be started
//              resetMode - oneshot or periodic,
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

radTimer::radTimer
( 
    radTimerList*           pTimerList,
    unsigned int            timeout,
    IRadTimerCallback*      handler,
    void*                   userData,
    bool                    start,
    IRadTimer::ResetMode    resetMode
)
    :
        m_ReferenceCount( 1 ),
        m_ResetMode( resetMode ),  
        m_TimePeriod( timeout ), 
        m_IsStarted( false ),
        m_Handler( handler ),
        m_UserData( userData ),
        m_pRadTimerList( pTimerList )
{
    radMemoryMonitorIdentifyAllocation( this, g_nameFTech, "radTimer" );

    //
    // Assert that the timeout value is valid.
    //
    rAssert( timeout != 0 );

    //
    // Add a refernce to the timer manager.
    //
    radAddRef( pTimerList, NULL );

    //
    // Check if timer needs to be started. If so, lets do it.
    //    
    if( start )
    {
        Start( );
    }
}

//=============================================================================
// Function:    radTimer::~radTimer
//=============================================================================
// Description: This destructor will check if timer started. If so we will stop
//              it.
//
// Parameters:  None
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

radTimer::~radTimer( void )
{
    if( m_IsStarted )
    {
        Stop( );
    }
}

//=============================================================================
// Function:    radTimer::operator new
//=============================================================================
// Description: This is the new operator. We use it since we want to allcate
//              timers from a pool. The pool is actually managed by the timer
//              manager, hence the convolution.
//
// Parameters:  size - amount to allocate
//              pManager - parent timer manager
//
// Returns:     memory pointer
//
// Notes:
//------------------------------------------------------------------------------

void* radTimer::operator new(size_t size, radTimerList* pTimerList)
{
	(void) size;
    void* p = pTimerList->AllocateTimerMemory( );
    rAssertMsg( p != NULL, "RadTimer: Increase number of timers" );
    return( p );
} 

//=============================================================================
// Function:    radTimer::AddRef
//=============================================================================
// Description: This member is update refence count of timer.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radTimer::AddRef
( 
    void
)
{
    m_ReferenceCount++;
}

//=============================================================================
// Function:    radTimer::DeleteRefernce
//=============================================================================
// Description: This member is used to destroy a timer. Simply return timer
//              to pool if refernce count is zero                        
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radTimer::Release
( 
    void
)
{
    m_ReferenceCount--;
    if( m_ReferenceCount == 0 )
    {
        radTimerList* pTimerList = m_pRadTimerList;
        
        //
        // Simply delete timer calling destructor directly. Then free memory and
        // reference to the timer manager.
        //
        this->~radTimer( );

        pTimerList->FreeTimerMemory( this );
        radRelease( pTimerList, this );
    }
}

//=============================================================================
// Function:    radTimer::Start
//=============================================================================
// Description: This member is used to start a timer. Behavior is determined
//              by previously specified operating parameters.
//
// Parameters:  None
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radTimer::Start( void )
{
    if( !m_IsStarted )
    {
        //
        // Zero the time accumulator. 
        //
        m_TimeAccumulation = 0;

        //
        // Set the timer started.
        //
        m_IsStarted = true;

        //
        // Find a free entry in the active table and add a weak reference to 
        // this timer.
        //
        for( unsigned int i = 0 ; i <  m_pRadTimerList->m_NumberOfTimers ; i++ )
        {
            if( m_pRadTimerList->m_ActiveTimers[ i ] == NULL )
            {
                m_pRadTimerList->m_ActiveTimers[ i ] = this;
                break;
            }       
        }
    }
}

//=============================================================================
// Function:    radTimer::Stop
//=============================================================================
// Description: This member is used to stop a timer. 
//
// Parameters:  None
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radTimer::Stop( void )
{
    if ( m_IsStarted )
    {
        //
        // Clear started flag.
        //
        m_IsStarted = false;

        //
        // Find the entry in the active table and remove it.
        //
        for( unsigned int i = 0 ; i <  m_pRadTimerList->m_NumberOfTimers ; i++ )
        {
            if( m_pRadTimerList->m_ActiveTimers[ i ] == this )
            {
                m_pRadTimerList->m_ActiveTimers[ i ] = NULL;
                break;
            }       
        }
    }
}

//=============================================================================
// Function:    radTimer::RegisterCallback
//=============================================================================
// Description: This member is used register the event handler. 
//
// Parameters:  handler - object to invoke when expires
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radTimer::RegisterCallback( IRadTimerCallback* handler, void* pUserData )
{
    rAssert( m_Handler == NULL );
    m_Handler = handler;
    m_UserData = pUserData;
}

//=============================================================================
// Function:    radTimer::UnregisterCallback
//=============================================================================
// Description: This member is used unregister the event handler. 
//
// Parameters:  handler - object to invoke when expires
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radTimer::UnregisterCallback( IRadTimerCallback* handler )
{
    rAssert( m_Handler == handler );
    m_Handler = NULL;
}


//=============================================================================
// Function:    radTimer::GetTimeout
//=============================================================================
// Description: This member will return the timers current time out value.
//
// Parameters:  n/a
//
// Returns:     timeout expressed in units of 1/1000 second
//
// Notes:
//------------------------------------------------------------------------------

unsigned int radTimer::GetTimeout( void )
{
    return( m_TimePeriod );
}

//=============================================================================
// Function:    radTimer::SetTimeout
//=============================================================================
// Description: This member is used to set the timeout value.
//
// Parameters:  timeout expresses in unit of 1/1000 second
//
// Returns:     none
//
// Notes:
//------------------------------------------------------------------------------

void radTimer::SetTimeout( unsigned int timeout )
{
    //
    // If timer started, stop it, set value and start it.
    // If not start, simple save the value.  
    //
    if( m_IsStarted )
    {
        Stop( );
        m_TimePeriod = timeout;
        Start( );
    }
    else
    {
        m_TimePeriod = timeout;
    }        
}

//=============================================================================
// Function:    radTimer::GetResetMode
//=============================================================================
// Description: This member is used to get the reset mode,
//
// Parameters:  n/a
//
// Returns:     periodic or one-shot
//
// Notes:
//------------------------------------------------------------------------------

IRadTimer::ResetMode radTimer::GetResetMode( void )
{
    return( m_ResetMode );
}

//=============================================================================
// Function:    radTimer::SetResetMode
//=============================================================================
// Description: This member is used to set the reset mode. Governs behavior when
//              timer expires.
//
// Parameters:  reset mode
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radTimer::SetResetMode( IRadTimer::ResetMode resetMode )
{
    m_ResetMode = resetMode;      
}

//=============================================================================
// Function:    radTimer::HasTimerExpired
//=============================================================================
// Description: This member is used determine if a timer has expired. Only
//              valid for one shot
//
// Parameters:  reset mode
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

bool radTimer::HasTimerExpired( void )
{
    rAssert( m_ResetMode == IRadTimer::ResetModeOneShot );
    return( !m_IsStarted );
}
