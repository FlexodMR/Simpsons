//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        gcndvddrive.cpp
//
// Subsystem:	Radical File System
//
// Description:	This file contains the implementation of the gcn dvd drive.
//
// Revisions:	
//
// Notes:       GCN dvd drive only detects error when either a read or a seek are executing.
//              So if there are open files, a dummy seek will be incurred when the media
//              info is set. When all files are closed or the error clears, the media
//              info will go back to being the game disk.
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <string.h>
#include <stdlib.h>
#include <radstring.hpp>
#include "gcndvddrive.hpp"

extern void CheckForGCNReset();

//=============================================================================
// Public Functions 
//=============================================================================

//=============================================================================
// Function:    radGcnDVDDriveFactory
//=============================================================================
// Description: This member is responsible for constructing a radGcnDVDDrive object.
//
// Parameters:  pointer to receive drive object
//              pointer to the drive name
//              allocator
//              
// Returns:     
//------------------------------------------------------------------------------

void radGcnDVDDriveFactory
( 
    radDrive**         ppDrive, 
    const char*        pDriveName,
    radMemoryAllocator alloc
)
{
    //
    // Simply constuct the drive object.
    //
    *ppDrive = new( alloc ) radGcnDVDDrive( alloc );
    rAssert( *ppDrive != NULL );
}

//=============================================================================
// Public Member Functions
//=============================================================================

radGcnDVDDrive::radGcnDVDDrive( radMemoryAllocator alloc )
    : 
    radDrive( ),
    m_OpenFiles( 0 ),
    m_pCB( NULL ),
    m_pMutex( NULL ),
    m_pPollFileInfo( NULL ),
    m_PollResult( DVD_STATE_END )
{
    //
    // Initialize the DVD system.
    //
    ::DVDInit( );
    
    //
    // Create a mutex for lock/unlock
    //
    radThreadCreateMutex( &m_pMutex, alloc );
    rAssert( m_pMutex != NULL );

    //
    // Create the drive thread.
    //
    m_pDriveThread = new( alloc ) radDriveThread( m_pMutex, alloc );
    rAssert( m_pDriveThread != NULL );

    //
    // Media info: these variables never change
    //
    m_MediaInfo.m_FreeFiles = 0;
    m_MediaInfo.m_FreeSpace = 0;
    m_MediaInfo.m_SectorSize = GCN_DVD_SECTOR_SIZE;

    //
    // Initially we have no disk.
    //
    m_VolumeName[ 0 ] = '\0';

    //
    // Set up our aligned buffer. Check that GCN_DVD_ALIGNMENT is okay.
    //
    rAssert( radMemorySpace_OptimalAlignment <= GCN_DVD_ALIGNMENT );
    rAssert( radFileOptimalMemoryAlignment <= GCN_DVD_ALIGNMENT );
    m_SectorBuffer = (unsigned char*) ::radMemoryRoundUp( (unsigned int) m_SectorBufferSpace, GCN_DVD_ALIGNMENT );

    //
    // Initialize the handle pool
    //
    for ( unsigned int i = 0; i < GCN_MAX_DVD_HANDLES; i++ )
    {
        m_HandlePool[ i ].m_fileNo = -1;
    }
}

radGcnDVDDrive::~radGcnDVDDrive( void )
{
    m_pMutex->Release( );
    m_pDriveThread->Release( );
}

//=============================================================================
// Function:    radGcnDVDDrive::Lock
//=============================================================================
// Description: Start a critical section
//
// Parameters:  
//
// Returns:     
//------------------------------------------------------------------------------

void radGcnDVDDrive::Lock( void )
{
    m_pMutex->Lock( );
}

//=============================================================================
// Function:    radGcnDVDDrive::Unlock
//=============================================================================
// Description: End a critical section
//
// Parameters:  
//
// Returns:     
//------------------------------------------------------------------------------

void radGcnDVDDrive::Unlock( void )
{
    m_pMutex->Unlock( );
}

