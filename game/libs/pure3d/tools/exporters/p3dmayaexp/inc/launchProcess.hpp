//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     01 March, 2002
//
// Component:   Maya Exporter - Post Process Launcher
//
// Description: Functions used for launching and monitoring external processes.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __LAUNCHPROCESS_HPP_
#define __LAUNCHPROCESS_HPP_

#ifdef WIN32

//===========================================================================
// Nested Includes
//===========================================================================

#include <wtypes.h>
#include <shellapi.h>
#include <shlwapi.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

extern HWND gMayaWindow;

static const char* gpRedirectFile = "C:\\_launchProcess_shellExecute_redirect.txt";
static const char* gpBatchFile = "C:\\_launchProcess_shellExecute.bat";
static const unsigned int gThreadWaitMilliseconds = 60000;  // maximum time to wait = 60 seconds.

BOOL CALLBACK EnumWindowsProc( HWND hwnd, LPARAM lParam );
void CreateLaunchEnvVar( const char* envName, const char* inFile = NULL, const char* outFile = NULL );
BOOL FindInPath( const char* searchfile, char* pathbuffer, const char* pathvar = "PATH" );
HANDLE LaunchViaShellExecute( const char* execute, const char* args, const char* pathvar = "PATH" );
HANDLE LaunchViaShellExecuteNoArgs( const char* execute, const char* pathvar = "PATH" );
HANDLE LaunchViaStart( const char* execute );

#endif  // WIN32

#endif // __LAUNCHPROCESS_HPP_
