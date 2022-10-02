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
#include <radstring.hpp>
#include <rcfEncoder.hpp>

#include "encoder.hpp"
#include "..\activity\activity.hpp"

//=============================================================================
// Local functions
//=============================================================================

//
// Make sure all elements in the boolean array are true
//
static bool CheckBoolArray
(
    bool* boolArray,
    unsigned int size
)
{
    bool result = true;
    for( unsigned int i = 0; result && i < size; i++ )
    {
        result = result && boolArray[ i ];
    }
    return result;
}

//=============================================================================
// MapOutCementLibrary Class Implementation
//=============================================================================

//
// Constructor
//
MapOutCementLibrary::MapOutCementLibrary( )
    :
    m_FileInfoStart( 0 ),
    m_HeaderStart( 0 ),
    m_DetailedFileInfoStart( 0 ),
    m_NumberOfFiles( 0 ),
    m_pFileStartPositions( NULL ),
    m_End( 0 ),
    radRefCount( 0 )
{
    //
}

//
// Destructor
//
MapOutCementLibrary::~MapOutCementLibrary( )
{
    if( m_pFileStartPositions != NULL )
    {
        delete[ ] m_pFileStartPositions;
    }
}

//
// File info
//
void MapOutCementLibrary::SetFileInfoStart
(
    unsigned int pos
)
{
    m_FileInfoStart = pos;
}
unsigned int MapOutCementLibrary::GetFileInfoStart( void )
{
    return m_FileInfoStart;
}

//
// Header
//
void MapOutCementLibrary::SetHeaderStart
(
    unsigned int pos
)
{
    m_HeaderStart = pos;
}
unsigned int MapOutCementLibrary::GetHeaderStart( void )
{
    return m_HeaderStart;
}

//
// Detailed file info
//
void MapOutCementLibrary::SetDetailedFileInfoStart
(
    unsigned int pos
)
{
    m_DetailedFileInfoStart = pos;
}
unsigned int MapOutCementLibrary::GetDetailedFileInfoStart( void )
{
    return m_DetailedFileInfoStart;
}

//
// Set the number of files
//
void MapOutCementLibrary::SetNumberOfFiles
(
    unsigned int num
)
{
    m_NumberOfFiles = num;
    if( m_pFileStartPositions != NULL )
    {
        delete[ ] m_pFileStartPositions;
    }
    if( m_NumberOfFiles > 0 )
    {
        m_pFileStartPositions = new unsigned int[ m_NumberOfFiles ];
    }
    else
    {
        m_pFileStartPositions = NULL;
    }
}
unsigned int MapOutCementLibrary::GetNumberOfFiles( void )
{
    return m_NumberOfFiles;
}

//
// Set each file's start position
//
void MapOutCementLibrary::SetFileStart
(
    unsigned int index,
    unsigned int pos
)
{
    rAssert( index < m_NumberOfFiles );
    m_pFileStartPositions[ index ] = pos;
}
unsigned int MapOutCementLibrary::GetFileStart
(
    unsigned int index
)
{
    rAssert( index < m_NumberOfFiles );
    return m_pFileStartPositions[ index ];
}

//
// Step padded elements forward
//
void MapOutCementLibrary::StepPaddedElementsForward
(
    unsigned int change
)
{
    m_HeaderStart                   += change;
    m_DetailedFileInfoStart         += change;

    unsigned int i = 0;
    for( i = 0; i < m_NumberOfFiles; i++ )
    {
        m_pFileStartPositions[ i ]  += change;
    }

    m_End                           += change;
}

//
// Set the end
//
void MapOutCementLibrary::SetEnd( unsigned int pos )
{
    m_End = pos;
}
unsigned int MapOutCementLibrary::GetEnd( void )
{
    return m_End;
}

//
// Do a helpful dump of the map
//
void MapOutCementLibrary::DumpMapToDebug( void )
{
    rDebugPrintf( "FILE INFO:           %#8.x\n", GetFileInfoStart( ) );
    rDebugPrintf( "HEADER:              %#8.x\n", GetHeaderStart( ) );
    rDebugPrintf( "DETAILED FILE INFO:  %#8.x\n", GetDetailedFileInfoStart( ) );
    rDebugPrintf( "NUMFILES:            %8.u\n",  GetNumberOfFiles( ) );
    for( unsigned int i = 0; i < GetNumberOfFiles( ); i++ )
    {
        rDebugPrintf( "FILE:                %#8.x\n", GetFileStart( i ) );
    }
    rDebugPrintf( "END:                 %#8.x\n",  GetEnd( ) );
}

//=============================================================================
// radRCFEncoder Class Implementation
//=============================================================================

//=============================================================================
// Function:    radRCFEncoder::radRCFEncoder
//=============================================================================
// Description: Default constructor.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

radRCFEncoder::radRCFEncoder( )
    :
    radRefCount( 1 ),
    m_Initialized( false ),
    m_BasicStructuresInitialized( false ),
    m_hFile( INVALID_HANDLE_VALUE ),
    m_OwnsHFILE( false ),
    m_IsWriteable( false ),
    m_pFileInfo( NULL ),
    m_pHeader( NULL ),
    m_pDetailedFileInfo( NULL ),
    m_pModifiedFileInfo( NULL ),
    m_pModifiedHeader( NULL ),
    m_pModifiedDetailedFileInfo( NULL ),
    m_DoActivitiesRequireWrite( false ),
    m_pMapOutCementLibrary( NULL )
{
    // Store a default name
    strcpy( m_LibraryName, "Untitled.rcf" );

    // State calllbacks
    ::radObjectListCreate
    (
        &m_xIRadObjectList_FileUpdateCallbacks,
        GetThisAllocator( )
    );

    // Create the encoder
    CreateEncoder( );

    // Register ourselves as a file update callback
    RegisterUpdateFilesCallback( this, this );
}

