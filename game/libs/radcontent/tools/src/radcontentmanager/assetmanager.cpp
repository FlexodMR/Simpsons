//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        assetmanager.cpp
//
// Subsystem:	Radical Content Manager - Asset Manager
//
// Description:	This file contains the implementation the asset manager object
//              which is responsible for managing the asset files.
//
// Author:		Peter Mielcarski
//
// Revisions:	V1.00	October 10, 2002
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
#include "assetmanager.hpp"
#include "project.hpp"
#include "perforce.hpp"
#include <radstring.hpp>

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
// Function:    radCMAssetManager::radCMAssetManager
//=============================================================================
// Description: Constructor for the asset viewer.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radCMAssetManager::radCMAssetManager( void )
    :
        m_pParentProject( NULL ),
        m_MutexHandle( INVALID_HANDLE_VALUE ),
        m_MemoryFileHandle( INVALID_HANDLE_VALUE ),
        m_OpennedForEdit( false )
{

}

//=============================================================================
// Function:    radCMAssetManager::~radCMAssetManager
//=============================================================================
// Description: Destructor for the asset viewer.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radCMAssetManager::~radCMAssetManager( void )
{
    //
    // Check if we have been initialized.
    //
    if( m_pParentProject != NULL )
    {
        //
        // Initialized. Gain mutex and free all resources.
        //
        WaitForSingleObject( m_MutexHandle, INFINITE );
    
        //
        // Release view of shared memory used to maintain asset installed asset viewers.
        //
        UnmapViewOfFile( m_pAssetRecords );
        CloseHandle( m_MemoryFileHandle );
        ReleaseMutex( m_MutexHandle );
        CloseHandle( m_MutexHandle );
    }
}

//=============================================================================
// Function:    radCMAssetManager::Initialize
//=============================================================================
// Description: Perform initialization seperately from constructor so we 
//              can return error code.
//
// Parameters:  parentproject pointer to parent project object.
//              filename used to maintain assets files installation data
//              root path of project.
//              peforcemanager - not reference counted.
//              
// Returns:     true - success 
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMAssetManager::Initialize
( 
    radCMProject*           pParentProject,
    const char*             pFileName,
    const char*             pRootPath,
    radCMPerforceManager*   pPerforceManager
)
{
    //
    // Save the parent project. We don't refernce count this pointers as we 
    // live one-to-one with the project object.
    //
    m_pParentProject = pParentProject;
    m_pPerforceManager = pPerforceManager;

    //
    // Save asset filename and root path. Make root them both 
    //
    strcpy( m_FileName, pFileName );
    strcpy( m_RootPath, pRootPath );
 
    //
    // Build the name of the mutex assets file name. Use mutex as name space.
    //
    char    tempName[ _MAX_PATH + 1 ];
    radCMSystem::Get( )->BuildResourceName( tempName, "MUTEX", pFileName );

    //
    // First obtain access to the mutex we use to protect manipulation of 
    // shared memory. Use name of file for mutex creation.
    //
    m_MutexHandle = CreateMutex( NULL, FALSE, tempName );
    rAssert( m_MutexHandle != NULL );

    //
    // Now gain ownership of this mutex. Wait forever.
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );

    //
    // Build name of memory mapped file.
    //
    radCMSystem::Get( )->BuildResourceName( tempName, "MEMORYMAPPEDFILE", pFileName );

    //
    // Gain access to the shared memory containing our target information 
    // table. If it does not exist yet, we are responsible for initializing it.
    //
    m_MemoryFileHandle = CreateFileMapping( INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, 0, 
                                            sizeof( AssetRecord ) * MAX_ASSETS,
                                            tempName );
    rAssert( m_MemoryFileHandle  != NULL );

    //
    // Get the last error to see if the file already exists. If not, we are responsible
    // for initializing it.
    //
    bool AlreadyInitialized = (ERROR_ALREADY_EXISTS == GetLastError( ) );

    //
    // Map the view of the file into our process space.
    //
    m_pAssetRecords = (AssetRecord*) MapViewOfFile( m_MemoryFileHandle, FILE_MAP_WRITE, 0, 0, 0 );
    rAssert( m_pAssetRecords != NULL );

    if( !AlreadyInitialized )
    {
        //
        // Here we are responsible for initializing the shared memory. Read up the records maintained
        // persistently and initialize the shared memory with this info.
        //
        for( unsigned int i = 0 ; i < MAX_ASSETS ; i++ )
        {
            m_pAssetRecords[ i ].m_InUse = false;  
        }
        
        //
        // Load file. If we get an error, return false. Destructor will clean up resources for us.
        //
        if( !Load( ) )
        {
            ReleaseMutex( m_MutexHandle );

            return( false);
        }        
    }

    //
    // Since we have the shared memory visble in this process space and it has been
    // initialized, we can release the mutex.
    //
    ReleaseMutex( m_MutexHandle );

    radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );

    return( true );
}

