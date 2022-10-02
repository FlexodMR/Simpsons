//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        cementlibrarywrap.hpp
//
// Subsystem:   Radical Cement File Encoder
//
// Description:	This file contains the definitions of the cement
//              library wrap class
//
// Author:		Brad Reimer
//
// Revisions:	V1.00	Sept 27, 2001    Creation
//
//=============================================================================

#ifndef	CEMENTLIBRARYWRAP_HPP
#define CEMENTLIBRARYWRAP_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radobject.hpp>
#include <cementLibrary.hpp>
#include <rcfEncoder.hpp>


//=============================================================================
// Class name:  radRCFFileInfoWrap
//=============================================================================
// Description: Cement file info
//
//-----------------------------------------------------------------------------

class radRCFFileInfoWrap : public radRefCount
{
public:
    IMPLEMENT_REFCOUNTED( "radRCFFileInfoWrap" )

    radRCFFileInfoWrap( );
    ~radRCFFileInfoWrap( );

    void Initialize( void );
    void Initialize( HANDLE hFile );
    void Save( HANDLE hFile );

    //Version info
    const char* GetIdentification( void ) const;
    void GetVersion( unsigned char* major, unsigned char* minor ) const;

    // Validity
    bool IsValid( void ) const;
    void SetValidity( bool valid );

    // General info data
    unsigned int GetHeaderStartPos( void ) const;
    void SetHeaderStartPos( unsigned int pos );

    radRCFEndian GetEndian( void ) const;
    void SetEndian( radRCFEndian endian );

    unsigned int GetAlignment( void ) const;
    void SetAlignment( unsigned int alignment );

    unsigned int GetPadNetSize( void ) const;
    void SetPadNetSize( unsigned int padnetsize );

    // Calculate the size of this structure
    unsigned int CalculateSize( void );

    //
    // Comparisons and assignments
    //
    bool Equals( radRCFFileInfoWrap* pOther );
    void Copy( radRCFFileInfoWrap* pOther );
    void Clean( void );

protected:

    static void rMaybeFlipFileInfo
    (
        radCFFileInfo* pFileInfo, radRCFEndian endian
    );

private:

    //
    // Store the actual file info
    //
    radCFFileInfo                   m_FileInfo;
};

//=============================================================================
// Class name:  radRCFHeaderWrap
//=============================================================================
// Description: Cement file header
//
//-----------------------------------------------------------------------------

class radRCFHeaderWrap : public radRefCount
{
public:
    IMPLEMENT_REFCOUNTED( "radRCFHeaderWrap" )

    radRCFHeaderWrap( );
    ~radRCFHeaderWrap( );

    void Initialize
    (
        radRCFFileInfoWrap* pFileInfo
    );
    void Initialize
    (
        HANDLE hFile,
        radRCFFileInfoWrap* pFileInfo
    );
    void Save
    (
        HANDLE hFile,
        radRCFFileInfoWrap* pFileInfo
    );

    // Get the detailed file info start position
    void SetDetailedInfoStartPos( unsigned int pos );
    unsigned int GetDetailedInfoStartPos( void ) const;

    // Verify that a hashed entry exists.  Notice that this
    // may not be completely valid as the hashed entry table
    // is not always full.
    bool HashEntryExists
    (
        const char* fileName,
        unsigned int* pOffset,
        unsigned int* pSize
    ) const;

    // Regenerate the hash file entries
    void RegenerateHashEntries
    (
        IRadObjectList* pFileList
    );

    // Calculate the size of this structure
    unsigned int CalculateSize( void );

    //
    // Comparisons and assignments
    //
    bool Equals( radRCFHeaderWrap* pOther );
    void Copy( radRCFHeaderWrap* pOther );
    void Clean( void );

protected:
    static bool HashEntryLess
    (
        const radCFHeader::HFE& first,
        const radCFHeader::HFE& second
    );
    static unsigned int FindDetailedFileInformationPosition
    (
        unsigned int headerStartPos,
        unsigned int numFiles
    );
    static unsigned int FindFirstFilePosition
    (
        unsigned int detailedFileInfoStartPos,
        unsigned int alignment,
        radCFDetailedFileInformation* pDetailedFileInformation
    );
    static void rMaybeFlipHeader
    (
        radCFHeader* pHeader,
        unsigned int numFiles,
        radRCFEndian endian
    );

private:

    //
    // Store the actual header
    //
    radCFHeader                     m_Header;
};

//=============================================================================
// Class name:  radRCFDetailedFileInfoWrap
//=============================================================================
// Description: Cement file header
//
//-----------------------------------------------------------------------------

class radRCFDetailedFileInfoWrap : public radRefCount
{
public:
    IMPLEMENT_REFCOUNTED( "radRCFDetailedFileInfoWrap" )

