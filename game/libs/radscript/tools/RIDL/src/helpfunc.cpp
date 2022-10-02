//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        helpfunc.cpp
//
// Subsystem:	Foundation Technologies - help functions
//
// Description:	This file contains the implementation of the Foundation
//              Technologies typeinfo file generator for scripting system.
//
// Date:    	June 22 2001
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================
#include "stdafx.h"
#include "assert.h"
#include "helpfunc.hpp"

// if return null, there's an error

//===========================================================================
// GetSZRegistryValue
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const HKEY hRootKey
//             const char *szEntry
//             const char *szKey
// 
// Return: char* 
//===========================================================================
char* GetSZRegistryValue(const HKEY hRootKey, const char *szEntry, const char *szKey)
{
    static char szRet[2048];
    HKEY hRegkey = NULL;
    int nRet = RegOpenKeyEx(hRootKey, szEntry, 0, KEY_READ, &hRegkey);

    if (nRet != ERROR_SUCCESS)
    {
        LPVOID lpMsgBuf;
        FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER | 
                      FORMAT_MESSAGE_FROM_SYSTEM | 
                      FORMAT_MESSAGE_IGNORE_INSERTS,
                      NULL,
                      GetLastError(),
                      0, // Default language
                      (LPTSTR) &lpMsgBuf,
                      0,
                      NULL );
        // Display the error string.
        fprintf( stderr, (LPCTSTR)lpMsgBuf );
        // Free the buffer.
        LocalFree( lpMsgBuf );
        return(NULL);
    }

    DWORD dwType;
    DWORD dwLength = 0;

    //
    // here's for dynamic allocate string if string length is longer than 256
    //

    // Get length of the string
    RegQueryValueEx(hRegkey, szKey, NULL, &dwType, NULL, &dwLength);

    unsigned char *szString = NULL;
    szString = new unsigned char[dwLength];

    // read the string
    RegQueryValueEx(hRegkey, szKey, NULL, &dwType, szString, &dwLength);
    
    // datatype must be string
    assert(REG_SZ == dwType || REG_EXPAND_SZ == dwType);
    assert(strlen((char*)szString) < 2048); // string too long

    strcpy(szRet, (char*)szString);


    delete szString;
    szString = 0;

    RegCloseKey(hRegkey);
    hRegkey = NULL;
    return(szRet);
}


//===========================================================================
// CreateDirectoryRecursive
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char * pTargetFilePath
// 
// Return: BOOL 
//===========================================================================
BOOL CreateDirectoryRecursive( const char * pTargetFilePath )
{
    char pDirectory[_MAX_DIR];
    char pDrive[_MAX_DRIVE];
    char pDriveDirectory[_MAX_DIR + _MAX_DRIVE];
    BOOL directoryCreated = FALSE;
    int i = 0;

    _splitpath( pTargetFilePath, pDrive, pDirectory, NULL, NULL );

    if ( pDirectory[ 0 ] == '\0' )
    {
        return TRUE;
    }

    sprintf( pDriveDirectory, "%s%s", pDrive, pDirectory );

    while ( pDriveDirectory[i] != '\0' )
    {
        if
        (
            (
                pDriveDirectory[i] == '\\' ||
                pDriveDirectory[i] == '/'
            ) &&
            i != 0
        )
        {
            pDriveDirectory[i] = '\0';     
            if ( ::GetFileAttributes( pDriveDirectory ) == -1 )
            {
                directoryCreated = ::CreateDirectory( pDriveDirectory, NULL );
            }
            else
            {
                directoryCreated = TRUE;
            }

            pDriveDirectory[i] = '\\';
        }
        i++;
    }

    return directoryCreated;
}