//=============================================================================
// Function:    radRCFEncoder::~radRCFEncoder
//=============================================================================
// Description: Default destructor.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

radRCFEncoder::~radRCFEncoder( )
{
    // Unregister ourselves as a file update callback
    UnregisterUpdateFilesCallback( this, this );

    rAssert( m_xIRadObjectList_FileUpdateCallbacks->GetSize( ) == 0 );
    m_xIRadObjectList_FileUpdateCallbacks = NULL;

    // ShutDown the encoder
    ShutDownEncoder( );
}

//=============================================================================
// Function:    radRCFEncoder::Initialize
//=============================================================================
// Description: Initialize.
//
// Parameters:  pFile - the cement file to initialize with.  If NULL, create
//                      a new file.
//              readonly - the file should be assumed to be read only
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::Initialize
(
    const char* fileName,
    bool readonly
)
{
    if( m_Initialized )
    {
        // If already initlialized, destroy the old version.
        ShutDownEncoder( );
    }

    if( !m_BasicStructuresInitialized )
    {
        // Recreate the encoder
        CreateEncoder( );
    }

    // We own the file handle
    m_OwnsHFILE = true;

    //
    // Try to open the file as writeable
    //
    m_IsWriteable = !readonly;
    strcpy( m_LibraryName, fileName );
    m_hFile = INVALID_HANDLE_VALUE;
    
    if( !readonly )
    {
        m_hFile = ::CreateFile
        (
            fileName,
            GENERIC_READ | GENERIC_WRITE,
            FILE_SHARE_READ | FILE_SHARE_WRITE,
            NULL,
            OPEN_EXISTING,
            FILE_ATTRIBUTE_NORMAL,
            NULL
        );
    }

    if( m_hFile != INVALID_HANDLE_VALUE )
    {
        //
        // The file exists and is writeable
        //
        LoadCementLibrary( );
    }
    else
    {
        DWORD err = ::GetLastError( );
        
        // If we are forcing readonly, use the appropriate error
        // message
        if( readonly )
        {
            err = ERROR_ACCESS_DENIED;
        }

        if
        (
            ( err == ERROR_FILE_NOT_FOUND ) ||
            ( err == ERROR_PATH_NOT_FOUND )
        )
        {
            m_hFile = ::CreateFile
            (
                fileName,
                GENERIC_READ | GENERIC_WRITE,
                FILE_SHARE_READ | FILE_SHARE_WRITE,
                NULL,
                OPEN_ALWAYS,
                FILE_ATTRIBUTE_NORMAL,
                NULL
            );

            if( m_hFile != INVALID_HANDLE_VALUE )
            {
                CreateCementLibrary( );
                Save( );
            }

        }
        else if( err == ERROR_ACCESS_DENIED )
        {
            //
            // Try as read only
            //
            m_IsWriteable = false;

            m_hFile = ::CreateFile
            (
                fileName,
                GENERIC_READ,
                FILE_SHARE_READ,
                NULL,
                OPEN_EXISTING,
                FILE_ATTRIBUTE_NORMAL,
                NULL
            );

            if( m_hFile != INVALID_HANDLE_VALUE )
            {
                LoadCementLibrary( );
            }
        }
    }

    //
    // If there still is no file, we have a problem
    //
    if( m_hFile == INVALID_HANDLE_VALUE )
    {
        // Invoke an error
        ::radRCFInfoGet( )->InvokeMessage
        (
            RCF_FILEERROR,
            "Cannot open given cement library"
        );
    }

    //
    // Inform listeners that the file list has changed
    //
    UpdateFileList( NULL );

    // We are no initialized
    m_Initialized = true;
}

//=============================================================================
// Function:    radRCFEncoder::Initialize
//=============================================================================
// Description: Initialize.
//
// Parameters:  pFile - the cement file to initialize with.  If NULL, create
//                      a new file.
//              hFile - the handle to the file
//              readonly - the file should be assumed to be read only
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::Initialize
(
    const char* fileName,
    HANDLE hFile,
    bool readonly
)
{
    if( m_Initialized )
    {
        // If already initlialized, destroy the old version.
        ShutDownEncoder( );
    }

    if( !m_BasicStructuresInitialized )
    {
        // Recreate the encoder
        CreateEncoder( );
    }


    // We don't own the file handle
    m_OwnsHFILE = false;

    //
    // Try to open the file as writeable
    //
    m_IsWriteable = true;
    BY_HANDLE_FILE_INFORMATION fileInfo;
    ::GetFileInformationByHandle( hFile, &fileInfo );
    if
    (
        readonly ||
        ( fileInfo.dwFileAttributes & FILE_ATTRIBUTE_READONLY )
    )
    {
        m_IsWriteable = false;
    }
    strcpy( m_LibraryName, fileName );
    m_hFile = hFile;

    //
    // We decide if its a new file or not
    // based on whether it contains data
    //
    DWORD size = ::GetFileSize( hFile, NULL );
    if( size > 0 )
    {
        // Load it
        LoadCementLibrary( );
    }
    else
    {
        // Create it
        CreateCementLibrary( );
        Save( );
    }
    
    //
    // If there still is no file, we have a problem
    //
    if( m_hFile == INVALID_HANDLE_VALUE )
    {
        // Invoke an error
        ::radRCFInfoGet( )->InvokeMessage
        (
            RCF_FILEERROR,
            "Cannot open given cement library"
        );
    }

    //
    // Inform listeners that the file list has changed
    //
    UpdateFileList( NULL );

    // We are no initialized
    m_Initialized = true;
}

