//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        filecementertool.cpp
//
// Subsystem:   Radical Cement File Tool - Manipulate a cement library
//
// Description: This file implements functions for creating and
//              modifying cement files.
//
// Revisions:   V1.00   May 29, 2001        Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <string.h>
#include <stdio.h>
#include <stdarg.h>
#include <radString.hpp>
#include <radobject.hpp>
#include <radObjectList.hpp>
#include <radmemory.hpp>

#include "filecementertool.hpp"

//=============================================================================
// Local values
//=============================================================================

//
// Singleton instance of general info
//
static CRcfGeneralInfo* s_pGeneralInfo = NULL;

//=============================================================================
// Public Functions
//=============================================================================

//
// General info manipulation
//
void radRCFGeneralInfoInitialize( radMemoryAllocator allocator )
{
    rAssert( s_pGeneralInfo == NULL );
    s_pGeneralInfo = new( allocator ) CRcfGeneralInfo( );
    s_pGeneralInfo->AddRef( );
}
void radRCFGeneralInfoTerminate( void )
{
    rAssert( s_pGeneralInfo != NULL );
    s_pGeneralInfo->Release( );
    s_pGeneralInfo = NULL;
}
CRcfGeneralInfo* radRCFGetGeneralInfo( void )
{
    rAssert( s_pGeneralInfo != NULL );
    return s_pGeneralInfo;
}

//=============================================================================
// Local Functions
//=============================================================================

//=============================================================================
// Function:    ChopPath
//=============================================================================
// Description: Chops off the unneeded base directory from the path.
//              (Currently there is no error checking implemented, so this is
//              fairly untrustworthy).
//
// Parameters:  baseDirectory - the base directory
//              path - the path to fix
//
// Return:      Returns the fixed path
//------------------------------------------------------------------------------

char* ChopPath( const char* baseDirectory, char* path )
{
    //
    // For now, do not do any error checking.  Just slap in the path
    //
    rAssert( strlen( path ) >= strlen( baseDirectory ) );
    return( path + strlen( baseDirectory ) + 1 );
}

//=============================================================================
// Public Functions
//=============================================================================

//
// Ouput an error
//
void rcfErrorOutput( int errorcode, const char *msg, ... )
{
    va_list args;
    va_start( args, msg );
    char buf[ 256 ];
    const char* errText = "ERROR: ";
    strcpy( buf, errText );
    vsprintf( buf + strlen( errText ), msg, args );

    throw( CRcfException( buf, errorcode ) );
}

//
// Ouput a warning
//
void rcfWarningOutput( const char *msg, ... )
{
    if( ::radRCFInfoGet( )->GetVerboseLevel( ) >= VerboseWarning )
    {
        va_list args;
        va_start( args, msg );
        char buf[ 256 ];
        vsprintf( buf, msg, args );

        printf( "WARNING: " );
        printf( buf );
        printf( "\n" );

        rDebugString( "WARNING: " );
        rDebugString( buf );
        rDebugString( "\n" );
    }
}

//
// Ouput info
//
void rcfOutput( const char *msg, ... )
{
    if( ::radRCFInfoGet( )->GetVerboseLevel( ) >= VerboseNormal )
    {
        va_list args;
        va_start( args, msg );
        char buf[ 256 ];
        vsprintf( buf, msg, args );

        printf( buf );
        printf( "\n" );

        rDebugString( buf );
        rDebugString( "\n" );
    }
}


//=============================================================================
// Class Members
//=============================================================================

//=============================================================================
// CRcfException class
//=============================================================================

//
// Initializing Constructor
//
CRcfException::CRcfException( const char* msg, int errorcode )
    :
    m_Errorcode( errorcode )
{
    strcpy( m_Msg, msg );
    m_ShowUsage = ( errorcode == 0 );
}

//
// Copy constructor
//
CRcfException::CRcfException( const CRcfException& other )
{
    if( &other != this )
    {
        strcpy( m_Msg, other.m_Msg );
        m_Errorcode = other.m_Errorcode;
        m_ShowUsage = other.m_ShowUsage;
    }
}

//
// Get the message
//
const char* CRcfException::GetErrorMessage( ) const
{
    return m_Msg;
}

//
// Get the error code
//
int CRcfException::GetErrorCode( ) const
{
    return m_Errorcode;
}

