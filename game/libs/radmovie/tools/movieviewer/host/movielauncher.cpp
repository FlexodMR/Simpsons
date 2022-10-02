//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "stdafx.h"
#include "movielauncher.hpp"
#include "resource.h"
#include <xboxdbg.h>

static char * g_pXBoxInstallDir = "c:\\program files\\microsoft xbox sdk\\xbox\\bin\\";
static char * g_pXBoxTargetDir = "xe:\\movieviewertarget\\";
static bool g_TheOnlyLauncherWasCreated = false;

char * g_pMessages[] = {
    NULL,
    "Copying Files to XBox...",
    "Rebooting XBox...",
    "Launching viewer on XBox...",   
    "Movie running on XBox..." };

XBoxMovieLauncher::XBoxMovieLauncher( void )
    : 
    m_ThreadHandle( NULL ), 
    m_Event( NULL ),
    m_WasLaunched( false )
{
    ASSERT( g_TheOnlyLauncherWasCreated == false );
    g_TheOnlyLauncherWasCreated = true;
    m_Event = ::CreateEvent( NULL, false, true, NULL );
}

DWORD WINAPI XBoxMovieLauncher::ThreadEntry( void * pData )
{
    XBoxMovieLauncher * pLauncher = ( XBoxMovieLauncher * ) pData;

    bool isGood = true;

    AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_XBOX_COPYING_FILES, 0 );

    if( CopyFiles( pLauncher->m_pFileName, pLauncher->m_AudioTrack ) )
    {
        // Launch the movie

        AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_XBOX_REBOOTING, 0 );
        unsigned int result = DmReboot( DMBOOT_WAIT );
        if( result == XBDM_NOERR )
        {
            char arg[ 1024 ];
            sprintf( arg, "%u]%d",
                pLauncher->m_AudioTrack,
                "sample_bink.rmv" );
            do 
            {
                Sleep( 300 );
                
                result = DmSetTitle( g_pXBoxTargetDir, "movieviewertarget.xbe", arg );
            }
            while( result == XBDM_CANNOTCONNECT );

            AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_XBOX_LAUNCHING, 0 );

            if( result == XBDM_NOERR )
            {
                result = DmGo( );
                if( result == XBDM_NOERR )
                {
                    AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_XBOX_LAUNCHING_SUCCESS, 0 );
                    pLauncher->m_WasLaunched = true;
                    isGood = true;
                }
				else
				{
					AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_XBOX_LAUNCHING_FAIL, 0 );
				}
            }
			else
			{
				AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_XBOX_LAUNCHING_FAIL, 0 );
			}
        }
    }
	else
	{
		AfxGetApp( )->GetMainWnd( )->PostMessage( WM_STATUS_TEXT, ( WPARAM ) IDS_XBOX_COPY_FAIL, 0 );
	}


    ::CloseHandle( pLauncher->m_ThreadHandle );
    pLauncher->m_ThreadHandle = 0;
    ::SetEvent( pLauncher->m_Event );
    ::ExitThread( ( isGood == true ) ? 1 : -1 );
    return 0;
}


bool XBoxMovieLauncher::LaunchMovie( char * pFileName, unsigned int audioTrack, ViewerConfig * pViewerConfig )
{
    if( WAIT_OBJECT_0 == ::WaitForSingleObject( m_Event, 0 ) )
    {
        ::strcpy( m_pFileName, pFileName );
        m_AudioTrack = audioTrack;
        m_ThreadHandle = ::CreateThread( NULL, 10240, ThreadEntry, this, NULL, NULL );
    }
    return true;
}

void XBoxMovieLauncher::OnDestroy( void )
{
    if( m_WasLaunched == true )
    {
        unsigned int result = DmReboot( DMBOOT_WAIT );
    }
}

bool XBoxMovieLauncher::CopyFiles( char * pMovieName, unsigned int audioTrack )
{
    // Use XBCPY.EXE to copy

    char local[ 256 ];
    char target[ 256 ];

    // The XBE will be located in the bin directory

    char module[ 256 ];
    char pDirectory[_MAX_DIR];
    char pDrive[_MAX_DRIVE];

    ::GetModuleFileName( ::GetModuleHandle( NULL ), module, 256 );
    _splitpath( module, pDrive, pDirectory, NULL, NULL );

    MkDir( g_pXBoxTargetDir );
    sprintf( local, "%s%smovieviewertarget.xbe", pDrive, pDirectory );
    sprintf( target, "%smovieviewertarget.xbe", g_pXBoxTargetDir );
    if( ! SendFile( local, target, true ) )
    {
        return false;
    }

    // The radsound effects image 

    sprintf( local, "%s%srsdeffects.bin", pDrive, pDirectory );
    sprintf( target, "%simg\\", g_pXBoxTargetDir );
    MkDir( target );
    sprintf( target, "%simg\\rsdeffects.bin", g_pXBoxTargetDir );
    if( ! SendFile( local, target, true ) )
    {
        return false;
    }

    // The movie file is wherever the user put it

    char fileName[ 256 ];
    char ext[ 8 ];
    _splitpath( pMovieName, NULL, NULL, fileName, ext );
    sprintf( local, "%s", pMovieName );
    sprintf( target, "%s\\%s%s", g_pXBoxTargetDir, fileName, ext );
    if( ! SendFile( local, target, false ) )
    {
        return false;
    }

    // An arguments file

    LauncherArguments args;
    ::memset( &args, 0, sizeof( LauncherArguments ) );

    sprintf( target, "d:\\%s%s", fileName, ext );
    ::strcpy( args.m_pFileName, target );
    args.m_AudioTrack = audioTrack;

    sprintf( local, "%s\\rviewarg.txt", pDirectory );
    HANDLE hFile = ::CreateFile( local, 
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

    // Now send the arguments across

    sprintf( target, "%s\\rviewarg.txt", g_pXBoxTargetDir );
    if( ! SendFile( local, target, false ) )
    {
        return false;
    }

    return true;
}

bool XBoxMovieLauncher::SendFile( char * pLocalName, char * pRemoteName, bool checkDate )
{
    bool performSend = true;
    
    if( checkDate == true )
    {
        DM_FILE_ATTRIBUTES attrib;
        unsigned int r = DmGetFileAttributes( pRemoteName, & attrib );

        if( r == XBDM_NOERR  )
        {
            WIN32_FILE_ATTRIBUTE_DATA localAttrib;
            if( ! GetFileAttributesEx( pLocalName, GetFileExInfoStandard, & localAttrib ) )
            {
                HRESULT hr = HRESULT_FROM_WIN32( GetLastError( ) );
            }

            int result = CompareFileTime( & localAttrib.ftLastWriteTime, & attrib.ChangeTime );
            if( result <= 0 )
            {
                performSend = false;
            }
        }
    }

    if( performSend == true )
    {
        unsigned int hr = DmSendFile( pLocalName, pRemoteName );
        return ( hr == XBDM_NOERR );
    }
    else
    {
        return true;
    }
}

bool XBoxMovieLauncher::MkDir( char * pDirName )
{
    unsigned int result = DmMkdir( pDirName );
    return( result == XBDM_NOERR || result == XBDM_ALREADYEXISTS );
}