//=============================================================================
// Function:    radRCFEncoder::IsInitialized
//=============================================================================
// Description: Is the encoder initialized?
//
// Parameters:  none
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

bool radRCFEncoder::IsInitialized( void )
{
    return m_Initialized;
}

//=============================================================================
// Function:    radRCFEncoder::CreateEncoder
//=============================================================================
// Description: Create the encoder
//
// Parameters:  none
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::CreateEncoder( void )
{
    if( !m_BasicStructuresInitialized )
    {
        // Create the file information
        ::radRCFFileInfoWrapCreate
        (
            & m_pFileInfo,
            GetThisAllocator( )
        );
        ::radRCFHeaderWrapCreate
        (
            & m_pHeader,
            GetThisAllocator( )
        );
        ::radRCFDetailedFileInfoWrapCreate
        (
            & m_pDetailedFileInfo,
            GetThisAllocator( )
        );
        ::radRCFFileInfoWrapCreate
        (
            & m_pModifiedFileInfo,
            GetThisAllocator( )
        );
        ::radRCFHeaderWrapCreate
        (
            & m_pModifiedHeader,
            GetThisAllocator( )
        );
        ::radRCFDetailedFileInfoWrapCreate
        (
            & m_pModifiedDetailedFileInfo,
            GetThisAllocator( )
        );
        m_pMapOutCementLibrary =
            new( GetThisAllocator( ) ) MapOutCementLibrary( );
        m_pMapOutCementLibrary->AddRef( );

        m_BasicStructuresInitialized = true;
    }
}

//=============================================================================
// Function:    radRCFEncoder::ShutDownEncoder
//=============================================================================
// Description: Shut down the encoder
//
// Parameters:  none
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::ShutDownEncoder( void )
{
    if( m_Initialized )
    {
        m_Initialized = false;
        if( m_hFile != INVALID_HANDLE_VALUE )
        {
            if( m_OwnsHFILE )
            {
                ::CloseHandle( m_hFile );
            }
            m_hFile = INVALID_HANDLE_VALUE;
            m_OwnsHFILE = false;
        }

    }
    if( m_BasicStructuresInitialized )
    {
        m_BasicStructuresInitialized = false;

        m_pFileInfo->Release( );
        m_pHeader->Release( );
        m_pDetailedFileInfo->Release( );

        m_pModifiedFileInfo->Release( );
        m_pModifiedHeader->Release( );
        m_pModifiedDetailedFileInfo->Release( );

        if( m_pMapOutCementLibrary != NULL )
        {
            m_pMapOutCementLibrary->Release( );
        }
    }
}

//=============================================================================
// Function:    radRCFEncoder::Save
//=============================================================================
// Description: Write the file
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::Save( void )
{
    if( DoActivitiesRequireWrite( ) && !IsWriteable( ) )
    {
        return;
    }

    rAssert( m_hFile != INVALID_HANDLE_VALUE );

    // Invalidate
    m_pModifiedFileInfo->SetValidity( false );
    m_pModifiedFileInfo->Save( m_hFile );

    // Perform activities
    ::radRCFInfoGet( )->LaunchActivities( this );

    // Resolve the information structures
    Resolve( );

    // Write header
    m_pHeader->Save
    (
        m_hFile,
        m_pModifiedFileInfo
    );

    // Write detailed file info
    m_pDetailedFileInfo->Save
    (
        m_hFile,
        m_pModifiedFileInfo,
        m_pModifiedHeader
    );

    // Make it valid
    m_pFileInfo->SetValidity( true );
    m_pFileInfo->Save( m_hFile );

    // The file lists have probably changed.
    UpdateFileList( NULL );
}

//=============================================================================
// Function:    radRCFEncoder::Resolve
//=============================================================================
// Description: Is the library.
//
//------------------------------------------------------------------------------

void radRCFEncoder::Resolve( void )
{
    //
    // Resolve the file info, header, and detailed file info
    //
    m_pFileInfo->Copy( m_pModifiedFileInfo );
    m_pHeader->Copy( m_pModifiedHeader );
    m_pDetailedFileInfo->Copy( m_pModifiedDetailedFileInfo );

    //
    // Regenerate the hashed table entries
    //
    m_pHeader->RegenerateHashEntries( GetFiles( ) );
}

//=============================================================================
// Function:    radRCFEncoder::IsWriteable
//=============================================================================
// Description: Is the file writeable?
//
//------------------------------------------------------------------------------

bool radRCFEncoder::IsWriteable( void )
{
    return m_IsWriteable;
}

//=============================================================================
// Function:    radRCFEncoder::GetLibraryName
//=============================================================================
// Description: Get the name of this library
//
// Parameters:  n/a
//
// Returns:     Returns the library name
//
// Notes:
//------------------------------------------------------------------------------

const char* radRCFEncoder::GetLibraryName( void )
{
    return m_LibraryName;
}

