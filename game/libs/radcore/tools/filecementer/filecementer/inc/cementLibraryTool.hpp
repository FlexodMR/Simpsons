//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        cementLibraryTool.hpp
//
// Subsystem:   Radical Cement File Tool - Manipulate a cement library
//
// Description: This file contains prototypes and structures for creating and
//              modifying cement files.
//
// Revisions:   V1.00   May 29, 2001        Creation
//
//=============================================================================

#ifndef  CEMENTLIBRARYTOOL_HPP
#define  CEMENTLIBRARYTOOL_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <vector>
#include <list>
#include <radObjectList.hpp>


//=============================================================================
// Class Protypes
//=============================================================================

class CRcfLibrary;
class CRcfFile;


//=============================================================================
// Class declarations
//=============================================================================

//
// This is the absract class for a "SolidifyCementLibraryActivity".
// The activities represent certain step that take place in resolving a cement
// library.  The steps are properly placed in order and then executed
// when the library is solidified.
//
class CSolidifyCementLibraryActivity : public IRefCount
{
public:

    //
    // Constructor
    //
    CSolidifyCementLibraryActivity( );

    //
    // Do the activity
    //
    virtual void DoActivity( CRcfLibrary* pLibrary ) = 0;

    //
    // Reference counting
    //
    virtual void AddRef( );
    virtual void Release( );
    
protected:
    //
    // Destructor
    //
    virtual ~CSolidifyCementLibraryActivity( );

private:
    //
    // Reference counting
    //
    unsigned int m_RefCount;
};

//
// This is an activity that creates a temporary file out of a cement file
//
class ActivityMoveLibraryFileToTempFile : public CSolidifyCementLibraryActivity
{
public:
    ActivityMoveLibraryFileToTempFile( CRcfFile* pFile );
    virtual void DoActivity( CRcfLibrary* pLibrary );

protected:
    virtual ~ActivityMoveLibraryFileToTempFile( );

private:
    //
    // The file we are copying
    //
    CRcfFile* m_pFile;
};

//
// This is an activity that exports a file
//
class ActivityExportFile : public CSolidifyCementLibraryActivity
{
public:
    ActivityExportFile( CRcfFile* pFile, const char* fileName );
    virtual void DoActivity( CRcfLibrary* pLibrary );
    
protected:
    //
    // Destructor
    //
    virtual ~ActivityExportFile( );

private:
    //
    // The file we are exporting
    //
    CRcfFile* m_pFile;

    //
    // The destination file
    //
    char m_DestinationFileName[ MaxFilePathLength ];
};

//
// This is an activity that removes a temporary file
//
class ActivityRemoveTemporaryFile : public CSolidifyCementLibraryActivity
{
public:
    ActivityRemoveTemporaryFile( const char* fileName );
    virtual void DoActivity( CRcfLibrary* pLibrary );
    
protected:
    //
    // Destructor
    //
    virtual ~ActivityRemoveTemporaryFile( );

private:
    //
    // The file we are removing
    //
    char m_FileName[ MaxFilePathLength ];
};

//
// This is an activity that writes a file to a cement library
//
class ActivityWriteToLibrary : public CSolidifyCementLibraryActivity
{
public:
    ActivityWriteToLibrary( CRcfFile* pFile, unsigned int offset );
    virtual void DoActivity( CRcfLibrary* pLibrary );
    
protected:
    //
    // Destructor
    //
    virtual ~ActivityWriteToLibrary( );

private:
    //
    // The file we are writting
    //
    CRcfFile* m_pFile;

    //
    // The offset of where the file is to be written
    //
    unsigned int m_Offset;
};

//
// This is an activity that sets the total file size
//
class ActivitySetFileSize : public CSolidifyCementLibraryActivity
{
public:
    ActivitySetFileSize( unsigned int fileSize );
    virtual void DoActivity( CRcfLibrary* pLibrary );
    
protected:
    //
    // Destructor
    //
    virtual ~ActivitySetFileSize( );

private:
    //
    // The file size
    //
    unsigned int m_NetFileSize;
};


//
// This is an activity that writes the file info, header, and detailed file info to disk
//
class ActivityWriteFileinfoHeaderDetailedinfo : public CSolidifyCementLibraryActivity
{
public:
    ActivityWriteFileinfoHeaderDetailedinfo      
    (
        radCFFileInfo* pFileInfo,
        radCFHeader* pHeader,
        radCFDetailedFileInformation* pDetailedFileInformation
    );
    virtual void DoActivity( CRcfLibrary* pLibrary );
    
protected:
    //
    // Destructor
    //
    virtual ~ActivityWriteFileinfoHeaderDetailedinfo( );

private:
    //
    // The file info, header, and detailed file information
    //
    radCFFileInfo* m_pFileInfo;
    radCFHeader* m_pHeader;
    radCFDetailedFileInformation* m_pDetailedFileInformation;
};

//
// This stores all the required information about a library file,
// For the cement library tool, two of these structures are implemented...
// one for the original file and one for the modified one.
// By comparing the two structures, operations on the file are deduced.
//
class CRcfLibrary
{
public:
    CRcfLibrary( );
    virtual ~CRcfLibrary( );
    virtual CRcfLibrary& operator =( CRcfLibrary& other );

    // Initialization operations
    virtual void CreateLibrary( const char* libraryName, FILE* pFile );
    virtual void LoadCementLibrary( const char* libraryName, FILE* pFile );

    // General file info settings
    virtual void SetAlignment( unsigned int alignment );
    virtual void SetPadNetSize( unsigned int padnetsize );
    virtual void SetBigEndian( bool bigEndian );

