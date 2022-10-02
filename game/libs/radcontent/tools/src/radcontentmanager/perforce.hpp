//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        peforce.hpp
//
// Subsystem:	Radical Content Manager - Perforce Module
//
// Description:	This file contains all definitions and classes relevant to
//              the radical content manager - perforce module. The system
//              module is responsible for interaction with perforce.
//
// Revisions:	Oct 8, 2002 - creation
//
// Notes:       This code is only available for the Win32 platform.
//
//=============================================================================

#ifndef	RADCMPERFORCE_HPP
#define RADCMPERFORCE_HPP

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
// This class is wraps the functionality of perforce. 
//
class radCMPerforceManager
{
    public:

    //
    // Constructor/destructor. Simply does some initailization.
    //
    radCMPerforceManager( void );
    ~radCMPerforceManager( void );

    //
    // Initialize. Fails in perforce info is invalid.
    //
    bool Initialize( radCMPerforceInfo* pPerforceInfo );
    
    //
    // Members to add file, edit file, and delete file.
    //
    bool AddFile( const char* pFileName );
    bool EditFile( const char* pFileName );
    bool DeleteFile( const char* pFileName );
    bool RevertFile( const char* pFileName );

    private:

    //
    // Members used to get and set the current client, user, and port info.
    //
    bool SetPerforceInfo( radCMPerforceInfo* pPerforceInfo );
    bool GetPerforceInfo( radCMPerforceInfo* pPerforceInfo );


    //
    // Mutex to serialize access to perforce operations.
    //
    HANDLE  m_MutexHandle;

    //
    // This member maintains the perforce info for this project.
    //
    radCMPerforceInfo   m_PerforceInfo;

};

#endif


