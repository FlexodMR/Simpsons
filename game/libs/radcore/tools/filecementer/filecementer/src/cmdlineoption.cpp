//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        cmdlineoption.cpp
//
// Subsystem:   Radical Cement File Tool - Command line parser
//
// Description: This file implements the command line parser that takes in a list
//              of options, and parses the command line in order to carry them out.
//
// Revisions:   V1.00   May 28, 2001        Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <sys/stat.h>
#include <stdlib.h>

#include <raddebug.hpp>
#include <radfile.hpp>
#include <radmemory.hpp>
#include <radObject.hpp>
#include <radObjectList.hpp>
#include <radString.hpp>
#include <rcfEncoder.hpp>

#include "cmdlineoption.hpp"
#include "filecementertool.hpp"

//=============================================================================
// Parent Class Members
//=============================================================================

//
// Constructor
//
IRadCmdLineOption::IRadCmdLineOption( )
    :
    m_RefCount( 0 )
{
    //
}

//
// Destructor
//
IRadCmdLineOption::~IRadCmdLineOption( )
{
    //
}

//
// Add a reference
//
void IRadCmdLineOption::AddRef( )
{
    m_RefCount++;
}

//
// Release a reference
//
void IRadCmdLineOption::Release( )
{
    m_RefCount--;
    
    if( m_RefCount == 0 )
    {
        delete this;
    }
}

//
// Does the given option match this option?
//
bool IRadCmdLineOption::OptionsMatch( const char* str ) const
{
    rAssert( IsOption( str ) );
    
    //
    // Ignore '/' characger
    //
    int cmp = strnicmp( GetOptionName( ) + 1, str + 1, strlen( str + 1 ) );
    return( cmp == 0 );
}


//=============================================================================
// Class Members
//=============================================================================

//=============================================================================
// rcfOptionHelp class
//=============================================================================

//
// Parse
//
void rcfOptionHelp::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    //
    // By default, throwing an exception will cause the usage to
    // display -- this is the easiest way (although, perhaps not
    // the nicest).
    //
    throw( CRcfException( "Use the filecementer tool to create and modify cement library files.", RCF_OK ) );
}


//=============================================================================
// rcfOptionQuiet class
//=============================================================================

//
// Parse
//
void rcfOptionQuiet::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    ::radRCFInfoGet( )->SetVerboseLevel( VerboseError );
}

//=============================================================================
// rcfOptionInfo class
//=============================================================================

//
// Parse
//
void rcfOptionInfo::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    //
    // Activate the info
    //
    if( ::radRCFGetGeneralInfo( )->m_DoInfo.active )
    {
        ::rcfWarningOutput( "Mulitple info commands not supported!" );
    }
    ::radRCFGetGeneralInfo( )->m_DoInfo.active = true;
}

//=============================================================================
// rcfOptionBasedir class
//=============================================================================

//
// Parse
//
void rcfOptionBasedir::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    if( ( *pArgc < 1 ) || ( IsOption( (*pArgv)[ 0 ] ) ) )
    {
        ::rcfErrorOutput( RCF_BADARGS, "Not enough arguments given to /basedir" );
    }

    //
    // Set the global base directory name
    //
    if
    (
        _fullpath
        (
            ::radRCFGetGeneralInfo( )->m_BaseDirectory,
            (*pArgv)[ 0 ],
            radFileFilenameMax
        ) == NULL
    )
    {
        ::rcfErrorOutput( RCF_BADARGS, "Invalid base directory %s", (*pArgv)[ 0 ] );
    }
    
    //
    // Check that we found a directory
    //
    struct _stat buf;
    int result = _stat( ::radRCFGetGeneralInfo( )->m_BaseDirectory, &buf );
    if( ( result != 0 ) || !( buf.st_mode & _S_IFDIR ) )
    {
        ::rcfErrorOutput( RCF_BADARGS, "Cannot find base directory %s", (*pArgv)[ 0 ] );
    }

    //
    // Update the arguments
    //
    (*pArgc)--;
    (*pArgv)++;
}


//=============================================================================
// rcfOptionAlignment class
//=============================================================================