//=============================================================================
// Function:    radRCFEncoder::GetInfoText
//=============================================================================
// Description: Get cement library info
//
// Parameters:  pText - the next to fill
//              maxSize - the maximum size of the info text
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::GetInfoText
(
    char* pText,
    unsigned int maxSize
)
{
    // This is a cheap check, but we should be safe
    if( maxSize < 1024 )
    {
        return;
    }

    char buf[ 256 ];
    strcpy( pText, "" );

    sprintf( buf, "  SETTING       VALUE\r\n" );
    strcat( pText, buf );
    sprintf( buf, "  -------       -----\r\n" );
    strcat( pText, buf );
    if( GetPadNetSize( ) > 0 )
    {
        sprintf( buf, "  PADNETSIZE  = %#x\r\n", GetPadNetSize( ) );
    }
    else
    {
        sprintf( buf, "  PADNETSIZE  = off\r\n" );
    }
    strcat( pText, buf );
    if( GetAlignment( ) > 0 )
    {
        sprintf( buf, "  ALIGNMENT   = %#x\r\n", GetAlignment( ) );
    }
    else
    {
        sprintf( buf, "  ALIGNMENT   = off\r\n" );
    }
    strcat( pText, buf );

    // Endianness
    switch( GetEndian( ) )
    {
    case BigEndian:
        sprintf
        (
            buf,  "  ENDIAN      = big endian\r\n"
        );
        strcat( pText, buf );
        break;
    case LittleEndian:
        sprintf
        (
            buf,  "  ENDIAN      = little endian\r\n"
        );
        strcat( pText, buf );
        break;
    default:
        rAssert( 0 );
    }

    // Version info
    unsigned char major = 0;
    unsigned char minor = 0;
    m_pFileInfo->GetVersion( &major, &minor );
    sprintf( buf, "  VERSION     = V%u.%u\r\n", major, minor );
    strcat( pText, buf );

    // Break
    strcat( pText, "\r\n" );

    // File info
    IRadObjectList* pList = GetFiles( );
    sprintf( buf, "  NUMFILES    = %u\r\n", pList->GetSize( ) );
    strcat( pText, buf );
}

//=============================================================================
// Function:    radRCFEncoder::GetFileHandle
//=============================================================================
// Description: Get the handle of the underlying data file.
//
// Parameters:  n/a
//
// Returns:     Returns the file handle
//
// Notes:
//------------------------------------------------------------------------------

HANDLE radRCFEncoder::GetFileHandle( void )
{
    return m_hFile;
}

//=============================================================================
// Function:    radRCFEncoder::FindFile
//=============================================================================
// Description: Find a particular file
//
// Parameters:  n/a
//
// Returns:     Returns the file (or NULL if not found)
//
// Notes:
//------------------------------------------------------------------------------

IRadRCFFile* radRCFEncoder::FindFile
(
    const char* fileName
)
{
    // Hash the file name
    unsigned int hashValue = radCFHeader::HashFunction( fileName );
    
    // Look for it in our file list
    IRadObjectList* pFiles = GetFiles( );
    unsigned int i = 0;
    for( i = 0; i < pFiles->GetSize( ); i++ )
    {
        radRCFFileWrap* pFile = reinterpret_cast< radRCFFileWrap* >
        (
            pFiles->GetAt( i )
        );

        //
        // Match the hash values
        //
        if( pFile->GetHashName( ) == hashValue )
        {
            //
            // Make sure the actual file names are a match
            //
            if( stricmp( pFile->GetFileName( ), fileName ) != 0 )
            {
                //
                // We have a hash collision error
                //
                ::radRCFInfoGet( )->InvokeMessage
                (
                    RCF_ERROR,
                    "Hash collision error.  Both \"%s\" and \"%s\" hash to %i.",
                    pFile->GetFileName( ),
                    fileName,
                    hashValue
                );
            }

            return pFile;
        }
    }
    return NULL;
}

//=============================================================================
// Function:    radRCFEncoder::MergeIntoLibrary
//=============================================================================
// Description: Merge the files into the library.
//
// Parameters:  filename - the name of the file to merge into the library.
//              size - the size of the file to merge in.
//              modificationTime - the modification time of the file to
//                                 merge in.
//
// Returns:     Returns true if the merge was succcessfull, otherwise false.
//
// Notes:       This file does not flag the update files flag.  It relies
//              on the caller to do this.
//------------------------------------------------------------------------------

bool radRCFEncoder::MergeIntoLibrary
(
    const char* srcName,
    const char* destinationName,
    unsigned int size,
    FileTime modificationTime,
    bool addonly
)
{
    //
    // Find the old file in the library
    //
    bool mergeSuccess = false;
    IRadRCFFile* pCurrentFile = FindFile( destinationName );
    if( pCurrentFile == NULL )
    {
        //
        // If no file is found, we can safely add the new one to the file list
        //
        radRCFFileWrap* pNewFile = NULL;
        radRCFFileWrapCreate( &pNewFile, GetThisAllocator( ) );
        pNewFile->Initialize( srcName, destinationName );
        GetFiles( )->AddObject( pNewFile );
        pNewFile->Release( );
        mergeSuccess = true;
    }
    else
    {
        //
        // Is the found file a library file?  If not, ignore it because
        // we do not want to include the same file from disk more than
        // once.
        //
        if( pCurrentFile->GetWhereIsFile( ) == IRadRCFFile::InCementLibrary )
        {
            if( addonly )
            {
                //
                // If we are adding only, produce a warning
                //
                ::radRCFInfoGet( )->InvokeMessage
                (
                    RCF_WARNING,
                    "Unable to add %s because it is already in library.  "
                    "Try using /update instead.",
                    destinationName
                );
            }
            else
            {
                //
                // If the library file is different than the new one,
                // update it 
                //
                if( pCurrentFile->GetFileModificationTime( ) != modificationTime )
                {
                    pCurrentFile->Initialize( srcName, destinationName );
                    
                    //
                    // Indicate that the file is found
                    //
                    mergeSuccess = true;
                }
                else
                {
                    //
                    // Use this as a shadow
                    //
                    pCurrentFile->SetShadowFile( srcName );
                }
            }
        }
    }

    return mergeSuccess;
}

//=============================================================================
// Function:    radRCFEncoder::GetFiles
//=============================================================================
// Description: Get the list of files in the library.
//
// Parameters:  n/a
//
// Returns:     Returns the list of files
//
// Notes:
//------------------------------------------------------------------------------

IRadObjectList* radRCFEncoder::GetFiles( void )
{
    rAssert( m_pDetailedFileInfo != NULL );
    return m_pModifiedDetailedFileInfo->GetFiles( );
}

