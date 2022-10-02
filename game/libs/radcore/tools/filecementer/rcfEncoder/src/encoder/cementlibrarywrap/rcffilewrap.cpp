//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        rcffilewrap.cpp
//
// Subsystem:   Radical Cement File Encoder
//
// Description:	This file contains the implementation of the file wrap class
//
// Author:		Brad Reimer
//
// Revisions:	V1.00	Sept 25, 2001    Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <radobject.hpp>
#include <rcfEncoder.hpp>
#include <sys/types.h>
#include <sys/stat.h>

#include "cementlibrarywrap.hpp"

//=============================================================================
// Local Functions
//=============================================================================

//=============================================================================
// Function:    ::CalcFileNameLength
//=============================================================================
// Description: Caclulate the file name length
//
// Parameters:  filename - the file file name
//
// Returns:     Returns the length
//
// Notes:
//------------------------------------------------------------------------------


static unsigned int CalcFileNameLength( const char* filename )
{
    return ( strlen( filename ) + 1 );
}

//=============================================================================
// radRCFFileWrap Class Implementation
//=============================================================================

//=============================================================================
// Function:    radRCFFileWrap::radRCFFileWrap
//=============================================================================
// Description: Default constructor.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

radRCFFileWrap::radRCFFileWrap( )
    :
    radRefCount( 0 ),
    m_WhereIsFile( Unknown ),
    m_Offset( 0 ),
    m_Size( 0 ),
    m_IsShadowed( false )
{
    m_SourceFileName[ 0 ] = '\0';
    m_DestinationFileName[ 0 ] = '\0';
}

//=============================================================================
// Function:    radRCFFileWrap::~radRCFFileWrap
//=============================================================================
// Description: Default destructor.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

radRCFFileWrap::~radRCFFileWrap( )
{
    Clean( );
}

//=============================================================================
// Function:    radRCFFileWrap::Initialize
//=============================================================================
// Description: Initialize.
//
// Parameters:  srcFileName - the source path name
//              destinationPathName - the path name used in the destination
//                                    cement library
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFFileWrap::Initialize
(
    const char* srcFileName,
    const char* destinationFileName
)
{
    Clean( );
    rAssert( m_WhereIsFile == Unknown );

    //
    // Try and open the file
    //
    HANDLE hFile = ::CreateFile
    (
        srcFileName,
        GENERIC_READ,
        FILE_SHARE_READ,
        NULL,
        OPEN_EXISTING,
        FILE_ATTRIBUTE_NORMAL,
        NULL
    );
    if( hFile != INVALID_HANDLE_VALUE )
    {
        m_WhereIsFile = OnDisk;
        m_Offset = 0;
        m_Size = ::GetFileSize( hFile, NULL );
        /*
        FILETIME time;
        ::GetFileTime( hFile, NULL, NULL, &time );
        m_ModificationTime = time.dwLowDateTime;
        */
        struct _stat buf;
        _stat( srcFileName, &buf );
        m_ModificationTime = buf.st_mtime;

        strcpy( m_SourceFileName, srcFileName );
        strcpy( m_DestinationFileName, destinationFileName );

        ::CloseHandle( hFile );
    }
    else
    {
        if( GetLastError( ) == ERROR_SHARING_VIOLATION )
        {
            ::radRCFInfoGet( )->InvokeMessage
            (
                RCF_WARNING,
                "Sharing violation while trying to access %s",
                destinationFileName
            );
        }
        else
        {
            ::radRCFInfoGet( )->InvokeMessage
            (
                RCF_FILEERROR,
                "Unable to use file %s",
                destinationFileName
            );
        }
    }
}


//=============================================================================
// Function:    radRCFFileWrap::Initialize
//=============================================================================
// Description: Initialize.
//
// Parameters:  some stuff
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFFileWrap::Initialize
(
    HANDLE hFile,
    radRCFHeaderWrap* pHeader
)
{
    rAssert( m_WhereIsFile == Unknown );
    Clean( );

    m_WhereIsFile = InCementLibrary;

    // Set up the file record
    unsigned int filenamelength = 0;

    // Read the file
    DWORD bytesRead = 0;
    BOOL result = ::ReadFile
    (
        hFile,
        &filenamelength,
        sizeof( unsigned int ),
        &bytesRead,
        NULL
    );
    rAssert( result && bytesRead == sizeof( unsigned int ) );

    result = ::ReadFile
    (
        hFile,
        m_DestinationFileName,
        sizeof( char ) * filenamelength,
        &bytesRead,
        NULL
    );
    rAssert( result && bytesRead == sizeof( char ) * filenamelength );

    result = ::ReadFile
    (
        hFile,
        &m_ModificationTime,
        sizeof( FileTime ),
        &bytesRead,
        NULL
    );
    rAssert( result && bytesRead == sizeof( FileTime ) );

    // Store the source name
    strcpy( m_SourceFileName, "" );

    // Find the hash entry
    bool isInHashTable = pHeader->HashEntryExists
    (
        m_DestinationFileName,
        &m_Offset,
        &m_Size
    );

    if( !isInHashTable )
    {
        ::radRCFInfoGet( )->InvokeMessage
        (
            RCF_INVALIDLIBRARY,
            "Corrupt library... There is no hash entry for %s",
            m_DestinationFileName
        );
    }
}