//=============================================================================
// Function:    radCMAssetManager::AddAsset
//=============================================================================
// Description: Use this member to add a new asset.
//
// Parameters:  file specification ( can contain wild cards )
//              
// Returns:     true - success 
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMAssetManager::AddAsset
( 
    const char* pAssetFileSpec
)
{
    //
    // Do some checks on the data.
    //
    rAssert( pAssetFileSpec != NULL );

    //
    // Fully qualify the file specifcation.
    //
    char    pAssetFile[ _MAX_PATH ];
    char*   pFilePart;
 
    if( 0 == GetFullPathName( pAssetFileSpec, sizeof( pAssetFile ), pAssetFile, &pFilePart ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidAssetFile, pAssetFileSpec, "Invalid asset file %s specified.");
        return( false );
    }
 
    //
    // Convert it to lower case. We are not case sensitive.
    //
    _strlwr( pAssetFile );

    //
    // Lets verify the file exists.
    //
    if( !radCMSystem::Get( )->FileSpecExists( pAssetFile ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidAssetFile, pAssetFileSpec, "Asset file %s does not exist.");
        return( false );
    }

    //
    // Lets convert the file to a project relative path. It must be locatable relative to
    // the project path or one of the shared drives. It will be added to perforce if it
    // is found relative to the project path.
    //
    bool    addToPerforce;
    char    relativeFileSpec[ _MAX_PATH + 1 ];

    if( !ConvertToRelativePath( pAssetFile, relativeFileSpec, &addToPerforce ) )
    {
        //
        // Cannot add file. 
        //
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidAssetFile, pAssetFileSpec, "Cannot add %s asset file. Not found relative to shared drives or project root path");
        return( false );
    }

    //
    // Gain access to the mutex which protects access this object..
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );

    //
    // Must make sure that the asset has not already been added.
    //
    unsigned int freeEntry = MAX_ASSETS;

    //
    // Lets go through the table and make sure this is true.
    //
    for( unsigned int i = 0 ; i < MAX_ASSETS ; i++ )
    {
        //
        // See if entry is in use. If not save this as a free entry if not already
        // got one.
        //
        if( !m_pAssetRecords[ i ].m_InUse )
        {
            //
            // Entry is free. Save it if not already found one.
            //
            if( freeEntry == MAX_ASSETS )
            {
                freeEntry = i; 
            }
        }
        else
        {
            //
            // Here the entry is in use. Make sure file spec is not already specified.
            //
            if( 0 == strcmp( m_pAssetRecords[ i ].m_FileSpec, relativeFileSpec ) )
            {
                //
                // Viewer for file extension already installed. Fail.
                //
                ReleaseMutex( m_MutexHandle );
            
                radCMSystem::Get( )->SetLastError( radCMErrorCodeAlreadyExists, pAssetFileSpec,
                                                    "Asset file %s has already been added to project.");

                return( false);
            }
        }
    }

    //
    // Lets make sure we have a free entry.
    //
    if( freeEntry == MAX_ASSETS )
    {
        //
        // Too many assets installed.
        //
        ReleaseMutex( m_MutexHandle );
    
        radCMSystem::Get( )->SetLastError( radCMErrorCodeTooManyAssets,
                                            "Too many assets already added\n");
        return( false);
    }

    //
    // Here things are fine. Lets copy the data into the record.
    //
    strcpy( m_pAssetRecords[ freeEntry ].m_FileSpec, relativeFileSpec );
    m_pAssetRecords[ freeEntry ].m_InUse = true;

    //
    // Lets check if we should add the file to perforce.
    //
    if( (m_pPerforceManager != NULL) && addToPerforce )
    {
        if( !m_pPerforceManager->AddFile( pAssetFile ) )
        {
            //
            // Failed to add to perforce. Fail addition.
            //
            m_pAssetRecords[ freeEntry ].m_InUse = false;
            ReleaseMutex( m_MutexHandle );
            return( false );
        }
    }

    //
    // Finally lets save the info to persistent storage.
    //
    if( !Store( ) )
    {
        m_pAssetRecords[ freeEntry ].m_InUse = false;
        ReleaseMutex( m_MutexHandle );
        return( false );
    }
    else
    {
        ReleaseMutex( m_MutexHandle );
        radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );
        return( true );
    }
}