//
// Get whether or not it should show the usage
//
bool CRcfException::GetShowUsage( void ) const
{
    return m_ShowUsage;
}

//=============================================================================
// CRcfGeneralInfo class
//=============================================================================

//
// Constructor
//
OperationOnFilesData::OperationOnFilesData( void )
    :
    m_NumOpsPerformed( 0 )
{
    //
}

//
// Destructor
//
OperationOnFilesData::~OperationOnFilesData( void )
{
    //
}

//
// Set the search specification
//
void OperationOnFilesData::SetSearchSpec
(
    const char* searchSpec
)
{
    strcpy( m_lower_SearchSpec, searchSpec );
    _strlwr( m_lower_SearchSpec );
}

//
// Get the search specification
//
const char* OperationOnFilesData::GetSearchSpec
(
    void
)
{
    return m_lower_SearchSpec;
}

//
// Operation performed successfully
//
void OperationOnFilesData::OperationPerformedSuccessfully
(
    void
)
{
    m_NumOpsPerformed++;
}


//
// EncorporateFilesData constructor
//
EncorporateFilesData::EncorporateFilesData
(
    bool addonly
)
    :
    m_AddOnly( addonly ),
    radRefCount( 0 )
{
    ::radObjectListCreate( &m_xIOL_AttemptedFiles, GetThisAllocator( ) );
}

//
// Is it add only?
//
bool EncorporateFilesData::IsAddOnly( void )
{
    return m_AddOnly;
}

//
// Operation attempted
//
void EncorporateFilesData::AttemptWith
(
    const char* fullFilename,
    const char* filename,
    unsigned int size,
    FileTime modificationTime
)
{
    AttemptedFile* pAttempt =
        new( GetThisAllocator( ) ) AttemptedFile( );
    pAttempt->AddRef( );

    strcpy( pAttempt->m_FullFilename, fullFilename );
    strcpy( pAttempt->m_Filename, filename );
    pAttempt->m_Size = size;
    pAttempt->m_ModificationTime = modificationTime;

    m_xIOL_AttemptedFiles->AddObject( pAttempt );
    pAttempt->Release( );
}

//
// Merge the attempted files into the library
//
void EncorporateFilesData::MergeIntoLibrary
(
    IRadRCFEncoder* pEncoder
)
{
    unsigned int i = 0;
    AttemptedFile* pAttempt = NULL;
    for( i = 0; i < m_xIOL_AttemptedFiles->GetSize( ); i++ )
    {
        pAttempt = reinterpret_cast< AttemptedFile* >
        (
            m_xIOL_AttemptedFiles->GetAt( i )
        );
        pAttempt->AddRef( );

        bool mergeSuccess = pEncoder->MergeIntoLibrary
        (
            pAttempt->m_FullFilename,
            pAttempt->m_Filename,
            pAttempt->m_Size,
            pAttempt->m_ModificationTime,
            IsAddOnly( )
        );

        if( mergeSuccess )
        {
            OperationPerformedSuccessfully( );
        }

        pAttempt->Release( );
    }
}


//
// Show a summary
//
void EncorporateFilesData::ShowSummary( void )
{
    if( m_xIOL_AttemptedFiles->GetSize( ) > 0 )
    {
        if( m_AddOnly )
        {
            ::rcfOutput
            (
                "Preparing %u files for adding to library (based on %s).",
                m_NumOpsPerformed,
                GetSearchSpec( )
            );
        }
        else
        {
            ::rcfOutput
            (
                "Preparing %u/%u files for update in library (based on %s).",
                m_NumOpsPerformed,
                m_xIOL_AttemptedFiles->GetSize( ),
                GetSearchSpec( )
            );
        }
    }
    else
    {
        ::rcfWarningOutput( "No files found matching %s", GetSearchSpec( ) );
    }
}

//
// Attempted file constructor and destructor
//
EncorporateFilesData::AttemptedFile::AttemptedFile( )
    :
    radRefCount( 0 )
{
    //
}
EncorporateFilesData::AttemptedFile::~AttemptedFile( )
{
    //
}



//
// RemoveFilesData constructor
//
RemoveFilesData::RemoveFilesData
(
    void
)
    :
    radRefCount( 0 )
{
    //
}

