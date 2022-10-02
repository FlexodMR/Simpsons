//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        gcnmemcarddrive.hpp
//
// Subsystem:	Radical File System
//
// Description:	This file contains the implementation of the GCN memory card drive.
//
// Revisions:	
//
// Notes:       This drive handles data verification in 2 ways. First, if there is
//              enough room on the card, opening a file for writing will do copy-protection.
//              It does this by creating a second copy of the file, so that one will
//              always be valid. This is NOT done if there is not enough room (or free files).
//              Second, there is a distributed CRC. Every block has a CRC value
//              at the end. When a block is loaded or flushed, the CRC value is
//              calculated. Therefore, given the block size and the CRC size
//
//              the total size of the file is:
//                   numBlocks = ceil( dataSize / blockSize )
//                   fileSize = dataSize + ( numBlocks * crcSize )
//              
//              given fileSize, we can recover the other values:
//                   numBlocks = ceil( fileSize / ( blockSize + crcSize ) )
//                   dataSize = fileSize - ( numBlocks * crcSize )
//
//              HEADER: the first unsigned in of the file is the real file size.
//              Next is the icon data, then the user data.
//
//              CARD STAT: The icon address is set to -1 when the card is first
//              created. It is only set to a correct value during a commit, or
//              if the file is not writeable.
//
//              MOUNTING: When a file is opened, the card is mounted. If the card is
//              removed at any time, the CARD api will unmount the card. When the card
//              is re-initialized after an error, it will return an error if the card
//              was removed, until all files are closed. For drive operations, the card
//              will only be mounted for the life of the operation (if not mounted already).
//              This implies that continuing a find after a card changed will give funny 
//              results.
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <string.h>
#include <radstring.hpp>
#include <radkey.hpp>
#include "../common/drivethread.hpp"
#include "gcnmemcarddrive.hpp"

//=============================================================================
// Statics
//=============================================================================

radDriveThread*     s_pDriveThread = NULL;
IRadThreadMutex*    s_pMutex = NULL;

//
// Buffer needed for caching.
//
unsigned char  s_TransferBufferSpace[ GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE + GCNMEMCARDDRIVE_ALIGNMENT ];
unsigned char* s_TransferBuffer;

//
// For caching, we need the file handle we are accessing and the current position (in
// increments of the transfer buffer size).
// These dictate the state of the transfer buffer.
//
radFileHandle   s_CacheHandle = 0;
unsigned int    s_CachePosition = 0;

enum CacheState
{
    CacheInvalid,
    CacheClean,
    CacheDirty
};
CacheState      s_CacheState = CacheInvalid;

//
// Keep an internal list of handles to give back to the files. This has to be global since
// the caching is.
//
struct MemcardHandle
{
    int             m_dataAddr;
    unsigned int    m_length;
    CARDFileInfo    m_fileInfo;
    unsigned char   m_bannerFormat;
    unsigned int    m_iconAddress;
    unsigned short  m_iconFormat;
    unsigned short  m_iconSpeed;
    unsigned int    m_commentAddress;
};

MemcardHandle s_HandlePool[ GCN_MAX_CARD_HANDLES ];

//
// prefix character for temporary versions of files.
//
#define GCNMEMCARDDRIVE_TEMP_CHAR   '~'

//
// Characters representing hexadecimal digits
//
static char s_HexTable[ ] =
{ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };

//
// Defines to say how big header information is.
//
#define GCN_ICON_RGB_SIZE       CARD_ICON_WIDTH * CARD_ICON_HEIGHT * 2
#define GCN_ICON_CI8_SIZE       CARD_ICON_WIDTH * CARD_ICON_HEIGHT
#define GCN_ICON_CLUT_SIZE      512
#define GCN_BANNER_RGB_SIZE     CARD_BANNER_WIDTH * CARD_BANNER_HEIGHT * 2
#define GCN_BANNER_CI8_SIZE     CARD_BANNER_WIDTH * CARD_BANNER_HEIGHT
#define GCN_BANNER_CLUT_SIZE    512

//=============================================================================
// Public Functions 
//=============================================================================

//=============================================================================
// Function:    radGcnMemcardDriveFactory
//=============================================================================
// Description: This member is responsible for constructing a radGcnMemcardDrive object.
//
// Parameters:  pointer to receive drive object
//              pointer to the drive name
//              allocator
//              
// Returns:     
//------------------------------------------------------------------------------

void radGcnMemcardDriveFactory
( 
    radDrive**         ppDrive, 
    const char*        pDriveName,
    radMemoryAllocator alloc
)
{
    //
    // Simply constuct the drive object.
    //
    *ppDrive = new( alloc ) radGcnMemcardDrive( pDriveName, alloc );
    rAssert( *ppDrive != NULL );
}

//=============================================================================
// Public Member Functions
//=============================================================================

radGcnMemcardDrive::radGcnMemcardDrive( const char* pdrivespec, radMemoryAllocator alloc )
    : 
    radDrive( ),
    m_OpenFiles( 0 ),
    m_IsMounted( false ),
    m_Changed( false ),
    m_WorkArea( NULL )
{
    static bool g_IsInitialized = false;
    if( !g_IsInitialized )
    {
        //
        // Initialize the CARD system.
        //
        ::CARDInit( );

        //
        // Set up our transfer buffer
        //
        rAssert( radMemorySpace_OptimalAlignment <= GCNMEMCARDDRIVE_ALIGNMENT );
        rAssert( radFileOptimalMemoryAlignment <= GCNMEMCARDDRIVE_ALIGNMENT );
        s_TransferBuffer = (unsigned char*) ::radMemoryRoundUp( (unsigned int) s_TransferBufferSpace, GCNMEMCARDDRIVE_ALIGNMENT );

        //
        // Initialize the handle pool
        //
        for ( unsigned int i = 0; i < GCN_MAX_CARD_HANDLES; i++ )
        {
            s_HandlePool[ i ].m_dataAddr = -1;
        }

        g_IsInitialized = true;
    }

    //
    // Create the drive thread if it's not already done
    //
    if ( s_pDriveThread == NULL )
    {
        rAssert( s_pMutex == NULL );

        //
        // Create a mutex for lock/unlock
        //
        radThreadCreateMutex( &s_pMutex, alloc );
        rAssert( s_pMutex != NULL );

        //
        // Create the drive thread.
        //
        s_pDriveThread = new( alloc ) radDriveThread( s_pMutex, alloc );
        rAssert( s_pDriveThread != NULL );

        m_pDriveThread = s_pDriveThread;
    }
    else
    {
        m_pDriveThread = s_pDriveThread;
        m_pDriveThread->AddRef( );
    }
    
    //
    // Copy over the name of this drive.
    //
    strcpy( m_DriveName, pdrivespec );

    //
    // Align the work area
    //
    m_WorkArea = (char*) ::radMemoryRoundUp( (unsigned int) m_WorkAreaBuffer, 32 );
}

radGcnMemcardDrive::~radGcnMemcardDrive( void )
{
    Unmount( );

    //
    // Release the drive thread, and destroy it if needed.
    //
    if ( m_pDriveThread->GetRefCount( ) == 1 )
    {
        s_pMutex->Release( );
        s_pMutex = NULL;
        s_pDriveThread->Release( );
        s_pDriveThread = NULL;
    }
    else
    {
        m_pDriveThread->Release( );
    }
}

//=============================================================================
// Function:    radGcnMemcardDrive::Lock
//=============================================================================
// Description: Start a critical section
//
// Parameters:  
//
// Returns:     
//------------------------------------------------------------------------------

void radGcnMemcardDrive::Lock( void )
{
    s_pMutex->Lock( );
}

//=============================================================================
// Function:    radGcnMemcardDrive::Unlock
//=============================================================================
// Description: End a critical section
//
// Parameters:  
//
// Returns:     
//------------------------------------------------------------------------------

void radGcnMemcardDrive::Unlock( void )
{
    s_pMutex->Unlock( );
}

