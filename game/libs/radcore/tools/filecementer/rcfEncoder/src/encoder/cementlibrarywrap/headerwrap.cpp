//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        headerwrap.cpp
//
// Subsystem:   Radical Cement File Encoder
//
// Description:	This file contains the implementation of the header
//              wrap class
//
// Author:		Brad Reimer
//
// Revisions:	V1.00	Sept 27, 2001    Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <radobject.hpp>
#include <rcfEncoder.hpp>
#include <cementLibrary.hpp>

#include "cementlibrarywrap.hpp"

//=============================================================================
// radRCFHeaderWrap Class Implementation
//=============================================================================

//
// Constructor
//
radRCFHeaderWrap::radRCFHeaderWrap( )
    :
    radRefCount( 0 )
{
    m_Header.m_pHashedFileEntries = NULL;
}

//
// Destructor
//
radRCFHeaderWrap::~radRCFHeaderWrap( )
{
    Clean( );
}

//
// Initialize
//
void radRCFHeaderWrap::Initialize
(
    radRCFFileInfoWrap* pFileInfo
)
{
    //
    // Generate the default header data
    //
    memset( (void*) &m_Header, 0, sizeof( radCFHeader ) );
    m_Header.m_NumFiles = 0;
    m_Header.m_DetailedFileInfoStartPos =
        FindDetailedFileInformationPosition
        (
            pFileInfo->GetHeaderStartPos( ),
            m_Header.m_NumFiles
        );
    m_Header.m_FirstFileStartPos =
        FindFirstFilePosition
        (
            m_Header.m_DetailedFileInfoStartPos,
            pFileInfo->GetAlignment( ),
            NULL
        );
    m_Header.m_pHashedFileEntries = NULL;
}

//
// Initialize with a file (load)
//
void radRCFHeaderWrap::Initialize
(
    HANDLE hFile,
    radRCFFileInfoWrap* pFileInfo
)
{
    ::SetFilePointer
    (
        hFile,
        pFileInfo->GetHeaderStartPos( ),
        NULL,
        FILE_BEGIN
    );

    DWORD bytesRead = 0;
    BOOL result = ::ReadFile
    (
        hFile,
        &m_Header,
        sizeof( radCFHeader ),
        &bytesRead,
        NULL
    );
    rAssert( result && bytesRead == sizeof( radCFHeader ) );

    // Here's a fun one, to flip the header, we need to know the number of
    // file entries.  Thus, we must manually flip this information
    unsigned int numFiles = m_Header.m_NumFiles;
    rMaybeFlip32( &numFiles, pFileInfo->GetEndian( ) == BigEndian );

    if( numFiles > 0 )
    {
        m_Header.m_pHashedFileEntries = new radCFHeader::HFE[ numFiles ];
        rAssert( m_Header.m_pHashedFileEntries != NULL );
        result = ::ReadFile
        (
            hFile,
            m_Header.m_pHashedFileEntries,
            sizeof( radCFHeader::HashedFileEntry ) * numFiles,
            &bytesRead,
            NULL
        );
        rAssert( result && sizeof( radCFHeader::HashedFileEntry ) * numFiles == bytesRead );
    }
    rMaybeFlipHeader( &m_Header, numFiles, pFileInfo->GetEndian( ) );
}

//
// Save the file
//
void radRCFHeaderWrap::Save
(
    HANDLE hFile,
    radRCFFileInfoWrap* pFileInfo
)
{
    rAssert( hFile != INVALID_HANDLE_VALUE );

    // Do endianess flip
    unsigned int numFiles = m_Header.m_NumFiles;
    rMaybeFlipHeader( &m_Header, numFiles, pFileInfo->GetEndian( ) );

    // Write the header
    ::SetFilePointer( hFile, pFileInfo->GetHeaderStartPos( ), NULL, FILE_BEGIN );
    DWORD bytesWritten = 0;
    BOOL result = ::WriteFile
    (
        hFile,
        &m_Header,
        sizeof( radCFHeader ),
        &bytesWritten,
        NULL
    );
    rAssert( result && bytesWritten == sizeof( radCFHeader ) );

    // Write the hashed file entries
    result = ::WriteFile
    (
        hFile,
        m_Header.m_pHashedFileEntries,
        sizeof( radCFHeader::HFE ) * numFiles,
        &bytesWritten,
        NULL
    );
    rAssert( result && bytesWritten == sizeof( radCFHeader::HFE ) * numFiles );

    // Do endianess flip
    rMaybeFlipHeader( &m_Header, numFiles, pFileInfo->GetEndian( ) );
}

//
// Set the detailed file info start position
//
void radRCFHeaderWrap::SetDetailedInfoStartPos
(
    unsigned int pos
)
{
    m_Header.m_DetailedFileInfoStartPos = pos;
}

//
// Get the detailed file info start position
//
unsigned int radRCFHeaderWrap::GetDetailedInfoStartPos
(
    void
) const
{
    return m_Header.m_DetailedFileInfoStartPos;
}