//
// Show a summary
//
void RemoveFilesData::ShowSummary( void )
{
    if( m_NumOpsPerformed > 0 )
    {
        ::rcfOutput
        (
            "Removing %u files from library (based on %s).",
            m_NumOpsPerformed,
            GetSearchSpec( )
        );
    }
    else
    {
        ::rcfWarningOutput( "No files found matching %s", GetSearchSpec( ) );
    }
}

//=============================================================================
// CRcfGeneralInfo class
//=============================================================================

//
// Constructor
//
CRcfGeneralInfo::CRcfGeneralInfo( )
    :
    radRefCount( 0 )
{
    //
    // Set the default base directory
    //
    _fullpath( m_BaseDirectory, ".", radFileFilenameMax );
    _strlwr( m_BaseDirectory );

    //
    // Create the add, update, and remove lists
    //
    ::radObjectListCreate( &m_xIOl_AddUpdateFileList,   RADMEMORY_ALLOC_DEFAULT );
    ::radObjectListCreate( &m_xIOl_RemoveFileList,      RADMEMORY_ALLOC_DEFAULT );
    ::radObjectListCreate( &m_xIOl_ExportFileList,      RADMEMORY_ALLOC_DEFAULT );
    ::radObjectListCreate( &m_xIOl_MultiExportFileList, RADMEMORY_ALLOC_DEFAULT );

    //
    // Are we altering the cement library?
    //
    m_AlteringLibrary = false;

    //
    // Set the list structure as inactive
    //
    m_DoList.active = false;

    //
    // Set the info structure as inactive
    //
    m_DoInfo.active = false;
}

//
// Destructor
//
CRcfGeneralInfo::~CRcfGeneralInfo( )
{
    //
    // Clean
    //
    Clean( );
}

//
// Encoder error
//
void CRcfGeneralInfo::OnRCFEncoderError
(
    void* pUserData,
    RCFErrorCode code,
    const char* message
)
{
    if( code <= RCF_ERROR )
    {
        ::rcfErrorOutput( (int)code, message );
    }
    else if( code <= RCF_WARNING )
    {
        ::rcfWarningOutput( message );
    }
    else
    {
        ::rcfOutput( message );
    }
}


//
// Activity processing
//
void CRcfGeneralInfo::OnActivityProcess
(
    IRadRCFActivity* pActivity,
    void* pUserData
)
{
    ::rcfOutput( pActivity->GetDescription( ) );
}

//
// Process the stuff to do
//
void CRcfGeneralInfo::ProcessWriteable( IRadRCFEncoder* pEncoder )
{
    //
    // Do writeable stuff first
    //
    if( pEncoder->IsWriteable( ) )
    {
        //
        // Add and update files
        //
        EncorporateFileOnDisk( pEncoder );

        //
        // Remove files
        //
        RemoveFiles( pEncoder );

        //
        // Indicate that we (may have) modified the list
        //
        pEncoder->UpdateFileList( NULL );
    }
}

void CRcfGeneralInfo::ProcessReadOnly( IRadRCFEncoder* pEncoder )
{
    //
    // Do read only processing next
    //
    ExportFiles
    (
        pEncoder,
        m_xIOl_ExportFileList,
        m_xIOl_MultiExportFileList
    );

    // Display information
    if( m_DoInfo.active )
    {
        char buf[ 2048 ];
        pEncoder->GetInfoText( buf, 1024 );

        ::rcfOutput( "Information about library %s\n", pEncoder->GetLibraryName( ) );
        printf( buf );
        printf( "\n" );
    }

    // Display files in cement library
    if( m_DoList.active )
    {
        ListFiles( pEncoder, m_DoList.searchspec );
    }

}

