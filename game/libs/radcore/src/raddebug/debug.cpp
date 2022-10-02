//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        debug.cpp
//
// Subsystem:   Fountation Technologies Debug Services
//
// Description: This file contains the implementation of the radical debug
//              services. 
//
// Revisions:   V1.00 Mar 9, 2001       Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "pch.hpp"
#include <stdio.h>
#include <assert.h>
#include <radobjectlist.hpp>
#include <radstring.hpp>
#include <raddebug.hpp>

#ifdef RAD_WIN32
#include <windows.h>
#endif
#ifdef RAD_XBOX
#include <xtl.h>
#endif

#ifdef RAD_GAMECUBE
	#include <dolphin/os.h>
#endif // RAD_GAMECUBE

//=============================================================================
// Local Functions 
//=============================================================================

//=============================================================================
// Function: rDebugVsnPrintf
//=============================================================================
//
// Description: This function wraps the non-standard compiler extension version
//              PS2 version doesn't actually check the length!
//
//=============================================================================

int rDebugVsnPrintf( char *buffer, size_t count, const char *format, va_list argptr )
{
    #if defined (RAD_WIN32) || defined (RAD_XBOX)
        return _vsnprintf( buffer, count, format, argptr );
    #elif defined (RAD_GAMECUBE)
        return vsnprintf( buffer, count, format, argptr );
    #elif defined (RAD_PS2)
        return vsprintf( buffer, format, argptr );
    #endif
}

//=============================================================================
// Function: rDebugSnPrintf
//=============================================================================
//
// Description: This function wraps the non-standard compiler extension version
//              PS2 version doesn't actually check the length!
//
//=============================================================================

int rDebugSnPrintf( char *buffer, size_t count, const char *format ... )
{
    va_list va_alist = {0}; 
    va_start( va_alist, format ); 
    int retval = rDebugVsnPrintf( buffer, count, format, va_alist );
    va_end( va_alist ); 
	return retval;
}

#ifdef RAD_WIN32
//=============================================================================
// Function:    rAssertThreadProc
//=============================================================================
// Description: The thread procedure for the error dialog box
//
// Parameters:  lpParameter - text of error message
//
// Returns:     ID of control that cause dialog exit
//
// Notes:
//      See rErrorMessageBox
//------------------------------------------------------------------------------
static DWORD WINAPI rAssertThreadProc(LPVOID lpParameter)
{
    return MessageBox( NULL, (char*)lpParameter, "Internal Error", MB_ABORTRETRYIGNORE | MB_ICONEXCLAMATION | MB_SETFOREGROUND | MB_TASKMODAL);
}

//=============================================================================
// Function:    rErrorMessageBox
//=============================================================================
// Description: Called from the main thread(s) when error has occured to 
//              display the error dialog box, it blocks until the dialog is 
//              done.
//
// Parameters:  lpParameter - text of error message
//
// Returns:     ID of control that cause dialog exit
//
// Notes:
//      Win32 has a problem where if you display a message box the thread's message 
//      queue gets serviced  This causes windows messages to be processed by the
//       app generally resulting in other assertions failing. To work around 
//      this, we spawn the message box in a seperate thread.
//
//      Added 4/11/02 - nbrooke
//
//------------------------------------------------------------------------------
static DWORD rErrorMessageBox(const char* text)
{

    // spawn the thread
    DWORD dummy;
    HANDLE thread = CreateThread(NULL, 1024, rAssertThreadProc, const_cast<char*>(text), 0, &dummy); 
    
    // spinlock till the thread tells us what to do
    DWORD retval = STILL_ACTIVE;

    while(retval == STILL_ACTIVE)
    {
        GetExitCodeThread(thread, &retval);
        Sleep(0);
    }
    return retval;
}

#endif

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Globals
//=============================================================================
bool g_rDebugHaltOnAsserts = true;

radDebugOutputHandler * g_pDebugHandler = rDebuggerString_Implementation;

void rDebugHaltOnAsserts_Implementation( bool halt )
{
    g_rDebugHaltOnAsserts = halt;
}

