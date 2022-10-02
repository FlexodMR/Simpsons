//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        movielauncherps2deci.cpp
//
// Subsystem:   Foundation Technologies - Movie Player Services
//
// Description: Implementation of the movie launcher for ps2 tools (deci)
//
// Creation:    November 25, 2002 RWS
// 
//=============================================================================

//=============================================================================
// Included Files
//=============================================================================

#include "stdafx.h"
#include "resource.h"
#include "movielauncher.hpp"

//=============================================================================
// Local variables
//=============================================================================

static bool g_TheOnlyLauncherWasCreated = false;

//=============================================================================
// Ps2DeciMovieLauncher::Ps2DeciMovieLauncher
//=============================================================================

Ps2DeciMovieLauncher::Ps2DeciMovieLauncher( void )
    : 
    m_ThreadHandle( NULL ), 
    m_Event( NULL ),
	m_TempFileIndex( 0 ),
    m_WasLaunched( false )
{
    ASSERT( g_TheOnlyLauncherWasCreated == false );
    g_TheOnlyLauncherWasCreated = true;
    m_Event = ::CreateEvent( NULL, false, true, NULL );
	::memset( ( void * )& m_ViewerProcInfo, 0, sizeof( m_ViewerProcInfo ) );
	::memset( ( void * ) m_pIPAddressDesc, 0, 20 );
}

//=============================================================================
// Ps2DeciMovieLauncher::LaunchMovie
//=============================================================================

bool Ps2DeciMovieLauncher::LaunchMovie( char * pFileName, unsigned int audioTrack, ViewerConfig * pViewerConfig )
{
	::strcpy( m_pIPAddressDesc, pViewerConfig->m_pPs2DeciIPDescription );

	if( WAIT_OBJECT_0 == ::WaitForSingleObject( m_Event, 0 ) )
    {
        ::strcpy( m_pFileName, pFileName );
        m_AudioTrack = audioTrack;
        m_ThreadHandle = ::CreateThread( NULL, 10240, ThreadEntry, this, NULL, NULL );
    }
    return true;
}

//=============================================================================
// Ps2DeciMovieLauncher::OnDestroy
//=============================================================================

void Ps2DeciMovieLauncher::OnDestroy( void )
{
    if( m_WasLaunched == true )
    {
		Cleanup( );
    }
}

//=============================================================================
// Ps2DeciMovieLauncher::ThreadEntry
//=============================================================================

DWORD WINAPI Ps2DeciMovieLauncher::ThreadEntry( void * pData )
{
    Ps2DeciMovieLauncher * pLauncher = ( Ps2DeciMovieLauncher * ) pData;

	// Clean up the ps2 if necessary

	pLauncher->Cleanup( );

    pLauncher->m_WasLaunched = true;
    bool isGood = true;

	// Sort out the source and destination directories

	char pModule[ MAX_PATH ];
	char pSrcDrive[ MAX_PATH ];
	char pSrcDir[ MAX_PATH ];
    ::GetModuleFileName( ::GetModuleHandle( NULL ), pModule, MAX_PATH );
    _splitpath( pModule, pSrcDrive, pSrcDir, NULL, NULL );

	char pDestDrive[ MAX_PATH ];
	char pDestDir[ MAX_PATH ];
	char pDestIrxDir[ MAX_PATH ];
	_splitpath( pLauncher->m_pFileName, pDestDrive, pDestDir, NULL, NULL );
	sprintf( pDestIrxDir, "%sirx\\", pDestDir );

	// Copy all the files in the irx directory to the location of the movie

    AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_PS2_DECI_COPY_IOP_MODULES, 0 );

	char buf[ MAX_PATH ];
	sprintf( buf, "%s%sirx\\*.irx", pSrcDrive, pSrcDir );

	// Make sure that that irx directory exists...

	::CreateDirectory( pDestIrxDir, NULL );

	if( pLauncher->CopyFiles( buf, pDestDrive, pDestIrxDir ) )
	{
		sprintf( buf, "%s%sirx\\*.img", pSrcDrive, pSrcDir );
		if( ! pLauncher->CopyFiles( buf, pDestDrive, pDestIrxDir ) )
		{
			isGood = false;
		}
	}
	else
	{
		isGood = false;
	}

	if( isGood == true )
	{
		AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_PS2_DECI_WRITE_ARGS, 0 );

		if( pLauncher->WriteArguments( ) )
		{
			AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_PS2_DECI_LAUNCH_ELF, 0 );

			if( ! pLauncher->LaunchElf( ) )
			{
				isGood = false;
				AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_PS2_DECI_LAUNCH_ELF_FAIL, 0 );
			}
			else
			{
				AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_PS2_DECI_LAUNCH_ELF_SUCCESS, 0 );
			}
		}
		else
		{
			isGood = false;
			AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_PS2_DECI_WRITE_ARGS_FAIL, 0 );
		}
	}
	else
	{
		isGood = false;
		AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_PS2_DECI_COPY_IOP_MODULES_FAIL, 0 );
	}

	// Let the thread go

	::CloseHandle( pLauncher->m_ThreadHandle );
    pLauncher->m_ThreadHandle = 0;
    ::SetEvent( pLauncher->m_Event );
    ::ExitThread( ( isGood == true ) ? 1 : -1 );
    return 0;
}