//=============================================================================
// Function:    radGcnDVDDrive::GetCapabilities
//=============================================================================

unsigned int radGcnDVDDrive::GetCapabilities( void )
{
    return ( radDriveRemovable | radDriveEnumerable | radDriveFile );
}

//=============================================================================
// Function:    radGcnDVDDrive::GetDriveName
//=============================================================================

const char* radGcnDVDDrive::GetDriveName( void )
{
    return s_GCNDVDDriveName;
}

//=============================================================================
// Function:    radGcnDVDDrive::GetReadBufferSectors
//=============================================================================

unsigned int radGcnDVDDrive::GetReadBufferSectors( void )
{
    return GCN_DVD_TRANSFER_BUFFER_SECTORS;
}

//=============================================================================
// Function:    radGcnDVDDrive::Initialize
//=============================================================================

radDrive::CompletionStatus radGcnDVDDrive::Initialize( void )
{
    if ( m_OpenFiles != 0 )
    {
        //
        // Check if there was a media change
        //
        if ( !SetMediaInfo( ) )
        {
            return Error;
        }

        if ( strcmp( m_VolumeName, m_MediaInfo.m_VolumeName ) != 0 )
        {
            m_LastError = WrongMedia;
            return Error;
        }
    }
    else
    {
        SetMediaInfo( );
        strcpy( m_VolumeName, m_MediaInfo.m_VolumeName );
    }

    //
    // Success, so cancel whatever operation caused an error.
    //
    if ( m_pCB )
    {
        ::DVDCancel( m_pCB );
        m_pCB = NULL;
    }

    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnDVDDrive::OpenFile
//=============================================================================

radDrive::CompletionStatus radGcnDVDDrive::OpenFile
( 
    const char*        fileName, 
    radFileOpenFlags   flags, 
    bool               writeAccess, 
    radFileHandle*     pHandle, 
    unsigned int*      pSize 
)
{
    rAssert( writeAccess == false );
    rAssert( flags == OpenExisting );

    //
    // Build the full filename
    //
    char fullName[ radFileFilenameMax + 1 ];
    char* pName;
    BuildFileSpec( fileName, fullName, radFileFilenameMax + 1, &pName );

    //
    // Get the GCN handle for this name
    //
    int GCNhandle = ::DVDConvertPathToEntrynum( pName );
    if ( GCNhandle < 0 )
    {
        radFileError error = TranslateError( ::DVDGetDriveStatus( ) );
        if ( error == Success )
        {
            m_LastError = FileNotFound;
        }
        else
        {
            m_LastError = error;
        }
        return Error;
    }

    //
    // Find a free spot in our table, or check if it already exists
    //
    int handle = -1;
    for ( int i = 0; i < GCN_MAX_DVD_HANDLES; i++ )
    {
        if ( m_HandlePool[ i ].m_fileNo < 0 )
        {
            //
            // Empty entry
            //
            handle = i;
            if ( !::DVDFastOpen( GCNhandle, &m_HandlePool[ i ].m_fileInfo ) )
            {
                m_LastError = TranslateError( ::DVDGetDriveStatus( ) );
                rAssert( m_LastError != Success );
                return Error;
            }
            m_HandlePool[ i ].m_fileNo = GCNhandle;
            break;
        }
    }

    rAssertMsg( handle >= 0, "GcnDVDDrive: out of handles." );

    *pHandle = (unsigned int) handle;
    *pSize = DVDGetLength( GetFileInfo( handle ) );

    m_OpenFiles++;

    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnDVDDrive::CloseFile
//=============================================================================

radDrive::CompletionStatus radGcnDVDDrive::CloseFile( radFileHandle handle, const char* fileName )
{
    //
    // Ignore errors.
    //
    DVDFileInfo* fileInfo = GetFileInfo( handle );
    if ( m_pCB == &fileInfo->cb )
    {
        ::DVDCancel( m_pCB );
        m_pCB = NULL;
    }

    ::DVDClose( fileInfo );

    //
    // Remove the handle.
    //
    m_HandlePool[ handle ].m_fileNo = -1;

    m_OpenFiles--;
    return Complete;
}

//=============================================================================
// Function:    radGcnDVDDrive::ReadAligned
//=============================================================================

radDrive::CompletionStatus radGcnDVDDrive::ReadAligned
( 
    radFileHandle handle, 
    const char* fileName,
    unsigned int sector,
    unsigned int numSectors,
    void* pData, 
    radMemorySpace pDataSpace 
)
{
    rAssertMsg( pDataSpace == radMemorySpace_Main || pDataSpace == radMemorySpace_Aram, 
                "radFileSystem: radGcnDVDDrive: reads only supported for Main or Aram memory." );
    
    DVDFileInfo* fileInfo = GetFileInfo( handle );

    if ( !Seek( sector * m_MediaInfo.m_SectorSize, fileInfo ) )
    {
        return Error;
    }

    unsigned int readSize = numSectors * m_MediaInfo.m_SectorSize;

    //
    // We can only read into main memory, so we must use the transfer buffer to read into ARAM
    //
    if ( pDataSpace == radMemorySpace_Main )
    {
        if ( !Read( pData, readSize, sector * m_MediaInfo.m_SectorSize, fileInfo ) ) 
        {
            return Error;
        }
    }
    else
    {
        // We need to split the read size up into section that fit into our transfer buffer
        //
        unsigned int numReads = readSize / GCN_DVD_TRANSFER_BUFFER_SIZE;
        unsigned int location = sector;
        char* userBuffer = (char*) pData;
        
        for ( unsigned int i = 0; i < numReads; i++ )
        {
            if ( ReadBuffered( handle, fileName, location, GCN_DVD_TRANSFER_BUFFER_SECTORS, 0, 
                GCN_DVD_TRANSFER_BUFFER_SIZE, userBuffer, pDataSpace ) != Complete )
            {
                return Error;
            }
            
            userBuffer += GCN_DVD_TRANSFER_BUFFER_SIZE;
            location += GCN_DVD_TRANSFER_BUFFER_SECTORS;
        }

        //
        // Read the last bytes if the read size wasn't a multiple of the transfer buffer.
        //
        unsigned int endBytes = readSize % GCN_DVD_TRANSFER_BUFFER_SIZE;
        if ( endBytes > 0 )
        {
            unsigned int endSectors = numSectors - numReads * GCN_DVD_TRANSFER_BUFFER_SECTORS;
            if ( ReadBuffered( handle, fileName, location, endSectors, 0, 
                endBytes, userBuffer, pDataSpace ) != Complete )
            {
                return Error;
            }
        }
    }
    
    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnDVDDrive::ReadBuffered
//=============================================================================

radDrive::CompletionStatus radGcnDVDDrive::ReadBuffered
( 
    radFileHandle handle,
    const char* fileName,
    unsigned int sector,
    unsigned int numSectors,
    unsigned int position,
    unsigned int numBytes,
    void* pData, 
    radMemorySpace pDataSpace 
)
{
    rAssertMsg( pDataSpace == radMemorySpace_Main || pDataSpace == radMemorySpace_Aram, 
                "radFileSystem: radGcnDVDDrive: reads only supported for Main or Aram memory." );
    
    DVDFileInfo* fileInfo = GetFileInfo( handle );

    if ( !Seek( sector * m_MediaInfo.m_SectorSize, fileInfo ) )
    {
        return Error;
    }

    if ( !Read( m_SectorBuffer, numSectors * m_MediaInfo.m_SectorSize, sector * m_MediaInfo.m_SectorSize, fileInfo ) ) 
    {
        return Error;
    }
    
    //
    // Copy into the user's buffer.
    //
    IRadMemorySpaceCopyRequest* pMemCpyRequest = 
        radMemorySpaceCopyAsync( pData, 
                                 pDataSpace, 
                                 &m_SectorBuffer[ position ], 
                                 radMemorySpace_Local,
                                 numBytes );

    rAssert( pMemCpyRequest != NULL );
    pMemCpyRequest->AddRef( );

    //
    // Run the request
    //
    while ( !pMemCpyRequest->IsDone( ) )
    {
        CheckForGCNReset();
        ::radThreadSleep( 0 );
        CheckForGCNReset();
    }
    
    pMemCpyRequest->Release( );
    pMemCpyRequest = NULL;
  
    return Complete;
}

//=============================================================================
// Function:    radGcnDVDDrive::FindFirst
//=============================================================================

radDrive::CompletionStatus radGcnDVDDrive::FindFirst
( 
    const char* searchSpec, IRadDrive::DirectoryInfo* pDirectoryInfo, radFileDirHandle* pHandle, bool firstSearch 
)
{
    //
    // Build the full filename
    //
    char fullName[ radFileFilenameMax + 1 ];
    char* pName;
    BuildFileSpec( searchSpec, fullName, radFileFilenameMax + 1, &pName );

    //
    // Find a directory part and a wildcard part
    // There is no initial slash, so end == 0 means no directory was found.
    //
    unsigned int end = strlen( pName ) - 1;
    while ( end > 0 && pName[ end ] != '/' )
    {
        end--;
    }
    
    //
    // Set directory and searchSpec names
    //
    char* dirName;
    if ( end > 0 )
    {
        pName[ end ] = '\0';
        dirName = pName;
        pName = &pName[ end + 1 ];
    }
    else
    {
        dirName = ".";
    }

    rAssertMsg( strlen( pName ) <= RAD_GCN_SPEC_LEN, "radFileSystem: long search spec." );

    //
    // Open the directory.
    //
    if ( !::DVDOpenDir( dirName, &( pHandle->m_DVD ) ) )
    {
        m_LastError = TranslateError( ::DVDGetDriveStatus( ) );
        if ( m_LastError == Success )
        {
            m_LastError = FileNotFound;
        }
        return Error;
    }

    //
    // Find the next entry.
    //
    strcpy( pHandle->m_pSpec, pName );
    return FindNext( pHandle, pDirectoryInfo );
}

//=============================================================================
// Function:    radGcnDVDDrive::FindNext
//=============================================================================

radDrive::CompletionStatus radGcnDVDDrive::FindNext( radFileDirHandle* pHandle, IRadDrive::DirectoryInfo* pDirectoryInfo )
{
    bool done = false;
    while ( !done )
    {
        DVDDirEntry dirEntry;
        if ( !::DVDReadDir( &( pHandle->m_DVD ), &dirEntry) )
        {
            //
            // No more entries
            //
            pDirectoryInfo->m_Name[0] = '\0';
            pDirectoryInfo->m_Type = IRadDrive::DirectoryInfo::IsDone;
            done = true;
        }
        else
        {
            //
            // Check for a match
            //
            if ( FileNameMatchesSearch( dirEntry.name, pHandle->m_pSpec ) )
            {
                strncpy( pDirectoryInfo->m_Name, dirEntry.name, radFileFilenameMax );
                pDirectoryInfo->m_Name[ radFileFilenameMax ] = '\0';

                pDirectoryInfo->m_Type = dirEntry.isDir ? 
                    IRadDrive::DirectoryInfo::IsDirectory : IRadDrive::DirectoryInfo::IsFile;
                done = true;
            }
        }
    }

    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnDVDDrive::FindClose
//=============================================================================

radDrive::CompletionStatus radGcnDVDDrive::FindClose( radFileDirHandle* pHandle )
{
    ::DVDCloseDir( &( pHandle->m_DVD ) );
    return Complete;
}

//=============================================================================
// Function:    radGcnDVDDrive::Service
//=============================================================================

void radGcnDVDDrive::Service( void )
{
    //
    // Check if we need to poll. And grab the current status.
    //
    Lock( );
    if ( m_pPollFileInfo != NULL )
    {
        m_PollResult = ::DVDGetFileInfoStatus( m_pPollFileInfo );

        //
        // We need to cancel the request if we have an error state that won't cause the
        // synchronous operation to complete.
        //
        if ( 
            m_PollResult != DVD_STATE_WAITING && 
            m_PollResult != DVD_STATE_BUSY && 
            m_PollResult != DVD_STATE_END &&
            m_PollResult != DVD_STATE_FATAL_ERROR
           )
        {
            ::DVDCancelAsync( &m_pPollFileInfo->cb, NULL );
            m_pPollFileInfo = NULL;
        }
    }
    Unlock( );

    //
    // Call the base class service.
    //
    radDrive::Service( );
}

//=============================================================================
// Private Member Functions
//=============================================================================

//=============================================================================
// Function:    radGcnDVDDrive::SetMediaInfo
//=============================================================================
// Description: Set up the media info. Sets m_LastError to WrongMedia, Success, 
//              NoMedia or ShellOpen. Wrong media is the catch-all since if the
//              disk changed, then any errors are still the wrong disk.
//
// Parameters:  
//              
// Returns:     True if the media is present, and false if it is not or is wrong.
//------------------------------------------------------------------------------


bool radGcnDVDDrive::SetMediaInfo( void )
{
    m_MediaInfo.m_VolumeName[ 0 ] = '\0';
    m_LastError = WrongMedia;

    //
    // Start a dummy operation to actually check the disk.
    //
    if ( m_OpenFiles > 0 && m_pCB == NULL )
    {
        //
        // Find a file and seek on it.
        //
        for ( unsigned int i = 0; i < GCN_MAX_DVD_HANDLES; i++ )
        {
            if ( m_HandlePool[ i ].m_fileNo >= 0 )
            {
                 DVDFileInfo* fileInfo = GetFileInfo( i );
                ::DVDSeekAsync( fileInfo, 0, NULL );
                m_pCB = &fileInfo->cb;
                break;
            }
        }
    }

    s32 status = DVD_STATE_BUSY;
    while ( ( status = ::DVDGetDriveStatus( ) ) == DVD_STATE_BUSY )
    {
        // check for reset
        CheckForGCNReset();
        ::radThreadSleep( 0 );
        // check for reset
        CheckForGCNReset();
    }

    switch( status )
    {
    case DVD_STATE_FATAL_ERROR:
        rDebugString( "GcnDVDDrive: fatal error.\n" );
        m_MediaInfo.m_MediaState = IRadDrive::MediaInfo::MediaNotPresent;
        m_LastError = NoMedia;
        return false;

    case DVD_STATE_END:
    case DVD_STATE_BUSY:
    case DVD_STATE_WAITING:
    case DVD_STATE_MOTOR_STOPPED:
    case DVD_STATE_PAUSING:
    case DVD_STATE_IGNORED:
    case DVD_STATE_CANCELED:
        m_MediaInfo.m_MediaState = IRadDrive::MediaInfo::MediaPresent;
        m_LastError = Success;
        break;

    case DVD_STATE_RETRY:
        m_MediaInfo.m_MediaState = IRadDrive::MediaInfo::MediaDamaged;
        m_LastError = MediaCorrupt;
        return false;
    
    case DVD_STATE_NO_DISK:
        m_MediaInfo.m_MediaState = IRadDrive::MediaInfo::MediaNotPresent;
        m_LastError = NoMedia;
        return false;

    case DVD_STATE_COVER_OPEN:
        m_MediaInfo.m_MediaState = IRadDrive::MediaInfo::MediaNotPresent;
        m_LastError = ShellOpen;
        return false;

    case DVD_STATE_WRONG_DISK:
        m_MediaInfo.m_MediaState = IRadDrive::MediaInfo::MediaPresent;
        return false;

    default:
        rDebugString( "GcnDVDDrive: unknown error.\n" );
        m_MediaInfo.m_MediaState = IRadDrive::MediaInfo::MediaNotPresent;
        m_LastError = NoMedia;
        return false;
    }

    //
    // Set the volume name. We use the disk ID parts which won't change: game name,
    // company name, disk number and game version.
    //
    DVDDiskID* diskId = ::DVDGetCurrentDiskID( );
    sprintf( m_MediaInfo.m_VolumeName, "game:[%.4s] company:[%.2s] disc:[%d] version[%d]",
        diskId->gameName, diskId->company, diskId->diskNumber, diskId->gameVersion );

    return true;
}

//=============================================================================
// Function:    radGcnDVDDrive::BuildFileSpec
//=============================================================================
// Description: Make the filename in format DVD:filename (no slash).
//
// Parameters:  fileName -- the name given by the user
//              fullName -- buffer to give back the name
//              size -- size of fullName buffer
//              pName -- pointer to the beginning of the filename (after the colon)
//
// Returns:     
//------------------------------------------------------------------------------
void radGcnDVDDrive::BuildFileSpec( const char* fileName, char* fullName, unsigned int size, char** pName )
{
    int len = strlen( s_GCNDVDDriveName );
    strncpy( fullName, s_GCNDVDDriveName, size - 1 );

    //
    // Strip leading slash.
    //
    if ( fileName[ 0 ] == '\\' )
    {
        strncpy( &fullName[ len ], &fileName[ 1 ] , size - len - 1 );
    }
    else
    {
        strncpy( &fullName[ len ], fileName, size - len - 1 );
    }
    fullName[ size - 1 ] = '\0';
    *pName = &fullName[ len ];

    //
    // Reverse all slashes
    //
    char* p = *pName;
    while( *p )
    {
        if( *p == '\\' )
        {
            *p = '/';
        }
        p++;
    }
}

//=============================================================================
// Function:    radGcnDVDDrive::TranslateError
//=============================================================================

radFileError radGcnDVDDrive::TranslateError( int error )
{
    switch( error )
    {
    case DVD_STATE_FATAL_ERROR:
        return HardwareFailure;

    case DVD_STATE_END:
    case DVD_STATE_CANCELED:
        return Success;

    case DVD_STATE_RETRY:
        return MediaCorrupt;
    
    case DVD_STATE_NO_DISK:
        return NoMedia;

    case DVD_STATE_COVER_OPEN:
        return ShellOpen;
        
    case DVD_STATE_WRONG_DISK:
        return WrongMedia;

    case DVD_STATE_WAITING:
    case DVD_STATE_BUSY:
    case DVD_STATE_MOTOR_STOPPED:
    case DVD_STATE_PAUSING:
    case DVD_STATE_IGNORED:
        rDebugString( "GcnDVDDrive: unsupported error." );
        return HardwareFailure;

    default:
        rDebugString( "GcnDVDDrive: unknown error." );
        return HardwareFailure;
    }
}

//=============================================================================
// Function:    radGcnDVDDrive::Seek
//=============================================================================

bool radGcnDVDDrive::Seek( unsigned int position, DVDFileInfo* fileInfo )
{
    //
    // We tell the service routine to start polling and start a synchronous seek.
    //
    Lock( );
    m_pPollFileInfo = fileInfo;
    m_PollResult = DVD_STATE_END;
    Unlock( );

    int result = ::DVDSeek( fileInfo, position );

    //
    // The seek returned. Turn off the service call polling and grab its result.
    //
    Lock( );
    m_pPollFileInfo = NULL;
    int pollResult = m_PollResult;
    m_PollResult = DVD_STATE_END;
    Unlock( );

    if ( result < 0 )
    {
        //
        // Either there was a fatal error, or service canceled it.
        //
        if ( pollResult != DVD_STATE_WAITING && pollResult != DVD_STATE_BUSY && pollResult != DVD_STATE_END )
        {
            m_LastError = TranslateError( pollResult );
        }
        else
        {
            rAssert( result != DVD_RESULT_CANCELED );
            m_LastError = HardwareFailure;
        }
        return false;
    }
    else
    {
        return true;
    }
}

//=============================================================================
// Function:    radGcnDVDDrive::Read
//=============================================================================

bool radGcnDVDDrive::Read( void* pData, unsigned int size, unsigned int position, DVDFileInfo* fileInfo )
{   
    //
    // We tell the service routine to start polling and start a synchronous read.
    //
    Lock( );
    m_pPollFileInfo = fileInfo;
    m_PollResult = DVD_STATE_END;
    Unlock( );

    int result = ::DVDRead( fileInfo, pData, size, position );

    //
    // The read returned. Turn off the service call polling and grab its result.
    //
    Lock( );
    m_pPollFileInfo = NULL;
    int pollResult = m_PollResult;
    m_PollResult = DVD_STATE_END;
    Unlock( );

    if ( result < 0 )
    {
        //
        // Either there was a fatal error, or service canceled it.
        //
        if ( pollResult != DVD_STATE_WAITING && pollResult != DVD_STATE_BUSY && pollResult != DVD_STATE_END )
        {
            m_LastError = TranslateError( pollResult );
        }
        else
        {
            rAssert( result != DVD_RESULT_CANCELED );
            m_LastError = HardwareFailure;
        }
        return false;
    }
    else
    {
        return true;
    }
}

//=============================================================================
// Function:    radGcnDVDDrive:FileNameMatchesSearch
//=============================================================================
// Description: This is a helper for this drive's enumeration facilities. It
//              determines if a given path/file name matches a user search
//              spec.
//  
//              This is a bit of a hack - we don't have a platform-independant
//              wildcard matcher. This one tries to accomodate both searches
//              with and without extensions: ie, "*.*" versus "*". It tries to
//              simulate Windows style matching.
//
// Parameters:  sSearchSpec - a path with wildcards to be matched against
//              pFileName - a filename to test against the search spec
//              
// Returns:     true if there is a match
//------------------------------------------------------------------------------

bool radGcnDVDDrive::FileNameMatchesSearch
( 
    const char* pFileName, 
    const char* pSearchSpec 
)
{
    rAssert( pFileName != NULL );
    rAssert( pSearchSpec != NULL );

    //
    // If the spec doesn't have a '.' in it, we can do this easily.
    //
    if( strchr( pSearchSpec, '.' ) == NULL )
    {
        return ::radStringMatchesWildCardPattern( pFileName, pSearchSpec );
    }

    //
    // Make local copies of the input strings for hacking up.
    //
    char nameBuf[ radFileFilenameMax + 1 ];
    char* nameAfterDot;
    char specBuf[ radFileFilenameMax + 1 ];
    char* specAfterDot;
    strcpy( nameBuf, pFileName );
    strcpy( specBuf, pSearchSpec );
    nameAfterDot = strchr( nameBuf, '.' );
    specAfterDot = strchr( specBuf, '.' );
   

    //
    // Now split each string into two at the dot.
    //
    if( nameAfterDot != NULL )
    {
        *nameAfterDot = '\0';
        nameAfterDot++;
    }
    *specAfterDot = '\0';
    specAfterDot++;

    //
    // Perform matching on the two separate parts.
    //
    bool result1 = ::radStringMatchesWildCardPattern( nameBuf, specBuf );
    bool result2;
    if( nameAfterDot != NULL )
    {
        result2 = ::radStringMatchesWildCardPattern( nameAfterDot, specAfterDot );
    }
    else
    {
        result2 = ::radStringMatchesWildCardPattern( "", specAfterDot );
    }
    return( result1 && result2 );
}
