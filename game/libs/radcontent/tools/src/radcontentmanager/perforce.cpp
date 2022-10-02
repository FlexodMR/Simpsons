//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        perforce.cpp
//
// Subsystem:	Radical Content Manager - Perforce
//
// Description:	This file contains the implementation the perforce object. This
//              object is responsible for interacting with Perforce.
//
// Author:		Peter Mielcarski
//
// Revisions:	V1.00	October 8, 2002
//
// Notes:       This subsystem is only available under Win32.
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <windows.h>
#include <radcontentmanager.hpp>
#include "system.hpp"
#include "perforce.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

//=============================================================================
// Statics
//=============================================================================

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// Function:    radCMPerforceManager::radCMPerforceManager
//=============================================================================
// Description: Constructor 
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radCMPerforceManager::radCMPerforceManager( void )
{
    //
    // Create/open mutex to serialize access to perforce
    //
    m_MutexHandle = CreateMutex( NULL, false, "radCMPerforceExclusionObject" ); 
}

//=============================================================================
// Function:    radCMPerforceManager::~radCMPerforceManager
//=============================================================================
// Description: Destructor. Release resources and ensure everything shutdown
//              correctly.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radCMPerforceManager::~radCMPerforceManager( void )
{
    //
    // Close the mutex object
    //
    CloseHandle( m_MutexHandle );
}

//=============================================================================
// Function:    radCMPerforceManager::Initialize
//=============================================================================
// Description: This is used to initialize. Validate perforce settings.
//
// Parameters:  pPerforceInfo
//              
// Returns:     true - success.
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMPerforceManager::Initialize
( 
    radCMPerforceInfo* pPerforceInfo
)
{
    //
    // Lets obtain the mutex. Want to protect our perforce access as we will
    // be altering the current user, etc. The project supports multiple projects,
    // so we must do this.
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );
    
    radCMPerforceInfo   currentSettings;

    if( !GetPerforceInfo( &currentSettings ) )
    {
        return( false );
    }

    //
    // Lets try and set the current settings. If ok, then things are fine.
    //
    bool result = SetPerforceInfo( pPerforceInfo );
    
    //
    // Restore settings and release protection.    
    //
    SetPerforceInfo( &currentSettings );

    ReleaseMutex( m_MutexHandle );

    //
    // Save the current settings in this object. May not be valid but will not be 
    // an issue.
    //
    m_PerforceInfo = *pPerforceInfo;

    if( result )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );
    }

    return( result );
};

//=============================================================================
// Function:    radCMPerforceManager::AddFile
//=============================================================================
// Description: This is used to add a new file to perforce.
//
// Parameters:  pFileName
//              
// Returns:     true - success.
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMPerforceManager::AddFile
( 
    const char* pFilename
)
{
    //
    // Perform following in an atomic manner.
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );
    
    radCMPerforceInfo   currentSettings;
    if( !GetPerforceInfo( &currentSettings ) )
    {
        return( false );
    }

    //
    // Set current info to add file.
    //
    if( !SetPerforceInfo( &m_PerforceInfo ) )
    {
        SetPerforceInfo( &currentSettings );
        ReleaseMutex( m_MutexHandle );
        return( false );
    }

    char commandBuffer[ 512 ];

    wsprintf( commandBuffer, "P4 add %s", pFilename );

    if( 0 != system( commandBuffer ) )
    {
        SetPerforceInfo( &currentSettings );
        ReleaseMutex( m_MutexHandle );

        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, pFilename,
                                           "Failed to add %s to perforce");
        return( false );
    }
    
    SetPerforceInfo( &currentSettings );
    ReleaseMutex( m_MutexHandle );

    radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );

    return( true );
}

//=============================================================================
// Function:    radCMPerforceManager::DeleteFile
//=============================================================================
// Description: This is used to delete a file to perforce.
//
// Parameters:  pFileName
//              
// Returns:     true - success.
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMPerforceManager::DeleteFile
( 
    const char* pFilename
)
{
    //
    // Perform following in an atomic manner.
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );
    
    radCMPerforceInfo   currentSettings;
    if( !GetPerforceInfo( &currentSettings ) )
    {
        return( false );
    }

    //
    // Set current info to add file.
    //
    if( !SetPerforceInfo( &m_PerforceInfo ) )
    {
        SetPerforceInfo( &currentSettings );
        ReleaseMutex( m_MutexHandle );
        return( false );
    }

    char commandBuffer[ 512 ];

    wsprintf( commandBuffer, "P4 delete %s", pFilename );

    if( 0 != system( commandBuffer ) )
    {
        SetPerforceInfo( &currentSettings );
        ReleaseMutex( m_MutexHandle );

        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, pFilename,
                                           "Failed to delete %s from perforce");
        return( false );
    }
    
    SetPerforceInfo( &currentSettings );
    ReleaseMutex( m_MutexHandle );

    radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );

    return( true );
}