bool Ps2DeciMovieLauncher::CopyFiles( char * pSearch, char * pDestDrive, char * pDestDir )
{
	char pSrcDrive[ MAX_PATH ];
	char pSrcDir[ MAX_PATH ];
	_splitpath( pSearch, pSrcDrive, pSrcDir, NULL, NULL );

	// Get a handle to the first file

	WIN32_FIND_DATA findData;
	HANDLE hSearch = ::FindFirstFile( pSearch, & findData ); 
	if( hSearch == INVALID_HANDLE_VALUE ) 
	{ 
		return false;
	} 

	char copySrc[ MAX_PATH ];
	char copyDest[ MAX_PATH ];

	while( true ) 
	{ 
		sprintf( copySrc, "%s%s%s", pSrcDrive, pSrcDir, findData.cFileName );
		sprintf( copyDest, "%s%s%s", pDestDrive, pDestDir, findData.cFileName );

		if( ! ::CopyFile( copySrc, copyDest, false ) )
		{
			return false;
		}
		else
		{
			// Remeber the name of the file and increment the index

			::strcpy( m_ppTempFileNames[ m_TempFileIndex ], copyDest );
			m_TempFileIndex++;
			ASSERT( m_TempFileIndex < 7 );

			if( ! ::FindNextFile( hSearch, & findData ) ) 
			{
				if( ::GetLastError( ) != ERROR_NO_MORE_FILES ) 
				{
					return false;
				} 
				else
				{
					return true;
				}
			}
		}
	} 
}

bool Ps2DeciMovieLauncher::WriteArguments( void )
{
	char pDrive[ MAX_PATH ];
	char pDir[ MAX_PATH ];
	char pFileName[ MAX_PATH ];
	char pExt[ MAX_PATH ];
	char pTarget[ MAX_PATH ];
	_splitpath( m_pFileName, pDrive, pDir, pFileName, pExt );
	sprintf( pTarget, "%s%s", pFileName, pExt );

    // An arguments file

    LauncherArguments args;
    ::memset( &args, 0, sizeof( LauncherArguments ) );

    ::strcpy( args.m_pFileName, pTarget );
    args.m_AudioTrack = m_AudioTrack;

    sprintf( pTarget, "%s%s\\rviewarg.txt", pDrive, pDir );
    HANDLE hFile = ::CreateFile( pTarget, 
        GENERIC_WRITE, 
        0, 
        NULL, 
        CREATE_ALWAYS, 
        FILE_ATTRIBUTE_NORMAL, 
        NULL ); 

	if( hFile == INVALID_HANDLE_VALUE )
	{
		return false;
	}
	
	::strcpy( m_ppTempFileNames[ m_TempFileIndex ], pTarget );
	m_TempFileIndex++;

    DWORD written;
	
	if( ! ::WriteFile( hFile, ( void *)&args, sizeof( LauncherArguments ), & written, NULL ) )
	{
		return false;
	}

    if( ! ::CloseHandle( hFile ) )
	{
		return false;
	}
	return true;
}

bool Ps2DeciMovieLauncher::LaunchElf( void )
{
	// Working directory

	char pDrive[ 256 ];
	char pDir[ 256 ];
	char pWorkingDir[ 256 ];
	_splitpath( m_pFileName, pDrive, pDir, NULL, NULL );
	sprintf( pWorkingDir, "%s%s", pDrive, pDir );

	// Elf info
	
	char pElfDrive[ MAX_PATH ];
	char pElfDir[ MAX_PATH ];
	char pElf[ MAX_PATH ];
	char pModule[ MAX_PATH ];
    ::GetModuleFileName( ::GetModuleHandle( NULL ), pModule, MAX_PATH );
    _splitpath( pModule, pElfDrive, pElfDir, NULL, NULL );
	sprintf( pElf, "%s%smovieviewertargetps2decipd.elf", pElfDrive, pElfDir );

	char buf[ 512 ];
	STARTUPINFO si;
	ZeroMemory( &si, sizeof(si) );
	si.cb = sizeof(si);
	ZeroMemory( & m_ViewerProcInfo, sizeof( m_ViewerProcInfo ) );

	// Reboot the ps2 if we launched anything on it

	sprintf( buf, "tgps2run.exe -d %s -p %s %s", m_pIPAddressDesc, pWorkingDir, pElf );
	if( ::CreateProcess( NULL, // Name the process 
		buf,                   // The reboot command
		NULL,			       // No security attributes
		NULL,                  // No thread security attributes
		FALSE,                 // No handlle inheritance
		0,                     // No creation flags
		NULL,
		NULL,
		& si,
		& m_ViewerProcInfo ) 
	)
	{
		return true;
	}
	else
	{
		return false;
	}
}

void Ps2DeciMovieLauncher::Cleanup( void )
{
	if( m_WasLaunched == true )
	{
		m_WasLaunched = false;

		char buf[ 512 ];
		STARTUPINFO si;
		PROCESS_INFORMATION pi;
		ZeroMemory( &si, sizeof(si) );
		si.cb = sizeof(si);
		ZeroMemory( & pi, sizeof( pi ) );

		// Kill the old process if it's around

		::TerminateProcess( m_ViewerProcInfo.hProcess, 0 );
		::CloseHandle( m_ViewerProcInfo.hProcess );
		::CloseHandle( m_ViewerProcInfo.hThread );
		m_ViewerProcInfo.hProcess = 0;
		m_ViewerProcInfo.hThread = 0;

		// Reboot the ps2 if we launched anything on it
		AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_PS2_DECI_REBOOT, 0 );

		// Delete any files that we wrote

		for( unsigned int i = 0; i < m_TempFileIndex; i++ )
		{
			::DeleteFile( m_ppTempFileNames[ i ] );
		}
		m_TempFileIndex = 0;

		// Remove the irx directory

		char pDrive[ MAX_PATH ];
		char pDir[ MAX_PATH ];
		_splitpath( m_pFileName, pDrive, pDir, NULL, NULL );
		sprintf( buf, "%s%sirx\\", pDrive, pDir );
		::RemoveDirectory( buf );
	}
}