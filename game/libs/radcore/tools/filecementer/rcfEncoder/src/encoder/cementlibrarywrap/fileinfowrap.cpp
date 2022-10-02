//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        fileinfowrap.cpp
//
// Subsystem:   Radical Cement File Encoder
//
// Description:	This file contains the implementation of the file info
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
// radRCFFileInfoWrap Class Implementation
//=============================================================================

//
// Constructor
//
radRCFFileInfoWrap::radRCFFileInfoWrap( )
    :
    radRefCount( 0 )
{
    //
}

//
// Destructor
//
radRCFFileInfoWrap::~radRCFFileInfoWrap( )
{
    Clean( );
}

//
// Initialize
//
void radRCFFileInfoWrap::Initialize( void )
{
    //
    // Generate the default file info data
    //
    memset( (void*) &m_FileInfo, 0, sizeof( radCFFileInfo ) );
    strcpy( m_FileInfo.m_CementLibraryIdentification, RAD_CEMENT_LIBRARY_IDENTIFICATION );
    m_FileInfo.m_CementLibraryVersionMajor = RAD_CEMENT_LIBRARY_VERSION_MAJOR;
    m_FileInfo.m_CementLibraryVersionMinor = RAD_CEMENT_LIBRARY_VERSION_MINOR;
    m_FileInfo.m_Alignment = 0x800;
    m_FileInfo.m_PadNetSize = 0x00;
    m_FileInfo.m_BigEndian = false;
    m_FileInfo.m_Valid = true;
    m_FileInfo.m_HeaderStartPos = ::DoAlign( sizeof( radCFFileInfo ), m_FileInfo.m_Alignment );
}

//
// Initialize with a file (load)
//
void radRCFFileInfoWrap::Initialize( HANDLE hFile )
{
    ::SetFilePointer( hFile, 0, NULL, FILE_BEGIN );

    DWORD bytesRead = 0;
    BOOL result = ::ReadFile
    (
        hFile,
        &m_FileInfo,
        sizeof( radCFFileInfo ),
        &bytesRead,
        NULL
    );
    rAssert( result && bytesRead == sizeof( radCFFileInfo ) );

    // Fix endianness
    rMaybeFlipFileInfo( &m_FileInfo, GetEndian( ) );

    //
    // Check for an invalid library
    //
    if
    (
        ( result < 1 ) ||
        ( strcmp( m_FileInfo.m_CementLibraryIdentification, RAD_CEMENT_LIBRARY_IDENTIFICATION ) != 0 )
    )
    {
        ::radRCFInfoGet( )->InvokeMessage
        (
            RCF_INVALIDLIBRARY,
            "Invalid library file"
        );
    }

    //
    // Check for an unsupported library version
    //
    if
    (
        m_FileInfo.m_CementLibraryVersionMajor != RAD_CEMENT_LIBRARY_VERSION_MAJOR ||
        m_FileInfo.m_CementLibraryVersionMinor != RAD_CEMENT_LIBRARY_VERSION_MINOR
    )
    {
        ::radRCFInfoGet( )->InvokeMessage
        (
            RCF_INVALIDLIBRARY,
            "Library version %u.%u is not supported, try version %u.%u library instead.",
            m_FileInfo.m_CementLibraryVersionMajor,
            m_FileInfo.m_CementLibraryVersionMinor,
            RAD_CEMENT_LIBRARY_VERSION_MAJOR,
            RAD_CEMENT_LIBRARY_VERSION_MINOR
        );
    }

    //
    // Check for errors during last library use
    //
    if( !IsValid( ) )
    {
        ::radRCFInfoGet( )->InvokeMessage
        (
            RCF_WARNING,
            "An error occurred during the last time this library was used.  Proceed with caution."
        );
    }
}

//
// Save the file
//
void radRCFFileInfoWrap::Save
(
    HANDLE hFile
)
{
    rAssert( hFile != INVALID_HANDLE_VALUE );

    // Flip for endianness
    radRCFEndian endian = GetEndian( );
    rMaybeFlipFileInfo( &m_FileInfo, endian );

    ::SetFilePointer( hFile, 0, NULL, FILE_BEGIN );
    DWORD bytesWritten = 0;
    BOOL result = ::WriteFile
    (
        hFile,
        &m_FileInfo,
        sizeof( radCFFileInfo ),
        &bytesWritten,
        NULL
    );
    rAssert( result && bytesWritten == sizeof( radCFFileInfo ) );

    // Flip for endianness
    rMaybeFlipFileInfo( &m_FileInfo, endian );
}