//=============================================================================
// Function:    radCMAssetManager::Remove an asset
//=============================================================================
// Description: Use this member to remove an asset. 
//
// Parameters:  asset file specification
//              
// Returns:     true - success
//              false - error, get last error for details 
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMAssetManager::RemoveAsset
( 
    const char* pAssetFileSpec 
)
{
    //
    // Do some checks on the data.
    //
    rAssert( pAssetFileSpec != NULL );

    //
    // Fully qualify the file specifcation.
    //
    char    pAssetFile[ _MAX_PATH ];
    char*   pFilePart;
 
    if( 0 == GetFullPathName( pAssetFileSpec, sizeof( pAssetFile ), pAssetFile, &pFilePart ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidAssetFile, pAssetFileSpec, "Invalid asset file %s specified.");
        return( false );
    }
 
    //
    // Convert it to lower case. We are not case sensitive.
    //
    _strlwr( pAssetFile );

    //
    // Lets verify the file exists.
    //
    if( !radCMSystem::Get( )->FileSpecExists( pAssetFile ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidAssetFile, pAssetFileSpec, "Asset file %s does not exist.");
        return( false );
    }

    //
    // Lets convert the file to a project relative path. It must be locatable relative to
    // the project path or one of the shared drives. It will be removed from perforce if it
    // is found relative to the project path.
    //
    bool    removeFromPerforce;
    char    relativeFileSpec[ _MAX_PATH + 1 ];

    if( !ConvertToRelativePath( pAssetFile, relativeFileSpec, &removeFromPerforce ) )
    {
        //
        // Cannot add file. 
        //
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidAssetFile, pAssetFileSpec, "Cannot remove %s asset file. Not found relative to shared drives or project root path");
        return( false );
    }

    //
    // Gain access to the mutex which protects access this object..
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );

    //
    // Lets go through the table until we find the specified asset file spec.
    //
    for( unsigned int i = 0 ; i < MAX_ASSETS ; i++ )
    {
        //
        // See if entry is in use. 
        //
        if( m_pAssetRecords[ i ].m_InUse )
        {
            //
            // Record in use. See if name matches. 
            //
            if( 0 == strcmp( m_pAssetRecords[ i ].m_FileSpec, relativeFileSpec ) )
            {
                //
                // If using perforce and it needs to be removed, to so now.
                //
                if( m_pPerforceManager != NULL )
                {
                    if( removeFromPerforce )
                    {
                        if( !m_pPerforceManager->DeleteFile( pAssetFile ) )
                        {
                            return( false );
                        }
                    }
                }

                //
                // Here we have the record. Remove it.
                //
                m_pAssetRecords[ i ].m_InUse = false;

                //
                // Finally lets save the info to persistent storage.
                //
                if( !Store( ) )
                {
                    m_pAssetRecords[ i ].m_InUse = true;
                    if( m_pPerforceManager != NULL )
                    {
                        if( removeFromPerforce )
                        {
                            m_pPerforceManager->RevertFile( pAssetFile );
                        }
                    }

                    ReleaseMutex( m_MutexHandle );
                    return( false );
                }
                else
                {
                    ReleaseMutex( m_MutexHandle );
                    radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );
                    return( true );
                }
            }
        }
    }

    ReleaseMutex( m_MutexHandle );
    radCMSystem::Get( )->SetLastError( radCMErrorCodeAssetFileNotFound, pAssetFileSpec, "Cound not find asset file %s." );
    return( false );
}

