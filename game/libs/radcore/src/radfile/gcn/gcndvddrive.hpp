//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        gcndvddrive.hpp
//
// Subsystem:	Radical File System
//
// Description:	This file contains all definitions and classes relevant to
//              gcn dvd drive.
//
// Revisions:	
//
//=============================================================================

#ifndef	GCNDVDDRIVE_HPP
#define GCNDVDDRIVE_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <dolphin/dvd.h>
#include "../common/drive.hpp"
#include "../common/drivethread.hpp"
#include "../common/buffereddrive.hpp"

//=============================================================================
// Defines
//=============================================================================

//
// Sector size
//
#define GCN_DVD_SECTOR_SIZE        32

//
// How many handles do we allow
//
#define GCN_MAX_DVD_HANDLES        32

//
// Set up the multi-sector transfer buffer
//
#define GCN_DVD_TRANSFER_BUFFER_SECTORS  128
#define GCN_DVD_TRANSFER_BUFFER_SIZE (GCN_DVD_TRANSFER_BUFFER_SECTORS * GCN_DVD_SECTOR_SIZE)

//
// Set up the alignment for our transfer buffer
//
#define GCN_DVD_ALIGNMENT   32

//=============================================================================
// Statics
//=============================================================================

static const char s_GCNDVDDriveName[ ] = "DVD:";

//=============================================================================
// Public Functions
//=============================================================================

//
// Every physical drive type must provide a drive factory.
//
void radGcnDVDDriveFactory( radDrive** ppDrive, const char* driveSpec, radMemoryAllocator alloc );

//=============================================================================
// Class Declarations
//=============================================================================

class radGcnDVDDrive : public radBufferedReader,
                       public radDrive
{
public:

    //
    // Constructor / destructor.
    //
    radGcnDVDDrive( radMemoryAllocator alloc );
    virtual ~radGcnDVDDrive( void );

    void Lock( void );
    void Unlock( void );

    unsigned int GetCapabilities( void );

    const char* GetDriveName( void );

    CompletionStatus Initialize( void );

    CompletionStatus OpenFile( const char*        fileName, 
                               radFileOpenFlags   flags, 
                               bool               writeAccess, 
                               radFileHandle*     pHandle, 
                               unsigned int*      pSize );

    CompletionStatus CloseFile( radFileHandle handle, const char* fileName );

    CompletionStatus ReadAligned( radFileHandle handle,
                                  const char* fileName,
                                  unsigned int sector,
                                  unsigned int numSectors,
                                  void* pData, 
                                  radMemorySpace pDataSpace );
 
     CompletionStatus ReadBuffered( radFileHandle handle,
                                    const char* fileName,                           
                                    unsigned int sector,
                                    unsigned int numSectors,
                                    unsigned int position,
                                    unsigned int numBytes,
                                    void* pData, 
                                    radMemorySpace pDataSpace );

    unsigned int GetReadBufferSectors( void );

    CompletionStatus FindFirst( const char*                 searchSpec, 
                                IRadDrive::DirectoryInfo*   pDirectoryInfo, 
                                radFileDirHandle*           pHandle,
                                bool                        firstSearch );

    CompletionStatus FindNext( radFileDirHandle* pHandle, IRadDrive::DirectoryInfo* pDirectoryInfo );

    CompletionStatus FindClose( radFileDirHandle* pHandle );

    //
    // We need this to detect open cover and no disk errors.
    //
    void Service( void );

    //
    // radBufferedReader
    //
    IMPLEMENT_BUFFERED_READ;

private:
    //
    // Helper functions
    //
    bool SetMediaInfo( void );
    void BuildFileSpec( const char* fileName, char* fullName, unsigned int size, char** pName );
    radFileError TranslateError( int error );
    bool FileNameMatchesSearch( const char* pFileName, const char* pSearchSpec );

    unsigned int    m_OpenFiles;

    //
    // This is the volume name of the current disk. Even if the media info changes,
    // this is the disk that is accepted.
    //
    char            m_VolumeName[ 64 + 1 ];

    //
    // This buffer is used to when the read request is not sector aligned.
    //
    unsigned char  m_SectorBufferSpace[ GCN_DVD_TRANSFER_BUFFER_SIZE + GCN_DVD_ALIGNMENT ];
    unsigned char* m_SectorBuffer;

    //
    // Keep an internal list of handles to give back to the files
    //
    struct DVDHandle
    {
        int             m_fileNo;
        DVDFileInfo     m_fileInfo;
    };

    DVDHandle m_HandlePool[ GCN_MAX_DVD_HANDLES ];

    //
    // Needed for canceling ops.
    //
    DVDCommandBlock*    m_pCB;

    //
    // Mutex for critical sections
    //
    IRadThreadMutex*    m_pMutex;

    inline DVDFileInfo* GetFileInfo( unsigned int handle )
    {
        return &( m_HandlePool[ handle ].m_fileInfo );
    }

    //
    // To find certain errors, we need to poll. The service call, and these members
    // handle polling.
    //
    DVDFileInfo* m_pPollFileInfo;
    int m_PollResult;

    bool Seek( unsigned int position, DVDFileInfo* fileInfo );
    bool Read( void* pData, unsigned int size, unsigned int position, DVDFileInfo* fileInfo );
};

#endif // GCNDVDDRIVE_HPP