//=============================================================================
// Function:    radCMPerforceManager::RevertFile
//=============================================================================
// Description: This is used to revert a file to perforce.
//
// Parameters:  pFileName
//              
// Returns:     true - success.
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMPerforceManager::RevertFile
( 
    const char* pFilename
)
{
    //
    // Perform following in an atomic manner.
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );
    
    radCMPerforceInfo   currentSettings;
    if( !GetPerforceInfo( &currentSettings ) )
    {
        return( false );
    }

    //
    // Set current info to add file.
    //
    if( !SetPerforceInfo( &m_PerforceInfo ) )
    {
        SetPerforceInfo( &currentSettings );
        ReleaseMutex( m_MutexHandle );
        return( false );
    }

    char commandBuffer[ 512 ];

    wsprintf( commandBuffer, "P4 revert %s", pFilename );

    if( 0 != system( commandBuffer ) )
    {
        SetPerforceInfo( &currentSettings );
        ReleaseMutex( m_MutexHandle );

        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, pFilename,
                                           "Failed to revert %s from perforce");
        return( false );
    }
    
    SetPerforceInfo( &currentSettings );
    ReleaseMutex( m_MutexHandle );

    radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );

    return( true );
}


//=============================================================================
// Function:    radCMPerforceManager::EditFile
//=============================================================================
// Description: This is used to edit a file in perforce.
//
// Parameters:  pFileName
//              
// Returns:     true - success.
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMPerforceManager::EditFile
( 
    const char* pFilename
)
{
    //
    // Perform following in an atomic manner.
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );
    
    radCMPerforceInfo   currentSettings;
    if( !GetPerforceInfo( &currentSettings ) )
    {
        return( false );
    }

    //
    // Set current info to add file.
    //
    if( !SetPerforceInfo( &m_PerforceInfo ) )
    {
        SetPerforceInfo( &currentSettings );
        ReleaseMutex( m_MutexHandle );
        return( false );
    }

    char commandBuffer[ 512 ];

    wsprintf( commandBuffer, "P4 edit %s", pFilename );

    if( 0 != system( commandBuffer ) )
    {
        SetPerforceInfo( &currentSettings );
        ReleaseMutex( m_MutexHandle );

        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, pFilename,
                                           "Failed to open %s for edit from perforce");
        return( false );
    }
    
    SetPerforceInfo( &currentSettings );
    ReleaseMutex( m_MutexHandle );

    radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );

    return( true );
}

//=============================================================================
// Private Member Functions
//=============================================================================

//=============================================================================
// Function:    radCMPerforceManager::SetPerforceInfo
//=============================================================================
// Description: This is used set the current cleint, user, and port.
//
// Parameters:  pPerforceInfo
//              
// Returns:     true - success.
//
// Notes:       This routine is responsible for setting last error.
//------------------------------------------------------------------------------

bool radCMPerforceManager::SetPerforceInfo
(
    radCMPerforceInfo* pPerforceInfo
)
{
    //
    // Lets set the client, user, and port.
    //
    char commandBuffer[ 512 ];

    wsprintf( commandBuffer, "P4 set P4PORT=%s", pPerforceInfo->m_Port );

    if( 0 != system( commandBuffer ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, pPerforceInfo->m_Port, 
                                           "Failed to set perforce port %s");
        return( false );
    }

    wsprintf( commandBuffer, "P4 set P4CLIENT=%s", pPerforceInfo->m_Client );

    if( 0 != system( commandBuffer ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, pPerforceInfo->m_Client, 
                                           "Failed to set perforce client %s");
        return( false );
    }

    wsprintf( commandBuffer, "P4 set P4USER=%s", pPerforceInfo->m_User );

    if( 0 != system( commandBuffer ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, pPerforceInfo->m_User, 
                                           "Failed to set perforce user %s");
        return( false );
    }

    return( true );

}

