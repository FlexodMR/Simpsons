//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        rcfEncoder.hpp
//
// Subsystem:	Foundation Technologies - Cement file encoder SDK
//
// Description:	This file contains all definitions and interfaces required to
//              interact encode and interact with a cement library.
//
// Revisions:  	September 25, 2001      Creation        BJR
//
//=============================================================================

#ifndef	RCFENCODER_HPP
#define RCFENCODER_HPP

//=============================================================================
// Included Files
//=============================================================================

#include <windows.h>
#include <radobject.hpp>
#include <radobjectlist.hpp>
#include <radfile.hpp>
#include <radkey.hpp>

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

struct IRadRCFEncoder;
struct IRadRCFEncoderFileUpdateCallback;
struct IRadRCFErrorCallback;
struct IRadRCFFile;
struct IRadRCFActivity;
struct IRadRCFActivityProcessingCallback;

//=============================================================================
// Enumerations and typedefs
//=============================================================================

//
// Endianness
//
typedef enum {
    LittleEndian,
    BigEndian
} radRCFEndian;

//
// The verbose level indications
//
typedef enum
{
    VerboseQuiet,
    VerboseError,
    VerboseWarning,
    VerboseNormal    
} VerboseLevel;

//
// Error codes
//
typedef enum
{
    RCF_OK              =  0,
    RCF_WARNING         = -1,
    RCF_ERROR           = -2,
    RCF_INTERNALERROR   = -3,
    RCF_INVALIDLIBRARY  = -4,
    RCF_BADARGS         = -5,
    RCF_FILEERROR       = -6,
    RCF_SOLIDIFYERROR   = -7
} RCFErrorCode;

//
// The file time structure (must match cementlibrary.hpp)
//
typedef long FileTime;


#define MaxFileTransferSize  ( 8 * 1024 * 1024 )

//=============================================================================
// Version Info
//=============================================================================

//
// Get the version number of this encoder
//
void GetRcfEncoderVersion( int* major = NULL, int* minor = NULL );
unsigned int DoAlign( unsigned int origPosition, unsigned int alignValue );
bool radRCFCreateDirectory( char* pDesiredFile );
unsigned long __fastcall rFlip32( unsigned int a );
void rMaybeFlip32( unsigned int *x, bool bigEndian );


//=============================================================================
// Public Functions
//=============================================================================

void RegisterCallback
(
    IRadObjectList* pCallbackList,
    radMemoryAllocator allocator,
    void* pCallback,
    void* pUserData
);
void UnregisterCallback
(
    IRadObjectList* pCallbackList,
    void* pCallback,
    void* pUserData
);

//=============================================================================
// Singleton Classes
//=============================================================================

//
// Generic info class
//
struct IRadRCFInfo
{
    //
    // Define the verbose level
    //
    virtual void SetVerboseLevel
    (
        VerboseLevel level
    ) = 0;
    virtual VerboseLevel GetVerboseLevel( void ) = 0;


    //
    // Error handlers
    //
    virtual void RegisterErrorCallback
    (
        IRadRCFErrorCallback* pCallback,
        void* pUserData
    ) = 0;
    virtual void UnregisterErrorCallback
    (
        IRadRCFErrorCallback* pCallback,
        void* pUserData
    ) = 0;
    virtual void InvokeMessage
    (
        RCFErrorCode err,
        const char* message,
        ...
    ) = 0;


    //
    // Activity processing callback
    //
    virtual void RegisterActivityProcessingCallback
    (
        IRadRCFActivityProcessingCallback* pCallback,
        void* pUserData
    ) = 0;

    virtual void UnregisterActivityProcessingCallback
    (
        IRadRCFActivityProcessingCallback* pCallback,
        void* pUserData
    ) = 0;

    virtual void AppendActivity
    (
        IRadRCFActivity* pActivity,
        bool front
    ) = 0;
    virtual void LaunchActivities
    (
        IRadRCFEncoder* pEncoder
    ) = 0;
    virtual unsigned int GetNumActivities( void ) = 0;
};


//=============================================================================
// Interface Definitions
//=============================================================================

//
// This interface is used to directly manipulate a cement library.
//
struct IRadRCFEncoder : public IRefCount
{
    //
    // Initialize with a cement library file.
    //
    virtual void Initialize
    (
        const char* fileName,
        bool readonly = false
    ) = 0;
    virtual void Initialize
    (
        const char* fileName,
        HANDLE hFile,
        bool readonly = false
    ) = 0;
    virtual void ShutDownEncoder( void ) = 0;
    virtual bool IsInitialized( void ) = 0;
    virtual void Save( void ) = 0;
    virtual bool IsWriteable( void ) = 0;

    //
    // Libray information
    //
    virtual const char* GetLibraryName( void ) = 0;
    virtual void GetInfoText( char* pText, unsigned int maxSize ) = 0;