//
// List files from the encoder
//
void CRcfGeneralInfo::ListFiles
(
    IRadRCFEncoder* pEncoder,
    const char* searchspec
)
{
    ::rcfOutput
    (
        "Listing files in %s matching %s\n",
        pEncoder->GetLibraryName( ),
        searchspec
    );

    //
    // Get the files
    //
    IRadObjectList* pFileList = pEncoder->GetFiles( );
    pFileList->AddRef( );
    bool foundFile = false;

    //
    // Watch out for case issues
    //
    char lower_fileName[ radFileFilenameMax ];
    char lower_seachspec[ radFileFilenameMax ];
    strcpy( lower_seachspec, searchspec );
    _strlwr( lower_seachspec );

    //
    // Draw each file
    //
    unsigned int i = 0;
    for( i = 0; i < pFileList->GetSize( ); i++ )
    {
        IRadRCFFile* pFile = reinterpret_cast< IRadRCFFile* >
        (
            pFileList->GetAt( i )
        );
        // Forget about addref and release for this tight cycle

        if( pFile->GetWhereIsFile( ) != IRadRCFFile::Unknown )
        {
            strcpy( lower_fileName, pFile->GetFileName( ) );
            _strlwr( lower_fileName );

            if
            (
                ::radStringMatchesWildCardPattern
                (
                    lower_fileName,
                    lower_seachspec
                )
            )
            {
                if( !foundFile )
                {
                    //
                    // Draw the header
                    //
                    printf( "    SIZE OFFSET   FILE\n" );
                    printf( "    ---- -------- ----\n" );

                    foundFile = true;
                }


                //
                // Display the file info
                //
                printf
                (
                    "%8ld %08x %-12s\n",
                    pFile->GetSize( ),
                    pFile->GetOffset( ),
                    pFile->GetFileName( )
                );
            }
        }
    }

    if( !foundFile )
    {
        ::rcfWarningOutput
        (
            "No files matching %s found in cement library %s",
            searchspec,
            pEncoder->GetLibraryName( )
        );
    }
    

    pFileList->Release( );
}

//
// Encorporate files on the disk
//
void CRcfGeneralInfo::EncorporateFileOnDisk
(
    IRadRCFEncoder* pEncoder
)
{
    AddRef( );
    pEncoder->AddRef( );

    //
    // If this isn't needed, skip it
    //
    if( m_xIOl_AddUpdateFileList->GetSize( ) > 0 )
    {
        //
        // Show a banner
        //
        ::rcfOutput( "Encorporating files from the disk..." );

        //
        // Get the library path name
        //
        char lower_LibraryPathName[ radFileFilenameMax ];
        _fullpath
        (
            lower_LibraryPathName,
            pEncoder->GetLibraryName( ),
            radFileFilenameMax
        );
        _strlwr( lower_LibraryPathName );

        //
        // Find the files and add them to the encoder list
        //
        EncorporateFileOnDiskHelper
        (
            pEncoder,
            m_BaseDirectory,
            lower_LibraryPathName
        );

        //
        // Describe the additions and updates performed
        //
        unsigned int i = 0;
        for( i = 0; i < m_xIOl_AddUpdateFileList->GetSize( ); i++ )
        {
            EncorporateFilesData* pData =
                reinterpret_cast< EncorporateFilesData* >
                (
                    m_xIOl_AddUpdateFileList->GetAt( i )
                );
            pData->AddRef( );

            // Merge it into the library
            pData->MergeIntoLibrary( pEncoder );
            
            // Show the summary
            pData->ShowSummary( );

            pData->Release( );
        }
    }

    // Cleanup
    Release( );
    pEncoder->Release( );
}