//=============================================================================
// Function:    radRCFEncoder::RegisterUpdateFilesCallback
//=============================================================================
// Description: Register a callback for when the files are updated
//
// Parameters:  pUpdateFilesCallback - the file update callback
//              pUserData - user data to pass along with a callback
//              ignoreDataOnlyChange - don't call this callback if only the
//                                     data changed.
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::RegisterUpdateFilesCallback
(
    IRadRCFEncoderFileUpdateCallback* pUpdateFilesCallback,
    void* pUserData
)
{
    ::radWeakCallbackRegister
    (
        m_xIRadObjectList_FileUpdateCallbacks,
        GetThisAllocator( ),
        pUpdateFilesCallback,
        pUserData
    );
}

//=============================================================================
// Function:    radRCFEncoder::UnregisterUpdateFilesCallback
//=============================================================================
// Description: Unregister the file update callback
//
// Parameters:  see RegisterUpdateFilesCallback
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::UnregisterUpdateFilesCallback
(
    IRadRCFEncoderFileUpdateCallback* pUpdateFilesCallback,
    void* pUserData
)
{
    ::radWeakCallbackUnregister
    (
        m_xIRadObjectList_FileUpdateCallbacks,
        pUpdateFilesCallback,
        pUserData
    );
}

//=============================================================================
// Function:    radRCFEncoder::UpdateFileList
//=============================================================================
// Description: Call this to indicate that the file list has changed
//
// Parameters:  pCaller - the callback to avoid
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::UpdateFileList
(
    IRadRCFEncoderFileUpdateCallback* pCaller
)
{
    ref< IRadWeakCallbackWrapper > xIWcw;
    
    AddRef( );
    
    m_xIRadObjectList_FileUpdateCallbacks->Reset( );
    xIWcw = ( IRadWeakCallbackWrapper * ) m_xIRadObjectList_FileUpdateCallbacks->GetNext( );
    
    while( xIWcw != NULL )
    {
        IRadRCFEncoderFileUpdateCallback* pCallback =
            reinterpret_cast< IRadRCFEncoderFileUpdateCallback* >
            (
                xIWcw->GetWeakInterface()
            );

        if( pCallback != pCaller )
        {
            rAssert( pCallback != NULL );
            pCallback->OnRCFEncoderFileUpdate( false, xIWcw->GetUserData( ) );
        }

        xIWcw = ( IRadWeakCallbackWrapper * ) m_xIRadObjectList_FileUpdateCallbacks->GetNext( );
    }
    
    Release( );
}

//=============================================================================
// Function:    radRCFEncoder::UpdateFileData
//=============================================================================
// Description: Call this to indicate that the file data has changed
//
// Parameters:  pCaller - the callback to avoid
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::UpdateFileData
(
    IRadRCFEncoderFileUpdateCallback* pCaller
)
{
    ref< IRadWeakCallbackWrapper > xIWcw;
    
    AddRef( );
    
    m_xIRadObjectList_FileUpdateCallbacks->Reset( );
    xIWcw = ( IRadWeakCallbackWrapper * ) m_xIRadObjectList_FileUpdateCallbacks->GetNext( );
    
    while( xIWcw != NULL )
    {
        IRadRCFEncoderFileUpdateCallback* pCallback =
            reinterpret_cast< IRadRCFEncoderFileUpdateCallback* >
            (
                xIWcw->GetWeakInterface()
            );

        if( pCallback != pCaller )
        {
            rAssert( pCallback != NULL );
            pCallback->OnRCFEncoderFileUpdate( true, xIWcw->GetUserData( ) );
        }

        xIWcw = ( IRadWeakCallbackWrapper * ) m_xIRadObjectList_FileUpdateCallbacks->GetNext( );
    }
    
    Release( );
}

//=============================================================================
// Function:    radRCFEncoder::GetPadNetSize
//=============================================================================
// Description: Get the padding net size
//
//------------------------------------------------------------------------------

unsigned int radRCFEncoder::GetPadNetSize( void )
{
    return m_pModifiedFileInfo->GetPadNetSize( );
}

//=============================================================================
// Function:    radRCFEncoder::SetPadNetSize
//=============================================================================
// Description: Set the padding net size
//
//------------------------------------------------------------------------------

void radRCFEncoder::SetPadNetSize( unsigned int padnetsize )
{
    if( padnetsize != m_PadNetSize )
    {
        m_DoActivitiesRequireWrite = true;
        m_pModifiedFileInfo->SetPadNetSize( padnetsize );
    }
}

//=============================================================================
// Function:    radRCFEncoder::GetAlignment
//=============================================================================
// Description: Set the alignment
//
//------------------------------------------------------------------------------

unsigned int radRCFEncoder::GetAlignment( void )
{
    return m_pModifiedFileInfo->GetAlignment( );
}

//=============================================================================
// Function:    radRCFEncoder::SetAlignment
//=============================================================================
// Description: Set the alignment
//
//------------------------------------------------------------------------------

void radRCFEncoder::SetAlignment( unsigned int alignment )
{
    if( alignment != m_Alignment )
    {
        m_DoActivitiesRequireWrite = true;
        m_pModifiedFileInfo->SetAlignment( alignment );
    }
}

//=============================================================================
// Function:    radRCFEncoder::GetEndian
//=============================================================================
// Description: Get the endianness of the cement library
//
//------------------------------------------------------------------------------

radRCFEndian radRCFEncoder::GetEndian( void )
{
    return m_pModifiedFileInfo->GetEndian( );
}

//=============================================================================
// Function:    radRCFEncoder::SetEndian
//=============================================================================
// Description: Set the endianness of the cement library
//
//------------------------------------------------------------------------------