//=============================================================================
// Function:    radGcnMemcardDrive::GetCapabilities
//=============================================================================

unsigned int radGcnMemcardDrive::GetCapabilities( void )
{
    return ( radDriveRemovable | radDriveWriteable | radDriveSaveGame | radDriveEnumerable | radDriveFormat );
}

//=============================================================================
// Function:    radGcnMemcardDrive::GetDriveName
//=============================================================================

const char* radGcnMemcardDrive::GetDriveName( void )
{
    return m_DriveName;
}

//=============================================================================
// Function:    radGcnMemcardDrive::Initialize
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::Initialize( void )
{
    if ( m_OpenFiles != 0 ) 
    {
        //
        // Check if there was a media change. If getting media info returns false,
        // then it had been removed, or failed to mount.
        //
        if ( !SetMediaInfo( ) || m_Changed )
        {
            Unmount( );
            m_Changed = true;
            m_LastError = m_MediaInfo.m_MediaState == IRadDrive::MediaInfo::MediaNotPresent ? NoMedia : WrongMedia;
            return Error;
        }
    }
    else
    {
        SetMediaInfo( );
        m_Changed = false;
    }

    //
    // Success
    //
    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnMemcardDrive::OpenSaveGame
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::OpenSaveGame
( 
    const char*        fileName, 
    radFileOpenFlags   flags, 
    bool               writeAccess, 
    radMemcardInfo*    memcardInfo,
    unsigned int       maxSize,
    radFileHandle*     pHandle, 
    unsigned int*      pSize 
)
{
#ifdef RAD_DEBUG
    //
    // Need to leave room for the temporary file character.
    //
    if ( strlen( fileName ) >= CARD_FILENAME_MAX )
    {
        rDebugPrintf( "radFile: GcnMemcardDrive: filename [%s] too long.\n", fileName );
        rAssert( false );
    }
    if ( fileName[ 0 ] == GCNMEMCARDDRIVE_TEMP_CHAR )
    {
        rDebugPrintf( "radFile: GcnMemcardDrive: filename [%s] cannot start with [%c].\n", 
            fileName, GCNMEMCARDDRIVE_TEMP_CHAR );
        rAssert( false );
    }
#endif

    //
    // Get the name and the channel.
    //
    char fullName[ radFileFilenameMax + 1 ];
    char* pName;
    BuildFileSpec( fileName, fullName, radFileFilenameMax + 1, &pName );

    int chan = GetChannel( );

    //
    // Mount the drive.
    //
    if ( !Mount( ) )
    {
        return Error;
    }

    //
    // Flush the cache block so that we can use the transfer buffer.
    //
    if ( !FlushBlock( ) )
    {
        if( m_OpenFiles == 0 ) Unmount( );
        return Error;
    }
    s_CacheState = CacheInvalid;

    //
    // Calculate the total file size for creation.
    // headerSize is the size of the header.
    // fileSize is the size of the file (including header).
    // creationSize is the file size rounded up to the nearest sector.
    //
    unsigned int headerSize = HeaderSize( memcardInfo );
    unsigned int numBlocks = 
        ( maxSize + headerSize + GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE - 1 ) / GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
    unsigned int fileSize = maxSize + headerSize + numBlocks * sizeof( radCrc );
    unsigned int creationSize = ::radMemoryRoundUp( fileSize, GCNMEMCARDDRIVE_SECTOR_SIZE );

    //
    // Find a free spot in our table.
    //
    int handle = -1;
    for ( int i = 0; i < GCN_MAX_CARD_HANDLES; i++ )
    {
        if ( s_HandlePool[ i ].m_dataAddr < 0 )
        {
            handle = i;
            break;
        }
    }
    rAssertMsg( handle >= 0, "GcnCARDDrive: out of handles." );

    //
    // Open the file if possible
    //
    CARDFileInfo* pCardInfo = &( s_HandlePool[ handle ].m_fileInfo );

    radFileError error = OpenGCNFile( pName, pCardInfo );
    if ( error != Success && error != FileNotFound )
    {
        if( m_OpenFiles == 0 ) Unmount( );
        m_LastError = error;
        return Error;
    }

    //
    // Find the free space and files.
    //
    long freeSpace, freeFiles;
    if ( !DoFun( ::CARDFreeBlocks( chan, &freeSpace, &freeFiles ) ) )
    {
        if( m_OpenFiles == 0 ) Unmount( );
        return Error;
    }
    
    //
    // We either have an open file, or it didn't exist. Parse the open flags and
    // create the file if needed.
    //
    if ( error == FileNotFound )
    {
        if ( flags == OpenExisting )
        {
            if( m_OpenFiles == 0 ) Unmount( );
            m_LastError = FileNotFound;
            return Error;
        }
        else
        {
            rAssertMsg( flags == CreateAlways || flags == OpenAlways, "PS2MemcardDrive: invalid open flags." );

            //
            // Create the file. First check if there's room.
            //
            if ( creationSize > freeSpace || freeFiles < 1 )
            {
                if( m_OpenFiles == 0 ) Unmount( );
                m_LastError = NoFreeSpace;
                return Error;
            }

            if ( !DoFun( ::CARDCreate( chan, pName, creationSize, pCardInfo ) ) )
            {
                if( m_OpenFiles == 0 ) Unmount( );
                return Error;
            }
        }
    }
    else // file was opened successfully get its info
    {
        int fileNo = CARDGetFileNo( pCardInfo );

        CARDStat cStat;
        if ( !DoFun( ::CARDGetStatus( chan, fileNo, &cStat ) ) )
        {
            ::CARDClose( pCardInfo );
            if( m_OpenFiles == 0 ) Unmount( );
            return Error;
        }

        if ( flags == OpenExisting || flags == OpenAlways )
        {
            //
            // Handle copy protection.
            //
            if ( writeAccess && cStat.length <= freeSpace && freeFiles >= 1 )
            {
                //
                // We have room to do copy protection. We need to create a new file
                // which is a copy of the old one. Close the old one, create the
                // new one and reopen the old one with a different cardInfo.
                //
                char TempName[ CARD_FILENAME_MAX + 1 ];
                TempName[ 0 ] = GCNMEMCARDDRIVE_TEMP_CHAR;
                strcpy( &TempName[ 1 ], fileName );

                CARDFileInfo oldCardInfo;
                if ( 
                    !DoFun( ::CARDClose( pCardInfo ) ) ||
                    !DoFun( ::CARDCreate( chan, TempName, cStat.length, pCardInfo ) ) ||
                    !DoFun( ::CARDFastOpen( chan, fileNo, &oldCardInfo ) ) 
                   )
                {
                    if( m_OpenFiles == 0 ) Unmount( );
                    return Error;
                }
                
                //
                // Copy the files and close the old one.
                //
                if ( !Copy( pCardInfo, &oldCardInfo ) )
                {
                    ::CARDClose( pCardInfo );
                    ::CARDClose( &oldCardInfo );
                    if( m_OpenFiles == 0 ) Unmount( );
                    return Error;
                }
                
                if ( !DoFun( ::CARDClose( &oldCardInfo ) ) )
                {
                    ::CARDClose( pCardInfo );
                    if( m_OpenFiles == 0 ) Unmount( );
                    return Error;
                }
            }

            //
            // No need to do copy protection, so do nothing.
            //
        } 
        else
        {
            rAssertMsg( flags == CreateAlways, "GCNMemcardDrive: invalid open flags." );
            
            //
            // Check if we can keep a copy of the original.
            //
            if ( writeAccess && creationSize <= freeSpace && freeFiles >= 1 )
            {
                //
                // Create this file, copy protected.
                //
                char TempName[ CARD_FILENAME_MAX + 1 ];
                TempName[ 0 ] = GCNMEMCARDDRIVE_TEMP_CHAR;
                strcpy( &TempName[ 1 ], fileName );

                if ( !DoFun( ::CARDCreate( chan, TempName, creationSize, pCardInfo ) ) )
                {
                    if( m_OpenFiles == 0 ) Unmount( );
                    return Error;
                }
            }
            else
            {
                //
                // No room for copy protection, so check for space and delete the old one.
                //
                if ( creationSize > freeSpace + cStat.length )
                {
                    ::CARDClose( pCardInfo );
                    if( m_OpenFiles == 0 ) Unmount( );
                    m_LastError = NoFreeSpace;
                    return Error;
                }

                //
                // Close the file. Delete the current one and create the new one.
                //
                if (
                    !DoFun( ::CARDClose( pCardInfo ) ) ||
                    !DoFun( ::CARDFastDelete( chan, fileNo ) ) ||
                    !DoFun( ::CARDCreate( chan, pName, creationSize, pCardInfo ) )
                   )
                {
                    if( m_OpenFiles == 0 ) Unmount( );
                    return Error;
                }
            }
        }
    }

    //
    // Get the system info. We can assume that cardInfo is valid from this point on.
    //
    CARDStat cardStat;
    if ( !DoFun( ::CARDGetStatus( chan, CARDGetFileNo( pCardInfo ), &cardStat ) ) )
    {
        ::CARDClose( pCardInfo );
        if( m_OpenFiles == 0 ) Unmount( );
        return Error;
    }

    //
    // If we opened an existing file, check it's header.
    //
    if ( error == Success && ( flags == OpenExisting || flags == OpenAlways ) )
    {
        if ( (int) cardStat.iconAddr == -1 )
        {
            ::CARDClose( pCardInfo );
            if( m_OpenFiles == 0 ) Unmount( );
            m_LastError = DataCorrupt;
            return Error;
        }

        //
        // Load the first sector.
        //
        if ( !DoFun( ::CARDRead( pCardInfo, s_TransferBuffer, GCNMEMCARDDRIVE_SECTOR_SIZE, 0 ) ) )
        {
            ::CARDClose( pCardInfo );
            if( m_OpenFiles == 0 ) Unmount( );
            return Error;
        }

        //
        // Grab the real file size.
        //
        unsigned int length;
        memcpy( &length, s_TransferBuffer, sizeof( unsigned int ) );
        
        //
        // Check if the length makes sense. We can't do a crc check on it until we get
        // this value.
        //
        if ( 
            ::radMemoryRoundUp( length, GCNMEMCARDDRIVE_SECTOR_SIZE ) != cardStat.length || 
            length < cardStat.offsetData + sizeof( unsigned int )
           )
        {
            ::CARDClose( pCardInfo );
            if( m_OpenFiles == 0 ) Unmount( );
            m_LastError = DataCorrupt;
            return Error;
        }

        s_HandlePool[ handle ].m_iconAddress = (unsigned int) -1;
        s_HandlePool[ handle ].m_dataAddr = cardStat.offsetData;
        s_HandlePool[ handle ].m_length = length;
    }
    else
    {
        //
        // Initialize the newly created file.
        //
        if ( !InitializeFile( handle, pCardInfo, &cardStat, memcardInfo, headerSize, fileSize ) )
        {
            ::CARDClose( pCardInfo );
            if( m_OpenFiles == 0 ) Unmount( );
            return Error;
        }

        //
        // Wait until the commit to set the card status.
        //
        if ( !writeAccess )
        {
            if ( !DoFun( ::CARDSetStatus( chan, CARDGetFileNo( pCardInfo ), &cardStat ) ) )
            {
                ::CARDClose( pCardInfo );
                if( m_OpenFiles == 0 ) Unmount( );
                return Error;
            }
            s_HandlePool[ handle ].m_iconAddress = (unsigned int) -1;
        }
        else
        {
            //
            // Store the cardStat info for later.
            //
            s_HandlePool[ handle ].m_iconAddress = cardStat.iconAddr;
            s_HandlePool[ handle ].m_bannerFormat = cardStat.bannerFormat;
            s_HandlePool[ handle ].m_iconFormat = cardStat.iconFormat;
            s_HandlePool[ handle ].m_iconSpeed = cardStat.iconSpeed;
            s_HandlePool[ handle ].m_commentAddress = cardStat.commentAddr;
        }

        s_HandlePool[ handle ].m_dataAddr = headerSize;
        s_HandlePool[ handle ].m_length = fileSize;
    }

    //
    // The size we give to the user is the fileSize - headerSize - crc table size
    //
    fileSize = s_HandlePool[ handle ].m_length;
    headerSize = s_HandlePool[ handle ].m_dataAddr;

    *pHandle = handle;
    *pSize = fileSize - headerSize - GetTableSize( fileSize );

    m_OpenFiles++;

    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnMemcardDrive::CloseFile
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::CloseFile( radFileHandle handle, const char* fileName )
{
    //
    // We don't report failure for this operation.
    //
    CommitFile( handle, fileName );

    //
    // Invalidate the cache
    //
    if ( s_CacheHandle == handle )
    {
        s_CacheState = CacheInvalid;
    }

    ::CARDClose( &( s_HandlePool[ handle ].m_fileInfo ) );

    //
    // Remove the handle.
    //
    s_HandlePool[ handle ].m_dataAddr = -1;

    m_OpenFiles--;
    
    if ( m_OpenFiles == 0 )
    {
    	Unmount( );
    }

    return Complete;
}

//=============================================================================
// Function:    radGcnMemcardDrive::CommitFile
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::CommitFile( radFileHandle handle, const char* fileName )
{
    //
    // Flush the block first.
    //
    if ( !FlushBlock( ) )
    {
        return Error;
    }

    int chan = GetChannel( );
    CARDFileInfo* pCardInfo = &( s_HandlePool[ handle ].m_fileInfo );
    int fileNo = CARDGetFileNo( pCardInfo );
    CARDStat cardStat;

    //
    // If the icon address isn't set yet, set it.
    //
    if ( s_HandlePool[ handle ].m_iconAddress != (unsigned int) -1 )
    {
        if ( !DoFun( ::CARDGetStatus( chan, fileNo, &cardStat ) ) )
        {
            return Error;
        }
        cardStat.bannerFormat = s_HandlePool[ handle ].m_bannerFormat;
        cardStat.iconFormat = s_HandlePool[ handle ].m_iconFormat;
        cardStat.iconSpeed = s_HandlePool[ handle ].m_iconSpeed;
        cardStat.commentAddr = s_HandlePool[ handle ].m_commentAddress;
        cardStat.iconAddr = s_HandlePool[ handle ].m_iconAddress;
        if ( !DoFun( ::CARDSetStatus( chan, fileNo, &cardStat ) ) )
        {
            return Error;
        }
        s_HandlePool[ handle ].m_iconAddress = (unsigned int) -1;
    }

    //
    // Check if we have a temporary file.
    //
    if ( !DoFun( ::CARDGetStatus( chan, fileNo, &cardStat ) ) )
    {
        return Error;
    }

    //
    // If we have a temporary file, delete the original, and rename this one
    //
    if ( cardStat.fileName[ 0 ] == GCNMEMCARDDRIVE_TEMP_CHAR )
    {
        char* newName = &( cardStat.fileName[ 1 ] );
        if (
            !DoFun( ::CARDDelete( chan, newName ) ) ||
            !DoFun( ::CARDRename( chan, cardStat.fileName, newName ) )
           )
        {
            return Error;
        }
    }
      
    m_LastError = Success;   
    return Complete;
}

//=============================================================================
// Function:    radGcnMemcardDrive::GetReadBlockSize
//=============================================================================

unsigned int radGcnMemcardDrive::GetReadBlockSize( void )
{
    return GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE - sizeof( radCrc );
}

//=============================================================================
// Function:    radGcnMemcardDrive::GetReadHeaderSize
//=============================================================================

unsigned int radGcnMemcardDrive::GetReadHeaderSize( radFileHandle handle )
{
    return s_HandlePool[ handle ].m_dataAddr;
}

//=============================================================================
// Function:    radGcnMemcardDrive::GetWriteBlockSize
//=============================================================================

unsigned int radGcnMemcardDrive::GetWriteBlockSize( void )
{
    return GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE - sizeof( radCrc );
}

//=============================================================================
// Function:    radGcnMemcardDrive::GetWriteHeaderSize
//=============================================================================

unsigned int radGcnMemcardDrive::GetWriteHeaderSize( radFileHandle handle )
{
    return s_HandlePool[ handle ].m_dataAddr;
}

//=============================================================================
// Function:    radGcnMemcardDrive::ReadSignedBlock
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::ReadSignedBlock
(
    radFileHandle   handle,
    const char*     fileName,
    unsigned int    block,
    unsigned int    position,
    unsigned int    numBytes,
    void*           pData, 
    radMemorySpace  pDataSpace
)
{
    rAssertMsg( pDataSpace == radMemorySpace_Local, 
        "radFileSystem: radGcnMemcardDrive: External memory not supported for reads." );

    //
    // Check if we're reading past the end of the file.
    //
    unsigned int size;
    if ( !GetSizeFromHandle( handle, &size ) )
    {
        return Error;
    }

    if ( block * GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE >= size )
    {
        m_LastError = Success;
        return Complete;
    }

    if ( !LoadBlock( handle, block ) )
    {
        return Error;
    }

    memcpy( pData, &s_TransferBuffer[ position ], numBytes );

    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnMemcardDrive::WriteSignedBlock
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::WriteSignedBlock
( 
    radFileHandle handle,
    const char*  fileName,
    unsigned int block,
    unsigned int position,
    unsigned int numBytes,
    const void* pData,
    unsigned int* pSize,
    radMemorySpace pDataSpace
)
{
    rAssertMsg( pDataSpace == radMemorySpace_Local, 
                "radFileSystem: radGcnMemcardDrive: External memory not supported for writes." );

    //
    // Get the file size
    //
    unsigned int size;
    if ( !GetSizeFromHandle( handle, &size ) )
    {
        return Error;
    }
    size = size - GetTableSize( size );

    rAssertMsg( 
        block * ( GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE - sizeof( radCrc ) ) + position + numBytes <= size,
        "radFileSystem: radGcnMemcardDrive: Cannot change file size." );

    if ( !LoadBlock( handle, block ) )
    {
        return Error;
    }

    //
    // Transfer the user's data into the transfer buffer.
    //
    s_CacheState = CacheInvalid;
    memcpy( &s_TransferBuffer[ position ], pData, numBytes );
    s_CacheState = CacheDirty;

    *pSize = size;

    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnMemcardDrive::DestroyFile
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::DestroyFile( const char* fileName )
{
    bool mounted = m_IsMounted;

    //
    // Mount the drive.
    //
    if ( !Mount( ) )
    {
        return Error;
    }

    //
    // Get the name and the port.
    //
    char fullName[ radFileFilenameMax + 1 ];
    char* pName;
    BuildFileSpec( fileName, fullName, radFileFilenameMax + 1, &pName );

    int chan = GetChannel( );

    //
    // Create the temp file name
    //
    char tempName[ radFileFilenameMax + 1 ];
    tempName[ 0 ] = GCNMEMCARDDRIVE_TEMP_CHAR;
    strcpy( &tempName[ 1 ], pName );

    //
    // Destroy the temporary and normally named files.
    //
    int resultTemp = ::CARDDelete( chan, tempName );
    if ( resultTemp != CARD_RESULT_READY && resultTemp != CARD_RESULT_NOFILE )
    {
        m_LastError = TranslateError( resultTemp );
        if ( !mounted ) Unmount( );
        return Error;
    }

    int result = ::CARDDelete( chan, pName );
    if ( result != CARD_RESULT_READY && result != CARD_RESULT_NOFILE )
    {
        m_LastError = TranslateError( result );
        if ( !mounted ) Unmount( );
        return Error;
    }

    //
    // If neither file existed, then no file was found.
    //
    if ( resultTemp == CARD_RESULT_NOFILE && result == CARD_RESULT_NOFILE )
    {
        m_LastError = FileNotFound;
        if ( !mounted ) Unmount( );
        return Error;
    }

    if ( !mounted ) Unmount( );
    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnMemcardDrive::Format
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::Format( void )
{
    rAssert( m_OpenFiles == 0 );
    rAssert( m_IsMounted == false );

    //
    // We need to do a mount, but if it thinks it's broken then
    // we shouldn't unmount.
    //
    if ( !Mount( true ) )
    {
        return Error;
    }

    //
    // Format the card. On error, unmount it and try remounting it.
    // This will give us a real error state.
    //
    if ( !DoFun( ::CARDFormat( GetChannel( ) ) ) )
    {
        Unmount( );
        if ( !Mount( ) )
        {
            return Error;
        }
    }

    Unmount( );
    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnMemcardDrive::FindFirst
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::FindFirst
( 
    const char*                 searchSpec, 
    IRadDrive::DirectoryInfo*   pDirectoryInfo, 
    radFileDirHandle*           pHandle,
    bool                        firstSearch 
)
{
    //
    // Build the full filename
    //
    char fullName[ radFileFilenameMax + 1 ];
    char* pName;
    BuildFileSpec( searchSpec, fullName, radFileFilenameMax + 1, &pName );
    rAssertMsg( strlen( pName ) <= RAD_GCN_SPEC_LEN, "radFileSystem: long search spec." );

    //
    // Set up the search handle.
    //
    strcpy( pHandle->m_pSpec, pName );
    pHandle->m_MEM.m_fileNo = 0;

    return FindNext( pHandle, pDirectoryInfo );
}

//=============================================================================
// Function:    radGcnMemcardDrive::FindNext
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::FindNext
( 
    radFileDirHandle* pHandle, 
    IRadDrive::DirectoryInfo* pDirectoryInfo
)
{
    bool mounted = m_IsMounted;

    //
    // Mount the drive.
    //
    if ( !Mount( ) )
    {
        return Error;
    }

    pDirectoryInfo->m_Name[0] = '\0';
    pDirectoryInfo->m_Type = IRadDrive::DirectoryInfo::IsDone;

    //
    // Find the next matching name.
    //
    CARDStat cardStat;
    while ( true )
    {
        if ( pHandle->m_MEM.m_fileNo >= CARD_MAX_FILE )
        {
            break;
        }

        //
        // Get the file status.
        //
        int result = ::CARDGetStatus( GetChannel( ), pHandle->m_MEM.m_fileNo, &cardStat );
        if ( result == CARD_RESULT_NOFILE )
        {
            //
            // There is no file here, so keep checking.
            //
            pHandle->m_MEM.m_fileNo++;
            continue;
        }
        
        if ( result != CARD_RESULT_READY )
        {
            m_LastError = TranslateError( result );
            if ( !mounted ) Unmount( );
            return Error;
        }

        //
        // Check the filename.
        //
        if ( FileNameMatchesSearch( cardStat.fileName, pHandle->m_pSpec ) )
        {
            strcpy( pDirectoryInfo->m_Name, cardStat.fileName );
            pDirectoryInfo->m_Type = IRadDrive::DirectoryInfo::IsSaveGame;
            pHandle->m_MEM.m_fileNo++;
            break;
        }
        else
        {
            pHandle->m_MEM.m_fileNo++;
            continue;
        }
    }

    if ( !mounted ) Unmount( );
    m_LastError = Success;
    return Complete;
}

//=============================================================================
// Function:    radGcnMemcardDrive::FindClose
//=============================================================================

radDrive::CompletionStatus radGcnMemcardDrive::FindClose( radFileDirHandle* pHandle )
{
    return Complete;
}

//=============================================================================
// Function:    radGcnMemcardDrive::GetCreationSize
//=============================================================================
// Description: Get the actual size for creation.
//
// Parameters:  
//              
// Returns:     
//------------------------------------------------------------------------------

unsigned int radGcnMemcardDrive::GetCreationSize( radMemcardInfo* memcardInfo, unsigned int size )
{
    //
    // Calculate the total file size for creation.
    // headerSize is the size of the header.
    // fileSize is the size of the file (including header).
    // creationSize is the file size rounded up to the nearest sector.
    //
    unsigned int headerSize = HeaderSize( memcardInfo );
    unsigned int numBlocks = 
        ( size + headerSize + GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE - 1 ) / GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
    unsigned int fileSize = size + headerSize + numBlocks * sizeof( radCrc );
    unsigned int creationSize = ::radMemoryRoundUp( fileSize, GCNMEMCARDDRIVE_SECTOR_SIZE );

    return creationSize;
}

//=============================================================================
// Private Members
//=============================================================================

//=============================================================================
// Function:    radGcnMemcardDrive::SetMediaInfo
//=============================================================================
// Description: Sets the media info. If the card is mounted, then only the free size
//              is updated (since an unmount would be caught). Otherwise, it follows
//              Figure 1 to find any errors.
//
// Parameters:  
//              
// Returns:     True if the card is mounted and should stay that way.
//------------------------------------------------------------------------------

bool radGcnMemcardDrive::SetMediaInfo( void )
{
    int chan = GetChannel( );

    //
    // If the card is supposed to be mounted, check if it really is.
    //
    if ( m_IsMounted )
    {
        rAssert( m_OpenFiles > 0 );

        //
        // Check the serial number. This ought to fail if the card was removed.
        //
        u64 serNumber;
        int result = ::CARDGetSerialNo( chan, &serNumber );
        if ( result == CARD_RESULT_READY )
        {
            //
            // We haven't been unmounted, update the free space and return.
            //
            long freeSpace, freeFiles;
            result = ::CARDFreeBlocks( chan, &freeSpace, &freeFiles );
            if ( result == CARD_RESULT_READY )
            {
                m_MediaInfo.m_FreeSpace = freeSpace;
                m_MediaInfo.m_FreeFiles = freeFiles;
                return true;
            }
        }
    }

    //
    // If we get here, then the card has changed. We unmount it and do a check.
    //
    ::CARDUnmount( chan );

    m_MediaInfo.m_SectorSize = GCNMEMCARDDRIVE_SECTOR_SIZE;
    m_MediaInfo.m_VolumeName[ 0 ] = '\0';
    m_MediaInfo.m_FreeSpace = 0;
    m_MediaInfo.m_FreeFiles = 0;

    long sectorSize = 0;
    int result = CARD_RESULT_BUSY;

    //
    // Probe the card.
    //
    while ( result == CARD_RESULT_BUSY )
    {
        result = ::CARDProbeEx( chan, (long*) 0, &sectorSize );
    }
    
    m_MediaInfo.m_MediaState = ErrorToMediaState( result );

    if ( result != CARD_RESULT_READY )
    {
        return false;
    }

    m_MediaInfo.m_SectorSize = sectorSize;

    //
    // Check the sector size
    //
    if ( sectorSize != GCNMEMCARDDRIVE_SECTOR_SIZE )
    {
        m_MediaInfo.m_MediaState = IRadDrive::MediaInfo::MediaWrongType;
        return false;
    }

    //
    // The card is present, so mount it.
    //
    rAssert( m_WorkArea != NULL );
    rAssert( (unsigned int) m_WorkArea % 32 == 0 );

    result = ::CARDMount( chan, m_WorkArea, NULL );
    
    m_MediaInfo.m_MediaState = ErrorToMediaState( result );

    if ( result == CARD_RESULT_ENCODING )
    {
        ::CARDUnmount( chan );
        return false;
    }
    
    if ( result != CARD_RESULT_READY && result != CARD_RESULT_BROKEN )
    {
        return false;
    }

    //
    // Either the card is broken, or ready. Check if errors are recoverable.
    //
    result = ::CARDCheck( chan );
    m_MediaInfo.m_MediaState = ErrorToMediaState( result );
    if ( result != CARD_RESULT_READY )
    {
        ::CARDUnmount( chan );
        return false;
    }

    //
    // We have a valid card! Find the free space and serial number.
    //
    long freeSpace, freeFiles;
    result = ::CARDFreeBlocks( chan, &freeSpace, &freeFiles );
    m_MediaInfo.m_MediaState = ErrorToMediaState( result );
    if ( result != CARD_RESULT_READY )
    {
        ::CARDUnmount( chan );
        return false;
    }

    u64 serialNumber;
    result = ::CARDGetSerialNo( chan, &serialNumber );
    m_MediaInfo.m_MediaState = ErrorToMediaState( result );
    if ( result != CARD_RESULT_READY )
    {
        ::CARDUnmount( chan );
        return false;
    }

    //
    // Unmount the card.
    //
    ::CARDUnmount( chan );

    //
    // Fill in the info.
    //
    m_MediaInfo.m_FreeSpace = freeSpace;
    m_MediaInfo.m_FreeFiles = freeFiles;

    //
    // Translate serial number into hex.
    //
    for ( int i = 15; i >= 0; i-- )
    {
        m_MediaInfo.m_VolumeName[ i ] = s_HexTable[ serialNumber % 16 ];
        serialNumber /= 16;
    }
    m_MediaInfo.m_VolumeName[ 16 ] = '\0';

    return false;
}

//=============================================================================
// Function:    radGcnMemcardDrive::ErrorToMediaState
//=============================================================================

IRadDrive::MediaInfo::MediaState radGcnMemcardDrive::ErrorToMediaState( int result )
{
    switch( result )
    {
    case CARD_RESULT_FATAL_ERROR:
        rDebugString( "GCNMemcardDrive: getting media info failed. This shouldn't have happened.\n" );
        return IRadDrive::MediaInfo::MediaDamaged;

    case CARD_RESULT_BUSY:
        rDebugString( "GCNMemcardDrive: getting media info failed. This shouldn't have happened.\n" );
        return IRadDrive::MediaInfo::MediaNotPresent;

    case CARD_RESULT_NOCARD:
        return IRadDrive::MediaInfo::MediaNotPresent;

    case CARD_RESULT_WRONGDEVICE:
        return IRadDrive::MediaInfo::MediaInvalid;

    case CARD_RESULT_IOERROR:
        return IRadDrive::MediaInfo::MediaDamaged;

    case CARD_RESULT_ENCODING:
        return IRadDrive::MediaInfo::MediaEncodingErr;

    case CARD_RESULT_BROKEN:
        return IRadDrive::MediaInfo::MediaNotFormatted;

    case CARD_RESULT_READY:
        return IRadDrive::MediaInfo::MediaPresent;

    default:
        rDebugString( "GCNMemcardDrive: unknown error.\n" );
        return IRadDrive::MediaInfo::MediaNotPresent;
    }
}

//=============================================================================
// Function:    radGcnMemcardDrive::GetChannel
//=============================================================================

int radGcnMemcardDrive::GetChannel( void )
{
    //
    // Based on the drive name, lets map it to a channel
    //
    return ( int )( m_DriveName[ GCNMEMCARDDRIVE_PORT_LOC ] - 'A' );   
}

//=============================================================================
// Function:    radGcnMemcardDrive::BuildFileSpec
//=============================================================================

void radGcnMemcardDrive::BuildFileSpec( const char* fileName, char* fullName, unsigned int size, char** pName )
{
    int len = strlen( m_DriveName );
    strncpy( fullName, m_DriveName, size - 1 );

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
    // We can't have subdirectories, so assert on that.
    //
    rAssertMsg( strchr( fullName, '\\' ) == NULL, "GCNMemcardDrive: subdirectories are not supported." );
}

//=============================================================================
// Function:    radGcnMemcardDrive::TranslateError
//=============================================================================

radFileError radGcnMemcardDrive::TranslateError( int error )
{
    switch( error )
    {
    case CARD_RESULT_READY:
    case CARD_RESULT_CANCELED:
        return Success;

    case CARD_RESULT_BUSY:
        rDebugString( "GCNMemcardDrive: operation failed. This shouldn't have happened.\n" );
        return HardwareFailure;

    case CARD_RESULT_WRONGDEVICE:
        return MediaInvalid;

    case CARD_RESULT_NOCARD:
        if ( ::CARDProbe( GetChannel( ) ) )
        {
            return WrongMedia;
        }
        else
        {
            return NoMedia;
        }

    case CARD_RESULT_NOFILE:
        return FileNotFound;

    case CARD_RESULT_IOERROR:
        return MediaCorrupt;

    case CARD_RESULT_BROKEN:
        return MediaNotFormatted;

    case CARD_RESULT_NOENT:
    case CARD_RESULT_INSSPACE:
        return NoFreeSpace;

    case CARD_RESULT_ENCODING:
        return MediaEncodingErr;

    case CARD_RESULT_EXIST:
    case CARD_RESULT_NOPERM:
    case CARD_RESULT_LIMIT:
    case CARD_RESULT_NAMETOOLONG:
    case CARD_RESULT_FATAL_ERROR:
    default:
        return HardwareFailure;
    }
}

//=============================================================================
// Function:    radGcnMemcardDrive::DoFun
//=============================================================================
// Description: Handles functions where CARD_RESULT_READY is the only valid result.
//
// Parameters:
//              
// Returns:     
//------------------------------------------------------------------------------

bool radGcnMemcardDrive::DoFun( int result )
{
    if ( result != CARD_RESULT_READY )
    {
        m_LastError = TranslateError( result );
        return false;
    }
    return true;
}

//=============================================================================
// Function:    radGcnMemcardDrive::Mount
//=============================================================================
// Description: Follows figure 1 to mount a card.
//
// Parameters:
//              
// Returns:     
//------------------------------------------------------------------------------

bool radGcnMemcardDrive::Mount( bool MountBroken )
{
    //
    // Don't re-mount it.
    //
    if ( m_IsMounted )
    {
        rAssert( m_OpenFiles > 0 );
        m_LastError = Success;
        return true;
    }

    rAssert( m_OpenFiles == 0 );

    long sectorSize = 0;
    int result = CARD_RESULT_BUSY;

    int chan = GetChannel( );

    //
    // First probe the card.
    // 
    while ( result == CARD_RESULT_BUSY )
    {
        result = ::CARDProbeEx( chan, (long*) 0, &sectorSize );
    }

    if ( result != CARD_RESULT_READY )
    {
        m_LastError = TranslateError( result );
        return false;
    }

    //
    // Check the sector size.
    //
    if ( sectorSize != GCNMEMCARDDRIVE_SECTOR_SIZE )
    {
        m_LastError = MediaWrongType;
        return false;
    }

    //
    // The card is present, so mount it.
    //
    result = ::CARDMount( chan, m_WorkArea, NULL );

    if ( result != CARD_RESULT_READY && result != CARD_RESULT_BROKEN && result != CARD_RESULT_ENCODING )
    {
        m_LastError = TranslateError( result );
        ::CARDUnmount( chan );
        return false;
    }

    //
    // Either the card is broken, wrong encoded, or ready. Check if errors are recoverable.
    //
    result = ::CARDCheck( chan );

    //
    // We call it mounted, but it needs to be formatted. Only happens if MountBroken == true
    //
    if ( MountBroken && ( result == CARD_RESULT_BROKEN || result == CARD_RESULT_ENCODING ) )
    {
        m_IsMounted = true;
        m_LastError = TranslateError( result );
        return true;
    }

    //
    // Either the card is mounted or there was an error.
    //
    if ( result != CARD_RESULT_READY )
    {
        m_LastError = TranslateError( result );
        ::CARDUnmount( chan );
        return false;
    }

    //
    // The card is now mounted.
    //
    m_IsMounted = true;
    m_LastError = Success;
    return true;
}

//=============================================================================
// Function:    radGcnMemcardDrive::OpenGCNFile
// Assumes that the filename is valid (not too long, etc ... )
//=============================================================================
// Description: Assuming the name makes sense, opens a file. Handles all cases
//              caused by copy protection.
//
// Parameters:
//              
// Returns:     
//------------------------------------------------------------------------------

radFileError radGcnMemcardDrive::OpenGCNFile( char* fileName, CARDFileInfo* cardInfo )
{
    int chan = GetChannel( );

    //
    // Try to open the file.
    //
    int resultReal = ::CARDOpen( chan, fileName, cardInfo );

    if ( resultReal != CARD_RESULT_READY && resultReal != CARD_RESULT_NOFILE )
    {
        return TranslateError( resultReal );
    }

    //
    // Try to open the temporary file.
    //
    char TempName[ CARD_FILENAME_MAX + 1 ];
    TempName[ 0 ] = GCNMEMCARDDRIVE_TEMP_CHAR;
    strcpy( &TempName[ 1 ], fileName );

    CARDFileInfo cardInfoTemp;
    int resultTemp = ::CARDOpen( chan, TempName, &cardInfoTemp );

    if ( resultTemp != CARD_RESULT_READY && resultTemp != CARD_RESULT_NOFILE )
    {
        ::CARDClose( cardInfo );
        return TranslateError( resultTemp );
    }

    //
    // We now have four cases to deal with.
    //
    if ( resultReal == CARD_RESULT_NOFILE && resultTemp == CARD_RESULT_NOFILE )
    {
        //
        // No file at all.
        //
        return FileNotFound;
    }

    if ( resultReal == CARD_RESULT_READY && resultTemp == CARD_RESULT_NOFILE )
    {
        //
        // Only the real file exists. What a good user!
        //
        return Success;
    }

    if ( resultReal == CARD_RESULT_NOFILE && resultTemp == CARD_RESULT_READY )
    {
        //
        // Only the temporary file exists. We need to close the file and rename it.
        //
        int result = ::CARDClose( &cardInfoTemp );
        if ( result != CARD_RESULT_READY )
        {
            return TranslateError( result );
        }

        result = ::CARDRename( chan, TempName, fileName );
        if ( result != CARD_RESULT_READY )
        {
            return TranslateError( result );
        }

        return TranslateError( ::CARDOpen( chan, fileName, cardInfo ) );
    }

    if ( resultReal == CARD_RESULT_READY && resultTemp == CARD_RESULT_READY )
    {
        //
        // Both files exist. The temporary one is unreliable, so delete it.
        //
        int fileNo = CARDGetFileNo( &cardInfoTemp );

        int result = ::CARDClose( &cardInfoTemp );
        if ( result != CARD_RESULT_READY )
        {
            return TranslateError( result );
        }

        result = ::CARDFastDelete( chan, fileNo );
        if ( result != CARD_RESULT_READY )
        {
            return TranslateError( result );
        }

        return Success;
    }
    return Success;
}

//=============================================================================
// Function:    radGcnMemcardDrive::Unmount
//=============================================================================

void radGcnMemcardDrive::Unmount( void )
{
    if ( m_IsMounted )
    {
        ::CARDUnmount( GetChannel( ) );
        m_IsMounted = false;
    }
}

//=============================================================================
// Function:    radGcnMemcardDrive::HeaderSize
//=============================================================================
// Description: Figure out the size of the header (include the files size int).
//
// Parameters:
//              
// Returns:     
//------------------------------------------------------------------------------

unsigned int radGcnMemcardDrive::HeaderSize( const radMemcardInfo* memcardInfo )
{
    unsigned int headerSize = sizeof( unsigned int );
    if ( memcardInfo != NULL )
    {
        headerSize += sizeof( memcardInfo->m_CommentLine1 );
        headerSize += sizeof( memcardInfo->m_CommentLine2 );

        //
        // Check the banner.
        //
        rAssertMsg( memcardInfo->m_Banner != NULL, "GcnMemcardDrive: invalid memcard info." );

        switch( memcardInfo->m_BannerFormat )
        {
        case radMemcardInfo::RGB5A3:
            headerSize += GCN_BANNER_RGB_SIZE;
            break;

        case radMemcardInfo::C8:
            headerSize += GCN_BANNER_CI8_SIZE;
            headerSize += GCN_BANNER_CLUT_SIZE;
            rAssertMsg( memcardInfo->m_CLUT != NULL, "GcnMemcardDrive: invalid memcard info." );
            break;

        default:
            rAssertMsg( false, "GcnMemcardDrive: invalid file format." );
        }

        //
        // Check the icons.
        //
        bool isC8 = false;
        rAssertMsg( memcardInfo->m_NumFrames <= CARD_ICON_MAX, "GcnMemcardDrive: invalid memcard info." );        
        for ( unsigned int i = 0; i < memcardInfo->m_NumFrames; i++ )
        {
            rAssertMsg( memcardInfo->m_pIcon[ i ].m_Data != NULL, "GcnMemcardDrive: invalid memcard info." );

            switch( memcardInfo->m_pIcon[ i ].m_Format )
            {
            case radMemcardIconData::RGB5A3:
                headerSize += GCN_ICON_RGB_SIZE;
                break;

            case radMemcardIconData::C8:
                headerSize += GCN_ICON_CI8_SIZE;
                isC8 = true;
                rAssertMsg( memcardInfo->m_pIcon[ i ].m_CLUT != NULL, "GcnMemcardDrive: invalid memcard info." );
                break;

            default:
                rAssertMsg( false, "GcnMemcardDrive: invalid file format." );
            }
        }

        if ( isC8 )
        {
            headerSize += GCN_ICON_CLUT_SIZE;
        }
    }
    return headerSize;
}

//=============================================================================
// Function:    radGcnMemcardDrive::PackHeader
// Pack the header into the transfer buffer, and return the icon address.
// Clears the rest of the transfer buffer to 0.
//=============================================================================
// Description: Pack the header into the transfer buffer and clear the end of the 
//              buffer to 0.
//
// Parameters:
//              
// Returns:     
//------------------------------------------------------------------------------

void radGcnMemcardDrive::PackHeader( const radMemcardInfo* memcardInfo, CARDStat* cardStat, unsigned int fileSize )
{
    rAssertMsg( memcardInfo != NULL, "radFile: GcnMemcardDrive: radMemcardInfo required for creation." );

    //
    // Clear the buffer.
    //
    memset( s_TransferBuffer, 0, GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE );
    unsigned char* transferPtr = s_TransferBuffer;

    //
    // Add the real fileSize.
    //
    memcpy( transferPtr, &fileSize, sizeof( unsigned int ) );
    transferPtr += sizeof( unsigned int );
    
    //
    // Add the comment.
    //
    CARDSetCommentAddress( cardStat, sizeof( unsigned int ) );

    int size = sizeof( memcardInfo->m_CommentLine1 );
    strncpy( (char*) transferPtr, memcardInfo->m_CommentLine1, size );
    transferPtr[ size - 1 ] = '\0';
    transferPtr += size;
    
    size = sizeof( memcardInfo->m_CommentLine2 );
    strncpy( (char*) transferPtr, memcardInfo->m_CommentLine2, size );
    transferPtr[ size - 1 ] = '\0';
    transferPtr += size;

    CARDSetIconAddress( cardStat, transferPtr - s_TransferBuffer );

    //
    // Add the banner.
    //
    switch( memcardInfo->m_BannerFormat )
    {
    case radMemcardInfo::RGB5A3:
        memcpy( transferPtr, memcardInfo->m_Banner, GCN_BANNER_RGB_SIZE );
        transferPtr += GCN_BANNER_RGB_SIZE;
        break;

    case radMemcardInfo::C8:
        memcpy( transferPtr, memcardInfo->m_Banner, GCN_BANNER_CI8_SIZE );
        transferPtr += GCN_BANNER_CI8_SIZE;

        memcpy( transferPtr, memcardInfo->m_CLUT, GCN_BANNER_CLUT_SIZE );
        transferPtr += GCN_BANNER_CLUT_SIZE;
        break;

    default:
        rAssertMsg( false, "GcnMemcardDrive: invalid file format." );
    }

    CARDSetBannerFormat( cardStat, memcardInfo->m_BannerFormat );

    //
    // Add the icons.
    //
    int hasCLUT = -1;
    for ( unsigned int i = 0; i < memcardInfo->m_NumFrames; i++ )
    {
        switch( memcardInfo->m_pIcon[ i ].m_Format )
        {
        case radMemcardIconData::RGB5A3:
            memcpy( transferPtr, memcardInfo->m_pIcon[ i ].m_Data, GCN_ICON_RGB_SIZE );
            transferPtr += GCN_ICON_RGB_SIZE;
            break;

        case radMemcardIconData::C8:
            memcpy( transferPtr, memcardInfo->m_pIcon[ i ].m_Data, GCN_ICON_CI8_SIZE );
            transferPtr += GCN_ICON_CI8_SIZE;
            hasCLUT = (int) i;
            break;

        default:
            rAssertMsg( false, "GcnMemcardDrive: invalid file format." );
        }

        CARDSetIconFormat( cardStat, i, memcardInfo->m_pIcon[ i ].m_Format );
        CARDSetIconSpeed( cardStat, i, memcardInfo->m_pIcon[ i ].m_Speed );
    }

    //
    // Add rest of header variables.
    //
    if ( hasCLUT > -1 )
    {
        memcpy( transferPtr, memcardInfo->m_pIcon[ hasCLUT ].m_CLUT, GCN_ICON_CLUT_SIZE );
        transferPtr += GCN_ICON_CLUT_SIZE;
    }

    CARDSetIconAnim( cardStat, memcardInfo->m_AnimType );
    if ( memcardInfo->m_NumFrames < CARD_ICON_MAX )
    {
        CARDSetIconSpeed( cardStat, memcardInfo->m_NumFrames, CARD_STAT_SPEED_END );
    }
}

//=============================================================================
// Function:    radGcnMemcardDrive::LoadBlock
//=============================================================================

bool radGcnMemcardDrive::LoadBlock( radFileHandle handle, unsigned int block )
{
    //
    // Check if this is the block we already have.
    //
    if ( s_CacheState != CacheInvalid && s_CacheHandle == handle && s_CachePosition == block )
    {
        return true;
    }

    //
    // Get the file size
    //
    unsigned int fileSize;
    if ( !GetSizeFromHandle( handle, &fileSize ) )
    {
        return false;
    }

    if ( !FlushBlock( ) )
    {
        return false;
    }

    s_CacheState = CacheInvalid;

    CARDFileInfo* pFileInfo = &( s_HandlePool[ handle ].m_fileInfo );

    //
    // Set up the read.
    //
    unsigned int start = block * GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
    unsigned int end = start + GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
    end = end < fileSize ? end : fileSize;
    end = ::radMemoryRoundUp( end, m_MediaInfo.m_SectorSize );
    unsigned int size = end - start;

    //
    // Read the block.
    //
    if ( !DoFun( ::CARDRead( pFileInfo, s_TransferBuffer, size, start ) ) )
    {
        return false;
    }

    //
    // Get the crc.
    //
    radCrc crc;
    memcpy( &crc, &s_TransferBuffer[ end - start - sizeof( crc ) ], sizeof( crc ) );

    s_CacheHandle = handle;
    s_CachePosition = block;

    //
    // Verify the data.
    //
    if ( CalculateCRC( fileSize ) != crc )
    {
        m_LastError = DataCorrupt;
        return false;
    }

    s_CacheState = CacheClean;

    return true;
}

//=============================================================================
// Function:    radGcnMemcardDrive::FlushBlock
//=============================================================================

bool radGcnMemcardDrive::FlushBlock( void )
{
    if ( s_CacheState != CacheDirty )
    {
        return true;
    }

    //
    // Get the file size
    //
    unsigned int fileSize;
    if ( !GetSizeFromHandle( s_CacheHandle, &fileSize ) )
    {
        return false;
    }

    //
    // Calculate the new crc.
    //
    radCrc crc = CalculateCRC( fileSize );

    //
    // Set up the write.
    //
    unsigned int start = s_CachePosition * GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;    
    unsigned int end = start + GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
    end = end < fileSize ? end : fileSize;
    end = ::radMemoryRoundUp( end, m_MediaInfo.m_SectorSize );
    unsigned int size = end - start;

    //
    // Copy in the crc.
    //
    memcpy( &s_TransferBuffer[ end - start - sizeof( crc ) ], &crc, sizeof( radCrc ) );

    //
    // Do the write.
    //
    CARDFileInfo* pFileInfo = &( s_HandlePool[ s_CacheHandle ].m_fileInfo );

    if ( !DoFun( ::CARDWrite( pFileInfo, s_TransferBuffer, size, start ) ) )
    {
        return false;
    }

    s_CacheState = CacheClean;

    return true;
}

//=============================================================================
// Function:    radGcnMemcardDrive::GetTableSize
//=============================================================================

unsigned int radGcnMemcardDrive::GetTableSize( unsigned int fileSize )
{
    unsigned int divisor = GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE + sizeof( radCrc );
    unsigned int numBlocks = ( fileSize + divisor - 1 ) / divisor;

    return numBlocks * sizeof( radCrc );
}

//=============================================================================
// Function:    radGcnMemcardDrive::CalculateCRC
//=============================================================================

radCrc radGcnMemcardDrive::CalculateCRC( unsigned int fileSize )
{
    unsigned int start = s_CachePosition * GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;    
    unsigned int end = start + GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
    end = end < fileSize ? end : fileSize;
    end = ::radMemoryRoundUp( end, m_MediaInfo.m_SectorSize ) - sizeof( radCrc );
    
    return radCRCCalculate( (char*) s_TransferBuffer, end - start );
}

//=============================================================================
// Function:    radGcnMemcardDrive::GetSizeFromHandle
//=============================================================================

bool radGcnMemcardDrive::GetSizeFromHandle( unsigned int handle, unsigned int* size )
{
    *size = s_HandlePool[ handle ].m_length;
    return true;
}

//=============================================================================
// Function:    radGcnMemcardDrive::InitializeFile
//=============================================================================

bool radGcnMemcardDrive::InitializeFile
( 
    radFileHandle handle,
    CARDFileInfo* pCardInfo, 
    CARDStat* pCardStat,
    radMemcardInfo* memcardInfo, 
    unsigned int headerSize,
    unsigned int fileSize
)
{
    //
    // Flush the block.
    //
    if ( !FlushBlock( ) )
    {
        return false;
    }
    s_CacheState = CacheInvalid;
    
    //
    // Pack in the header (sets the rest of the buffer to 0).
    //
    PackHeader( memcardInfo, pCardStat, fileSize );

    //
    // How much of the buffer has a crc check done on it.
    //
    unsigned int userSize = GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE - sizeof( radCrc );
    unsigned int fullSize = fileSize;
    unsigned int offset = 0;

    //
    // Add in the crc value.
    //
    unsigned int firstSize = GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE > fileSize ? fileSize : GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
    unsigned int writeSize = ::radMemoryRoundUp( firstSize, m_MediaInfo.m_SectorSize );
    radCrc crc = radCRCCalculate( (char*) s_TransferBuffer, writeSize - sizeof( crc ) );
    memcpy( &s_TransferBuffer[ writeSize - sizeof( crc ) ], &crc, sizeof( crc ) );

    //
    // Write the first block.
    //
    if ( !DoFun( ::CARDWrite( pCardInfo, s_TransferBuffer, writeSize, offset ) ) )
    {
        return false;
    }
    fullSize = fullSize > writeSize ? (fullSize - writeSize) : 0;
    offset += writeSize;

    //
    // Add in the crc value for an empty buffer.
    //
    if ( fullSize > GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE )
    {
        //
        // Reset the buffer to 0 and put in the crc
        //
        memset( s_TransferBuffer, 0, headerSize );
        crc = radCRCCalculate( (char*) s_TransferBuffer, userSize );
        memcpy( &s_TransferBuffer[ userSize ], &crc, sizeof( crc ) );
    }

    //
    // Write all but the last block
    //
    unsigned int block = 0;
    while ( fullSize > GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE )
    {
        if ( !DoFun( ::CARDWrite( pCardInfo, s_TransferBuffer, GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE, offset ) ) )
        {
            return false;
        }
        fullSize -= GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
        offset += GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
        block++;
    }

    //
    // Only the last block left. Do a crc check on the entire sector!
    //
    if ( fullSize > 0 )
    {
        writeSize = ::radMemoryRoundUp( fullSize, m_MediaInfo.m_SectorSize );
        crc = radCRCCalculate( (char*) s_TransferBuffer, writeSize - sizeof( crc ) );
        memcpy( &s_TransferBuffer[ writeSize - sizeof( crc ) ], &crc, sizeof( crc ) );

        if ( !DoFun( ::CARDWrite( pCardInfo, s_TransferBuffer, writeSize, offset ) ) )
        {
            return false;
        }
        block++;
    }

    s_CacheHandle = handle;
    s_CachePosition = block;
    s_CacheState = CacheClean;  

    return true;
}

//=============================================================================
// Function:    radGcnMemcardDrive::Copy
//=============================================================================
// Description: Copy data between two open files.
//
// Parameters:
//              
// Returns:     
//------------------------------------------------------------------------------

bool radGcnMemcardDrive::Copy( CARDFileInfo* pDestInfo, CARDFileInfo* pSrcInfo )
{
    if ( !FlushBlock( ) )
    {
        return Error;
    }
    s_CacheState = CacheInvalid;

    //
    // Get the status for the old one.
    //
    int chan = GetChannel( );

    CARDStat cardStat;
    if ( !DoFun( ::CARDGetStatus( chan, CARDGetFileNo( pSrcInfo ), &cardStat ) ) )
    {
        return false;
    }

    //
    // Find the length of the copy.
    //
    unsigned int length = cardStat.length;
    unsigned int offset = 0;
    
    //
    // Copy everything over to the other file.
    //
    while ( length >= GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE )
    {
        if ( 
            !DoFun( ::CARDRead( pSrcInfo, s_TransferBuffer, GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE, offset ) ) ||
            !DoFun( ::CARDWrite( pDestInfo, s_TransferBuffer, GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE, offset ) )
           )
        {
            return false;
        }

        length -= GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
        offset += GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE;
    }

    if ( length > 0 )
    {
        if ( 
            !DoFun( ::CARDRead( pSrcInfo, s_TransferBuffer, length, offset ) ) ||
            !DoFun( ::CARDWrite( pDestInfo, s_TransferBuffer, length, offset ) )
           )
        {
            return false;
        }
    }

    //
    // Copy over the status.
    //
    CARDStat newCardStat;
    if ( !DoFun( ::CARDGetStatus( chan, CARDGetFileNo( pDestInfo ), &newCardStat ) ) )
    {
        return false;
    }

    newCardStat.bannerFormat = cardStat.bannerFormat;
    newCardStat.iconAddr = cardStat.iconAddr;
    newCardStat.iconFormat = cardStat.iconFormat;
    newCardStat.iconSpeed = cardStat.iconSpeed;
    newCardStat.commentAddr = cardStat.commentAddr;

    if ( !DoFun( ::CARDSetStatus( chan, CARDGetFileNo( pDestInfo ), &newCardStat ) ) )
    {
        return false;
    }

    return true;
}

//=============================================================================
// Function:    radGcnMemcardDrive:FileNameMatchesSearch
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

bool radGcnMemcardDrive::FileNameMatchesSearch
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
    char nameBuf[ RAD_GCN_SPEC_LEN + 1 ];
    char* nameAfterDot;
    char specBuf[ RAD_GCN_SPEC_LEN + 1 ];
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
