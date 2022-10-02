//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        system.hpp
//
// Subsystem:	Radical Content Manager - System
//
// Description:	This file contains all definitions and classes relevant to
//              the radical content manager - system module. The system
//              module is responsible for management of content as a whole.
//
// Revisions:	Oct 8, 2002 - creation
//
// Notes:       This code is only available for the Win32 platform.
//
//=============================================================================

#ifndef	RADCMSYSTEM_HPP
#define RADCMSYSTEM_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <windows.h>
#include <radcontentmanager.hpp>

//=============================================================================
// Forward Class Declarations
//=============================================================================

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================

//
// This class is main system object in the radical content manager. This class
// acts as the factory for other components as well as managing construction of projects
//
class radCMSystem
{
    public:

    //
    // Constructor/destructor. Simply does some initailization.
    //
    radCMSystem( void );
    ~radCMSystem( void );

    //
    // Static to obtain the singleton object.
    // 
    static radCMSystem* Get( void );

    //
    // Members used to creation and destruction of projects
    //
    bool CreateProject( const char* pProjectName, radCMPerforceInfo* pPerforceInfo  );
    bool DestroyProject( const char* pProjectName, radCMPerforceInfo* pPerforceInfo );

    //
    // This member is used to open a project
    //
    bool OpenProject( IRadCMProject** pProject, const char* pProjectName, radCMPerforceInfo* pPerforceInfo );

    //
    // These members are used to get and set the last error. 
    //
    void GetLastError( radCMErrorCode* pErrorCode, char* pErrorString );
    void SetLastError( radCMErrorCode ErrorCode, const char* pErrorString = NULL, const char* pFormatString = NULL );

    //
    // Members to lock and unlock the exclusion object.
    //
    void Lock( void );
    void Unlock( void );

    //
    // Members invoked whenever new thread attaches or detaches.
    //
    void ThreadAttach( void );
    void ThreadDetach( void );

    //
    // Helper to build a unique name for creating OS objects.
    //
    void BuildResourceName( char* resouceName, const char* nameSpace, const char* fileSpec );

    //
    // Helper function to see if the file exists. Returns true if so.
    //
    bool FileSpecExists( const char* pFileSpec );

    private:

    //
    // Helper to recursively create a directory.
    //
    bool CreateDirectoryRecursive( const char* path );

    //
    // This is the handle of the mutex used ot serialize access to critical
    // data structures in the project.
    //
    HANDLE              m_MutexHandle;

   //
    // Maintains the last error that occurred and the assciated string. It is done using
    // thread local storage so the system works accross threads.
    //
    DWORD   m_ErrorCodeThreadLocalStorage;

    struct ErrorData
    {
        radCMErrorCode      m_LastErrorCode;
        char                m_LastErrorString[ 1024 ];
    };

};

#endif


