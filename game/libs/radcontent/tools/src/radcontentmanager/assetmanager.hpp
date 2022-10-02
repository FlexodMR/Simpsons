//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        assetmanager.hpp
//
// Subsystem:	Radical Conent Manager - asset manager
//
// Description:	This file contains all definitions and classes relevant to
//              the radical content manager  - asset manager module. This system
//              is responsible for managing the addition, removal, enumeration, 
//              and notification of asset file change.
//
// Revisions:	October 10, 2002 - creation
//
// Notes:       This object is not reference counted. This object has a one
//              to one with the project and hence its lifetime is governed
//              by the lifetime of the project. References to this object
//              are directed to the parent project.
//
//=============================================================================

#ifndef	RADCMASSETMANAGER_HPP
#define RADCMASSETMANAGER_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <windows.h>
#include <radcontentmanager.hpp>
#include <stdlib.h>

//=============================================================================
// Forward Class Declarations
//=============================================================================

class radCMProject;
class radCMPerforceManager;

//=============================================================================
// Defintions
//=============================================================================

//
// This constant governs the maximum number of assets that can be installed.
//
#define     MAX_ASSETS        (32 * 1024)

//=============================================================================
// Class Declarations
//=============================================================================

//
// This class is repsents the object used for maintaining the installed set
// of asset viewers and serving this data up. 
//
class radCMAssetManager : public IRadCMAssetManager
{
    public:

    //
    // Constructor/Desctructor. Nothing interesting.
    //
    radCMAssetManager( void );
    ~radCMAssetManager( void );
    
    //
    // Initalize receives the filename containing the installed assets, parent project,
    // perforce manager, and the project root directory.
    //
    bool    Initialize( radCMProject* pParentProject, const char* pFileName, const char* pRootPath,
                        radCMPerforceManager* pPerforceManager ); 

    //
    // Members found in IRadCMAssetManager
    //
    //
    virtual bool AddAsset( const char* pAssetFileSpec );
    virtual bool RemoveAsset( const char* pAssetFileSpec );
    virtual bool EditAsset( const char* pAssetFileSpec ); 
    virtual IRadCMAssetEnumerator* CreateAssetEnumerator( const char* searchSpec );

    //
    // Members found in IRefCount
    //
    virtual void AddRef( void );
    virtual void Release( void );

    private:

    //
    // Let enurator access private data
    //
    friend class radCMAssetEnumerator;

    //
    // Helper to convert file to a relative path.
    //
    bool ConvertToRelativePath( const char* pFileSpec, char* pRelativeFileSpec, bool* pAddToPerforce );

    //
    // Helper to convert to absolute path.
    //
    void ConvertToAbsolutePath( const char* fileSpec, char* FullFileSpec );        

    //
    // Helper functions to load and store assets to disk.
    //
    bool Load( void );
    bool Store( void );

    //
    // Helper to read a line of text from a file.
    //
    bool GetLine( HANDLE fileHandle, unsigned int* filePosition, char* lineBuffer, unsigned int lineBufferSize );

    //
    // Helper point to the first non-white space character in a string.
    //
    const char* SkipWhiteSpace( const char* pBuffer );

    //
    // Parent project
    //
    radCMProject*     m_pParentProject;
    
    //
    // Perforce manager for project.
    //
    radCMPerforceManager* m_pPerforceManager; 

    //
    // Filename used to hold asset file names.
    //
    char        m_FileName[ _MAX_PATH + 1 ];

    //
    // Contains the root from which asset files are based.
    //
    char        m_RootPath[ _MAX_PATH + 1 ];

    //
    // This structure is used to maintain information about an instance of an 
    // installed asset. Each asset is defined by file specification. 
    // 
    struct AssetRecord
    {
        bool            m_InUse;                                // Indicates record in use.
        char            m_FileSpec[ _MAX_PATH + 1 ];            // Relative Specification
    };

    //
    // These maintain members used to access the shared memory.
    //
    AssetRecord*        m_pAssetRecords;
    HANDLE              m_MutexHandle;
    HANDLE              m_MemoryFileHandle;

    //
    // Maintains a boolean to indicate we have already openned the asset file for 
    // editing. Prevents redunant interaction with perforce.
    //
    bool                m_OpennedForEdit;

};

//
// This class implements the enumeration interface for determining the names of installed
// assets. This object is not thread safe as this would be over kill.
//
class radCMAssetEnumerator : public IRadCMAssetEnumerator
{
    public:

    //
    // Constructor receivers the parent asset viewers object. 
    //
    radCMAssetEnumerator( radCMAssetManager* pAssetManager, const char* pSearchSpec );
    ~radCMAssetEnumerator( void );

    //
    // Members found in IRadCMAssetEnumerator;
    //
    virtual unsigned int GetNumberOfItems( void );
    virtual bool GetAssetAtIndex( unsigned int index, char* pFileSpec );

    //
    // Members found in IRefCount
    //
    virtual void AddRef( void );
    virtual void Release( void );

    private:

    //
    // Maintains reference count of object.
    //
    unsigned int m_RefCount;

    //
    // Parent asset manager.
    //
    radCMAssetManager* m_pParentAssetManager;
    
    //
    // Since we have gobs of memory under Win32, just pre-alloc buffer large enough for 
    // the maximum number of asset viewer names.
    //
    char        m_AssetNames[ MAX_ASSETS ][ _MAX_PATH + 1 ];

    //
    // This maintains the count of asset viewers present when enumerator created.
    //
    unsigned int    m_AssetCount;

};

#endif


