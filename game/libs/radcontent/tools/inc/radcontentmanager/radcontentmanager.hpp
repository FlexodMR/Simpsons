//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        radcontentmanager.hpp
//
// Subsystem:	Advanced Technologies Group - Content Manager
//
// Description:	This file contains all definitions and interfaces required to
//              interact with the ATG content management system. This
//              system is provides a mechanism for the design time management of 
//              game content and objects.
//
// Revisions:   Oct 4, 2002    - Creation
//
//=============================================================================

#ifndef	RADCONTENTMANAGER_HPP
#define RADCONTENTMANAGER_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radobject.hpp>

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

struct IRadCMProject;
struct IRadCMProjectSettings;
struct IRadCMAssetManager;
struct IRadCMAssetEnumerator;

//=============================================================================
// Definitions
//=============================================================================

//
// These are defintion of the error codes that can be returned from the
// content manager
//
enum radCMErrorCode
{
    radCMErrorCodeSuccess,                  // Last operation successful.
    radCMErrorCodePerforceFailure,          // Failed interaction with perforce
    radCMErrorCodeInvalidProjectName,       // Invalid project name
    radCMErrorCodeAlreadyExists,            // Already exists
    radCMErrorCodeAccessRights,             // Cannot access, invalid access rights,
    radCMErrorCodeInvalidDrive,             // Invalid drive specification
    radCMErrorCodeProjectNotFound,          // Failed to find project
    radCMErrorCodeInvalidAssetFile,         // Invalid asset file name
    radCMErrorCodeTooManyAssets,            // Too many assets added 
    radCMErrorCodeMissingFile,              // Required file is missing
    radCMErrorCodeAssetFileNotFound,        // Asset file not found
    radCMErrorCodeInvalidEnumerationIndex,  // Enumeration index invalid,
    radCMErrorCodeNotSupported              // Function not supported
};

//
// Constance governing the maximum length of name maintained by the content manager
// Does not include null termination.
//
#define RADCM_MAX_NAME_LENGTH 255

//
// The following structure is used to define the environment that should be used 
// for perforce. 
//
struct radCMPerforceInfo
{
    char    m_Port[ 256 ];              // Perforce port
    char    m_Client[ 256 ];            // Perforce client
    char    m_User[ 256 ];              // Perforce user
};

//=============================================================================
// Functions
//=============================================================================

//
// These are the external functions exported by the DLL. Use C linkage.
//
extern "C"
{

//
// The first two functions are used to create and destroy a project.
// Project names are specified using directory and filename. Caller can
// provide perforce information, if project should use perforce.
//
bool radContentManagerCreateProject( const char* pProjectName, radCMPerforceInfo* pPerforceInfo = NULL );
bool radContentManagerDestroyProject( const char* pProjectName, radCMPerforceInfo* pPerforceInfo = NULL );

//
// Use this member to open a project. Name specified using file path and filename.
// Caller specifies if source control should be used.
//
bool radContentManagerOpenProject( IRadCMProject** pProject, const char* pProjectName, radCMPerforceInfo* pPerforceInfo = NULL);

//
// Use this member to obtain details about any failed operation.
//
void radContentManagerGetLastError( radCMErrorCode* errorCode, char* pErrorString );

};

//=============================================================================
// Interfaces
//=============================================================================

//
// This is the main interface for interacting with the project. It 
// provides functionality to obtain interfaces to the various functional 
// groupings.
//
struct IRadCMProject : public IRefCount
{
    //
    // Use this interface to access project settings.
    //
    virtual IRadCMProjectSettings* GetProjectSettings( void ) = 0;
 
    //
    // Use this interface to get an interface to the asset mamanger. The asset
    // manager is used for adding and removing assets from project.
    //
    virtual IRadCMAssetManager* GetAssetManager( void ) = 0;

};

//
// This interface is used to set and get project attributes assocaited with a project
//
struct IRadCMProjectSettings : public IRefCount
{
    //
    // Use these to add, remove and list the shared drives. Asset files not found
    // relative to the root project directory are checked against these drives.
    // Drives must be specified using the from "T:".
    //
    virtual bool AddSharedDrive( const char* pDrive ) = 0;
    
    //
    // Drives cannot be removed if assets are added on the drive.
    //    
    virtual bool RemoveSharedDrive( const char* pDrive ) = 0;
    
    //
    // Check if drive is a shared drive.
    //
    virtual bool IsSharedDrive( const char* pDrive ) = 0;
};

//
// This interface is used for asset management. Client can use this interface to add and remove
// assets to the project. Assets are simply files.
//
struct IRadCMAssetManager : public IRefCount
{
    //
    // Use this member to add an asset file to the project. Assets are based
    // relative to the project. If the file can be found relative to the root project
    // directory it is stored in a relative manner and will be added to perforce.
    // If it cannot be found relative to the project root directory, then it will
    // checked to see if it is a on one of the shared drives. If so, it will be added,
    // but not added to perforce.
    //
    virtual bool AddAsset( const char* pAssetFileSpec ) = 0;

    //
    // This is used to remove an asset file from the project
    //
    virtual bool RemoveAsset( const char* pAssetFileSpec ) = 0;

    //
    // This member is a helper function to check out a file from 
    // perforce if the project has been openned using source safe management.
    //
    virtual bool EditAsset( const char* pAssetFileSpec ) = 0;
    
    //
    // Use this member to obtain an interface to enumerate the assets that have
    // been added to the project.
    //
    virtual IRadCMAssetEnumerator* CreateAssetEnumerator( const char* searchSpec ) = 0;
};

//
// This interface is used for enumerating assets. 
//
struct IRadCMAssetEnumerator : public IRefCount
{
    //
    // Member used to get number items in the enumeration.
    //
    virtual unsigned int GetNumberOfItems( void ) = 0;
    
    //
    // Use this member to obtain the name at a given index. Indices
    // range from 0 to NumberOfItems - 1. Returns false if no entry exists
    // for the specified index. 
    //
    virtual bool GetAssetAtIndex( unsigned int index, char* pAssetFileSpec ) = 0;
};

#endif

