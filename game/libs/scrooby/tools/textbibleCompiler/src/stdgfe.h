// @doc

//=============================================================================
//
// @module STDGFE.H |
// Copyright <cp> 1997, 1998 Radical Entertainment Ltd. All rights reserved.
//
// Class(es):   None
//
// Parent(s):   None
//
// Function(s): <f GfeTrace>
//
// This file contains the standard includes for this project. It is used to 
// generate the precompiled header for the project.
//
// Authors:     Kevin M. Loken (KML)
//
//============================================================================= <nl>
//  Version    Author    CR       Date      Brief Description                   <nl>
//----------------------------------------------------------------------------- <nl>
//  00.90.00    KML     ----    07-Oct-97   File creation.                      <nl>
//  00.90.48    KML     ----    14-Jan-98   Fixed file comments.                <nl>
//============================================================================= <nl>

//=============================================================================
// Prevent multiple inclusion
//=============================================================================
#ifndef __STDGFE_H
#define __STDGFE_H

#ifndef STRICT
#define STRICT
#endif

// Pre-compiled header. Include files that are required by all (or most) of
// the files in the project and that change infrequently here.
#include <windows.h>
#include <stdlib.h>

#pragma warning( disable : 4786 )

// definition for code based data (read only)
#ifndef BASED_CODE
#define BASED_CODE  __based( __segname( "_CODE" ))
#endif

//===========================================================================
// Debugging Defines
//===========================================================================

// TRACE, VERIFY, and ASSERT are based on the MFC 2.5 implementation (afx.ini)

#ifdef _DEBUG

#include <assert.h>
#include <stdarg.h>

//===========================================================================
//
// @func The GfeTrace routine is included in DEBUG builds only. It will send
//       a formatted, variable length string to the debug window (output 
//       window in the Visual C++ development environment).
//
//       The GfeTrace routine is used to provide limited debugging information
//       especially in the form of information on values as the program
//       progresses.
//
// @parm LPCSTR | pszFormat | The format string. This string has the same
//       format or information as used in the printf command.
//
inline void CDECL GfeTrace( LPCSTR pszFormat, ... )
{
    va_list  args;
    char buf[256];

    va_start( args, pszFormat );
    wvsprintf( buf, pszFormat, args );
    OutputDebugString( buf );
    va_end( args );
}

#define BASED_DEBUG         __based( __segname( "GFE_DEBUG1_TEXT" ))
#define TRACE               ::GfeTrace
#define THIS_FILE           __FILE__
#define ASSERT              assert
#define VERIFY( f )         ASSERT( f )

// The following trace macros put the trace string in a code segment
// so that it will not impact DGROUP
#define TRACE0( sz )        \
                do{         \
                    static char BASED_DEBUG _sz[] = sz; \
                    ::GfeTrace(_sz); \
                } while( 0 )
#define TRACE1( sz, p1 )    \
                do {        \
                    static char BASED_DEBUG _sz[] = sz; \
                    ::GfeTrace(_sz, p1); \
                } while( 0 )
#define TRACE2( sz, p1, p2 )        \
                do { \
                    static char BASED_DEBUG _sz[] = sz; \
                    ::GfeTrace(_sz, p1, p2); \
                } while( 0 )
#define TRACE3( sz, p1, p2, p3 )    \
                do { \
                    static char BASED_DEBUG _sz[] = sz; \
                    ::GfeTrace(_sz, p1, p2, p3); \
                } while( 0 )

#else

#define ASSERT( f )             ( (void)0 )
#define VERIFY( f )             ( (void)( f ) )
inline void CDECL GfeTrace( LPCSTR /* pszFormat */, ... ) {}
#define TRACE               1 ? (void)0 : ::GfeTrace
#define TRACE0              1 ? (void)0 : ::GfeTrace
#define TRACE1              1 ? (void)0 : ::GfeTrace
#define TRACE2              1 ? (void)0 : ::GfeTrace
#define TRACE3              1 ? (void)0 : ::GfeTrace

#endif // _DEBUG

#endif // End of conditional inclusion