    // General information
    virtual const char* GetLibraryName( ) const;
    virtual FILE* GetUnderlyingDataFile( ) const;
    virtual CRcfFile* FindFileByName( const char* filename );

    // File Update
    virtual unsigned int EncorporateFilesOnDrive
    (
        const char* baseDirectory,
        const char* directory,
        const char *wildCard,
        const bool addonly = true
    );
    virtual unsigned int RemoveFilesInLibrary( const char *wildcard );

    // The library solidification process
    virtual bool OrganizeFileOperations
    (
        const char* baseDirectory,
        IRadObjectList *pAddList,
        IRadObjectList *pUpdateList,
        IRadObjectList *pRemoveList
    );
    virtual void Solidify
    (
        bool alteringLibrary,
        IRadObjectList *pExportList,
        IRadObjectList *pMultiExportList
    );
    virtual void DisplayInfo( );
    virtual void ListLibraryFiles( const char* searchSpec );

    virtual void RegisterActivity
    (
        CSolidifyCementLibraryActivity* pActivity,
        bool front = false
    );

    //
    // Type for storing a list of activities
    //
    typedef std::vector< CRcfFile* > VectorFileList;

    //
    // Type for storing a list of files
    //
    typedef std::list< CSolidifyCementLibraryActivity* > QueueActivities;

    //
    // Get the cement file list
    //
    virtual void GetFileList( VectorFileList** ppvFileList );

protected:
    virtual unsigned int CalculateMinimumNetSize( );

    // These updates MUST be done in this order!
    virtual void UpdateFileInfo( );
    virtual void UpdateDetailedFileInformation( );
    virtual void UpdateHeader( );
    virtual void UpdateStartPositionsForPadding( );
    virtual void SortHashedFileEntries( );

    virtual void PrepareToExportFiles
    (
        IRadObjectList *pExportList,
        IRadObjectList* pMultiExportList
    );
    virtual unsigned int MapCementLibraryToFile( );
    virtual void ThinkOfHowWeShouldWriteTheFile( unsigned int fileNetSize );
    virtual void ExecuteActivityList( );
    virtual void ValidateLibrary( );

private:

    //
    // Is this class initialized yet?
    // If not, do not try and deallocate anything!
    //
    bool m_Initialized;

    //
    // Hold a pointer to the cement file (always open)
    //
    FILE* m_pDataFile;

    //
    // The file name for this library
    //
    char m_FileName[ MaxFilePathLength ];


    ////////////////////////
    // File data
    ////////////////////////

    //
    // File info
    //
    radCFFileInfo m_FileInfo;
    
    //
    // Header
    //
    radCFHeader m_Header;
    
    //
    // Detailed file information
    //
    radCFDetailedFileInformation m_DetailedFileInformation;

    //
    // File list of CRcfFile* structures for all files in the library
    //
    VectorFileList m_vFileList;

    //
    // Activity list of all activities to perform
    //
    QueueActivities m_qActivityQueue;
};

//
// This stores a way to find each individual file.  When we add, remove and update,
// we need to know where to get the actual file information from.
//
class CRcfFile : public IRefCount
{
public:
    CRcfFile
    (
        const char* filePath,
        FILE* pDataFile,
        unsigned int offset,
        unsigned int size,
        const FileTime& fileModificationTime
    );
    CRcfFile
    (
        const char* filePath,
        const char* fullFilePath,
        unsigned int fileSize,
        const FileTime& fileModificationTime
    );
    CRcfFile( const CRcfFile& other );
    virtual ~CRcfFile( );

    //
    // Reference counting
    //
    virtual void AddRef( );
    virtual void Release( );

    //
    // Set where the file is mirrored on drive (or where the new path is stored)
    //
    virtual void MirrorFileOnDrive
    (
        const char* fullFilePath,
        unsigned int fileSize,
        const FileTime& fileModificationTime
    );

    //
    // Get the file name
    //
    virtual inline const char* GetFileName( ) const;
    
    //
    // Get the file size
    //
    virtual inline unsigned int GetFileSize( );

    //
    // Get the file offset
    //
    virtual unsigned int GetFileOffset( );

    //
    // Get the file modification time
    //
    virtual inline FileTime GetFileModificationTime( );

    //
    // Get where the data is
    //
    virtual inline int GetWhereIsData( ) const;

    //
    // Get and set information about where in the data file this file resides
    //
    virtual void SetFutureOffset( unsigned int offset );
    virtual void GetOffsetInfo( unsigned int* pOrigOffset, unsigned int* pModifiedOffset );

    //
    // Load file data
    //
    virtual void LoadFileData( void* pData, unsigned int startOffset, unsigned int size );

protected:
    //
    // Set the "in library" information
    //
    virtual void SetInLibraryInfo
    (
        const char* filePath,
        FILE* pDataFile,
        unsigned int offset,
        unsigned int size,
        const FileTime& fileModificationTime
    );

private:
    //
    // Reference counting
    //
    unsigned int m_RefCount;

    //
    // File info
    //
    char m_FileName[ MaxFilePathLength ];
    char m_FullFileName[ MaxFilePathLength ];
    unsigned int m_DriveFileSize;
    FileTime m_FileModificationTime;

    //
    // File info specific to "in library" files
    //
    FILE* m_pDataFile;
    unsigned int m_Offset;
    unsigned int m_LibraryFileSize;

    //
    // This will be the offset of the file when it is re-written to the library
    //
    unsigned int m_FutureOffset;

    //
    // Where is the data for this file located?
    //
    int m_WhereIsData;
};

#endif //CEMENTLIBRARYTOOL_HPP

