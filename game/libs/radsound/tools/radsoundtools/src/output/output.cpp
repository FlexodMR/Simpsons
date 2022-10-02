//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <radsoundtools.hpp>

static bool g_Silent;
static char g_pLastError[256];
static rstMessageCallback * g_pConvertFileProgressCallback = NULL;
static rstMessageCallback * g_pConvertFileWarningCallback = NULL;

//=============================================================================
// rDebugPrintf
//=============================================================================

void printSetSilent( bool silent )
{
    g_Silent = silent;
}

char * rstGetLastError( void )
{
	return g_pLastError;
}

void rstSetConvertFileProgressCallback( rstMessageCallback * pFx )
{
    g_pConvertFileProgressCallback = pFx;
}

void rstSetConvertFileWarningCallback( rstMessageCallback * pFx )
{
    g_pConvertFileWarningCallback = pFx;
}

void printClearError( void )
{
    sprintf( g_pLastError, "OK" );
}

void printProgress( const char *fmt, ... )
{
    va_list va_alist = {0}; 
    char    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    va_start( va_alist, fmt ); 

    ::_vsnprintf( printfstr, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

    va_end( va_alist );
     
    if ( g_pConvertFileProgressCallback != NULL )
    {
        g_pConvertFileProgressCallback( printfstr );
    }
}

void printWarning( const char *fmt, ... )
{
    va_list va_alist = {0}; 
    char    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    va_start( va_alist, fmt ); 

    ::_vsnprintf( printfstr, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

    va_end( va_alist ); 

    if ( g_pConvertFileWarningCallback != NULL )
    {
        g_pConvertFileWarningCallback( printfstr );
    }
    else
    {
        printf( printfstr );
    }
}

void printInfoSilent( const char *fmt, ... )
{
    if ( ! g_Silent )
    {
        va_list va_alist = {0}; 
        char    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH ];

        va_start( va_alist, fmt ); 

        ::_vsnprintf( printfstr, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

        printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

        va_end( va_alist ); 

        printf( printfstr );
    }
}

void printInfoLoud( const char *fmt, ... )
{
    va_list va_alist = {0}; 
    char    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    va_start( va_alist, fmt ); 

    ::_vsnprintf( printfstr, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

    va_end( va_alist ); 

    printf( printfstr );
}

bool printError( const char *fmt, ... )
{
    va_list va_alist = {0}; 
    char    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH ];

    va_start( va_alist, fmt ); 

    ::_vsnprintf( printfstr, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

    va_end( va_alist ); 

    strcpy( g_pLastError, printfstr );

    return false;
}