//=============================================================================
// Function:    radCMAssetManager::Edit Asset
//=============================================================================
// Description: Use this member to edit an asset. It simply will check it  
//              out from perforce.
//
// Parameters:  asset file specification
//              
// Returns:     true - success
//              false - error, get last error for details 
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMAssetManager::EditAsset( const char* pAssetFileSpec )
{
    //
    // Do some checks on the data.
    //
    rAssert( pAssetFileSpec != NULL );

    //
    // Fully qualify the file specifcation.
    //
    char    pAssetFile[ _MAX_PATH ];
    char*   pFilePart;
 
    if( 0 == GetFullPathName( pAssetFileSpec, sizeof( pAssetFile ), pAssetFile, &pFilePart ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidAssetFile, pAssetFileSpec, "Invalid asset file %s specified.");
        return( false );
    }
 
    //
    // Convert it to lower case. We are not case sensitive.
    //
    _strlwr( pAssetFile );

    //
    // Lets verify the file exists.
    //
    if( !radCMSystem::Get( )->FileSpecExists( pAssetFile ) )
    {
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidAssetFile, pAssetFileSpec, "Asset file %s does not exist.");
        return( false );
    }

    //
    // Lets convert the file to a project relative path. It must be locatable relative to
    // the project path or one of the shared drives. It will be removed from perforce if it
    // is found relative to the project path.
    //
    bool    EditFromPerforce;
    char    relativeFileSpec[ _MAX_PATH + 1 ];

    if( !ConvertToRelativePath( pAssetFile, relativeFileSpec, &EditFromPerforce ) )
    {
        //
        // Cannot add file. 
        //
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidAssetFile, pAssetFileSpec, "Cannot edit %s asset file. Not found relative to shared drives or project root path");
        return( false );
    }

    //
    // Gain access to the mutex which protects access this object..
    //
    WaitForSingleObject( m_MutexHandle, INFINITE );

    //
    // Lets go through the table until we find the specified asset file spec.
    //
    for( unsigned int i = 0 ; i < MAX_ASSETS ; i++ )
    {
        //
        // See if entry is in use. 
        //
        if( m_pAssetRecords[ i ].m_InUse )
        {
            //
            // Record in use. See if name matches. 
            //
            if( 0 == strcmp( m_pAssetRecords[ i ].m_FileSpec, relativeFileSpec ) )
            {
                //
                // If using perforce and it needs to be edited, to so now.
                //
                if( m_pPerforceManager != NULL )
                {
                    if( EditFromPerforce )
                    {
                        if( !m_pPerforceManager->EditFile( pAssetFile ) )
                        {
                            return( false );
                        }
                    }
                }

                ReleaseMutex( m_MutexHandle );
                radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );
                return( true );
            }
        }
    }

    ReleaseMutex( m_MutexHandle );
    radCMSystem::Get( )->SetLastError( radCMErrorCodeAssetFileNotFound, pAssetFileSpec, "Cound not find asset file %s." );
    return( false );
}

//=============================================================================
// Function:    radCMAssetManager::CreateAssetEnumerator
//=============================================================================
// Description: Use this member to create an enumerator object which will return
//              the assets
//
// Parameters:  searchSpec
//              
// Returns:     IRadCMAssetEnumerator
//
// Notes:       This implementation is rather lame. Basically we construct an
//              object containing a snap shot of all the assets installed. May 
//              rethink but did this incase things changed while enumeration is 
//              held.
//------------------------------------------------------------------------------

IRadCMAssetEnumerator* radCMAssetManager::CreateAssetEnumerator( const char* pSearchSpec )
{
    //
    // Simply construct a enumerator object. 
    //
    IRadCMAssetEnumerator* pEnumerator = new radCMAssetEnumerator( this, pSearchSpec );
    rAssert( pEnumerator != NULL );
    return( pEnumerator );
}

//=============================================================================
// Function:    radCMAssetManager::AddRef
//=============================================================================
// Description: Add reference. We exist only as long as the project does. 
//              Pass this refernce request onto the parent project.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMAssetManager::AddRef( void )
{
    m_pParentProject->AddRef( );
}