void radRCFEncoder::SetEndian( radRCFEndian endian )
{
    if( endian != m_Endian )
    {
        m_DoActivitiesRequireWrite = true;
        m_pModifiedFileInfo->SetEndian( endian );
    }
}

//=============================================================================
// Function:    radRCFEncoder::DoActivitiesRequireWrite
//=============================================================================
// Description: Does any pending activities require writing to the file?
//
// Parameters:  n/a
//
// Returns:     Returns true if the activities require writing to the library,
//              and false if they don't.
//
// Notes:
//------------------------------------------------------------------------------

bool radRCFEncoder::DoActivitiesRequireWrite( void )
{
    return m_DoActivitiesRequireWrite;
}

//=============================================================================
// Function:    radRCFEncoder::Fix
//=============================================================================
// Description: Fix the file based on minor corruption and wrong version
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::Fix( void )
{
    m_DoActivitiesRequireWrite = true;
}

//=============================================================================
// Function:    radRCFEncoder::CreateCementLibrary
//=============================================================================
// Description: Create a new cement library
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::CreateCementLibrary( void )
{
    m_DoActivitiesRequireWrite = true;

    m_pFileInfo->Initialize( );
    m_pHeader->Initialize( m_pFileInfo );
    m_pDetailedFileInfo->Initialize( );

    m_pModifiedFileInfo->Copy( m_pFileInfo );
    m_pModifiedHeader->Copy( m_pHeader );
    m_pModifiedDetailedFileInfo->Copy( m_pDetailedFileInfo );
}


//=============================================================================
// Function:    radRCFEncoder::LoadCementLibrary
//=============================================================================
// Description: Load a cement library
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::LoadCementLibrary( void )
{
    rAssert( m_hFile != INVALID_HANDLE_VALUE );
    m_DoActivitiesRequireWrite = false;

    m_pFileInfo->Initialize( m_hFile );
    m_pHeader->Initialize( m_hFile, m_pFileInfo );
    m_pDetailedFileInfo->Initialize
    (
        m_hFile,
        m_pFileInfo,
        m_pHeader
    );

    m_pModifiedFileInfo->Copy( m_pFileInfo );
    m_pModifiedHeader->Copy( m_pHeader );
    m_pModifiedDetailedFileInfo->Copy( m_pDetailedFileInfo );
}

