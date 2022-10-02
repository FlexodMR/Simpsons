//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        system.hpp
//
// Subsystem:	ATG Maya Remote
//
// Description:	This file contains all definitions and classes relevant to
//              the system object. This object is a singleton and is responsible
//				for perform initialization and termination of the plug-in.
//
// Revisions:	Sept 23, 2002
//
// Notes:       
//
//=============================================================================

#ifndef	SYSTEM_HPP
#define SYSTEM_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <maya/MStatus.h>
#include <maya/MObject.h>

//=============================================================================
// Forward Class Declarations
//=============================================================================

class AtgMayaRemoteSystem;
class AtgMayaRemoteClient;

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Public Data 
//=============================================================================

extern AtgMayaRemoteSystem theSystem;

//=============================================================================
// Class Declarations
//=============================================================================

//
// This is the main system object. Is a sigleton and is responsible for 
// initialization of the plug-in.
//
class AtgMayaRemoteSystem
{
    public:

    //
    // Constructor and destructor. 
    //
    AtgMayaRemoteSystem( void );
    ~AtgMayaRemoteSystem( void );

    //
    // These two members are responsible for carry out actual intialization and
    // terminatation.
    //
    MStatus Initialize( MObject obj );
    MStatus Terminate( MObject obj );

    private:

    //
    // Maintains a reference to the client object used for communication.
    // Ensures it stays alive for live of plug-in.
    //
    AtgMayaRemoteClient*    m_pClient;

};

#endif