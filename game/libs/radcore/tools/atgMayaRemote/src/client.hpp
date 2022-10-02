//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        client.hpp
//
// Subsystem:	ATG Maya Remote
//
// Description:	This file contains all definitions and classes relevant to
//              the client object. This object is a singleton and is responsible
//				for performing communication with the target server.
//
// Revisions:	Sept 23, 2002
//
// Notes:       
//
//=============================================================================

#ifndef	CLIENT_HPP
#define CLEINT_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radobject.hpp>
#include <raddebugcommunication.hpp>

//=============================================================================
// Forward Class Declarations
//=============================================================================

struct IRadDbgComChannel;

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================

//
// This class is the client communication object. It is resposible for managing
// the communication with the target remote server.
//
class AtgMayaRemoteClient : public IRadDbgComChannelStatusCallback,
                            public IRadDbgComChannelSendCallback,
                            public IRadDbgComChannelReceiveCallback
{
    public:

    //
    // Constructor/Deconstructor
    //
    AtgMayaRemoteClient( void );
    ~AtgMayaRemoteClient( void );

    //
    // Static member responsible for construction of singleton object if not
    // already in existance. Just return object if it already exist.
    //
    static AtgMayaRemoteClient* Get( void );

    //
    // Members to connect and disconnect from the remote server.
    //
    bool Connect( const char* pTarget );
    bool Disconnect( void );

    //
    // Member used to issue remote commannds. 
    //
    bool IssueCommand( const char* functionName, unsigned int argCount, const char* argList );

    //
    // Member of IRadDbgComChannelStatusCallback. Informs us of changes
    // in connection status.
    // 
    void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState, const char* Message );
    
    //
    // Member of IRadDbgComChannelReceiveCallback
    //
    void OnReceiveComplete( bool Successful, unsigned int bytesReceived );

    //
    // Member of IRadDbgComChannelSendCallback
    //
    void OnSendComplete( bool Successful );

    //
    // IRefCount members.
    //
    void AddRef( void );
    void Release( void );

    private:

    //
    // Static used to manage single instance of this object.
    //
    static AtgMayaRemoteClient* s_theClient;

    //
    // Manages lifetime of this object.
    //
    unsigned int m_RefCount;

    //
    // Flag to indicate if we have received a user issues connect command.
    //
    bool    m_ConnectIssued;

    //
    // Flag indicating the true connection status.
    //
    bool    m_Connected;
    
    //
    // Contains name of target we are connected to.
    //
    radDbgComTargetName m_TargetName;

    //
    // This object is the debug communication channel used for interaction
    // with the target.
    //
    IRadDbgComChannel*   m_pComChannel;

    //
    // Members used to inidcate if we have outstanding transmits and receives.
    //
    bool    m_TxOutstanding;
    bool    m_RxOutstanding;

};

#endif