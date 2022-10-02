//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        encoder.cpp
//
// Subsystem:   Radical Cement File Encoder
//
// Description:	This file contains the implementation of the encoder class
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
#include <radobjectlist.hpp>
#include <rcfEncoder.hpp>

#include "activity.hpp"

//=============================================================================
// radRCFActivity Class Implementation
//=============================================================================

radRCFActivity::radRCFActivity( )
    :
    radRefCount( 0 )
{
    m_Description[ 0 ] = '\0';
}

radRCFActivity::~radRCFActivity( )
{
    //
}

void radRCFActivity::SetDescription( const char* description )
{
    strcpy( m_Description, description );
}
const char* radRCFActivity::GetDescription( void )
{
    return m_Description;
}

//=============================================================================
// radRCFActivitySetFileSize Class Implementation
//=============================================================================

radRCFActivitySetFileSize::radRCFActivitySetFileSize
(
    unsigned int size
)
    :
    m_FileSize( size )
{
    char buf[ 256 ];
    sprintf( buf, "Setting the file size to %#x", m_FileSize );
    SetDescription( buf );
}

radRCFActivitySetFileSize::~radRCFActivitySetFileSize( )
{
    //
}

void radRCFActivitySetFileSize::DoActivity
(
    IRadRCFEncoder* pEncoder
)
{
    HANDLE hFile = pEncoder->GetFileHandle( );
    rAssert( hFile != INVALID_HANDLE_VALUE );

    // Extend the file
    ::SetFilePointer
    (
        hFile,
        m_FileSize,
        NULL,
        FILE_BEGIN
    );
    ::SetEndOfFile( hFile );
}

//=============================================================================
// radRCFActivityTransferFile Class Implementation
//=============================================================================

radRCFActivityTransferFile::radRCFActivityTransferFile
(
    radRCFFileWrap* pFile,
    unsigned int newoffset
)
:
m_NewOffset( newoffset )
{
    m_pFile = pFile;
    rAssert( m_pFile != NULL );
    m_pFile->AddRef( );

    char buf[ 256 ];
    sprintf( buf, "Transfering %s", m_pFile->GetFileName( ) );
    SetDescription( buf );
}

radRCFActivityTransferFile::~radRCFActivityTransferFile( )
{
    if( m_pFile != NULL )
    {
        m_pFile->Release( );
    }
}

void radRCFActivityTransferFile::DoActivity
(
    IRadRCFEncoder* pEncoder
)
{
    // Import the file
    m_pFile->ImportFile( pEncoder, m_NewOffset );
}

//=============================================================================
// radRCFActivityDone Class Implementation
//=============================================================================

radRCFActivityDone::radRCFActivityDone( )
{
    SetDescription( "Done" );
}

radRCFActivityDone::~radRCFActivityDone( )
{
    //
}

void radRCFActivityDone::DoActivity
(
    IRadRCFEncoder* pEncoder
)
{
    //
}

//=============================================================================
// radRCFActivityRemoveFile Class Implementation
//=============================================================================

radRCFActivityRemoveFile::radRCFActivityRemoveFile
(
    const char* filename
)
{
    strcpy( m_Filename, filename );
    SetDescription( "Removing temporary file" );
}

radRCFActivityRemoveFile::~radRCFActivityRemoveFile( )
{
    //
}

void radRCFActivityRemoveFile::DoActivity
(
    IRadRCFEncoder* pEncoder
)
{
    ::remove( m_Filename );
}