//=============================================================================
// Function:    radCMAssetManager::Release
//=============================================================================
// Description: Release reference. We exist only as long as the project does. 
//              Pass this refernce request onto the parent project.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMAssetManager::Release( void )
{
    m_pParentProject->Release( );
}

//=============================================================================
// Function:    radCMAssetManager::Load
//=============================================================================
// Description: Load the assets from disk. 
//
// Parameters:  n/a
//              
// Returns:     true - success 
//
// Notes:       Protection is already in place. This routine is only during
//              initail open of project. 
//------------------------------------------------------------------------------
     
bool radCMAssetManager::Load( void )
{
    //
    // Open the existing asset file and read in all asset definitions.
    //
    HANDLE fileHandle = CreateFile( m_FileName, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING,
                                    FILE_ATTRIBUTE_NORMAL, NULL );
    
    if( fileHandle == INVALID_HANDLE_VALUE )
    {
        //
        // The file should exist. If not there is a problem with project.
        //
        radCMSystem::Get( )->SetLastError( radCMErrorCodeMissingFile, m_FileName);
        return( false );
    }           

    //
    // Read up all the asset definitions. They are stored in a file with one defintion per line.
    // Empty lines are ok. Note we may do better parseing in future.
    //
    unsigned int assetCount = 0;
    unsigned int filePosition = 0;

    char    lineBuffer[ _MAX_PATH + 1 ];     
    
    while( GetLine( fileHandle, &filePosition, lineBuffer, sizeof( lineBuffer ) ) )
    {
        //
        // Skip any white space.
        //
        const char* pTempStr = SkipWhiteSpace( lineBuffer );
        
        if( strlen( pTempStr ) != 0 )
        {
            //
            // Here we have a file name. Convert it to a fully qualified file spec and make sure
            // it exists.
            //
            char FullFileSpec[ _MAX_PATH + 1 ];
            ConvertToAbsolutePath( pTempStr, FullFileSpec );        
    
            if( !radCMSystem::Get( )->FileSpecExists( FullFileSpec ) )     
            {
                //
                // File does not exist. Report error.
                //
                radCMSystem::Get( )->SetLastError( radCMErrorCodeMissingFile, FullFileSpec, "Asset file %s does not exist.");
                return( false );
            }
            strcpy( m_pAssetRecords[ assetCount ].m_FileSpec, pTempStr );
            assetCount++;
        }    
    }

    //
    // We we have parsed the persistant file without detecting any errors. Update the inuse flags.
    //
    for( unsigned int i = 0 ; i < assetCount ; i++ )
    {
        m_pAssetRecords[ i ].m_InUse = true;
    }

    CloseHandle( fileHandle );

    return( true );
}

//=============================================================================
// Function:    radCMAssetManager::Store
//=============================================================================
// Description: Save the asset to disk. 
//
// Parameters:  n/a
//              
// Returns:     true - success 
//
// Notes:       Protection is already in place. This routine clears the 
//              persistant file and re-writes it.
//------------------------------------------------------------------------------
     
bool radCMAssetManager::Store( void )
{
    //
    // Check if we need to open the file for edit. If so do so, if not already done
    // so.
    //
    if( m_pPerforceManager != NULL )
    {
        if( !m_OpennedForEdit )
        {
            if( !m_pPerforceManager->EditFile( m_FileName ) )
            {
                return( false );
            }

            m_OpennedForEdit = true;
        }
    }

    //
    // Create the file, clearing contents of the old file.
    //
    HANDLE fileHandle = CreateFile( m_FileName, GENERIC_WRITE, NULL, NULL, CREATE_ALWAYS,
                                    FILE_ATTRIBUTE_NORMAL, NULL );
    
    if( fileHandle == INVALID_HANDLE_VALUE )
    {
        //
        // The file should exist. If not there is a problem with project.
        //
        radCMSystem::Get( )->SetLastError( radCMErrorCodeAccessRights, m_FileName, "Cannot edit file %s." );
        return( false );
    }           

    //
    // Write up all the asset definitions. They are stored in a file with one defintion per line.
    //
    for( unsigned int i = 0 ; i < MAX_ASSETS; i++ )
    {
        if( m_pAssetRecords[ i ].m_InUse )
        {
            DWORD bytesWritten;
            char Outbuf[ _MAX_PATH + 1 ];
            strcpy( Outbuf, m_pAssetRecords[ i ].m_FileSpec );
            strcat( Outbuf, "\r\n" );
        
            WriteFile( fileHandle, Outbuf, strlen( Outbuf), &bytesWritten, NULL );
                                    
            if( strlen( Outbuf ) != bytesWritten )
            {
                radCMSystem::Get( )->SetLastError( radCMErrorCodeAccessRights, m_FileName, "Cannot edit file %s." );
                return( false );
            }
        }
    }                          

    CloseHandle( fileHandle );

    return( true );
}

