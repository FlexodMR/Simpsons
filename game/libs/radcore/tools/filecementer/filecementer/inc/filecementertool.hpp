//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        filecementertool.hpp
//
// Subsystem:   Radical Cement File Tool - Contain classes for command line tools
//
// Description: This file contains the class definitions for command line options,
//              and prototypes for general functions used in the file cementer tool.
//
// Revisions:   V1.00   May 28, 2001        Creation
//
//=============================================================================

#ifndef  FILECEMENTERTOOL_HPP
#define  FILECEMENTERTOOL_HPP

//=============================================================================
// Include Files
//=============================================================================

// Disable trucation of debug names warning
#pragma warning( disable : 4786 )

#include <radObjectList.hpp>
#include <rcfEncoder.hpp>

//=============================================================================
// Class Protypes
//=============================================================================

class CRcfException;
class OperationOnFilesData;
class CRcfGeneralInfo;

//=============================================================================
// Public Functions definitions
//=============================================================================

void rcfErrorOutput( int errorcode, const char *msg, ... );
void rcfWarningOutput( const char *msg, ... );
void rcfOutput( const char *msg, ... );

void radRCFGeneralInfoInitialize( radMemoryAllocator allocator );
void radRCFGeneralInfoTerminate( void );
CRcfGeneralInfo* radRCFGetGeneralInfo( void );

// Helpful tools
char* ChopPath( const char* baseDirectory, char* path );

//=============================================================================
// Class declarations
//=============================================================================

//
// Use an exception class to store problems
//
class CRcfException : public radObject
{
public:
    IMPLEMENT_BASEOBJECT( "CRcfException" );

    CRcfException( const char* msg = "Unrecognized exception", int errorcode = RCF_ERROR );
    CRcfException( const CRcfException& other );
    
    const char* GetErrorMessage( void ) const;
    int GetErrorCode( void ) const;
    bool GetShowUsage( void ) const;

private:
    //
    // Store a message
    //
    char m_Msg[ 256 ];

    //
    // Store an error code
    //
    int m_Errorcode;

    //
    // Should we show usage info?
    //
    bool m_ShowUsage;
};

//
// This structure is used to help encorporate files into
// the library.
//
class OperationOnFilesData : public IRefCount
{
public:
    OperationOnFilesData( void );
    virtual ~OperationOnFilesData( void );

    virtual void SetSearchSpec( const char* searchSpec );
    virtual const char* GetSearchSpec( void );

    virtual void OperationPerformedSuccessfully( void );

    virtual void ShowSummary( void ) = 0;

protected:

    char m_lower_SearchSpec[ radFileFilenameMax ];
    unsigned int m_NumOpsPerformed;
};

//
// This structure is used to help encorporate files into
// the library.
//
class EncorporateFilesData : public OperationOnFilesData,
                             public radRefCount
{
public:
    IMPLEMENT_REFCOUNTED( "EncorporateFilesData" )
    EncorporateFilesData( bool addonly );
    void AttemptWith
    (
        const char* fullFilename,
        const char* filename,
        unsigned int size,
        FileTime modificationTime
    );
    void MergeIntoLibrary
    (
        IRadRCFEncoder* pEncoder
    );
    virtual bool IsAddOnly( void );
    virtual void ShowSummary( void );

private:
    class AttemptedFile : public IRefCount,
                          public radRefCount
    {
    public:
        IMPLEMENT_REFCOUNTED( "AttemptedFile" )

        AttemptedFile( );
        ~AttemptedFile( );

        char            m_FullFilename[ radFileFilenameMax ];
        char            m_Filename[ radFileFilenameMax ];
        unsigned int    m_Size;
        FileTime        m_ModificationTime;
    };
    ref< IRadObjectList >   m_xIOL_AttemptedFiles;
    bool m_AddOnly;
};

//
// This structure is used to help encorporate files into
// the library.
//
class RemoveFilesData : public OperationOnFilesData,
                        public radRefCount
{
public:
    IMPLEMENT_REFCOUNTED( "RemoveFilesData" )
    RemoveFilesData( void );
    virtual void ShowSummary( void );
};

//
// Store generic information about how we are modifying our cement library
// This is just an open structure and it's data is directly modified.
//
class CRcfGeneralInfo : public radRefCount,
                        public IRadRCFErrorCallback,
                        public IRadRCFActivityProcessingCallback
{
public:
    IMPLEMENT_REFCOUNTED( "CRcfGeneralInfo" )

    CRcfGeneralInfo( );
    ~CRcfGeneralInfo( );

    //
    // Error callback handler
    //
    virtual void OnRCFEncoderError
    (
        void* pUserData,
        RCFErrorCode code,
        const char* message
    );

    //
    // This is called when an activity is processed
    //
    virtual void OnActivityProcess
    (
        IRadRCFActivity* pActivity,
        void* pUserData
    );

    //
    // Process the stuff to do
    //
    void ProcessWriteable( IRadRCFEncoder* pEncoder );
    void ProcessReadOnly( IRadRCFEncoder* pEncoder );

    //
    // Encorporate files on the disk
    //
    void EncorporateFileOnDisk( IRadRCFEncoder* pEncoder );

    //
    // Remove files
    //
    void RemoveFiles( IRadRCFEncoder* pEncoder );

    //
    // List files from the encoder
    //
    void ListFiles( IRadRCFEncoder* pEncoder, const char* searchspec );

    //
    // Export files
    //
    void ExportFiles
    (
        IRadRCFEncoder* pEncoder,
        IRadObjectList* pExportList,
        IRadObjectList* pMultiExportList
    );

    //
    // Clean
    //
    void Clean( );

    //
    // Base directory
    //
    char m_BaseDirectory[ radFileFilenameMax ];


    //
    // Add file list (EncorporateFilesData* structures)
    //
    ref< IRadObjectList > m_xIOl_AddUpdateFileList;

    //
    // Remove file list (RemoveFilesData* structures)
    //
    ref< IRadObjectList > m_xIOl_RemoveFileList;

    //
    // Export file list (IRadString* structures)
    //
    ref< IRadObjectList > m_xIOl_ExportFileList;

    //
    // Multiple file export (IRadString* structures)
    //
    ref< IRadObjectList > m_xIOl_MultiExportFileList;

    //
    // Are we altering the library?
    //
    bool m_AlteringLibrary;

    //
    // File listing info
    //
    struct ListInfo
    {
        bool active;
        char searchspec[ radFileFilenameMax ];
    };
    ListInfo m_DoList;

    //
    // Info info  ;)
    //
    struct InfoInfo
    {
        bool active;
    };
    InfoInfo m_DoInfo;

protected:

    void EncorporateFileOnDiskHelper
    (
        IRadRCFEncoder* pEncoder,
        const char* fullBaseDir,
        const char* lower_LibraryPathName
    );

};


#endif //FILECEMENTERTOOL_HPP

