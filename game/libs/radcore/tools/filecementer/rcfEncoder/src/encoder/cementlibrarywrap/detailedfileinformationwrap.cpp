//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        detailedfileinformationwrap.cpp
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
// radRCFDetailedFileInformationWrap Class Implementation
//=============================================================================

//
// Constructor
//
radRCFDetailedFileInformationWrap::radRCFDetailedFileInformationWrap( )
{
    //
}

//
// Destructor
//
radRCFDetailedFileInformationWrap::~radRCFDetailedFileInformationWrap( )
{
    //
}

//
// Initialize
//
void radRCFDetailedFileInformationWrap::Initialize( void )
{
    //
}

//
// Initialize with a file (load)
//
void radRCFDetailedFileInformationWrap::Initialize( HANDLE hFile )
{
    //
}

//
// Save the file
//
void radRCFDetailedFileInformationWrap::Save( HANDLE hFile )
{
    //
}

//
// Comparisons and assignments
//
bool radRCFDetailedFileInformationWrap::Equals
(
    radRCFDetailedFileInformationWrap* pOther
)
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
void radRCFDetailedFileInformationWrap::Copy
(
    radRCFDetailedFileInformationWrap* pOther
)
{
    ::memcpy
    (
        &m_Deta,
        &pOther->m_FileInfo,
        sizeof( radCFFileInfo )
    );
}

//=============================================================================
// Factory functions
//=============================================================================

//
// Create a detailed file info wrapper
//
void radRCFDetailedFileInformationWrapCreate
(
    radRCFDetailedFileInformationWrap** ppRadRCFDetailedFileInformationWrap,
    radMemoryAllocator allocator
)
{
    rAssert( ppRadRCFDetailedFileInformationWrap != NULL );
    (*ppRadRCFDetailedFileInformationWrap) = new( allocator ) radRCFDetailedFileInformationWrap( );
}

