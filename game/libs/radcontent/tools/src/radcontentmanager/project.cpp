//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        project.cpp
//
// Subsystem:	Radical Content Manager - Project
//
// Description:	This file contains the implementation the project objects which
//              are the top most objects of the Radical Content Manager. 
//
// Author:		Peter Mielcarski
//
// Revisions:	V1.00	October 9, 2002
//
// Notes:       This subsystem is only available under Win32.
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <windows.h>
#include <radcontentmanager.hpp>
#include "project.hpp"
#include "system.hpp"
#include "perforce.hpp"
#include "assetmanager.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

//
// These are used to define the section and key values for the main project
// file.
//
#define PROJECT_SECTION_SETTINGS "Project Settings"
#define PROJECT_KEY_SHAREDDRIVES "Shared Drives"

//
// Contains the extension for the asset file.
//
#define ASSETS_FILENAME_EXT        ".ast"

//=============================================================================
// Statics
//=============================================================================

//=============================================================================
// Member Functions
//=============================================================================

//=============================================================================
// Function:    radCMProject::radCMProject
//=============================================================================
// Description: Constructor for project object
//
// Parameters:  
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radCMProject::radCMProject( void )
    :
    m_RefCount( 0 ),
    m_pPerforceManager( NULL ),
    m_pAssetManager( NULL ),
    m_MutexHandle( INVALID_HANDLE_VALUE )
{
    //
    // Clear the various names until we are initialized.
    //
    strcpy( m_FileSpec, "" );
    strcpy( m_RootPath, "" );
    strcpy( m_FileName, "" );
}

//=============================================================================
// Function:    radCMProject::~radCMProject
//=============================================================================
// Description: Destructor. 
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radCMProject::~radCMProject( void )
{
    if( m_pAssetManager != NULL )
    {
        delete m_pAssetManager;
    }

    if( m_pPerforceManager != NULL )
    {
        delete m_pPerforceManager;
    }

    //
    // Check mutex. If created, close it.
    //
    if( m_MutexHandle != INVALID_HANDLE_VALUE )
    {
        CloseHandle( m_MutexHandle );
    }
}

//=============================================================================
// Function:    radCMProject::Create
//=============================================================================
// Description: Static member for constructing new project objects. 
//
// Parameters:  where to return pointer to object.
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMProject::Create( radCMProject** pProject)
{
    //
    // Construct the objects, remember to add reference it,
    //
    *pProject = new radCMProject( );
    (*pProject)->AddRef( );
}