    //
    // Get the underlying data file
    //
    virtual HANDLE GetFileHandle( void ) = 0;

    //
    // Get cement files
    //
    virtual IRadRCFFile* FindFile( const char* fileName ) = 0;
    virtual bool MergeIntoLibrary
    (
        const char* srcName,
        const char* destinationName,
        unsigned int size,
        FileTime modificationTime,
        bool addonly
    ) = 0;
    virtual IRadObjectList* GetFiles( void ) = 0;
    virtual void RegisterUpdateFilesCallback
    (
        IRadRCFEncoderFileUpdateCallback* pUpdateFilesCallback,
        void* pUserData
    ) = 0;
    virtual void UnregisterUpdateFilesCallback
    (
        IRadRCFEncoderFileUpdateCallback* pUpdateFilesCallback,
        void* pUserData
    ) = 0;
    virtual void UpdateFileList
    (
        IRadRCFEncoderFileUpdateCallback* pCaller
    ) = 0;
    virtual void UpdateFileData
    (
        IRadRCFEncoderFileUpdateCallback* pCaller
    ) = 0;

    //
    // Manipulate Padding
    //
    virtual unsigned int GetPadNetSize( void ) = 0;
    virtual void SetPadNetSize( unsigned int padnetsize ) = 0;

    //
    // Manipulate Alignment
    //
    virtual unsigned int GetAlignment( void ) = 0;
    virtual void SetAlignment( unsigned int alignment ) = 0;

    //
    // Manipulate the endianness
    //
    virtual radRCFEndian GetEndian( void ) = 0;
    virtual void SetEndian( radRCFEndian endian ) = 0;

    //
    // Generate activities
    //
    virtual void GenerateActivities( void ) = 0;

    //
    // Get the status of the current change
    //
    virtual bool DoActivitiesRequireWrite( void ) = 0;

    //
    // Fix the file (if corrupt or wrong version)
    //
    virtual void Fix( void ) = 0;
};

//
// An error callback function
//
struct IRadRCFErrorCallback : public IRefCount
{
    //
    // Function called when an error occurs
    //
    virtual void OnRCFEncoderError
    (
        void* pUserData,
        RCFErrorCode code,
        const char* message
    ) = 0;
};

//
// A file update callback function
//
struct IRadRCFEncoderFileUpdateCallback : public IRefCount
{
    //
    // Function called when file list updated
    //
    virtual void OnRCFEncoderFileUpdate
    (
        bool dataChangeOnly,
        void* pUserData
    ) = 0;
};


//
// An activity interface
//
struct IRadRCFActivity : public IRefCount
{
    //
    // Get an activity description
    //
    virtual const char* GetDescription( void ) = 0;

    //
    // Do the activity
    //
    virtual void DoActivity( IRadRCFEncoder* pEncoder ) = 0;
};

struct IRadRCFActivityProcessingCallback : public IRefCount
{
    //
    // This is called when an activity is processed
    //
    virtual void OnActivityProcess
    (
        IRadRCFActivity* pActivity,
        void* pUserData
    ) = 0;
};

struct IRadRCFFile : public IRefCount
{
    virtual void Initialize
    (
        const char* srcFileName,
        const char* destinationFileName
    ) = 0;

    //
    // Get file information
    //
    virtual radKey32 GetHashName( void ) = 0;
    virtual const char* GetFileName( void ) = 0;
    virtual unsigned int GetOffset( void ) = 0;
    virtual unsigned int GetSize( void ) = 0;
    virtual FileTime GetFileModificationTime( void ) = 0;

    //
    // Export information
    //
    virtual void ExportFile
    (
        IRadRCFEncoder* pEncoder,
        const char* destFileName
    ) = 0;

    //
    // Where is the file
    //
    enum WhereIsFile {
        Unknown,
        InCementLibrary,
        OnDisk
    };
    virtual WhereIsFile GetWhereIsFile( void ) = 0;

    //
    // Indicate that there is a shadowed version of this
    // file on disk.
    //
    virtual bool IsShadowed( void ) const = 0;
    virtual const char* GetShadowFile( void ) = 0;
    virtual void SetShadowFile( const char* shadowFile ) = 0;
};

//=============================================================================
// Factory Functions
//=============================================================================

//
// Initialize and terminate the encoder (info.cpp)
//
void radRCFEncoderInitialize
(
    radMemoryAllocator allocator
);
void radRCFEncoderTerminate( void );

//
// Get the info class
//
IRadRCFInfo* radRCFInfoGet( void );

//
// Create an RCF encoder
//
void radRCFEncoderCreate
(
    IRadRCFEncoder** ppRadRCFEncoder,
    radMemoryAllocator allocator
);


#endif //RCFENCODER_HPP

