//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "stdafx.h"
#include "resource.h"
#include "movielauncher.hpp"
#include <xboxdbg.h>

static bool g_TheOnlyLauncherWasCreated = false;

PCMovieLauncher::PCMovieLauncher( void )
	:
	m_WasLaunched( false )
{
	::memset( ( void * )& m_ViewerProcInfo, 0, sizeof( m_ViewerProcInfo ) );
}

bool PCMovieLauncher::LaunchMovie( char * pFileName, unsigned int audioTrack, ViewerConfig * pViewerConfig )
{
    char pTarget[ 256 ];
    char pModule[ 256 ];
    char pDirectory[ _MAX_DIR ];
    char pDrive[ _MAX_DIR ];

	// Kill the old window (perhaps a bit too violently with terminateprocess)

	if( m_WasLaunched == true )
	{
		::TerminateProcess( m_ViewerProcInfo.hProcess, 0 );
		::CloseHandle( m_ViewerProcInfo.hProcess );
		::CloseHandle( m_ViewerProcInfo.hThread );
	}

	m_WasLaunched = true;
    
	// Figure out where we are

    ::GetModuleFileName( ::GetModuleHandle( NULL ), pModule, 256 );
    _splitpath( pModule, pDrive, pDirectory, NULL, NULL );
    
	// Write an args file

    LauncherArguments args;
    ::memset( &args, 0, sizeof( LauncherArguments ) );
    ::strcpy( args.m_pFileName, pFileName );
    args.m_AudioTrack = audioTrack;

	char pTargetDirectory[ 256 ];
	sprintf( pTargetDirectory, "%s%s", pDrive, pDirectory );
	sprintf( pTarget, "%s\\rviewarg.txt", pTargetDirectory );

    HANDLE hFile = ::CreateFile( pTarget, 
        GENERIC_WRITE, 
        0, 
        NULL, 
        CREATE_ALWAYS, 
        FILE_ATTRIBUTE_NORMAL, 
        NULL ); 

    ASSERT( hFile != INVALID_HANDLE_VALUE );

    DWORD written;
    ::WriteFile( hFile, ( void *)&args, sizeof( LauncherArguments ), & written, NULL );
    ::CloseHandle( hFile );

    // Launch the viewer

    sprintf( pTarget, "movieviewertargetpc.exe" );

    STARTUPINFO si;
	ZeroMemory( &si, sizeof(si) );
	si.cb = sizeof(si);
	ZeroMemory( & m_ViewerProcInfo, sizeof( m_ViewerProcInfo ) );

    if( ! ::CreateProcess( NULL, // Name the process 
        pTarget,                    // No command line arguments
        NULL,						// No security attributes
        NULL,                       // No thread security attributes
        FALSE,                      // No handlle inheritance
        0,                          // No creation flags
        NULL,
        pTargetDirectory,
        & si,
        & m_ViewerProcInfo ) 
    )
    {
        AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_PC_CREATEPROC_FAIL, 0 );
        return false;
    }
	else
	{
        AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_PC_CREATEPROC_SUCCESS, 0 );
	}

    // Wait until child process exits.
    //    WaitForSingleObject( m_ViewerProcInfo.hProcess, INFINITE );

    return true;
}

void PCMovieLauncher::OnDestroy( void )
{
	if( m_WasLaunched == true )
	{
		// Terminate the viewer process if it's alive right now

		::TerminateProcess( m_ViewerProcInfo.hProcess, 0 );
		::CloseHandle( m_ViewerProcInfo.hProcess );
		::CloseHandle( m_ViewerProcInfo.hThread );
	}
}