//=============================================================================
// Function:    radRCFEncoder::GenerateActivities
//=============================================================================
// Description: Load a cement library
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::GenerateActivities
(
    void
)
{
    //
    // Remeber temporary files used
    //
    ref< IRadObjectList > xIOL_TemporaryFiles;
    ::radObjectListCreate( &xIOL_TemporaryFiles, GetThisAllocator( ) );

    //
    // First, resolve with the original library
    //
    ResolveFileList( );
    UpdateFileList( NULL );

    //
    // Map out the cement library
    //
    MapCementLibrary( );

    //
    // If the header or detailed file info have moved, we
    // must, at the very least, write to the file.  (These
    // general pieces are automatically written so no activities
    // need to be generated).
    //
    if
    (
        ( m_pMapOutCementLibrary->GetHeaderStart( ) != m_pFileInfo->GetHeaderStartPos( ) ) ||
        ( m_pMapOutCementLibrary->GetDetailedFileInfoStart( ) != m_pHeader->GetDetailedInfoStartPos( ) )
    )
    {
        m_DoActivitiesRequireWrite = true;

        m_pModifiedFileInfo->SetHeaderStartPos
        (
            m_pMapOutCementLibrary->GetHeaderStart( )
        );
        m_pModifiedHeader->SetDetailedInfoStartPos
        (
            m_pMapOutCementLibrary->GetDetailedFileInfoStart( )
        );
    }

    //
    // Create some helpful structures
    //
    IRadObjectList* pFileList = m_pModifiedDetailedFileInfo->GetFiles( );
    pFileList->AddRef( );

    if( pFileList->GetSize( ) > 0 )
    {
        bool* fileHasBeenDeltWith = new bool[ pFileList->GetSize( ) ];
        ::memset( fileHasBeenDeltWith, 0, sizeof( bool ) * pFileList->GetSize( ) );

        //
        // Go through the file list until all files have been delt with
        //
        unsigned int i = 0;
        unsigned int j = 0;
        radRCFFileWrap* pFile = NULL;
        radRCFFileWrap* pTempFile = NULL;
        while( !::CheckBoolArray( fileHasBeenDeltWith, pFileList->GetSize( ) ) )
        {
            bool deadlock = true;
            for( i = 0; deadlock && i < m_pMapOutCementLibrary->GetNumberOfFiles( ); i++ )
            {
                // Skip files we have already delt with
                if( fileHasBeenDeltWith[ i ] )
                {
                    continue;
                }

                bool interferes = false;

                // Get the file info
                pFile = reinterpret_cast< radRCFFileWrap* >
                (
                    pFileList->GetAt( i )
                );
                pFile->AddRef( );
                unsigned int start = m_pMapOutCementLibrary->GetFileStart( i );
                unsigned int end = start + pFile->GetSize( );

                //
                // If the start did not change, do nothing!
                //
                if( start == pFile->GetOffset( ) )
                {
                    pFile->Release( );
                    deadlock = false;
                    fileHasBeenDeltWith[ i ] = true;
                    continue;
                }
                else
                {
                    m_DoActivitiesRequireWrite = true;
                }

                // Compare to each of the files
                for( j = 0; !interferes && j < pFileList->GetSize( ); j++ )
                {
                    // Don't repeat ourselves
                    if( i == j )
                    {
                        continue;
                    }

                    if( fileHasBeenDeltWith[ j ] )
                    {
                        continue;
                    }

                    pTempFile = reinterpret_cast< radRCFFileWrap* >
                    (
                        pFileList->GetAt( j )
                    );
                    pTempFile->AddRef( );

                    //rDebugPrintf( "i=%u, j=%u, pFile=%s, pTempFile=%s\n", i, j, pFile->GetFileName( ), pTempFile->GetFileName( ) );
                    //
                    // Will this file wipe out anything important?
                    //
                    if
                    (
                        pTempFile->Interferes( start, end )
                    )
                    {
                        interferes = true;
                    }

                    pTempFile->Release( );
                }
                if( !interferes )
                {
                    //+rDebugPrintf( "No interference... Transfering %u (%s)\n", i, pFile->GetFileName( ) );
                    //
                    // If nothing interferes, transfer the file
                    //
                    ::radRCFInfoGet( )->AppendActivity
                    (
                        new( GetThisAllocator( ) ) radRCFActivityTransferFile
                        (
                            pFile,
                            m_pMapOutCementLibrary->GetFileStart( i )
                        ),
                        false
                    );

                    fileHasBeenDeltWith[ i ] = true;
                    deadlock = false;
                }

                // Clean up
                pFile->Release( );
            }

            //
            // If we cannot do anything, start using temporary files
            //
            if( deadlock )
            {
                //rDebugPrintf( "Deadlock stage 1\n" );

                // Copy the first file that has not been delt and has a shadow to
                // a temporary file.
                for( i = 0; deadlock && i < m_pMapOutCementLibrary->GetNumberOfFiles( ); i++ )
                {
                    // Skip files we have already delt with
                    if( fileHasBeenDeltWith[ i ] )
                    {
                        continue;
                    }

                    // Is the file shadowed?
                    pFile = reinterpret_cast< radRCFFileWrap* >
                    (
                        pFileList->GetAt( i )
                    );
                    pFile->AddRef( );

                    if( pFile->GetWhereIsFile( ) == IRadRCFFile::InCementLibrary )
                    {
                        if( pFile->IsShadowed( ) )
                        {
                            // Use the shadow file instead of the real one.
                            pFile->Initialize
                            (
                                pFile->GetShadowFile( ),
                                pFile->GetFileName( )
                            );
                            deadlock = false;
                            //rDebugPrintf( "Using shadow on %u (%s)\n", i, pFile->GetFileName( ) );
                        }
                    }

                    pFile->Release( );
                }
            }
            if( deadlock )
            {
                //rDebugPrintf( "Deadlock stage 2\n" );

                //
                // There must be no usefull shadowed files.  We'll have
                // to do this the hard way
                //
                for( i = 0; deadlock && i < m_pMapOutCementLibrary->GetNumberOfFiles( ); i++ )
                {
                    // Skip files we have already delt with
                    if( fileHasBeenDeltWith[ i ] )
                    {
                        continue;
                    }

                    // Is the file shadowed?
                    pFile = reinterpret_cast< radRCFFileWrap* >
                    (
                        pFileList->GetAt( i )
                    );
                    pFile->AddRef( );

                    if( pFile->GetWhereIsFile( ) == IRadRCFFile::InCementLibrary )
                    {
                        rAssert( !pFile->IsShadowed( ) );

                        // Make up a temporary name.  Notice that this
                        // uses an internal static buffer, so free need not be called
                        char *tmpFileName = tmpnam( NULL );
                        if( tmpFileName == NULL )
                        {
                            ::radRCFInfoGet( )->InvokeMessage
                            (
                                RCF_SOLIDIFYERROR,
                                "Error creating temporary file for %s", pFile->GetFileName( )
                            );
                        }

                        // Copy to a temporary file
                        ::radRCFInfoGet( )->InvokeMessage
                        (
                            RCF_OK,
                            "Copying %s to temporary file",
                            pFile->GetFileName( )
                        );
                        pFile->ExportFile( this, tmpFileName );

                        // Remember to remove the temporary file
                        IRadString* pString = NULL;
                        ::radStringCreate( &pString, GetThisAllocator( ) );
                        pString->Copy( tmpFileName );
                        xIOL_TemporaryFiles->AddObject( pString );
                        pString->Release( );

                        // Use the temp file
                        pFile->Initialize
                        (
                            tmpFileName,
                            pFile->GetFileName( )
                        );
                        deadlock = false;
                    }

                    pFile->Release( );
                }
            }
            if( deadlock )
            {
                //
                // If we're still deadlocked, there is something logically
                // wrong with the code
                //
                ::radRCFInfoGet( )->InvokeMessage
                (
                    RCF_ERROR,
                    "Deadlock while generating activities!"
                );
            }
        }

        // Free the fileHasBeenDeltWith structure
        delete[ ] fileHasBeenDeltWith;
    }

    //
    // If the file size has changed, still set that
    //
    unsigned int librarySize = ::GetFileSize( GetFileHandle( ), NULL );
    if
    (
        m_pMapOutCementLibrary->GetEnd( ) != librarySize
    )
    {
        // Do this first if the file size expanded.  Do it last
        // if the file size shrunk
        m_DoActivitiesRequireWrite = true;
        ::radRCFInfoGet( )->AppendActivity
        (
            new( GetThisAllocator( ) ) radRCFActivitySetFileSize
            (
                m_pMapOutCementLibrary->GetEnd( )
            ),
            ( m_pMapOutCementLibrary->GetEnd( ) > librarySize )
        );
    }

    // Clean up
    pFileList->Release( );

    //
    // Remove all the temporary files
    //
    unsigned int i = 0;
    for( i = 0; i < xIOL_TemporaryFiles->GetSize( ); i++ )
    {
        IRadString* pString = reinterpret_cast< IRadString* >
        (
            xIOL_TemporaryFiles->GetAt( i )
        );
        pString->AddRef( );

        ::radRCFInfoGet( )->AppendActivity
        (
            new( GetThisAllocator( ) ) radRCFActivityRemoveFile
            (
                pString->GetChars( )
            ),
            false
        );

        pString->Release( );
    }

    //
    // We're done, make the done activity
    //
    if( DoActivitiesRequireWrite( ) )
    {
        ::radRCFInfoGet( )->AppendActivity
        (
            new( GetThisAllocator( ) ) radRCFActivityDone( ),
            false
        );
    }
}