//=============================================================================
// Function:    radCMAssetManager::GetLine
//=============================================================================
// Description: Helper to read a line of data from a file
//
// Parameters:  fileHandle
//              filePosition - where we are
//              line buffer, were to copy the line 
//              size of line buffer
//
// Returns:     true if line found ( not end of file )
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMAssetManager::GetLine
( 
    HANDLE          fileHandle, 
    unsigned int*   filePosition,
    char*           lineBuffer,
    unsigned int    lineBufferSize
)
{
    rAssert( lineBufferSize != 0 );
    lineBuffer[ 0 ] = '\0';

    //
    // Set the file read position. If position not same, must be at end of file?
    //
    if( *filePosition != SetFilePointer( fileHandle, *filePosition, NULL, FILE_BEGIN ) )
    {
        return( false );
    }

    //
    // Read a line of data.
    //
    DWORD amountRead;
    
    if( 0 == ReadFile( fileHandle, lineBuffer, lineBufferSize, &amountRead, NULL ) )
    {
        return( false );
    }

    if( amountRead == 0 )
    {
        return( false );
    }           

    //
    // Scan for a new line character. If find it, we null the string at that point.
    //
    for( unsigned int i = 0; i < amountRead ; i++ )
    {
        if( (lineBuffer[ i ] == 0x0A) || (lineBuffer[ i ] == 0x0D ) )
        {
            //
            // End of line. Null the string and update the file pointer.
            //
            lineBuffer[ i ] = '\0';
                        
            *filePosition = *filePosition + i + 1;

            return( true );
        }
    }
                      
    //
    // Did not find a new line. Assert that the line does not exceed our max length.
    //
    rAssert( amountRead < lineBufferSize );

    lineBuffer[ amountRead ] = '\0';
                        
    *filePosition = *filePosition + amountRead;
    
    return( true );
}

//=============================================================================
// Function:    radCMAssetManager::SkipWhiteSpace
//=============================================================================
// Description: Helper to determine skip leading white space.
//
// Parameters:  pBuffer, - null terminated string
//
// Returns:     pointer to first non-white character or null.
//
// Notes:       Current white space characters are tabs and spaces
//------------------------------------------------------------------------------

const char* radCMAssetManager::SkipWhiteSpace
( 
    const char* pBuffer 
)
{
    while( *pBuffer != '\0' )
    {
        if( NULL == strchr( " \t", *pBuffer ) )
        {
            //
            // Found non white space. Return current pointer
            //
            return( pBuffer );
        }
        pBuffer++;
    }
    return( pBuffer );
}