//
// Verify that a hashed entry exists.  Notice that this
// may not be completely valid as the hashed entry table
// is not always full.
//
bool radRCFHeaderWrap::HashEntryExists
(
    const char* fileName,
    unsigned int* pOffset,
    unsigned int* pSize
) const
{
    rAssert( pOffset != NULL );
    rAssert( pSize != NULL );

    *pOffset = 0;
    *pSize = 0;

    unsigned int hashValue = radCFHeader::HashFunction( fileName );
    radCFHeader::HFE* pEntry = radCFHeader::FindFile( &m_Header, hashValue );
    if( pEntry != NULL )
    {
        *pOffset = pEntry->m_FileOffset;
        *pSize = pEntry->m_FileSize;
    }
    return( pEntry != NULL );
}

//
// Calculate the size of this structure
//
unsigned int radRCFHeaderWrap::CalculateSize( void )
{
    return
    (
        sizeof( radCFHeader ) +
        ( sizeof( radCFHeader::HFE ) * m_Header.m_NumFiles )
    );
}

//
// Comparisons and assignments
//
bool radRCFHeaderWrap::Equals( radRCFHeaderWrap* pOther )
{
    return
    (
        ::memcmp
        (
            &m_Header,
            &pOther->m_Header,
            sizeof( radCFHeader )
        ) == 0
    );
}
void radRCFHeaderWrap::Copy( radRCFHeaderWrap* pOther )
{
    Clean( );

    ::memcpy
    (
        &m_Header,
        &pOther->m_Header,
        sizeof( radCFHeader )
    );

    if( m_Header.m_pHashedFileEntries != NULL )
    {
        m_Header.m_pHashedFileEntries =
            new radCFHeader::HFE[ m_Header.m_NumFiles ];
        ::memcpy
        (
            m_Header.m_pHashedFileEntries,
            pOther->m_Header.m_pHashedFileEntries,
            sizeof( radCFHeader::HFE ) * m_Header.m_NumFiles
        );
    }
}
void radRCFHeaderWrap::Clean( void )
{
    if( m_Header.m_pHashedFileEntries != NULL )
    {
        delete[ ] m_Header.m_pHashedFileEntries;
        m_Header.m_pHashedFileEntries = NULL;
    }
}


//=============================================================================
// Function:    radRCFHeaderWrap::HashEntryLess
//=============================================================================
// Description: Compares hash entries by the actual hash value.
//
// Arguments:   first - the first hash entry
//              second - the second hash entry
//
// Returns:     Returns true if the first hash entry precedes the second
//
//------------------------------------------------------------------------------

bool radRCFHeaderWrap::HashEntryLess
(
    const radCFHeader::HFE& first,
    const radCFHeader::HFE& second
)
{
    return( first.m_HashValue < second.m_HashValue );
}

//=============================================================================
// Function:    radRCFHeaderWrap::RegenerateHashEntries
//=============================================================================
// Description: Regenerate the hash file entries
//
// Arguments:   pFileList - list of files to generate the file list from
//
// Returns:     n/a
//
//------------------------------------------------------------------------------

void radRCFHeaderWrap::RegenerateHashEntries
(
    IRadObjectList* pFileList
)
{
    // Destroy old
    if( m_Header.m_pHashedFileEntries != NULL )
    {
        delete[ ] m_Header.m_pHashedFileEntries;
        m_Header.m_pHashedFileEntries = NULL;
    }

    // Create new
    m_Header.m_NumFiles = pFileList->GetSize( );
    if( m_Header.m_NumFiles > 0 )
    {
        m_Header.m_pHashedFileEntries =
            new radCFHeader::HFE[ m_Header.m_NumFiles ];

        //
        // Define a sorted order for the hashed entries
        //
        unsigned int i = 0;
        unsigned int j = 0;
        IRadRCFFile* pFile1 = NULL;
        IRadRCFFile* pFile2 = NULL;
        unsigned int* sortedPosition =
            new unsigned int[ m_Header.m_NumFiles ];
        for( i = 0; i < m_Header.m_NumFiles; i++ )
        {
            unsigned int pos = 0;
            pFile1 = reinterpret_cast< IRadRCFFile* >
            (
                pFileList->GetAt( i )
            );
            pFile1->AddRef( );

            for( j = 0; j < m_Header.m_NumFiles; j++ )
            {
                if( i != j )
                {
                    pFile2 = reinterpret_cast< IRadRCFFile* >
                    (
                        pFileList->GetAt( j )
                    );
                    pFile2->AddRef( );

                    radKey32 key1 = pFile1->GetHashName( );
                    radKey32 key2 = pFile2->GetHashName( );
                    if( key2 < key1 )
                    {
                        pos++;
                    }

                    pFile2->Release( );
                }
            }

            sortedPosition[ pos ] = i;

            pFile1->Release( );
        }

        //
        // Add in a sorted order based on hash value...
        //
        IRadRCFFile* pFile = NULL;
        for( i = 0; i < m_Header.m_NumFiles; i++ )
        {
            pFile = reinterpret_cast< IRadRCFFile* >
            (
                pFileList->GetAt( sortedPosition[ i ] )
            );
            pFile->AddRef( );

            m_Header.m_pHashedFileEntries[ i ].m_FileOffset =
                pFile->GetOffset( );
            m_Header.m_pHashedFileEntries[ i ].m_FileSize =
                pFile->GetSize( );
            m_Header.m_pHashedFileEntries[ i ].m_HashValue =
                pFile->GetHashName( );

            pFile->Release( );
        }

        delete[ ] sortedPosition;
    }
    else
    {
        m_Header.m_pHashedFileEntries = NULL;
    }
}