//=============================================================================
// Function:    radRCFFileWrap::GetHashName
//=============================================================================
// Description: Get the hashed name
//
//------------------------------------------------------------------------------

radKey32 radRCFFileWrap::GetHashName( void )
{
    return( radCFHeader::HashFunction( m_DestinationFileName ) );
}

//=============================================================================
// Function:    radRCFFileWrap::GetFileName
//=============================================================================
// Description: Get the file name
//
//------------------------------------------------------------------------------

const char* radRCFFileWrap::GetFileName( void )
{
    return( m_DestinationFileName );
}

//=============================================================================
// Function:    radRCFFileWrap::GetOffset
//=============================================================================
// Description: Get the original offset of the file
//
//------------------------------------------------------------------------------

unsigned int radRCFFileWrap::GetOffset( void )
{
    return m_Offset;
}

//=============================================================================
// Function:    radRCFFileWrap::GetSize
//=============================================================================
// Description: Get the original size of the file
//
//------------------------------------------------------------------------------

unsigned int radRCFFileWrap::GetSize( void )
{
    return m_Size;
}

//=============================================================================
// Function:    radRCFFileWrap::GetFileModificationTime
//=============================================================================
// Description: Get the modification time of the file
//
//------------------------------------------------------------------------------

FileTime radRCFFileWrap::GetFileModificationTime
(
    void
)
{
    return m_ModificationTime;
}

//=============================================================================
// Function:    radRCFFileWrap::GetWhereIsFile
//=============================================================================
// Description: Get where the file is
//
//------------------------------------------------------------------------------

IRadRCFFile::WhereIsFile radRCFFileWrap::GetWhereIsFile
(
    void
)
{
    return m_WhereIsFile;
}

//=============================================================================
// Function:    radRCFFileWrap::ExportFile
//=============================================================================
// Description: Export the file to the given place
//
//------------------------------------------------------------------------------

void radRCFFileWrap::ExportFile
(
    IRadRCFEncoder* pEncoder,
    const char* destFileName
)
{
    bool exportSuccessful = false;
    char exportDestinationFile[ radFileFilenameMax ];
    strcpy( exportDestinationFile, destFileName );

    //
    // Create the export directory
    //
    exportSuccessful = ::radRCFCreateDirectory( exportDestinationFile );

    if( !exportSuccessful )
    {
        ::radRCFInfoGet( )->InvokeMessage
        (
            RCF_SOLIDIFYERROR,
            "Error creating export path for %s",
            exportDestinationFile
        );
    }
    else
    {
        //
        // Export the files
        //
        if( m_WhereIsFile == OnDisk )
        {
            BOOL result = ::CopyFile
            (
                m_SourceFileName,
                exportDestinationFile,
                FALSE
            );
            exportSuccessful = ( result == TRUE );
        }
        else if( m_WhereIsFile == InCementLibrary )
        {
            HANDLE hFile = pEncoder->GetFileHandle( );
            rAssert( hFile != INVALID_HANDLE_VALUE );

            HANDLE hDestFile = ::CreateFile
            (
                exportDestinationFile,
                GENERIC_WRITE,
                FILE_SHARE_WRITE,
                NULL,
                CREATE_ALWAYS,
                FILE_ATTRIBUTE_NORMAL,
                NULL
            );
            if( hDestFile != INVALID_HANDLE_VALUE )
            {
                //
                // Prepare for the export
                //
                unsigned int size = GetSize( );
                ::SetFilePointer( hDestFile, 0, NULL, FILE_BEGIN );
            
                void* pData = ::radMemoryAlloc
                (
                    GetThisAllocator( ),
                    size
                );

                //
                // Set the file size
                //
                ::SetFilePointer
                (
                    hDestFile,
                    size,
                    NULL,
                    FILE_BEGIN
                );
                ::SetEndOfFile( hDestFile );

                //
                // Do a chunky transfer
                //
                DoChunkyTransfer
                (
                    pEncoder,
                    pData,
                    hFile,
                    GetOffset( ),
                    hDestFile,
                    0,
                    size,
                    MaxFileTransferSize,
                    false
                );

                exportSuccessful = true;

                ::radMemoryFree( GetThisAllocator( ), pData );

                ::CloseHandle( hDestFile );
            }
        }
        else
        {
            rAssert( 0 );
        }

        if( !exportSuccessful )
        {
            ::radRCFInfoGet( )->InvokeMessage
            (
                RCF_WARNING,
                "Cannnot export %s to %s (err %u)",
                GetFileName( ),
                exportDestinationFile,
                GetLastError( )
            );
        }
    }
}