//=============================================================================
// Function:    radCMProject::Initialize
//=============================================================================
// Description: This member is to intialize the project object using a new file
//              or from an existing project.
//
// Parameters:  fileSpec      - Fully qualified path and filename of project
//              directoryPath - path to the root project
//              fileName      - file name part
//              bool          - true if create new,
//              pPerforceManager - perforce stuff
//              
// Returns:     true - success
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMProject::Initialize
( 
    const char*           pFileSpec,
    const char*           pDirectoryPath,
    const char*           pFileName,
    bool                  create,
    radCMPerforceManager* pPerforceManager
)
{
    //
    // Save the root path of the project, filename of the main project file,
    // and the filepart.
    //
    strcpy( m_FileSpec, pFileSpec );
    strcpy( m_RootPath, pDirectoryPath );
    strcpy( m_FileName, pFileName );

    //
    // Save perforce manager.
    //
    m_pPerforceManager = pPerforceManager;
    
    //
    // Check if we are creating or openning the project.
    //
    if( create )
    {
        //
        // First lets create the ini file we use for basic project settings. 
        // This will initially store not shared drives.
        //
        if( 0 == WritePrivateProfileString( PROJECT_SECTION_SETTINGS,
                                            PROJECT_KEY_SHAREDDRIVES, 
                                            "",
                                            m_FileSpec ) )
        {
            //
            // Failed. Set last error.
            //
            radCMSystem::Get( )->SetLastError( radCMErrorCodeAccessRights, m_FileSpec, "Failed to create project file %s" );
            return( false );
        }
            
        //
        // Lets try to add this file to perforce if user has requested perforce access.
        //
        if( m_pPerforceManager != NULL )
        {
            if( !m_pPerforceManager->AddFile( m_FileSpec ) )
            {
                //
                // Failed add to perforce. Destroy project file.
                //
                DeleteFile( m_FileSpec );
                return( false );
            }
        }

        //
        // Create file used for identify assets.
        //
        HANDLE tempFileHandle;
        char fileName[ _MAX_PATH ];
        char filePart[ _MAX_PATH ];
        _splitpath( m_FileName, NULL, NULL, filePart, NULL );
  
        strcpy( fileName, m_RootPath );
        strcat( fileName, "\\");
        strcat( fileName, filePart );
        strcat( fileName, ASSETS_FILENAME_EXT ); 

        tempFileHandle = CreateFile( fileName, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, NULL,
                                     CREATE_NEW, FILE_ATTRIBUTE_NORMAL, NULL );
            
        if( tempFileHandle == INVALID_HANDLE_VALUE )
        {
            radCMSystem::Get( )->SetLastError( radCMErrorCodeAccessRights, fileName, "Failed to create project asset file %s" );
            m_pPerforceManager->RevertFile( m_FileSpec );    
            DeleteFile( m_FileSpec );
            return( false );
        }
         
        CloseHandle( tempFileHandle );

        //
        // Lets try to add this file to perforce if user has requested perforce access.
        //
        if( m_pPerforceManager != NULL )
        {
            if( !m_pPerforceManager->AddFile( fileName ) )
            {
                //
                // Failed add to perforce. Destroy asset file, project file and remove project form perforce.
                //
                m_pPerforceManager->RevertFile( m_FileSpec );    
                DeleteFile( fileName );
                DeleteFile( m_FileSpec );
                return( false );
            }
        }

        //
        // Life is good. Return success.
        //
        radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );
        return( true );
    }
    else
    {
        //
        // Here the caller has requested the project be openned. Construct
        // asset manager and initialize it. First create a mutex to serialize
        // access to project setting file.Build the name of the mutex   
        //
        char    tempName[ _MAX_PATH + 1 ];
        radCMSystem::Get( )->BuildResourceName( tempName, "MUTEX", m_FileSpec );

        m_MutexHandle = CreateMutex( NULL, FALSE, tempName );
        rAssert( m_MutexHandle != NULL );

        char fileName[ _MAX_PATH ];
        m_pAssetManager = new radCMAssetManager( );

        char filePart[ _MAX_PATH ];
        _splitpath( m_FileName, NULL, NULL, filePart, NULL );
  
        strcpy( fileName, m_RootPath );
        strcat( fileName, "\\");
        strcat( fileName, filePart );
        strcat( fileName, ASSETS_FILENAME_EXT ); 

        if( !m_pAssetManager->Initialize( this, fileName, m_RootPath, m_pPerforceManager ))
        {
            return( false );
        }
        radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );
        return( true );
    }
}           

//=============================================================================
// Function:    radCMProject::Destroy
//=============================================================================
// Description: This static member used to destroy the project. Will wipe
//              everything out.
//
// Parameters:  fileSpec      - Fully qualified path and filename of project
//              directoryPath - path to the root project
//              fileName      - file name part
//              pPerforceManager 
//              
// Returns:     true - success
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMProject::Destroy
( 
    const char* fileSpec,
    const char* directoryPath,
    const char* fileName,
    radCMPerforceManager* pPerforceManager
)
{
    //
    // This is currently not supported.
    //
    if( pPerforceManager != NULL )
    {
        delete pPerforceManager;
    }

    radCMSystem::Get( )->SetLastError( radCMErrorCodeNotSupported, "Project destruction not currently supported" );

    return( false );
}

//=============================================================================
// Function:    radCMProject::AddRef
//=============================================================================
// Description: Manages lifetime of object.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:       This is a thread safe implementation.
//------------------------------------------------------------------------------

void radCMProject::AddRef( void )
{
    radCMSystem::Get( )->Lock( );

    m_RefCount++;

    radCMSystem::Get( )->Unlock( );
}        

//=============================================================================
// Function:    radCMProject::Release
//=============================================================================
// Description: Manages lifetime of object.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:       This is a thread safe implementation.
//------------------------------------------------------------------------------

void radCMProject::Release( void )
{
    radCMSystem::Get( )->Lock( );

    m_RefCount--;
    if( m_RefCount == 0 )
    {
        radCMSystem::Get( )->Unlock( );
        delete this;
    }
    else
    {
        radCMSystem::Get( )->Unlock( );
    }
}        


//=============================================================================
// Function:    radCMProject::DestroyDirectoryRecursive
//=============================================================================
// Description: This function will kill all subdirectories off of the directory
//              path that contain the fileName spec in their name. All files
//              in these subdirectories will be destroyed.
//
// Parameters:  directoryPath - root directory of destruction.
//              fileName      - name that must be contained in the directory name    
//
// Returns:     true - success
//
//------------------------------------------------------------------------------

