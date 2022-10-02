//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        commands.hpp
//
// Subsystem:	ATG Maya Remote
//
// Description:	This file contains all definitions and classes relevant to
//              the commands provided by this plug-in.
//
// Revisions:	Sept 23, 2002
//
// Notes:       
//
//=============================================================================

#ifndef	COMMANDS_HPP
#define COMMANDS_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <maya/MPxCommand.h>

//=============================================================================
// Forward Class Declarations
//=============================================================================

class MArgList;
class AtgMayaRemoteClient;

//=============================================================================
// Class Declarations
//=============================================================================

//
// This class defines the connect command. When invoked, establishes connection
// with the remote target.
//
class AtgMayaRemoteConnect : public MPxCommand
{
    public:

    //
    // Constructor/Destructor
    //	    
    AtgMayaRemoteConnect( AtgMayaRemoteClient* pClient );
	virtual		~AtgMayaRemoteConnect( void );
    
    //
    // Invoked to carry out the command.
    //
	MStatus		doIt( const MArgList& );
    
    //
    // Factory for creating instances of this object.
    //
	static		void* creator( void );

    private:

    //
    // Maintains a reference to the remote client object used for communication,
    //
    AtgMayaRemoteClient*    m_pClient;

};

//
// This class defines the disconnect command. When invoked, establishes disconnects
// the remote target.
//
class AtgMayaRemoteDisconnect : public MPxCommand
{
    public:

    //
    // Constructor/Destructor
    //	    
    AtgMayaRemoteDisconnect( AtgMayaRemoteClient* pClient );
	virtual		~AtgMayaRemoteDisconnect( void );
    
    //
    // Invoked to carry out the command.
    //
	MStatus		doIt( const MArgList& );
    
    //
    // Factory for creating instances of this object.
    //
	static		void* creator( void );

    private:

    //
    // Maintains a reference to the remote client object used for communication,
    //
    AtgMayaRemoteClient*    m_pClient;


};

//
// This class defines the remote command. When invoked, it issues a remote function.
//
class AtgMayaRemoteCommand : public MPxCommand
{
    public:

    //
    // Constructor/Destructor
    //	    
    AtgMayaRemoteCommand( AtgMayaRemoteClient* pClient );
	virtual		~AtgMayaRemoteCommand( void );
    
    //
    // Invoked to carry out the command.
    //
	MStatus		doIt( const MArgList& );
    
    //
    // Factory for creating instances of this object.
    //
	static		void* creator( void );

    private:

    //
    // Maintains a reference to the remote client object used for communication,
    //
    AtgMayaRemoteClient*    m_pClient;

};

#endif