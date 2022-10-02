//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        project.hpp
//
// Subsystem:	Radical Content Manager - project
//
// Description:	This file contains all definitions and classes relevant to
//              the radical content manager - project module. The project
//              module is responsible for management of an instance of a project
//
// Revisions:	October 9, 2002 - creation
//
// Notes:       This code is only available for the Win32 platform.
//
//=============================================================================

#ifndef	RADCMPROJECT_HPP
#define RADCMPROJECT_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <windows.h>
#include <radcontentmanager.hpp>

//=============================================================================
// Forward Class Declarations
//=============================================================================

class radCMPerforceManager;
class radCMAssetManager;

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================

//
// This class is represents the parent project. It is responsible for initializatiom
// and serving up other project interfaces and objects.
//
class radCMProject : public IRadCMProject, 
                     public IRadCMProjectSettings
{
    public:

    //
    // Constructor/destructor. 
    //
    radCMProject( void );
    ~radCMProject( void );

    //
    // Static factory for creating projects
    // 
    static void Create( radCMProject** ppProject );

    //
    // Members for initializing the project from stratch or from persistent storage.
    //
    bool Initialize( const char* fileSpec, const char* directoryPath,
                     const char* fileName, bool create, radCMPerforceManager* pPerforceManager );

    //
    // Static member for destroying the entire project. Use with
    // care.
    //
    static bool Destroy( const char* fileSpec, const char* directoryPath,
                           const char* fileName, radCMPerforceManager* pPerforceManager );
    
    //
    // Member functions defined in IRadCMProject
    //
    virtual IRadCMProjectSettings* GetProjectSettings( void );
    virtual IRadCMAssetManager* GetAssetManager( void );
    
    //
    // Member functions defined in IRadCMProjectSettings
    //
    virtual bool AddSharedDrive( const char* pDrive );
    virtual bool RemoveSharedDrive( const char* pDrive );
    virtual bool IsSharedDrive( const char* pDrive );
        
    //
    // Member functions defined in IRefCount
    //
    virtual void AddRef( void );
    virtual void Release( void );

    private:

    //
    // Helper function used to kill all subdirectories and
    // files in the subdirectory.
    //
    static bool DestroyDirectoryRecursive( const char* directoryPath, const char* fileName );

    //
    // Maintains the reference count for instances of this object.
    //
    unsigned int m_RefCount;

    //
    // Maintains the root path of the project, the fully qualified filename
    // of the main project file, and the file part of the project.
    //
    char m_RootPath[ _MAX_PATH ];
    char m_FileSpec[ _MAX_PATH ];
    char m_FileName[ _MAX_PATH ];
    
    //
    // Maintains the perforce manager for this project. This object is responsible
    // for deleting it.
    //
    radCMPerforceManager*   m_pPerforceManager;

    //
    // Maintains pointer to asset manager.
    //
    radCMAssetManager*      m_pAssetManager;

    //
    // Mutex used to serialize access to project file.
    //
    HANDLE  m_MutexHandle;
};

#endif