// Version info
const char* radRCFFileInfoWrap::GetIdentification( void ) const
{
    return m_FileInfo.m_CementLibraryIdentification;
}
void radRCFFileInfoWrap::GetVersion( unsigned char* major, unsigned char* minor ) const
{
    if( major != NULL )
    {
        *major = m_FileInfo.m_CementLibraryVersionMajor;
    }
    if( minor != NULL )
    {
        *minor = m_FileInfo.m_CementLibraryVersionMinor;
    }
}

// Validity
bool radRCFFileInfoWrap::IsValid( void ) const
{
    return( m_FileInfo.m_Valid != 0 );
}
void radRCFFileInfoWrap::SetValidity( bool valid )
{
    m_FileInfo.m_Valid = (unsigned char)valid;
}

// Header start pos
unsigned int radRCFFileInfoWrap::GetHeaderStartPos( void ) const
{
    return m_FileInfo.m_HeaderStartPos;
}
void radRCFFileInfoWrap::SetHeaderStartPos( unsigned int pos )
{
    m_FileInfo.m_HeaderStartPos = pos;
}

// Endianness
radRCFEndian radRCFFileInfoWrap::GetEndian( void ) const
{
    return( ( m_FileInfo.m_BigEndian != 0 ) ? BigEndian : LittleEndian );
}
void radRCFFileInfoWrap::SetEndian( radRCFEndian endian )
{
    m_FileInfo.m_BigEndian = (unsigned char)( endian == BigEndian );
}

//Alignment
unsigned int radRCFFileInfoWrap::GetAlignment( void ) const
{
    return m_FileInfo.m_Alignment;
}
void radRCFFileInfoWrap::SetAlignment( unsigned int alignment )
{
    m_FileInfo.m_Alignment = alignment;
}

// Pad net size
unsigned int radRCFFileInfoWrap::GetPadNetSize( void ) const
{
    return m_FileInfo.m_PadNetSize;
}
void radRCFFileInfoWrap::SetPadNetSize( unsigned int padnetsize )
{
    m_FileInfo.m_PadNetSize = padnetsize;
}

//
// Calculate the size of this structure
//
unsigned int radRCFFileInfoWrap::CalculateSize( void )
{
    return ( sizeof( radCFFileInfo ) );
}

//
// Comparisons and assignments
//
bool radRCFFileInfoWrap::Equals( radRCFFileInfoWrap* pOther )
{
    return
    (
        ::memcmp
        (
            &m_FileInfo,
            &pOther->m_FileInfo,
            sizeof( radCFFileInfo )
        ) == 0
    );
}
void radRCFFileInfoWrap::Copy( radRCFFileInfoWrap* pOther )
{
    Clean( );

    ::memcpy
    (
        &m_FileInfo,
        &pOther->m_FileInfo,
        sizeof( radCFFileInfo )
    );
}
void radRCFFileInfoWrap::Clean( void )
{
    //
}

//
// Do an endian flip
//
void radRCFFileInfoWrap::rMaybeFlipFileInfo
(
    radCFFileInfo* pFileInfo,
    radRCFEndian endian
)
{
    //
    // Flip the info
    //
    rMaybeFlip32( &pFileInfo->m_Alignment, endian == BigEndian );
    rMaybeFlip32( &pFileInfo->m_PadNetSize, endian == BigEndian );
    rMaybeFlip32( &pFileInfo->m_HeaderStartPos, endian == BigEndian );
}

//=============================================================================
// Factory functions
//=============================================================================

//
// Create a file info wrapper
//
void radRCFFileInfoWrapCreate
(
    radRCFFileInfoWrap** ppRadRCFFileInfoWrap,
    radMemoryAllocator allocator
)
{
    rAssert( ppRadRCFFileInfoWrap != NULL );
    (*ppRadRCFFileInfoWrap) = new( allocator ) radRCFFileInfoWrap( );
    (*ppRadRCFFileInfoWrap)->AddRef( );
}