//=============================================================================
// Function:    FindDetailedFileInformationPosition
//=============================================================================
// Description: Finds the position of the detailed file data.
//
// Arguments:   headerStartPos - the start position of the header (sg_FileInfo.m_HeaderStartPos)
//              numFiles - the number of files contained in the hash table.
//
// Returns:     Returns the position of the the detailed file data structure.
//
//------------------------------------------------------------------------------

unsigned int radRCFHeaderWrap::FindDetailedFileInformationPosition
(
    unsigned int headerStartPos,
    unsigned int numFiles
)
{
    //
    // The detailed file information is located immediately
    // after the hashed file information
    //
    return
    (
        headerStartPos + 
        sizeof( radCFHeader ) +
        sizeof( radCFHeader::HashedFileEntry ) * numFiles
    );
}

//=============================================================================
// Function:    radRCFHeaderWrap::FindFirstFilePosition
//=============================================================================
// Description: Finds the position of the first file in the library.  This is done
//              by iterating through detailed file info records to find where they
//              should end.
//
// Arguments:   detailedFileInfoStartPos - the start position of the detailed
//                      file information.
//              alignment - the alignment value.
//              pDetailedFileInformation - the actual detailed file information block
//
// Returns:     Returns the position where the first file should start (after alignment).
//
//------------------------------------------------------------------------------

unsigned int radRCFHeaderWrap::FindFirstFilePosition
(
    unsigned int detailedFileInfoStartPos,
    unsigned int alignment,
    radCFDetailedFileInformation* pDetailedFileInformation
)
{
    //
    // Start out with the length of the detailed file info data structure
    //
    unsigned int lengthOfDetailedInfo = sizeof( radCFDetailedFileInformation );

    //
    // Iterate through the various detailed information blocks
    //
    if( pDetailedFileInformation != NULL )
    {
        unsigned int i;
        for( i = 0; i < pDetailedFileInformation->m_NumFiles; i++ )
        {
            lengthOfDetailedInfo +=
                sizeof( radCFDetailedFileInformation::DFIR ) +
                sizeof( char ) *
                pDetailedFileInformation->m_pFileInfoRecords[ i ].m_FileNameLength;
        }
    }

    //
    // Calculate the start of the first file
    //
    return( ::DoAlign( detailedFileInfoStartPos + lengthOfDetailedInfo, alignment ) );
}

//=============================================================================
// Function:    radRCFHeaderWrap::rMaybeFlipHeader
//=============================================================================
// Description: Does an endian flip on the header.
//
// Arguments:   pHeader - a pointer to the header
//              numFiles - the number of file entries
//
//------------------------------------------------------------------------------

void radRCFHeaderWrap::rMaybeFlipHeader
(
    radCFHeader* pHeader,
    unsigned int numFiles,
    radRCFEndian endian
)
{
    //
    // Flip the hashed entries first
    //
    unsigned int i = 0;
    for( i = 0; i < numFiles; i++ )
    {
        rMaybeFlip32
        (
            &pHeader->m_pHashedFileEntries[ i ].m_HashValue,
            endian == BigEndian
        );
        rMaybeFlip32
        (
            &pHeader->m_pHashedFileEntries[ i ].m_FileOffset,
            endian == BigEndian
        );
        rMaybeFlip32
        (
            &pHeader->m_pHashedFileEntries[ i ].m_FileSize,
            endian == BigEndian
        );
    }

    //
    // Flip the data (remember, the pointer is for internal use only, do
    // not try and flip it!
    //
    rMaybeFlip32( &pHeader->m_NumFiles, endian == BigEndian );
    rMaybeFlip32( &pHeader->m_DetailedFileInfoStartPos, endian == BigEndian );
    rMaybeFlip32( &pHeader->m_FirstFileStartPos, endian == BigEndian );
}

//=============================================================================
// Factory functions
//=============================================================================

//
// Create a header wrapper
//
void radRCFHeaderWrapCreate
(
    radRCFHeaderWrap** ppRadRCFHeaderWrap,
    radMemoryAllocator allocator
)
{
    rAssert( ppRadRCFHeaderWrap != NULL );
    (*ppRadRCFHeaderWrap) = new( allocator ) radRCFHeaderWrap( );
    (*ppRadRCFHeaderWrap)->AddRef( );
}
