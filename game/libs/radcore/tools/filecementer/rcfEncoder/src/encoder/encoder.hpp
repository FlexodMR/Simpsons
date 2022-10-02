//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        encoder.hpp
//
// Subsystem:   Radical Cement File Encoder
//
// Description:	This file contains the definition of the encoder class
//
// Author:		Brad Reimer
//
// Revisions:	V1.00	Sept 25, 2001    Creation
//
//=============================================================================

#ifndef	ENCODER_HPP
#define ENCODER_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radobject.hpp>
#include <rcfEncoder.hpp>

#include "cementlibrarywrap\cementlibrarywrap.hpp"

//=============================================================================
// Class name:  MapOutCementLibrary
//=============================================================================
// Description: This class helps map out cement libraries
//
//-----------------------------------------------------------------------------

class MapOutCementLibrary : public radRefCount
{
public:
    IMPLEMENT_REFCOUNTED( "MapOutCementLibrary" )

    MapOutCementLibrary( );
    ~MapOutCementLibrary( );

    // File info
    void SetFileInfoStart( unsigned int pos );
    unsigned int GetFileInfoStart( void );

    // Header
    void SetHeaderStart( unsigned int pos );
    unsigned int GetHeaderStart( void );

    // Detailed file info
    void SetDetailedFileInfoStart( unsigned int pos );
    unsigned int GetDetailedFileInfoStart( void );

    // Set the number of files
    void SetNumberOfFiles( unsigned int num );
    unsigned int GetNumberOfFiles( void );

    // Set each file's start position
    void SetFileStart( unsigned int index, unsigned int pos );
    unsigned int GetFileStart( unsigned int index );

    // Set the end
    void SetEnd( unsigned int pos );
    unsigned int GetEnd( void );

    // Step padded elements forward
    void StepPaddedElementsForward( unsigned int change );

    // Do a helpful dump of the map
    void DumpMapToDebug( void );

private:
    unsigned int    m_FileInfoStart;
    unsigned int    m_HeaderStart;
    unsigned int    m_DetailedFileInfoStart;

    unsigned int    m_NumberOfFiles;
    unsigned int*   m_pFileStartPositions;

    unsigned int    m_End;
};

//=============================================================================
// Class name:  radRCFEncoder
//=============================================================================
// Description: This class helps encoder cement libraries
//
//-----------------------------------------------------------------------------

class radRCFEncoder : public IRadRCFEncoder,
                      public IRadRCFEncoderFileUpdateCallback,
                      public radRefCount
{
public:
    IMPLEMENT_REFCOUNTED( "radRCFEncoder" )

    radRCFEncoder( );
    virtual ~radRCFEncoder( );


    //=============================================================================
    // IRadRCFEncoder functions
    //=============================================================================

    virtual void Initialize
    (
        const char* fileName,
        bool readonly
    );
    virtual void Initialize
    (
        const char* fileName,
        HANDLE hFile,
        bool readonly
    );
    virtual void ShutDownEncoder( void );
    virtual bool IsInitialized( void );
    virtual void Save( void );
    void Resolve( void );
    virtual bool IsWriteable( void );

    virtual const char* GetLibraryName( void );
    virtual void GetInfoText( char* pText, unsigned int maxSize );

    virtual HANDLE GetFileHandle( void );

    virtual IRadRCFFile* FindFile( const char* fileName );
    virtual bool MergeIntoLibrary
    (
        const char* srcName,
        const char* destinationName,
        unsigned int size,
        FileTime modificationTime,
        bool addonly
    );
    virtual IRadObjectList* GetFiles( void );
    virtual void RegisterUpdateFilesCallback
    (
        IRadRCFEncoderFileUpdateCallback* pUpdateFilesCallback,
        void* pUserData
    );
    virtual void UnregisterUpdateFilesCallback
    (
        IRadRCFEncoderFileUpdateCallback* pUpdateFilesCallback,
        void* pUserData
    );
    virtual void UpdateFileList
    (
        IRadRCFEncoderFileUpdateCallback* pCaller
    );
    virtual void UpdateFileData
    (
        IRadRCFEncoderFileUpdateCallback* pCaller
    );

    virtual unsigned int GetPadNetSize( void );
    virtual void SetPadNetSize( unsigned int padnetsize );

    virtual unsigned int GetAlignment( void );
    virtual void SetAlignment( unsigned int alignment );

    virtual radRCFEndian GetEndian( void );
    virtual void SetEndian( radRCFEndian endian );

    virtual bool DoActivitiesRequireWrite( void );

    virtual void Fix( void );

    virtual void OnRCFEncoderFileUpdate
    (
        bool dataChangeOnly,
        void* pUserData
    );

protected:
    //
    // Create or shut down the encoder
    //
    void CreateEncoder( void );

    //
    // Create or load the cement library
    //
    void CreateCementLibrary( void );
    void LoadCementLibrary( void );

    //
    // Generate activities
    //
    virtual void GenerateActivities( void );

    //
    // Resolve the file list with the original
    //
    virtual void ResolveFileList( void );

    //
    // Map out the cement library
    //
    virtual void MapCementLibrary( void );
private:

    //
    // Initialized flag
    //
    bool                            m_Initialized;
    bool                            m_BasicStructuresInitialized;

    //
    // The cement file info
    //
    HANDLE                          m_hFile;
    bool                            m_OwnsHFILE;
    char                            m_LibraryName[ radFileFilenameMax ];
    bool                            m_IsWriteable;
    radRCFEndian                    m_Endian;
    unsigned int                    m_PadNetSize;
    unsigned int                    m_Alignment; 

    //
    // Store the cement library information
    //
    radRCFFileInfoWrap*             m_pFileInfo;
    radRCFHeaderWrap*               m_pHeader;
    radRCFDetailedFileInfoWrap*     m_pDetailedFileInfo;

    //
    // Store the modified cement library information
    //
    radRCFFileInfoWrap*             m_pModifiedFileInfo;
    radRCFHeaderWrap*               m_pModifiedHeader;
    radRCFDetailedFileInfoWrap*     m_pModifiedDetailedFileInfo;

    //
    // Remember the file update callbacks
    //
    ref< IRadObjectList >           m_xIRadObjectList_FileUpdateCallbacks;

    //
    // Do current activities require write?
    //
    bool                            m_DoActivitiesRequireWrite;

    //
    // This structure is used to help map out the cement library
    //
    MapOutCementLibrary*            m_pMapOutCementLibrary;
};

#endif //ENCODER_HPP