    radRCFDetailedFileInfoWrap( );
    ~radRCFDetailedFileInfoWrap( );

    void Initialize( void );
    void Initialize
    (
        HANDLE hFile,
        radRCFFileInfoWrap* pFileInfo,
        radRCFHeaderWrap* pHeader
    );
    void Save
    (
        HANDLE hFile,
        radRCFFileInfoWrap* pFileInfo,
        radRCFHeaderWrap* pHeader
    );

    // Get the files
    IRadObjectList* GetFiles( void );

    // Calculate the size of this structure
    unsigned int CalculateSize( void );

    //
    // Comparisons and assignments
    //
    bool Equals( radRCFDetailedFileInfoWrap* pOther );
    void Copy( radRCFDetailedFileInfoWrap* pOther );
    void Clean( void );

protected:

private:

    //
    // Store the actual header
    //
    radCFDetailedFileInformation    m_DetailedFileInfo;

    //
    // Store the list of files
    //
    ref< IRadObjectList >           m_xIRadObjectList_Files;
};


//=============================================================================
// Class name:  radRCFFileWrap
//=============================================================================
// Description: This class wraps files for the cement libraries
//
//-----------------------------------------------------------------------------


class radRCFFileWrap : public IRadRCFFile,
                       public radRefCount
{
public:
    IMPLEMENT_REFCOUNTED( "radRCFFileWrap" )

    radRCFFileWrap( );
    virtual ~radRCFFileWrap( );


    //=============================================================================
    // IRadRCFFile functions
    //=============================================================================
    
    virtual void Initialize
    (
        const char* srcFileName,
        const char* destinationFileName
    );
    virtual void Initialize
    (
        HANDLE hFile,
        radRCFHeaderWrap* pHeader
    );
    void Save
    (
        HANDLE hFile
    );

    //
    // Get file information
    //
    virtual radKey32 GetHashName( void );
    virtual const char* GetFileName( void );
    virtual unsigned int GetOffset( void );
    virtual unsigned int GetSize( void );
    virtual FileTime GetFileModificationTime( void );
    virtual IRadRCFFile::WhereIsFile GetWhereIsFile( void );

    unsigned int CalculateSize( void );

    void Copy( radRCFFileWrap* pOther );
    void Clean( void );

    //
    // Export information
    //
    virtual void ExportFile
    (
        IRadRCFEncoder* pEncoder,
        const char* destFileName
    );

    //
    // Import information
    //
    virtual void ImportFile
    (
        IRadRCFEncoder* pEncoder,
        unsigned int offset
    );

    //
    // Does this range interfere with this file?
    //
    bool Interferes
    (
        unsigned int start,
        unsigned int end
    );

    //
    // Indicate that there is a shadowed version of this
    // file on disk.
    //
    virtual bool IsShadowed( void ) const;
    virtual const char* GetShadowFile( void );
    virtual void SetShadowFile( radRCFFileWrap* pShadowFile );
    virtual void SetShadowFile( const char* shadowFile );

protected:
    //
    // Do a chunky transfer
    //
    void DoChunkyTransfer
    (
        IRadRCFEncoder* pEncoder,
        void* pTransferBuffer,
        HANDLE hSrcFile,
        unsigned int srcOffset,
        HANDLE hDestFile,
        unsigned int destOffset,
        unsigned int size,
        unsigned int chunkSize,
        bool backward
    );

private:

    //
    // The full source file pathname
    //
    char                                m_SourceFileName[ radFileFilenameMax ];
    char                                m_DestinationFileName[ radFileFilenameMax ];

    //
    // Where is the file
    IRadRCFFile::WhereIsFile            m_WhereIsFile;
    
    //
    // File info
    //
    //radCFDetailedFileInformation::DFIR  m_FileRecord;
    unsigned int                        m_Offset;
    unsigned int                        m_Size;
    FileTime                            m_ModificationTime;

    //
    // Shadowed files
    //
    bool                                m_IsShadowed;
    char                                m_ShadowFile[ radFileFilenameMax ];
};


//=============================================================================
// Factory Functions
//=============================================================================

void radRCFFileInfoWrapCreate
(
    radRCFFileInfoWrap** ppRadRCFFileInfoWrap,
    radMemoryAllocator allocator
);
void radRCFHeaderWrapCreate
(
    radRCFHeaderWrap** ppRadRCFHeaderWrap,
    radMemoryAllocator allocator
);
void radRCFDetailedFileInfoWrapCreate
(
    radRCFDetailedFileInfoWrap** ppradRCFDetailedFileInfoWrap,
    radMemoryAllocator allocator
);
void radRCFFileWrapCreate
(
    radRCFFileWrap** ppFile,
    radMemoryAllocator allocator
);

#endif //CEMENTLIBRARYWRAP_HPP