//=============================================================================
// Function:    radCMAssetManager::ConvertToRelativePath
//=============================================================================
// Description: Helper to convert a fully qualified file spec to a project
//              relative file spec. The file either must be found relative to 
//              to root project path or one of the shared drives. In the later
//              case, the file is not added to perforce.
//
// Parameters:  pFileSpec - fully qualified file name.
//              pRelativeFileSpec - project relative file spec
//              pAddToPerforce - returned if should be added to perforce
//
// Returns:     true - success
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMAssetManager::ConvertToRelativePath
( 
    const char* pFileSpec,
    char*       pRelativeFileSpec,
    bool*       pAddToPerforce
)
{
    //
    // First check if the file is a subdirectory of the root path.
    //
    char tempRootPath[ _MAX_PATH + 1];
    strcpy( tempRootPath, m_RootPath );
    strcat( tempRootPath, "\\");

    if( NULL != strstr( pFileSpec, tempRootPath ) )
    {
        //
        // This is the simpe case. Build up the relative path.
        //
        strcpy( pRelativeFileSpec, ".");
        strcat( pRelativeFileSpec, pFileSpec + strlen( m_RootPath ) );
        *pAddToPerforce = true;
        return( true );        
    }

    //
    // Lets check if file is on same drive of as root project.
    //
    if( pFileSpec[ 0 ] == m_RootPath[ 0 ] )
    {
        //
        // File is on same drive. Lets create path relative to the root path. 
        //
        char*           pTempRootPath = m_RootPath;
        const char*     pTempFileSpec = pFileSpec;
        int     RootTokenLength;    
        int     FileTokenLength;    
       
        //
        // First walk up tree until difference occurs.
        //
        while( true )
        {
            RootTokenLength = strcspn( pTempRootPath, "\\");
            FileTokenLength = strcspn( pTempFileSpec, "\\");  
        
            if( (RootTokenLength != FileTokenLength) || (0 != strncmp( pTempRootPath, pTempRootPath, FileTokenLength ) ) )
            {
                //
                // Different tokens.
                //
                break;
            }

            //
            // Update pointers,
            //
            pTempRootPath = pTempRootPath + FileTokenLength + 1;
            pTempFileSpec = pTempFileSpec + FileTokenLength + 1;
        }
        
        //
        // Now add back slashs for each remaining token in root path.
        //
        pRelativeFileSpec[ 0 ] = '\0';
        while( true )
        {        
            RootTokenLength = strcspn( pTempRootPath, "\\");
            if( RootTokenLength == 0 )
            {
                break;
            }
            strcat( pRelativeFileSpec, "..\\" );
            
            pTempRootPath = pTempRootPath + RootTokenLength; 
            if( *pTempRootPath == '\\' )
            {
                pTempRootPath++;
            }     
        }
        
        //
        // Now copy remainder of file spec.
        //
        strcat( pRelativeFileSpec, pTempFileSpec );

        *pAddToPerforce = true;
        return( true );        
    }
    else
    {
        //
        // Lets see if the file is on one of the shared drives.
        //
        char driveString[ 3 ];
        strncpy( driveString, pFileSpec, 2 );
        driveString[ 2 ] = '\0'; 

        if( m_pParentProject->IsSharedDrive( driveString ) )
        {
            strcpy( pRelativeFileSpec, pFileSpec );
        
            *pAddToPerforce = false;
             return( true );        
        }
    }

    return( false );
}

//=============================================================================
// Function:    radCMAssetManager::ConvertToAbsolutePath
//=============================================================================
// Description: Helper to convert a relative file to a absolute file.
//
// Parameters:  pFileSpec - relative file or absolute file (if shared drive )
//              pAbsoluteFileSpec - absolute file spec
//
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMAssetManager::ConvertToAbsolutePath
( 
    const char* pFileSpec,
    char*       pAbsoluteFileSpec
)
{
    //
    // Check if the leading character is a '.' If so it relative.
    //
    if( pFileSpec[ 0 ] != '.' )
    {
        //
        // File spec must already be absolute. Return as is.
        //
        strcpy( pAbsoluteFileSpec, pFileSpec );
    }
    else
    {
        //
        // Build up absolute path using root path.
        //
        if( pFileSpec[ 1 ] == '\\' )
        {
            //
            // Here the file is specified like ".\directory\file.txt" Just add to root.
            //
            strcpy( pAbsoluteFileSpec, m_RootPath );
            strcat( pAbsoluteFileSpec, &pFileSpec[ 1 ] );
        }
        else
        {
            //
            // Here file is specified like "..\..\directory\file.txt"
            //
            strcpy( pAbsoluteFileSpec, m_RootPath );
            char *tmpPtr = pAbsoluteFileSpec + strlen( pAbsoluteFileSpec );           

            while( *pFileSpec == '.' )
            {
                pFileSpec += 3;
                
                while( *tmpPtr != '\\')
                {
                    tmpPtr--;
                }
            
                tmpPtr--;
            }
            strcpy( tmpPtr + 2, pFileSpec );
        }
    }
}