//=============================================================================
// Function:    radRCFFileWrap::ImportFile
//=============================================================================
// Description: Import the file from the current location to the encoder's
//              cement library at the given offset.
//
//------------------------------------------------------------------------------

void radRCFFileWrap::ImportFile
(
    IRadRCFEncoder* pEncoder,
    unsigned int offset
)
{
    bool importSuccessful = false;

    //
    // Import from the disk
    //
    if( GetWhereIsFile( ) == OnDisk )
    {
        HANDLE hFile = pEncoder->GetFileHandle( );
        rAssert( hFile != INVALID_HANDLE_VALUE );

        HANDLE hSrcFile = ::CreateFile
        (
            m_SourceFileName,
            GENERIC_READ,
            FILE_SHARE_READ,
            NULL,
            OPEN_EXISTING,
            FILE_ATTRIBUTE_NORMAL,
            NULL
        );
        if( hSrcFile != INVALID_HANDLE_VALUE )
        {
            //
            // Prepare for the import
            //
            unsigned int size = GetSize( );
        
            void* pData = ::radMemoryAlloc
            (
                GetThisAllocator( ),
                size
            );

            //
            // Do a chunky transfer
            //
            DoChunkyTransfer
            (
                pEncoder,
                pData,
                hSrcFile,
                0,
                hFile,
                offset,
                size,
                MaxFileTransferSize,
                false
            );

            importSuccessful = true;

            ::radMemoryFree( GetThisAllocator( ), pData );

            ::CloseHandle( hSrcFile );
        }
        else
        {
            ::radRCFInfoGet( )->InvokeMessage
            (
                RCF_ERROR,
                "Source file %s no longer exists",
                m_SourceFileName
            );
        }
    }
    else
    {
        //
        // Move within the library
        //
        if( offset == GetOffset( ) )
        {
            importSuccessful = true;
        }
        else if( offset > GetOffset( ) )
        {
            //
            // Prepare for the import
            //
            HANDLE hFile = pEncoder->GetFileHandle( );

            unsigned int size = GetSize( );

            void* pData = ::radMemoryAlloc
            (
                GetThisAllocator( ),
                size
            );

            //
            // This is not a safe move, we must do it backwards
            //
            DoChunkyTransfer
            (
                pEncoder,
                pData,
                hFile,
                GetOffset( ),
                hFile,
                offset,
                size,
                MaxFileTransferSize,
                true
            );

            importSuccessful = true;

            ::radMemoryFree( GetThisAllocator( ), pData );
        }
        else
        {
            //
            // Prepare for the import
            //
            HANDLE hFile = pEncoder->GetFileHandle( );

            unsigned int size = GetSize( );

            void* pData = ::radMemoryAlloc
            (
                GetThisAllocator( ),
                size
            );

            //
            // This is a safe move
            //
            DoChunkyTransfer
            (
                pEncoder,
                pData,
                hFile,
                GetOffset( ),
                hFile,
                offset,
                size,
                MaxFileTransferSize,
                false
            );

            importSuccessful = true;

            ::radMemoryFree( GetThisAllocator( ), pData );
        }
    }

    if( !importSuccessful )
    {
        ::radRCFInfoGet( )->InvokeMessage
        (
            RCF_WARNING,
            "Cannot import %s to %s (err %u)",
            GetFileName( ),
            pEncoder->GetLibraryName( ),
            GetLastError( )
        );
    }
    else
    {
        //
        // Set the new info
        //
        m_WhereIsFile = InCementLibrary;
        m_Offset = offset;
    }
}


