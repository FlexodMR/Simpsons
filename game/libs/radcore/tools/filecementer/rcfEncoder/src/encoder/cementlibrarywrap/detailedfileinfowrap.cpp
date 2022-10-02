//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        detailedfileinfowrap.cpp
//
// Subsystem:   Radical Cement File Encoder
//
// Description:	This file contains the implementation of the detailed file info
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
// radRCFDetailedFileInfoWrap Class Implementation
//=============================================================================

//
// Constructor
//
radRCFDetailedFileInfoWrap::radRCFDetailedFileInfoWrap( )
    :
    radRefCount( 0 )
{
    // Create the object list
    ::radObjectListCreate
    (
        &m_xIRadObjectList_Files,
        GetThisAllocator( )
    );
}

//
// Destructor
//
radRCFDetailedFileInfoWrap::~radRCFDetailedFileInfoWrap( )
{
    Clean( );

    rAssert( m_xIRadObjectList_Files->GetSize( ) == 0 );
    m_xIRadObjectList_Files = NULL;
}

//
// Initialize
//
void radRCFDetailedFileInfoWrap::Initialize( void )
{
    //
    // Generate the default detailed file information
    //
    m_DetailedFileInfo.m_NumFiles = 0;
    m_DetailedFileInfo.m_pFileInfoRecords = NULL;
    m_xIRadObjectList_Files->RemoveAll( );
}

//
// Initialize with a file (load)
//
void radRCFDetailedFileInfoWrap::Initialize
(
    HANDLE hFile,
    radRCFFileInfoWrap* pFileInfo,
    radRCFHeaderWrap* pHeader
)
{
    ::SetFilePointer
    (
        hFile,
        pHeader->GetDetailedInfoStartPos( ),
        NULL,
        FILE_BEGIN
    );

    DWORD bytesRead = 0;
    BOOL result = ::ReadFile
    (
        hFile,
        &m_DetailedFileInfo,
        sizeof( radCFDetailedFileInformation ),
        &bytesRead,
        NULL
    );
    rAssert( result && bytesRead == sizeof( radCFDetailedFileInformation ) );

    // Create the file info records
    m_DetailedFileInfo.m_pFileInfoRecords = NULL;

    // Read each of the detailed file info records
    unsigned int i;
    for( i = 0; i < m_DetailedFileInfo.m_NumFiles; i++ )
    {
        radRCFFileWrap* pFile = NULL;
        ::radRCFFileWrapCreate( &pFile, GetThisAllocator( ) );
        pFile->Initialize( hFile, pHeader );

        m_xIRadObjectList_Files->AddObject( pFile );

        pFile->Release( );
    }
}

//
// Save the file
//
void radRCFDetailedFileInfoWrap::Save
(
    HANDLE hFile,
    radRCFFileInfoWrap* pFileInfo,
    radRCFHeaderWrap* pHeader
)
{
    rAssert( hFile != INVALID_HANDLE_VALUE );
    
    // Create the detailed file info.  Most information is stored
    // in the file entries
    m_DetailedFileInfo.m_NumFiles = GetFiles( )->GetSize( );
    m_DetailedFileInfo.m_pFileInfoRecords = NULL;

    // Start writing
    ::SetFilePointer
    (
        hFile,
        pHeader->GetDetailedInfoStartPos( ),
        NULL,
        FILE_BEGIN
    );
    DWORD bytesWritten = 0;
    BOOL result = ::WriteFile
    (
        hFile,
        &m_DetailedFileInfo,
        sizeof( radCFDetailedFileInformation ),
        &bytesWritten,
        NULL
    );
    rAssert( result && bytesWritten == sizeof( radCFDetailedFileInformation ) );

    // Write each of the files
    unsigned int i = 0;
    IRadObjectList* pFileList = GetFiles( );
    for( i = 0; i < pFileList->GetSize( ); i++ )
    {
        radRCFFileWrap* pFile = reinterpret_cast< radRCFFileWrap* >
        (
            pFileList->GetAt( i )
        );
        pFile->AddRef( );
        pFile->Save( hFile );
        pFile->Release( );
    }
}

//
// Get the files
//
IRadObjectList* radRCFDetailedFileInfoWrap::GetFiles( void )
{
    return m_xIRadObjectList_Files;
}

//=============================================================================
// Function:    radRCFDetailedFileInfoWrap::CalculateSize
//=============================================================================
// Description: Calculate the size of this structure
//
//------------------------------------------------------------------------------

unsigned int radRCFDetailedFileInfoWrap::CalculateSize( void )
{
    unsigned int size = sizeof( radCFDetailedFileInformation );
    IRadObjectList* pFileList = GetFiles( );
    unsigned int i = 0;
    for( i = 0; i < pFileList->GetSize( ); i++ )
    {
        radRCFFileWrap* pFile = reinterpret_cast< radRCFFileWrap* >
        (
            pFileList->GetAt( i )
        );

        size += pFile->CalculateSize( );
    }
    return size;
}

//
// Comparisons and assignments
//
bool radRCFDetailedFileInfoWrap::Equals( radRCFDetailedFileInfoWrap* pOther )
{
    return
    (
        ::memcmp
        (
            &m_DetailedFileInfo,
            &pOther->m_DetailedFileInfo,
            sizeof( radCFDetailedFileInformation )
        ) == 0
    );
}
void radRCFDetailedFileInfoWrap::Copy( radRCFDetailedFileInfoWrap* pOther )
{
    Clean( );

    ::memcpy
    (
        &m_DetailedFileInfo,
        &pOther->m_DetailedFileInfo,
        sizeof( radCFDetailedFileInformation )
    );

    // Copy the files
    unsigned int i = 0;
    for( i = 0; i < pOther->GetFiles( )->GetSize( ); i++ )
    {
        radRCFFileWrap* pFile = reinterpret_cast< radRCFFileWrap* >
        (
            pOther->GetFiles( )->GetAt( i )
        );

        radRCFFileWrap* pNewFile = NULL;
        ::radRCFFileWrapCreate( &pNewFile, GetThisAllocator( ) );
        pNewFile->Copy( pFile );

        m_xIRadObjectList_Files->AddObject( pNewFile );

        pNewFile->Release( );
    }
}
void radRCFDetailedFileInfoWrap::Clean( void )
{
    m_xIRadObjectList_Files->RemoveAll( );
}


//=============================================================================
// Factory functions
//=============================================================================

//
// Create a detailed file info wrapper
//
void radRCFDetailedFileInfoWrapCreate
(
    radRCFDetailedFileInfoWrap** ppradRCFDetailedFileInfoWrap,
    radMemoryAllocator allocator
)
{
    rAssert( ppradRCFDetailedFileInfoWrap != NULL );
    (*ppradRCFDetailedFileInfoWrap) = new( allocator ) radRCFDetailedFileInfoWrap( );
    (*ppradRCFDetailedFileInfoWrap)->AddRef( );
}