//=============================================================================
// Function:    radCMAssetEnumerator::radCMAssetEnumerator
//=============================================================================
// Description: Constructor
//
// Parameters:  parent AssetViewers.
//              search Specification
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radCMAssetEnumerator::radCMAssetEnumerator
(
    radCMAssetManager* pAssetManager,
    const char*        pSearchSpec
)
    :
        m_RefCount( 0 ),
        m_pParentAssetManager( pAssetManager )
{
    //
    // Add a reference to parent. This keeps things alive while this
    // object is alive.
    m_pParentAssetManager->AddRef( );   

    //
    char    FullSearchSpec[ _MAX_PATH ];
    char*   pFilePart;
    GetFullPathName( pSearchSpec, sizeof( FullSearchSpec ), FullSearchSpec, &pFilePart );
    
    //
    // Lock access to parent asset viewers data structures.
    //
    WaitForSingleObject( m_pParentAssetManager->m_MutexHandle, INFINITE );

    //
    // Set our count of assets to zero
    //
    m_AssetCount = 0;

    //
    // Lets go through the table, saving names of all assets that match search specification.
    //
    for( unsigned int i = 0 ; i < MAX_ASSETS ; i++ )
    {
        //
        // See if entry is in use. 
        //
        if( m_pParentAssetManager->m_pAssetRecords[ i ].m_InUse )
        {
            //
            // We have a filespec. Convert to absolute specifcation,
            //
            char FullFileSpec[ _MAX_PATH + 1 ];
            m_pParentAssetManager->ConvertToAbsolutePath( m_pParentAssetManager->m_pAssetRecords[ i ].m_FileSpec, FullFileSpec );        

            if( radStringMatchesWildCardPattern( FullFileSpec, FullSearchSpec ) )
            { 
                strcpy( m_AssetNames[ m_AssetCount ], 
                        FullFileSpec );

                m_AssetCount++;    
            }
        }
    }

    //
    // Done. Release protection.
    //
    ReleaseMutex( m_pParentAssetManager->m_MutexHandle );
}           

//=============================================================================
// Function:    radCMAssetEnumerator::~radCMAssetEnumerator
//=============================================================================
// Description: Destructor
//
// Parameters:  parent AssetManager.
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

radCMAssetEnumerator::~radCMAssetEnumerator( void )
{
    //
    // Done with this object. Release pointer to parent object.
    //
    m_pParentAssetManager->Release( );   
}

//=============================================================================
// Function:    radCMAssetEnumerator::GetNumberOfItems
//=============================================================================
// Description: This member returns the number of names of assets
//
// Parameters:  n/a
//              
// Returns:     count of installed viewers.
//
// Notes:       
//------------------------------------------------------------------------------

unsigned int radCMAssetEnumerator::GetNumberOfItems( void )
{
    return( m_AssetCount );
}

//=============================================================================
// Function:    radCMAssetEnumerator::GetNameAtIndex
//=============================================================================
// Description: This member returns the name of the asset at the specified
//              index.
//
// Parameters:  index - which one
//              pointer to receive name of object.
//              
// Returns:     false - index is invalid.
//
// Notes:       
//------------------------------------------------------------------------------

bool radCMAssetEnumerator::GetAssetAtIndex( unsigned int index, char* pName )
{
    //
    // Check if index is within the valid range.
    //
    if( index >= m_AssetCount )
    {
        //
        // Invalid index. Set error code.
        //
        radCMSystem::Get( )->SetLastError( radCMErrorCodeInvalidEnumerationIndex,
                                           "Enumeration index not within valid range\n");
        return( false );                                                
    }
          
    //
    // Copy the asset viewer name.
    //
    strcpy( pName, m_AssetNames[ index ] );

    radCMSystem::Get( )->SetLastError( radCMErrorCodeSuccess );

    return( true );
}

//=============================================================================
// Function:    radCMAssetEnumerator::AddRef
//=============================================================================
// Description: Add reference. 
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMAssetEnumerator::AddRef( void )
{
    m_RefCount++;
}

//=============================================================================
// Function:    radCMAssetEnumerator::Release
//=============================================================================
// Description: Release reference. 
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void radCMAssetEnumerator::Release( void )
{
    m_RefCount--;
    if( m_RefCount == 0 )
    {
        delete this;
    }
}