//
// Parse
//
void rcfOptionAlignment::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    if( ( *pArgc < 1 ) || ( IsOption( (*pArgv)[ 0 ] ) ) )
    {
        ::rcfErrorOutput( RCF_BADARGS, "Not enough arguments given to /alignment" );
    }

    //
    // Set the alignment info
    //
    if( stricmp( (*pArgv)[ 0 ], "off" ) == 0 )
    {
        pEncoder->SetAlignment( 0x00 );
    }
    else
    {
        unsigned int alignment = 0x00;
        int result = sscanf( (*pArgv)[ 0 ], "%x", &alignment );
        if( result != 1 )
        {
            ::rcfErrorOutput( RCF_BADARGS, "Invalid alignment value" );
        }
        pEncoder->SetAlignment( alignment );
    }

    //
    // Update the arguments
    //
    (*pArgc)--;
    (*pArgv)++;
}


//=============================================================================
// rcfOptionPadNetSize class
//=============================================================================

//
// Parse
//
void rcfOptionPadNetSize::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    if( ( *pArgc < 1 ) || ( IsOption( (*pArgv)[ 0 ] ) ) )
    {
        ::rcfErrorOutput( RCF_BADARGS, "Not enough arguments given to /padnetsize" );
    }

    //
    // Set the padding size
    //
    if( stricmp( (*pArgv)[ 0 ], "off" ) == 0 )
    {
        pEncoder->SetPadNetSize( 0x00 );
    }
    else
    {
        unsigned int padnetsize = 0x00;
        int result = sscanf( (*pArgv)[ 0 ], "%x", &padnetsize );
        if( result != 1 )
        {
            ::rcfErrorOutput( RCF_BADARGS, "Invalid padding size" );
        }
        pEncoder->SetPadNetSize( padnetsize );
    }

    //
    // Update the arguments
    //
    (*pArgc)--;
    (*pArgv)++;
}

//=============================================================================
// rcfOptionLittleEndian class
//=============================================================================

//
// Parse
//
void rcfOptionLittleEndian::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    //
    // Prepare for little endian architecture
    //
    pEncoder->SetEndian( LittleEndian );
}

//=============================================================================
// rcfOptionBigEndian class
//=============================================================================

//
// Parse
//
void rcfOptionBigEndian::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    //
    // Prepare for big endian architecture
    //
    pEncoder->SetEndian( BigEndian );
}


//=============================================================================
// rcfOptionAdd class
//=============================================================================

//
// Parse
//
void rcfOptionAdd::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    if( ( *pArgc < 1 ) || ( IsOption( (*pArgv)[ 0 ] ) ) )
    {
        ::rcfErrorOutput( RCF_BADARGS, "Not enough arguments given to /add" );
    }

    if( !pEncoder->IsWriteable( ) )
    {
        ::rcfWarningOutput( "Cannot add files to a read-only cement librrary" );
    }
    else
    {
        //
        // Add the file(s) to the library
        //
        EncorporateFilesData* pData =
            new( RADMEMORY_ALLOC_DEFAULT ) EncorporateFilesData( true );
        pData->AddRef( );

        pData->SetSearchSpec( (*pArgv)[ 0 ] );

        ::radRCFGetGeneralInfo( )->m_xIOl_AddUpdateFileList->AddObject( pData );

        pData->Release( );
    }

    //
    // Update the arguments
    //
    (*pArgc)--;
    (*pArgv)++;
}


//=============================================================================
// rcfOptionUpdate class
//=============================================================================

//
// Parse
//
void rcfOptionUpdate::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    if( ( *pArgc < 1 ) || ( IsOption( (*pArgv)[ 0 ] ) ) )
    {
        ::rcfErrorOutput( RCF_BADARGS, "Not enough arguments given to /update" );
    }

    if( !pEncoder->IsWriteable( ) )
    {
        ::rcfWarningOutput( "Cannot update files in a read-only cement librrary" );
    }
    else
    {
        //
        // Update the file(s) in the library
        //
        EncorporateFilesData* pData =
            new( RADMEMORY_ALLOC_DEFAULT ) EncorporateFilesData( false );
        pData->AddRef( );

        pData->SetSearchSpec( (*pArgv)[ 0 ] );

        ::radRCFGetGeneralInfo( )->m_xIOl_AddUpdateFileList->AddObject( pData );

        pData->Release( );
    }

    //
    // Update the arguments
    //
    (*pArgc)--;
    (*pArgv)++;
}


//=============================================================================
// rcfOptionRemove class
//=============================================================================