//
// Encorporate files helper
//
void CRcfGeneralInfo::EncorporateFileOnDiskHelper
(
    IRadRCFEncoder* pEncoder,
    const char* fullBaseDir,
    const char* lower_LibraryPathName
)
{
    //
    // Create the search specification
    //
    char searchPath [ radFileFilenameMax ];
    strcpy( searchPath, fullBaseDir );
    strcat( searchPath, "\\" );
    strcat( searchPath, "*" );

    //
    // Find the files
    //
    WIN32_FIND_DATA findFileData;
    HANDLE hFind;
    
    hFind = ::FindFirstFile( searchPath, &findFileData );
    
    if( hFind == INVALID_HANDLE_VALUE )
    {
        if( GetLastError( ) == ERROR_NO_MORE_FILES )
        {
            // No files :(
        }
        else
        {
            ::rcfErrorOutput
            (
                RCF_ERROR,
                "Invalid find for files.  Get Last Error reports %d",
                GetLastError( )
            );
        }
    }
    else
    {
        do
        {
            //
            // If this is a directory, recurse into it!
            //
            if
            (
                findFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY
            )
            {
                //
                // Filter out "." and ".." directories
                //
                if
                (
                    ( strcmp( findFileData.cFileName, "." ) != 0 ) &&
                    ( strcmp( findFileData.cFileName, ".." ) != 0 )
                )
                {
                    //
                    // Append the directory onto the search path and start again
                    //
                    char myNewDirctory[ radFileFilenameMax ];
                    strcpy( myNewDirctory, fullBaseDir );
                    strcat( myNewDirctory, "\\" );
                    strcat( myNewDirctory, findFileData.cFileName );
                    EncorporateFileOnDiskHelper
                    (
                        pEncoder,
                        myNewDirctory,
                        lower_LibraryPathName
                    );
                }
            }
            else
            {
                //
                // Evaluate the file name as a full path name
                //
                char lower_FullFileName[ radFileFilenameMax ];
                strcpy( lower_FullFileName, fullBaseDir );
                strcat( lower_FullFileName, "\\" );
                strcat( lower_FullFileName, findFileData.cFileName );
                _strlwr( lower_FullFileName );
                char* lower_Filename = ::ChopPath( m_BaseDirectory, lower_FullFileName );

                //
                // Iterate through all the encorporated file searches
                //
                unsigned int i = 0;
                for( i = 0; i < m_xIOl_AddUpdateFileList->GetSize( ); i++ )
                {
                    EncorporateFilesData* pData =
                        reinterpret_cast< EncorporateFilesData* >
                        (
                            m_xIOl_AddUpdateFileList->GetAt( i )
                        );
                    pData->AddRef( );

                    //
                    // Does it match?
                    //
                    if
                    (
                        ::radStringMatchesWildCardPattern
                        (
                            lower_Filename,
                            pData->GetSearchSpec( )
                        )
                    )
                    {
                        //
                        // Is is it the library?
                        //
                        if
                        (
                            ::stricmp( lower_LibraryPathName, lower_FullFileName ) == 0
                        )
                        {
                            // Warn against this horrible travisty
                            ::rcfWarningOutput
                            (
                                "Trying to add library into itself.  This is not allowed!"
                            );
                        }
                        else
                        {
                            //
                            // Merge it into the library
                            //
                            pData->AttemptWith
                            (
                                lower_FullFileName,
                                lower_Filename,
                                findFileData.nFileSizeHigh,
                                findFileData.ftLastWriteTime.dwLowDateTime
                            );
                        }
                    }

                    pData->Release( );
                }
            }

        } while( ::FindNextFile( hFind, &findFileData ) );

        //
        // Close the find
        //
        ::FindClose( hFind );
    }

    // Update the list
    pEncoder->UpdateFileList( NULL );
}

//
// Remove files
//
void CRcfGeneralInfo::RemoveFiles
(
    IRadRCFEncoder* pEncoder
)
{
    //
    // If this isn't needed, skip it
    //
    if( m_xIOl_RemoveFileList->GetSize( ) == 0 )
    {
        return;
    }

    //
    // Show a banner
    //
    ::rcfOutput( "Removing files from the library..." );

    //
    // For each remove files entry, iterate the file list and look for it
    //
    unsigned int i = 0;
    for( i = 0; i < m_xIOl_RemoveFileList->GetSize( ); i++ )
    {
        RemoveFilesData* pData =
            reinterpret_cast< RemoveFilesData* >
            (
                m_xIOl_RemoveFileList->GetAt( i )
            );
        pData->AddRef( );

        //
        // Iterate the file list
        //
        IRadObjectList* pFilesList = pEncoder->GetFiles( );
        pFilesList->AddRef( );

        unsigned int jplusone = 0;
        for( jplusone = pFilesList->GetSize( ); jplusone >= 1; jplusone-- )
        {
            IRadRCFFile* pFile =
                reinterpret_cast< IRadRCFFile* >
                (
                    pFilesList->GetAt( jplusone - 1 )
                );
            pFile->AddRef( );

            char lower_Filename[ radFileFilenameMax ];
            strcpy( lower_Filename, pFile->GetFileName( ) );
            _strlwr( lower_Filename );

            //
            // Does it match?
            //
            if
            (
                ::radStringMatchesWildCardPattern
                (
                    lower_Filename,
                    pData->GetSearchSpec( )
                )
            )
            {
                // Remove it
                pFilesList->RemoveObject( pFile );

                // The operation occurred
                pData->OperationPerformedSuccessfully( );
            }

            pFile->Release( );
        }

        pData->ShowSummary( );

        pFilesList->Release( );
        pData->Release( );
    }
}