//=============================================================================
// Function:    radRCFEncoder::ResolveFileList
//=============================================================================
// Description: Resolve the file list with the original one
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::ResolveFileList( void )
{
    //
    // If the hash, name and modification date matches, the original file
    // may be used
    //
    IRadObjectList* pFileList = m_pModifiedDetailedFileInfo->GetFiles( );
    IRadObjectList* pOriginalFileList = m_pDetailedFileInfo->GetFiles( );

    unsigned int i = 0;
    unsigned int j = 0;
    for( i = 0; i < pFileList->GetSize( ); i++ )
    {
        radRCFFileWrap* pFile =
            reinterpret_cast< radRCFFileWrap* >
            (
                pFileList->GetAt( i )
            );

        for( j = 0; j < pOriginalFileList->GetSize( ); j++ )
        {
            radRCFFileWrap* pOriginalFile =
                reinterpret_cast< radRCFFileWrap* >
                (
                    pOriginalFileList->GetAt( j )
                );

            // Compare
            if
            (
                ( pFile->GetHashName( ) == pOriginalFile->GetHashName( ) ) &&
                ( pFile->GetFileModificationTime( ) == pOriginalFile->GetFileModificationTime( ) ) &&
                ( stricmp( pFile->GetFileName( ), pOriginalFile->GetFileName( ) ) == 0 )
            )
            {
                // The file matches, if the new one is not the cement library copy,
                // replace it
                if
                (
                    ( pFile->GetWhereIsFile( ) == IRadRCFFile::OnDisk ) &&
                    ( pOriginalFile->GetWhereIsFile( ) == IRadRCFFile::InCementLibrary )
                )
                {
                    pOriginalFile->SetShadowFile( pFile );
                    pFile->Copy( pOriginalFile );
                }

                break;
            }
        }
    }
}

//=============================================================================
// Function:    radRCFEncoder::MapCementLibrary
//=============================================================================
// Description: Map out the cement library
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void radRCFEncoder::MapCementLibrary( void )
{
    // File info
    unsigned int pos = 0;
    m_pMapOutCementLibrary->SetFileInfoStart( pos );

    // Header
    pos = ::DoAlign
    (
        m_pMapOutCementLibrary->GetFileInfoStart( ) +
        m_pModifiedFileInfo->CalculateSize( ),
        GetAlignment( )
    );
    m_pMapOutCementLibrary->SetHeaderStart( pos );

    // Detailed file info
    pos = ::DoAlign
    (
        m_pMapOutCementLibrary->GetHeaderStart( ) +
        m_pModifiedHeader->CalculateSize( ),
        GetAlignment( )
    );
    m_pMapOutCementLibrary->SetDetailedFileInfoStart( pos );

    unsigned int lastEndPos = ::DoAlign
    (
        m_pMapOutCementLibrary->GetDetailedFileInfoStart( ) +
        m_pModifiedDetailedFileInfo->CalculateSize( ),
        GetAlignment( )
    );

    // The files
    IRadObjectList* pFileList = GetFiles( );
    unsigned int i = 0;
    m_pMapOutCementLibrary->SetNumberOfFiles( pFileList->GetSize( ) );
    for( i = 0; i < pFileList->GetSize( ); i++ )
    {
        IRadRCFFile* pFile = reinterpret_cast< IRadRCFFile* >
        (
            pFileList->GetAt( i )
        );
        m_pMapOutCementLibrary->SetFileStart( i, lastEndPos );
        lastEndPos += ::DoAlign
        (
            pFile->GetSize( ),
            GetAlignment( )
        );
    }

    // The end
    m_pMapOutCementLibrary->SetEnd( lastEndPos );

    //
    // If we don't fill up the padded net size, slide everything down
    //
    unsigned int alignedNetSize = GetPadNetSize( );
    if( GetAlignment( ) > 0 )
    {
        if( ( alignedNetSize % GetAlignment( ) ) != 0 )
        {
            alignedNetSize = ::DoAlign
            (
                GetPadNetSize( ),
                GetAlignment( )
            ) - GetAlignment( );
        }
    }
    if( alignedNetSize > m_pMapOutCementLibrary->GetEnd( ) )
    {
        m_pMapOutCementLibrary->StepPaddedElementsForward
        (
            alignedNetSize - lastEndPos
        );
    }

    // Do a dump
    m_pMapOutCementLibrary->DumpMapToDebug( );
}

//=============================================================================
// Function:    radRCFEncoder::OnRCFEncoderFileUpdate
//=============================================================================
// Description: Call this every time the file list is updated
//
//------------------------------------------------------------------------------

void radRCFEncoder::OnRCFEncoderFileUpdate
(
    bool dataChangeOnly,
    void* pUserData
)
{
    //
    // Regenerate the hashed table entries
    //
    m_pModifiedHeader->RegenerateHashEntries( GetFiles( ) );
}

//=============================================================================
// Factory functions
//=============================================================================

//
// Create a cement library encoder
//
void radRCFEncoderCreate
(
    IRadRCFEncoder** ppRadRCFEncoder,
    radMemoryAllocator allocator
)
{
    rAssert( ppRadRCFEncoder != NULL );
    (*ppRadRCFEncoder) = new( allocator ) radRCFEncoder( );
    // Addref done by constructor
}