//
// Parse
//
void rcfOptionRemove::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    if( ( *pArgc < 1 ) || ( IsOption( (*pArgv)[ 0 ] ) ) )
    {
        ::rcfErrorOutput( RCF_BADARGS, "Not enough arguments given to /remove" );
    }

    if( !pEncoder->IsWriteable( ) )
    {
        ::rcfWarningOutput( "Cannot remove files from a read-only cement librrary" );
    }
    else
    {
        //
        // Removes file(s) from the library
        //
        RemoveFilesData* pData =
            new( RADMEMORY_ALLOC_DEFAULT ) RemoveFilesData( );
        pData->AddRef( );

        pData->SetSearchSpec( (*pArgv)[ 0 ] );

        ::radRCFGetGeneralInfo( )->m_xIOl_RemoveFileList->AddObject( pData );

        pData->Release( );
    }

    //
    // Update the arguments
    //
    (*pArgc)--;
    (*pArgv)++;
}

//=============================================================================
// rcfOptionExport class
//=============================================================================

//
// Parse
//
void rcfOptionExport::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    if( ( *pArgc < 2 ) || ( IsOption( (*pArgv)[ 0 ] ) ) )
    {
        ::rcfErrorOutput( RCF_BADARGS, "Not enough arguments given to /export" );
    }

    //
    // Exports a file from the library
    //
    IRadString* libraryFileName = NULL;
    radStringCreate( &libraryFileName );
    libraryFileName->Copy( (*pArgv)[ 0 ] );
    ::radRCFGetGeneralInfo( )->m_xIOl_ExportFileList->AddObject( libraryFileName );
    libraryFileName->Release( );

    IRadString* destinationFileName = NULL;
    radStringCreate( &destinationFileName );
    destinationFileName->Copy( (*pArgv)[ 1 ] );
    ::radRCFGetGeneralInfo( )->m_xIOl_ExportFileList->AddObject( destinationFileName );
    destinationFileName->Release( );

    //
    // Update the arguments
    //
    (*pArgc) -= 2;
    (*pArgv) += 2;
}

//=============================================================================
// rcfOptionMultiExport class
//=============================================================================

//
// Parse
//
void rcfOptionMultiExport::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    if( ( *pArgc < 2 ) || ( IsOption( (*pArgv)[ 0 ] ) ) )
    {
        ::rcfErrorOutput( RCF_BADARGS, "Not enough arguments given to /mutliexport" );
    }

    //
    // Exports multiple files from the library
    //
    IRadString* libraryFileSpec = NULL;
    radStringCreate( &libraryFileSpec );
    libraryFileSpec->Copy( (*pArgv)[ 0 ] );
    ::radRCFGetGeneralInfo( )->m_xIOl_MultiExportFileList->AddObject( libraryFileSpec );
    libraryFileSpec->Release( );

    IRadString* destinationBaseDir = NULL;
    radStringCreate( &destinationBaseDir );
    destinationBaseDir->Copy( (*pArgv)[ 1 ] );
    ::radRCFGetGeneralInfo( )->m_xIOl_MultiExportFileList->AddObject( destinationBaseDir );
    destinationBaseDir->Release( );

    //
    // Update the arguments
    //
    (*pArgc) -= 2;
}


//=============================================================================
// rcfOptionList class
//=============================================================================

//
// Parse
//
void rcfOptionList::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    //
    // Find the file specification
    //
    const char* searchSpec = "*";
    if( ( *pArgc >= 1 ) && ( !IsOption( (*pArgv)[ 0 ] ) ) )
    {
        //
        // Get the argument (the search specification)
        //
        searchSpec = (*pArgv)[ 0 ];
    
        //
        // Update the arguments
        //
        (*pArgc)--;
        (*pArgv)++;
    }

    //
    // List file(s) from the library
    //
    if( ::radRCFGetGeneralInfo( )->m_DoList.active )
    {
        ::rcfWarningOutput( "Mulitple list commands not supported!" );
    }
    ::radRCFGetGeneralInfo( )->m_DoList.active = true;
    strcpy( ::radRCFGetGeneralInfo( )->m_DoList.searchspec, searchSpec );
}

//=============================================================================
// rcfOptionSync class
//=============================================================================

//
// Parse
//
void rcfOptionSync::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    //
    // To do a sync, we just remove all of the files in the current list.
    // This way, all adds and updates will provide the appropriate
    // functionality, and the resolve step of the encoder will insure that
    // unnecessary writes are not performed.
    //
    pEncoder->GetFiles( )->RemoveAll( );
    pEncoder->UpdateFileList( NULL );
}

//=============================================================================
// rcfOptionFix class
//=============================================================================

//
// Parse
//
void rcfOptionFix::Parse( IRadRCFEncoder* pEncoder, int* pArgc, char** pArgv[ ] )
{
    pEncoder->Fix( );
}