//=============================================================================
// Function:    radRCFFileWrap::DoChunkyTransfer
//=============================================================================
// Description: Transfer the file in reasonably sized chunks.
//
//------------------------------------------------------------------------------

void radRCFFileWrap::DoChunkyTransfer
(
    IRadRCFEncoder* pEncoder,
    void* pTransferBuffer,
    HANDLE hSrcFile,
    unsigned int srcOffset,
    HANDLE hDestFile,
    unsigned int destOffset,
    unsigned int size,
    unsigned int chunkSize,
    bool backward
)
{
    //
    // Setup for the data
    //
    unsigned int numChunks = size / chunkSize;
    unsigned int sizeLeft = size;
    unsigned int fileOffset = 0;
    unsigned int i;

    //
    // Export each of the chunks of data from the library
    //
    for( i = 0; i < numChunks + 1; i++ )
    {
        //
        // Show some more helpful output
        //
        if( i > 0 )
        {
            ::radRCFInfoGet( )->InvokeMessage
            (
                RCF_OK,
                "  Transporting chunk %u / %u...",
                i + 1,
                numChunks + 1
            );
        }

        //
        // Calculate the size of this chunk
        //
        DWORD sizeOfThisChunk = 0;
        if( sizeLeft < chunkSize )
        {
            sizeOfThisChunk = sizeLeft;
            sizeLeft = 0;
        }
        else
        {
            sizeOfThisChunk = chunkSize;
            sizeLeft -= chunkSize;
        }

        //
        // Set the read write pos
        //
        unsigned int srcFilePos =
        (
            backward ?
            ( srcOffset + size - i * chunkSize - sizeOfThisChunk ) :
            ( srcOffset + i * chunkSize )
        );
        unsigned int destFilePos =
        (
            backward ?
            ( destOffset + size - i * chunkSize - sizeOfThisChunk ) :
            ( destOffset + i * chunkSize )
        );

        //
        // Load the file data
        //
        ::SetFilePointer
        (
            hSrcFile,
            srcFilePos,
            NULL,
            FILE_BEGIN
        );
        DWORD bytesTransfered = 0;
        BOOL result = ::ReadFile
        (
            hSrcFile,
            pTransferBuffer,
            sizeOfThisChunk,
            &bytesTransfered,
            NULL
        );
        rAssert( result && bytesTransfered == sizeOfThisChunk );

        //
        // Copy data from the file to the destination file
        //
        ::SetFilePointer
        (
            hDestFile,
            destFilePos,
            NULL,
            FILE_BEGIN
        );
        result = ::WriteFile
        (
            hDestFile, 
            pTransferBuffer,
            sizeOfThisChunk,
            &bytesTransfered,
            NULL
        );
        rAssert( result && bytesTransfered == sizeOfThisChunk );

        //
        // Update the offset into the file
        //
        fileOffset += sizeOfThisChunk;
    }
}

//=============================================================================
// Function:    radRCFFileWrap::CalculateSize
//=============================================================================
// Description: Calculate the size of this structure
//
//------------------------------------------------------------------------------

unsigned int radRCFFileWrap::CalculateSize( void )
{
    return
    (
        sizeof( radCFDetailedFileInformation::DFIR ) +
        ::CalcFileNameLength( m_DestinationFileName )
    );
}

//=============================================================================
// Function:    radRCFFileWrap::Copy
//=============================================================================
// Description: Copy the file structure
//
//------------------------------------------------------------------------------

void radRCFFileWrap::Copy( radRCFFileWrap* pOther )
{
    Clean( );

    strncpy
    (
        m_SourceFileName,
        pOther->m_SourceFileName,
        radFileFilenameMax
    );
    strncpy
    (
        m_DestinationFileName,
        pOther->m_DestinationFileName,
        radFileFilenameMax
    );

    m_WhereIsFile = pOther->m_WhereIsFile;

    //::memcpy
    //(
    //    &m_FileRecord,
    //    &pOther->m_FileRecord,
    //    sizeof( radCFDetailedFileInformation::DFIR )
    //);

    m_Offset = pOther->m_Offset;
    m_Size = pOther->m_Size;
    m_ModificationTime = pOther->m_ModificationTime;

    m_IsShadowed = pOther->m_IsShadowed;
    strncpy
    (
        m_ShadowFile,
        pOther->m_ShadowFile,
        radFileFilenameMax
    );
}

//=============================================================================
// Function:    radRCFFileWrap::Save
//=============================================================================
// Description: Save the file information (as part of the detailed file info,
//              not the actual file!)
//
//------------------------------------------------------------------------------