bool radCMProject::DestroyDirectoryRecursive
(   
    const char* directoryPath,
    const char* fileName
)
{
    //
    // Now lets construct the search spec. It will take the form
    // of directorypath\*
    //
    char searchSpec[ _MAX_PATH ];

    strcpy( searchSpec, directoryPath );
    strcat( searchSpec, "\\*" );

    //
    // Now lets do the directory seach using this search spec.
    //
    WIN32_FIND_DATA FindFileData;
    HANDLE          findHandle;
    
    findHandle = FindFirstFile( searchSpec, &FindFileData );

    if( findHandle == INVALID_HANDLE_VALUE ) 
    {
        //
        // We are done. No matches.
        //
        return( true ); 
    }

    //
    // Loop until no more entries or recursive calls reports an error.
    //
    bool result = true;

    do
    {
        //
        // Build up the fully qualified  file name.
        //
        char fileSpec[ _MAX_PATH ];
        strcpy( fileSpec, directoryPath );
        strcat( fileSpec, "\\" );
        strcat( fileSpec, FindFileData.cFileName );
        
        //
        // Check if the match is a directory or a file.
        //
        if( 0 == (FindFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY ) )
        {
            //
            // Match is a file. Try to destroy the file.
            //
            result = (TRUE == DeleteFile( fileSpec ));
        }
        else
        {
            //
            // Here we have a directory entry. Lets invoke ourself again provided
            // this directory is part of the project. The directory must contain
            // the filename as the leading part of the the directory name.
            //
            if( 0 == strnicmp( fileName, FindFileData.cFileName, strlen( fileName ) ) )
            {
                if( strlen( fileName ) + 2 <= strlen( FindFileData.cFileName ) )
                {
                    if( FindFileData.cFileName[ strlen( fileName ) ] == '.' )      
                    {
                        result = DestroyDirectoryRecursive( fileSpec, fileName );

                        //
                        // If no problem, destory the directory itself.
                        //
                        if( result )
                        {
                            RemoveDirectory( fileSpec );   
                        }
                    }
                }
            }
        }   

        //
        // Lets get the next entry in the directory.
        //
    }
    while( FindNextFile( findHandle, &FindFileData ) && result );                 
    
    //
    // Done. Close find handle and return result.
    //
    FindClose( findHandle );

    return( result );
}

//=============================================================================
// Function:    radCMProject::GetProjectSettings
//=============================================================================
// Description: Used to obtain interface to project settings
//
// Parameters:  n/a
//              
// Returns:     IRadCMProjectSettings*
//
// Notes:       
//------------------------------------------------------------------------------

IRadCMProjectSettings* radCMProject::GetProjectSettings( void )
{
    return( this );
}

//=============================================================================
// Function:    radCMProject::GetAssetManager
//=============================================================================
// Description: Used to obtain interface to asset manager.
//
// Parameters:  n/a
//              
// Returns:     IRadCMAssetManager*
//
// Notes:       
//------------------------------------------------------------------------------

IRadCMAssetManager* radCMProject::GetAssetManager( void )
{
    return( m_pAssetManager );
}

//=============================================================================
// Function:    radCMProject::AddSharedDrive
//=============================================================================
// Description: Use this member to add a shared drive.
//
// Parameters:  drive letter
//              
// Returns:     bool
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMProject::AddSharedDrive
( 
    const char*  pDrive
)
{
    //
    // Convert character to a string.
    //
    if( (2 != strlen( pDrive )) || (0 == isalpha( pDrive[ 0 ] )) || (':' != pDrive[ 1 ] ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidDrive, pDrive, "Invalid drive %s: specified" );
        return( false );
    }
       
    char DriveString [ 3 ];
    strcpy( DriveString, pDrive );
    strlwr( DriveString );

    //
    // Check if drive is already in existance.
    //
    if( IsSharedDrive( pDrive ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidDrive, pDrive, "Drive %s: already specified" );
        return( false );
    }

    //
    // Protect the following operation.
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );

    //
    // Lets get the drive sting info.
    //
    DWORD bytesReturned;
    char driveBuffer[ 512 ];

    bytesReturned = GetPrivateProfileString( PROJECT_SECTION_SETTINGS,
                                             PROJECT_KEY_SHAREDDRIVES,
                                             "",
                                             driveBuffer,
                                             sizeof( driveBuffer ),
                                             m_FileSpec );
    if( bytesReturned == 0 )
    {
        strcpy( driveBuffer, DriveString );
    }
    else
    {
        strcat( driveBuffer, ", ");
        strcat( driveBuffer, DriveString );
    }
   
    //
    // Open project file for edit.
    //
    if( m_pPerforceManager != NULL )
    {
        if( !m_pPerforceManager->EditFile( m_FileSpec ) )
        {
            ReleaseMutex( m_MutexHandle );
            return( false );
        }
    }

    if( 0 == WritePrivateProfileString( PROJECT_SECTION_SETTINGS,
                                        PROJECT_KEY_SHAREDDRIVES, 
                                        driveBuffer,
                                        m_FileSpec ) )
    {
        //
        // Failed. Set last error.
        //
        ReleaseMutex( m_MutexHandle );
        radCMSystem::Get( )->SetLastError( radCMErrorCodeAccessRights, m_FileSpec, "Failed to write project file %s" );
        return( false );
    }

    ReleaseMutex( m_MutexHandle );

    radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );

    return( true );
}

