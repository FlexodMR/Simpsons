//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        gcnmemcarddrive.hpp
//
// Subsystem:	Radical File System
//
// Description:	This file contains all definitions and classes relevant to
//              gcn memory card drive.
//
// Revisions:	
//
//=============================================================================

#ifndef	GCNMEMCARDDDRIVE_HPP
#define GCNMEMCARDDDRIVE_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <dolphin/card.h>
#include <radkey.hpp>
#include "../common/drive.hpp"
#include "../common/signeddrive.hpp"

//=============================================================================
// Statics
//=============================================================================

static const char s_GCNMemcardDrive[ ] = "MEMCARDCHANNEL?:";
#define GCNMEMCARDDRIVE_PORT_LOC    14

#define GCNMEMCARDDRIVE_SECTOR_SIZE     8192

// MUST BE AT LEAST 3!! This is the max size of the header info.
#define GCNMEMCARDDRIVE_TRANSFER_BUFFER_SECTORS  3 
#define GCNMEMCARDDRIVE_TRANSFER_BUFFER_SIZE (GCNMEMCARDDRIVE_TRANSFER_BUFFER_SECTORS * GCNMEMCARDDRIVE_SECTOR_SIZE)

//
// Set up the alignment for our transfer buffer
//
#define GCNMEMCARDDRIVE_ALIGNMENT   32

//
// How many handles do we allow in total.
//
#define GCN_MAX_CARD_HANDLES        8

//=============================================================================
// Public Functions
//=============================================================================

//
// Every physical drive type must provide a drive factory. This factory should be
// changed to handle the proxies.
//

void radGcnMemcardDriveFactory( radDrive** ppDrive, const char* driveSpec, radMemoryAllocator alloc );

//=============================================================================
// Class Declarations
//=============================================================================

// we don't do our own buffering for this drive.

class radGcnMemcardDrive : public radDrive,
                           public radSignedReader,
                           public radSignedWriter
{
public:

    //
    // Constructor / destructor.
    //
    radGcnMemcardDrive( const char* pdrivespec, radMemoryAllocator alloc );
    virtual ~radGcnMemcardDrive( void );

    void Lock( void );
    void Unlock( void );

    //
    // This member reports this physical drives capabilities
    //
    unsigned int GetCapabilities( void );

    const char* GetDriveName( void );

    unsigned int GetCreationSize( radMemcardInfo* memcardInfo, unsigned int size );

    CompletionStatus Initialize( void );

    CompletionStatus OpenSaveGame( const char*      fileName, 
                                   radFileOpenFlags flags, 
                                   bool             writeAccess,
                                   radMemcardInfo*  memcardInfo,
                                   unsigned int     maxSize,
                                   radFileHandle*   pHandle, 
                                   unsigned int*    pSize );

    CompletionStatus CloseFile( radFileHandle handle, const char* fileName );

    CompletionStatus CommitFile( radFileHandle  handle, const char* fileName );

    CompletionStatus ReadSignedBlock( radFileHandle  handle,
                                      const char* fileName,                              
                                      unsigned int   block,
                                      unsigned int   position,
                                      unsigned int   numBytes,
                                      void*          pData, 
                                      radMemorySpace pDataSpace );

    unsigned int GetReadBlockSize( void );
    unsigned int GetReadHeaderSize( radFileHandle handle );

    CompletionStatus WriteSignedBlock( radFileHandle handle,
                                       const char* fileName,
                                       unsigned int block,
                                       unsigned int position,
                                       unsigned int numBytes,
                                       const void* pData,
                                       unsigned int* size,
                                       radMemorySpace pDataSpace );

    unsigned int GetWriteBlockSize( void );
    unsigned int GetWriteHeaderSize( radFileHandle handle );

    CompletionStatus DestroyFile( const char* fileName ); 

    CompletionStatus Format( void );

    CompletionStatus FindFirst( const char*                 searchSpec, 
                                IRadDrive::DirectoryInfo*   pDirectoryInfo, 
                                radFileDirHandle*           pHandle,
                                bool                        firstSearch );

    CompletionStatus FindNext( radFileDirHandle* pHandle, IRadDrive::DirectoryInfo* pDirectoryInfo );

    CompletionStatus FindClose( radFileDirHandle* pHandle );

    IMPLEMENT_SIGNED_READ;
    IMPLEMENT_SIGNED_WRITE;

private:
    bool SetMediaInfo( void );
    IRadDrive::MediaInfo::MediaState ErrorToMediaState( int result );
    int GetChannel( void );
    void BuildFileSpec( const char* fileName, char* fullName, unsigned int size, char** pName );
    radFileError TranslateError( int error );
    radFileError OpenGCNFile( char* fileName, CARDFileInfo* cardInfo );
    void PackHeader( const radMemcardInfo* memcardInfo, CARDStat* cardStat, unsigned int fileSize );
    unsigned int HeaderSize( const radMemcardInfo* memInfo );

    bool Copy( CARDFileInfo* pDestInfo, CARDFileInfo* pSrcInfo );
    bool DoFun( int result );

    bool Mount( bool MountBroken = false );
    void Unmount( void );

    char    m_DriveName[ sizeof( s_GCNMemcardDrive ) + 1 ];

    unsigned int m_OpenFiles;

    bool    m_IsMounted;
    bool    m_Changed;

    //
    // Each drive needs a work area.
    //
    char    m_WorkAreaBuffer[ CARD_WORKAREA_SIZE + 32 ];
    char*   m_WorkArea;

    bool FileNameMatchesSearch( const char* pFileName,  const char* pSearchSpec );
    bool LoadBlock( radFileHandle handle, unsigned int block );
    bool FlushBlock( void );
    unsigned int GetTableSize( unsigned int fileSize );
    radCrc CalculateCRC( unsigned int fileSize );
    bool GetSizeFromHandle( radFileHandle handle, unsigned int* size );
    bool InitializeFile( radFileHandle handle,
                         CARDFileInfo* pCardInfo, 
                         CARDStat* pCardStat,
                         radMemcardInfo* memcardInfo, 
                         unsigned int headerSize,
                         unsigned int fileSize );
};

#endif // GCNMEMCARDDDRIVE_HPP