//=============================================================================
// Function:    radCMPerforceManager::GetPerforceInfo
//=============================================================================
// Description: This is used get the current cleint, user, and port.
//
// Parameters:  pPerforceInfo
//              
// Returns:     true - success.
//
// Notes:       This routine is responsible for setting last error.
//------------------------------------------------------------------------------

bool radCMPerforceManager::GetPerforceInfo
(
    radCMPerforceInfo* pPerforceInfo
)
{
    //
    // Lets get the client, user, and port. Need a temporary file to carry this out.
    //
    char tempPath[ _MAX_PATH ];
    char tempFilename[ _MAX_PATH ];

    GetTempPath( sizeof(tempPath), tempPath );
    GetTempFileName( tempPath, "RCM", 0, tempFilename );
     
    char commandBuffer[ 512 ];
    char resultBuffer[ 512 ];
    DWORD sizeRead;

    wsprintf( commandBuffer, "P4 set P4PORT > %s", tempFilename );

    if( 0 != system( commandBuffer ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, "Failed to get perforce port" );
        return( false );
    }

    //
    // Open the file and read the current port.
    //
    HANDLE tempFileHandle = CreateFile( tempFilename, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL );
    if( tempFileHandle == INVALID_HANDLE_VALUE )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, "Failed to get perforce port" );
        return( false );
    }
    
    memset( resultBuffer, ' ', sizeof( resultBuffer ) );

    ReadFile( tempFileHandle, resultBuffer, sizeof( resultBuffer ), &sizeRead, NULL );
         
    CloseHandle( tempFileHandle );

    //
    // This is weak, as it assumes the format of the string. "P4PORT=name (set)"
    //
    char* ptr = resultBuffer + 7;
    unsigned int i = 0;
    while( *ptr != ' ' )
    {
        pPerforceInfo->m_Port[ i ] = *ptr;
        ptr++;
        i++;
    }
    pPerforceInfo->m_Port[ i ] = '\0';

    //
    // Now do the user.
    //              
    wsprintf( commandBuffer, "P4 set P4USER > %s", tempFilename );

    if( 0 != system( commandBuffer ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, "Failed to get perforce user" );
        return( false );
    }

    //
    // Open the file and read the current port.
    //
    tempFileHandle = CreateFile( tempFilename, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL );
    if( tempFileHandle == INVALID_HANDLE_VALUE )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, "Failed to get perforce port" );
        return( false );
    }
    
    memset( resultBuffer, ' ', sizeof( resultBuffer ) );

    ReadFile( tempFileHandle, resultBuffer, sizeof( resultBuffer ), &sizeRead, NULL );
         
    CloseHandle( tempFileHandle );

    //
    // This is weak, as it assumes the format of the string. "P4USER=name (set)"
    //
    ptr = resultBuffer + 7;
    i = 0;
    while( *ptr != ' ' )
    {
        pPerforceInfo->m_User[ i ] = *ptr;
        ptr++;
        i++;
    }
    pPerforceInfo->m_User[ i ] = '\0';
              
    //
    // Now do the cleint.
    //              
    wsprintf( commandBuffer, "P4 set P4CLIENT > %s", tempFilename );

    if( 0 != system( commandBuffer ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, "Failed to get perforce client" );
        return( false );
    }

    //
    // Open the file and read the current port.
    //
    tempFileHandle = CreateFile( tempFilename, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL );
    if( tempFileHandle == INVALID_HANDLE_VALUE )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodePerforceFailure, "Failed to get perforce port" );
        return( false );
    }
    
    memset( resultBuffer, ' ', sizeof( resultBuffer ) );

    ReadFile( tempFileHandle, resultBuffer, sizeof( resultBuffer ), &sizeRead, NULL );
         
    CloseHandle( tempFileHandle );

    //
    // This is weak, as it assumes the format of the string. "P4CLIENT=name (set)"
    //
    ptr = resultBuffer + 9;
    i = 0;
    while( *ptr != ' ' )
    {
        pPerforceInfo->m_Client[ i ] = *ptr;
        ptr++;
        i++;
    }
    pPerforceInfo->m_Client[ i ] = '\0';
              
    //
    // Destroy the temp file.
    //
    ::DeleteFile( tempFilename );

    return( true );
}
