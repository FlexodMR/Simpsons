//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//============================================================================
// ::CreateDirectoryRecursive
//============================================================================

#include <radsoundtools.hpp>
#include <windows.h>

bool rstCreateDirectoryRecursive( const char * pTargetFilePath )
{
    char pDirectory[_MAX_DIR];
    char pDrive[_MAX_DRIVE];
    char pDriveDirectory[_MAX_DIR + _MAX_DRIVE];
    BOOL directoryCreated = FALSE;
    int i = 0;

    _splitpath( pTargetFilePath, pDrive, pDirectory, NULL, NULL );

    sprintf( pDriveDirectory, "%s%s", pDrive, pDirectory );

    while ( pDriveDirectory[i] != '\0' )
    {
        if (pDriveDirectory[i] == '\\' && i != 0)
        {
            pDriveDirectory[i] = '\0';     
            directoryCreated = ::CreateDirectory( pDriveDirectory, NULL );
            pDriveDirectory[i] = '\\';
        }
        i++;
    }

    return directoryCreated == TRUE;
}

bool rstIsFileNewer( const char * pSourceFile, const char * pTargetFile )
{
    bool newer = true;

    HANDLE hSourceFile = ::CreateFile 
    (
        pSourceFile, GENERIC_READ , FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL
    );
    
    HANDLE hTargetFile = ::CreateFile
    (
        pTargetFile, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL 
    );

    if ( hSourceFile != INVALID_HANDLE_VALUE && hTargetFile != INVALID_HANDLE_VALUE )
    {
        FILETIME sourceWriteTime;
        FILETIME targetWriteTime;
    
        ::GetFileTime( hSourceFile, NULL, NULL, & sourceWriteTime );
        ::GetFileTime( hTargetFile, NULL, NULL, & targetWriteTime );

        newer = ( ::CompareFileTime( & sourceWriteTime, & targetWriteTime ) > 0 );
    }
    
    ::CloseHandle( hSourceFile );
    ::CloseHandle( hTargetFile );

    return newer;
};

void rstFlipSlashes ( char * pIn )
{
	if ( pIn != NULL )
	{
		unsigned int len = strlen( pIn );

		for( unsigned int i = 0; i < len; i ++ )
		{
			if ( pIn[ i ] == '/' )
			{
				pIn[ i ] = '\\';
			}
		}
	}
};