void radRCFFileWrap::Save
(
    HANDLE hFile
)
{
    // Create the file record
    radCFDetailedFileInformation::DFIR fileRecord;
    fileRecord.m_FileNameLength =
        ::CalcFileNameLength( m_DestinationFileName );
    fileRecord.m_FileName =
        new char[ fileRecord.m_FileNameLength ];
    strcpy( fileRecord.m_FileName, m_DestinationFileName );
    fileRecord.m_FileModificationTime = m_ModificationTime;

    //
    // Write the file
    //
    DWORD bytesWritten = 0;
    BOOL result = ::WriteFile
    (
        hFile,
        &fileRecord.m_FileNameLength,
        sizeof( unsigned int ),
        &bytesWritten,
        NULL
    );
    rAssert( result && bytesWritten == sizeof( unsigned int ) );

    result = ::WriteFile
    (
        hFile,
        fileRecord.m_FileName,
        sizeof( char ) * fileRecord.m_FileNameLength,
        &bytesWritten,
        NULL
    );
    rAssert( result && bytesWritten == sizeof( char ) * fileRecord.m_FileNameLength );

    result = ::WriteFile
    (
        hFile,
        &fileRecord.m_FileModificationTime,
        sizeof( FileTime ),
        &bytesWritten,
        NULL
    );
    rAssert( result && bytesWritten == sizeof( FileTime ) );

    // Clean up
    delete[ ] fileRecord.m_FileName;
}

//=============================================================================
// Function:    radRCFFileWrap::Clean
//=============================================================================
// Description: Clean out the file wrap structure
//
//------------------------------------------------------------------------------

void radRCFFileWrap::Clean( void )
{
    m_IsShadowed = false;
    m_WhereIsFile = Unknown;
}

//=============================================================================
// Function:    radRCFFileWrap::Interferes
//=============================================================================
// Description: Does this range of writing interfere with this file?
//
//------------------------------------------------------------------------------

bool radRCFFileWrap::Interferes
(
    unsigned int start,
    unsigned int end
)
{
    bool interferes = false;

    //
    // If it is not in the cement library, it will not interfere
    //
    if( GetWhereIsFile( ) != InCementLibrary )
    {
        interferes = false;
    }
    else
    {
        //
        // Check for the start or end being inside this library
        //
        if
        (
            ( ( start >= GetOffset( ) ) && ( start < GetOffset( ) + GetSize( ) ) ) ||
            ( ( end > GetOffset( ) ) && ( end <= GetOffset( ) + GetSize( ) ) )
        )
        {
            interferes = true;
        }
        else if
        (
            ( start < GetOffset( ) ) && ( end > GetOffset( ) + GetSize( ) )
        )
        {
            //
            // The file lies within the written range
            //
            interferes = true;
        }
    }
    return interferes;
}

//=============================================================================
// Function:    radRCFFileWrap::IsShadowed
//=============================================================================
// Description: Is this file shadowed on disk?
//
//------------------------------------------------------------------------------

bool radRCFFileWrap::IsShadowed( void ) const
{
    return m_IsShadowed;
}

//=============================================================================
// Function:    radRCFFileWrap::GetShadowFile
//=============================================================================
// Description: Get the shadow file name.
//
//------------------------------------------------------------------------------

const char* radRCFFileWrap::GetShadowFile( void )
{
    rAssert( m_IsShadowed );
    return m_ShadowFile;
}

//=============================================================================
// Function:    radRCFFileWrap::SetShadowFile
//=============================================================================
// Description: Set the shadow file name.
//
//------------------------------------------------------------------------------

void radRCFFileWrap::SetShadowFile
(
    radRCFFileWrap* pShadowFile
)
{
    m_IsShadowed = true;
    strcpy( m_ShadowFile, pShadowFile->m_SourceFileName );
}

//=============================================================================
// Function:    radRCFFileWrap::SetShadowFile
//=============================================================================
// Description: Set the shadow file name.
//
//------------------------------------------------------------------------------

void radRCFFileWrap::SetShadowFile
(
    const char* shadowFile
)
{
    m_IsShadowed = true;
    strcpy( m_ShadowFile, shadowFile );
}

//=============================================================================
// Factory functions
//=============================================================================

//
// Create a wrapper for the file
//
void radRCFFileWrapCreate
(
    radRCFFileWrap** ppFile,
    radMemoryAllocator allocator
)
{
    rAssert( ppFile != NULL );
    (*ppFile) = new( allocator ) radRCFFileWrap( );
    (*ppFile)->AddRef( );
}