//=============================================================================
// Function:    rDebugAssertFail
//=============================================================================
// Description: This is invoked when an assertion has failed. Display info
//              and prompt used.
//
// Parameters:  condition   - input - condition that failed
//              filename    - input - name of file
//              linenum     - input - line number
//
// Returns:     true if RETRY is clicked, false if IGNORE.
//
// Notes:
//------------------------------------------------------------------------------

bool rDebugAssertFail_Implementation
(
    const char* condition,
    const char* filename,
    unsigned int linenum
)
{

    char text[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    rDebugSnPrintf
    (
        text, RAD_DEBUG_PRINT_MAX_LENGTH,
        "ASSERT FAILED : [%s]\n"
        "         Line : [%d] File: [%s]\n",
        condition, linenum, filename
    );

    text[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

	rDebugString_Implementation(text);

    if ( ! g_rDebugHaltOnAsserts )
    {
        return false;
    }

    //
    // Windows implementation display message box
    //
#ifdef RAD_WIN32
    {
        int retval = rErrorMessageBox(text);

        if( retval == IDABORT)
        {
            exit(-10);
            return false;
        }
        else if( retval == IDRETRY )
        {
          return true;
        }
        return( false );
    }
#else
	return true;
#endif // RAD_WIN32
}

//=============================================================================
// Function:    rDebugWarningFail
//=============================================================================
// Description: This is invoked when an warning has failed. Display the info
//
// Parameters:  condition   - input - condition that failed
//              filename    - input - name of file
//              linenum     - input - line number
//
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void rDebugWarningFail_Implementation
(
    const char* condition,
    const char* filename,
    unsigned int linenum
)
{
    //
    // Simply display warning message.
    //
    char text[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    rDebugSnPrintf
    (
        text, RAD_DEBUG_PRINT_MAX_LENGTH, 
        "\n"
        "WARNING : [%s]\n"
        "   Line : [%d] File: [%s]\n",
        condition, linenum, filename
    );

    text[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

	rDebugString_Implementation(text);
}

//=============================================================================
// Function:    rDebugValidFail
//=============================================================================
// Description: This is invoked when an address validation has failed
//
// Parameters:  condition   - input - condition that failed
//              filename    - input - name of file
//              linenum     - input - line number
//
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

void rDebugValidFail_Implementation
(
    const char *condition,
    const char *filename,
    unsigned int linenum
)
{
    char text[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    rDebugSnPrintf
    (
        text, RAD_DEBUG_PRINT_MAX_LENGTH,
        "\n"
        "INVALID MEMORY ADDRESS : [%s]\n"
        "   Line : [%d] File: [%s]\n",
        condition, linenum, filename
    );

    text[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';
    
    rDebugString_Implementation(text);

    //
    // Display message box and check for response
    //
    #ifdef RAD_WIN32
    {
        int retval = rErrorMessageBox(text);

        if( retval == IDABORT)
        {
            exit(-10);
        }
        else if( retval == IDRETRY )
        {
           //
           // Issue an int 3 instead of DebugBreak. MSDEV 5.0 does not
           // work correctly when DebugBreak is used.
           //
          __asm { int 3 };
        }
        else
        {
         // (retval == IDIGNORE) continues.
        }
    }
    #endif // RAD_WIN32
}

//=============================================================================
// Function:    rDebugValidPointer
//=============================================================================
// Description: This is used to validate that the pointer is valid
//
// Parameters:  p   - input -  pointer to check
//
// Returns:     1 if valid, 0 if not
//
// Notes:
//------------------------------------------------------------------------------

int rDebugValidPointer_Implementation
(
    void *p
)
{
    #if defined( RAD_WIN32 ) || defined( RAD_XBOX )

	return( !( IsBadReadPtr( p, 1) || IsBadWritePtr( p,1) ) );

    #endif

    #ifdef RAD_PS2

    // to be completed

	(void) p;

	return( true );

    #endif

	#ifdef RAD_GAMECUBE
	
		// to be completed
		(void) p; 
	
		return( true );
	
	#endif // RAD_GAMECUBE
}

//=============================================================================
// Function:    rDebugValidPointer32
//=============================================================================
// Description: This is used to validate that the pointer is valid and aligned
//              to 32 bits
//
// Parameters:  p   - input -  pointer to check
//
// Returns:     1 if valid, 0 if not
//
// Notes:
//------------------------------------------------------------------------------

int rDebugValidPointer32_Implementation
(
    void *p
)
{
    if( !p )
    {
        //
        // Null pointer is considered invalid
        //
        return( 0 );
    }

    if( (unsigned int) p & 3 )
    {
        //
        // Must be 32 bit aligned
        //
        return( 0 );
    }

#if defined( RAD_WIN32 ) || defined( RAD_XBOX )

    return !(IsBadReadPtr(p,1) || IsBadWritePtr(p,1));

#endif

#ifdef RAD_PS2

    // to be completed

    return( true );

#endif

	#ifdef RAD_GAMECUBE
	
		// to be completed
		return( true );  
		
	#endif // RAD_GAMECUBE

}

//=============================================================================
// Function: rDebugInfoString_Implementation
//=============================================================================

void rDebugInfoString_Implementation( const char * pString )
{
    g_pDebugHandler( pString );
}

//=============================================================================
// Function: rDebugString_Implementation
//=============================================================================

void rDebugString_Implementation( const char * pString )
{
    g_pDebugHandler( pString );
}

//=============================================================================
// Function:    rDebugPutString
//=============================================================================
// Description: This function will simply output a string
//
// Parameters:  s - input - string to output
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------
#if defined( RAD_RELEASE )
bool g_AllowDebugOutput = false;
#else
bool g_AllowDebugOutput = true;
#endif

void rDebuggerString_Implementation( const char* string )
{
    if ( string == NULL )
    {
        string = "NULL";
    }

    if(!g_AllowDebugOutput)
    {
        return;
    }

   #if defined( RAD_WIN32 ) || defined( RAD_XBOX )
    {
 
        //
        // OutputDebugString( ) seems to truncate the output if the string is
        // too long, so we'll write it in chunks of 256.
        //

        char buffer[ 257];

        unsigned int length = strlen( string );

        if ( length != 0 )
        {
            unsigned int fullChunks = length / 256;
            unsigned int lastChunkSize = length % 256;

            for ( unsigned i = 0; i < fullChunks; i ++ )
            {
                memcpy( buffer, string + ( i * 256 ), 256 );
                buffer[256] = '\0';

                OutputDebugString( buffer );
            }
    
            if ( lastChunkSize != 0 )
            {
                memcpy( buffer, string + ( i * 256 ), lastChunkSize );
                buffer[ lastChunkSize ] = '\0';
        
                OutputDebugString( buffer );
            }
        }
    }
    #endif

    #if defined( RAD_PS2 )
    
    //
    // On the PS2 we display the string on the using printf. 
    //
    printf( "%s", string );
    fflush( stdout );

    #endif
	//
	// Display a formatted output message into 
	// the debugger's log window
	//
	#ifdef RAD_GAMECUBE
		
		OSReport( (char*)string );
		
	#endif // RAD_GAMECUBE
}

//=============================================================================
// rReleasePrintf
//=============================================================================

void rReleasePrintf( const char *fmt, ... )
{
    va_list va_alist = {0}; 
    char    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    va_start( va_alist, fmt ); 

    rDebugVsnPrintf( printfstr, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

    va_end( va_alist ); 

    rReleaseString( printfstr );
}

#if defined RAD_DEBUG || defined RAD_TUNE
//=============================================================================
// rTunePrintf
//=============================================================================

void rTunePrintf( const char *fmt, ... )
{
    va_list va_alist = {0}; 
    char    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    va_start( va_alist, fmt ); 

    rDebugVsnPrintf( printfstr, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

    va_end( va_alist ); 

    rTuneString( printfstr );
}
#endif

#if defined RAD_DEBUG
//=============================================================================
// rDebugPrintf
//=============================================================================

void rDebugPrintf( const char *fmt, ... )
{
    va_list va_alist = {0}; 
    char    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    va_start( va_alist, fmt ); 

    rDebugVsnPrintf( printfstr, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

    va_end( va_alist ); 

    rDebugString( printfstr );
}
#endif

#if defined RAD_DEBUG
//=============================================================================
// rDebugChannelPrintf
//=============================================================================

void rDebugChannelPrintf( const char * pChannel, const char *fmt, ... )
{
    va_list va_alist = {0}; 
    char    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    va_start( va_alist, fmt ); 

    rDebugVsnPrintf( printfstr, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

    va_end( va_alist ); 

    rDebugChannel( pChannel, printfstr );
}
#endif

//=============================================================================
// Debug Channel Globals
//=============================================================================

static ref< IRadObjectList > g_xIOl_EnabledChannels;
static radMemoryAllocator g_DebugChannelAllocator = RADMEMORY_ALLOC_DEFAULT;
static unsigned int g_DebugChannelInitializeCount = 0;

//=============================================================================
// ::rDebugChannelInitializeImplementation
//=============================================================================

void rDebugChannelInitialize_Implementation( radMemoryAllocator allocator )
{
    if ( g_DebugChannelInitializeCount == 0 )
    {
        g_DebugChannelAllocator = allocator;

        ::radObjectListCreate( & g_xIOl_EnabledChannels, g_DebugChannelAllocator );

        rAssert( g_xIOl_EnabledChannels != NULL );
    }

    g_DebugChannelInitializeCount++;
}

//=============================================================================
// ::rDebugChannelImplementation
//=============================================================================

void rDebugChannel_Implementation( const char * pChannelName, const char * pString )
{
    if ( g_xIOl_EnabledChannels != NULL )
    {
        IRadString * pIRadString;

        g_xIOl_EnabledChannels->Reset( );

        while( NULL != ( pIRadString = reinterpret_cast< IRadString * >( g_xIOl_EnabledChannels->GetNext( ) ) ) )
        {
            if ( pIRadString->Equals( pChannelName ) )
            {
                rDebugString_Implementation( pString );
                return;
            }
        }
    }
}

//=============================================================================
// ::rDebugChannelEnableImplementation
//=============================================================================

void rDebugChannelEnable_Implementation( const char * pChannelName )
{
    if ( g_xIOl_EnabledChannels != NULL )
    {
        IRadString * pIString;

        ::radStringCreate( & pIString, g_DebugChannelAllocator );

        pIString->Copy( pChannelName );

        g_xIOl_EnabledChannels->AddObject( pIString );

        pIString->Release( );
    }
}

//=============================================================================
// ::rDebugChannelDisableImplementation
//=============================================================================

void rDebugChannelDisable_Implementation( const char * pChannelName )
{
    if ( g_xIOl_EnabledChannels != NULL )
    {
        IRadString * pIString;

        g_xIOl_EnabledChannels->Reset( );

        while ( NULL != ( pIString = reinterpret_cast< IRadString * >( g_xIOl_EnabledChannels->GetNext( ) ) ) )
        {
            if ( pIString->Equals( pChannelName ) )
            {
                g_xIOl_EnabledChannels->RemoveObject( pIString );
                return;
            }
        }
    }
}

//=============================================================================
// ::rDebugChannelTerminateImplementation
//=============================================================================

void rDebugChannelTerminate_Implementaion( void )
{
    rAssert( g_DebugChannelInitializeCount > 0 );

    g_DebugChannelInitializeCount--;

    if ( g_DebugChannelInitializeCount == 0 )
    {
        g_xIOl_EnabledChannels = NULL;
    }
}

//=============================================================================
// Function: rDebugSetOutputHandler
//=============================================================================

void rDebugSetOutputHandler( radDebugOutputHandler * pOutputProc )
{
    if( pOutputProc != NULL )
    {
        g_pDebugHandler = pOutputProc;
    }
    else
    {
        g_pDebugHandler = rDebuggerString_Implementation;
    }
}