//
// Export files from the library
//
void CRcfGeneralInfo::ExportFiles
(
    IRadRCFEncoder* pEncoder,
    IRadObjectList* pExportList,
    IRadObjectList* pMultiExportList
)
{
    //
    // Use these strings to store export information
    //
    IRadString* libraryFileName = NULL;
    IRadString* destinationFileName = NULL;

    //
    // Take the files from the multiple file export, and create iterate them.
    // The individual file export will now handle the individual files found
    //
    IRadString* multiExportWildcard = NULL;
    IRadString* multiExportDestinationDir = NULL;

    pMultiExportList->Reset( );
    while
    (
        multiExportWildcard = reinterpret_cast< IRadString* >( pMultiExportList->GetNext( ) )
    )
    {
        rAssert( pExportList != NULL );
        multiExportDestinationDir = reinterpret_cast< IRadString* >( pMultiExportList->GetNext( ) );
        rAssert( multiExportDestinationDir );

        //
        // Look for these files and register them
        //
        unsigned int i;
        IRadObjectList* pFileList = pEncoder->GetFiles( );
        for( i = 0; i < pFileList->GetSize( ); i++ )
        {
            IRadRCFFile* pTestFile = NULL;
            pTestFile = reinterpret_cast< IRadRCFFile* >
            (
                pFileList->GetAt( i )
            );
            
            //
            // If the file name matches the wildcard, add it to the export list
            //
            char lower_fileName[ radFileFilenameMax ];
            char lower_wildcard[ radFileFilenameMax ];
            strcpy( lower_fileName, pTestFile->GetFileName( ) );
            strcpy( lower_wildcard, multiExportWildcard->GetChars( ) );
            _strlwr( lower_fileName );
            _strlwr( lower_wildcard );

            bool stringMatch = radStringMatchesWildCardPattern
            (
                lower_fileName,
                lower_wildcard
            );
            if( stringMatch )
            {
                // Add the source file
                radStringCreate( &libraryFileName );
                libraryFileName->Copy( pTestFile->GetFileName( ) );
                pExportList->AddObject( libraryFileName );

                // Add the destination file
                radStringCreate( &destinationFileName );
                destinationFileName->Copy( multiExportDestinationDir );
                if
                (
                    multiExportDestinationDir->GetChars( )
                    [
                        multiExportDestinationDir->GetLength( ) - 1
                    ] != '\\'
                )
                {
                    destinationFileName->Append( "\\" );
                }
                destinationFileName->Append( libraryFileName );
                pExportList->AddObject( destinationFileName );

                // Release our strings
                libraryFileName->Release( );
                destinationFileName->Release( );

                libraryFileName = NULL;
                destinationFileName = NULL;
            }
        }
    }

    // Export files
    rAssert( m_xIOl_ExportFileList->GetSize( ) % 2 == 0 );
    unsigned int i = 0;
    for( i = 0; i < m_xIOl_ExportFileList->GetSize( ); i++ )
    {
        IRadString* sourceFile = reinterpret_cast< IRadString* >
        (
            m_xIOl_ExportFileList->GetAt( i )
        );
        i++;
        IRadString* destFile = reinterpret_cast< IRadString* >
        (
            m_xIOl_ExportFileList->GetAt( i )
        );

        IRadRCFFile* pFile = pEncoder->FindFile( sourceFile->GetChars( ) );
        if( pFile != NULL )
        {
            pFile->AddRef( );
            ::rcfOutput
            (
                "Exporting %s to %s",
                pFile->GetFileName( ),
                destFile->GetChars( )
            );
            pFile->ExportFile( pEncoder, destFile->GetChars( ) );
            pFile->Release( );
        }
        else
        {
            ::rcfWarningOutput
            (
                "Export source file %s does not exist\n",
                sourceFile->GetChars( )
            );
        }
    }
}

//
// Clean
//
void CRcfGeneralInfo::Clean( )
{
    //
    // Deallocate the add, update, remove and export lists
    //
    m_xIOl_AddUpdateFileList    = NULL;
    m_xIOl_RemoveFileList       = NULL;
    m_xIOl_ExportFileList       = NULL;
    m_xIOl_MultiExportFileList  = NULL;

    //
    // Inactivate do structures
    //
    m_DoInfo.active = false;
    m_DoList.active = false;
}