//=============================================================================
// Function:    radCMProject::RemoveSharedDrive
//=============================================================================
// Description: Deletes drive from shared list.
//
// Parameters:  drive letter
//              
// Returns:     true - success
//
// Notes:       This will need an update to deal with asset files already in
//              existance on this drive.
//------------------------------------------------------------------------------

bool radCMProject::RemoveSharedDrive
( 
    const char* pDrive
)
{
    //
    // Convert character to a string.
    //
    if( (2 != strlen( pDrive )) || (0 == isalpha( pDrive[ 0 ] )) || (':' != pDrive[ 1 ] ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidDrive, pDrive, "Invalid drive %s: specified" );
        return( false );
    }
       
    char DriveString [ 3 ];
    strcpy( DriveString, pDrive );
    strlwr( DriveString );

    //
    // Check if drive is already in existance.
    //
    if( !IsSharedDrive( pDrive ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidDrive, pDrive, "Drive %s: is not a shared drive" );
        return( false );
    }

    //
    // Protect the following operation.
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );

    //
    // Lets get the drive sting info.
    //
    DWORD bytesReturned;
    char driveBuffer[ 512 ];

    bytesReturned = GetPrivateProfileString( PROJECT_SECTION_SETTINGS,
                                             PROJECT_KEY_SHAREDDRIVES,
                                             "",
                                             driveBuffer,
                                             sizeof( driveBuffer ),
                                             m_FileSpec );
    rAssert( bytesReturned != 0 )

    //
    // Remove drive from the list.
    //
    char* p = strstr( driveBuffer, DriveString ); 
    rAssert( p != NULL );
    if( strlen( p ) == 2 )
    {
        strcpy( p, p + 2 );
    }
    else
    {
        strcpy( p, p + 3 );
    }
   
    //
    // Open project file for edit.
    //
    if( m_pPerforceManager != NULL )
    {
        if( !m_pPerforceManager->EditFile( m_FileSpec ) )
        {
            ReleaseMutex( m_MutexHandle );
            return( false );
        }
    }

    if( 0 == WritePrivateProfileString( PROJECT_SECTION_SETTINGS,
                                        PROJECT_KEY_SHAREDDRIVES, 
                                        driveBuffer,
                                        m_FileSpec ) )
    {
        //
        // Failed. Set last error.
        //
        ReleaseMutex( m_MutexHandle );
        radCMSystem::Get( )->SetLastError( radCMErrorCodeAccessRights, m_FileSpec, "Failed to write project file %s" );
        return( false );
    }

    ReleaseMutex( m_MutexHandle );

    radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );

    return( true );
}

//=============================================================================
// Function:    radCMProject::IsSharedDrive
//=============================================================================
// Description: Checks if drive is already shared.
//
// Parameters:  drive letter
//              
// Returns:     bool true if shared
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMProject::IsSharedDrive
( 
    const char* pDrive
)
{
    //
    // Convert character to a string.
    //
    if( (2 != strlen( pDrive )) || (0 == isalpha( pDrive[ 0 ] )) || (':' != pDrive[ 1 ] ) )
    {
        return( false );
    }
       
    char DriveString [ 3 ];
    strcpy( DriveString, pDrive );
    strlwr( DriveString );

    //
    // Protect the following operation.
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );

    //
    // Lets get the drive sting info.
    //
    DWORD bytesReturned;
    char driveBuffer[ 512 ];

    bytesReturned = GetPrivateProfileString( PROJECT_SECTION_SETTINGS,
                                             PROJECT_KEY_SHAREDDRIVES,
                                             "",
                                             driveBuffer,
                                             sizeof( driveBuffer ),
                                             m_FileSpec );

    if( bytesReturned == 0 )
    {
        return( false );
    }

    //
    // Check if drive is in the set already defined.
    //
    return( NULL != strstr( driveBuffer, DriveString ) );
}