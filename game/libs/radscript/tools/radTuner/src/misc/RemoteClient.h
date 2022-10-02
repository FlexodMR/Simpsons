//=============================================================================
//
// File:        RemoteClient.Hpp
//
// Subsystem:    Radical Remote Command Console
//
// Description:    This file contains all definitions and classes relevant to
//              the Remote Command Console
//
// Revisions:    09-Feb-2001 Creation
//
// Notes:
//
//=============================================================================

#ifndef    REMOTECLIENT_HPP
#define REMOTECLIENT_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <raddebugcommunication.hpp>
#include <radtime.hpp>
#include <radobject.hpp>
#include "..\src\radprotocols\RemoteCommandProtocol.hpp"

//=============================================================================
    // Defintions
    //=============================================================================

    //
    // The tool will stop attempting to make a connection after this time
    //
#define RCS_CONNECTION_TIMEOUT 5000 // msec

    //
    // This type of function must be registered with the client upon requesting a
    // list or remotefunction command.
    //
    typedef void (*RemoteCallback)( HrcsResultCode result );

//=============================================================================
// Classes
//=============================================================================

class RemoteClient :  public IRadDbgComChannelStatusCallback,
    public IRadDbgComChannelReceiveCallback,
    public IRadDbgComChannelSendCallback,
    public IRadTimerCallback
{
    public:

    virtual void AddRef( void ) { };
    virtual void Release( void ) { };
    //
    // Constructor/Destructor. Nothing too interesting.
    //
    RemoteClient( void );
    ~RemoteClient( void );

    //
    // Public members for sending commands to the remote command server
    //
    bool ListFunctions( RemoteCallback pCallback, const radDbgComTargetName target = "" );
    bool CallFunction( char* funcName, char* argv, RemoteCallback pCallback, const radDbgComTargetName target = "");

    void Service( void );

    private:

    //
    // Private members that add the commands to the TxBuffer
    //
    void SendListCommand( void );
    void SendRemoteFunction( void );

    //
    // Establish communication with the remote command server
    //
    bool ConnectCommandServer( const radDbgComTargetName target );
    //
    // Termination
    //
    void Terminate( void );

    //
    // Status callback
    //
    virtual void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState, const char* Message );
    virtual void OnReceiveComplete( bool successful, unsigned int bytesReceived );
    virtual void OnSendComplete( bool successful );

    //
    // Timer Callback
    //
    virtual void OnTimerDone( unsigned int elapsedTime, void * pUserData );

    //
    // Channel used for communication.
    //
    ref< IRadDbgComChannel > m_Channel;

    //
    // Contains name of target connected to.
    //
    radDbgComTargetName m_Target;

    //
    // Function to call upon completion
    //
    RemoteCallback m_pCallbackFunction;

    //
    // Times out if no response is received from the server
    //
    ref< IRadTimer > m_pITimer;

    //
    // Contains of timer list used to drive the timer.
    //
    IRadTimerList* m_TimerList;

    //
    // Boolean to control termination,
    //
    bool    m_SelfDestruct;

    //
    // Buffer used to receive messages from the target.
    //
    unsigned char m_RxBuffer[ RCS_BUFFER_SIZE ];

    //
    // Buffer used for transmitting data. Double buffered so we can
    // queue information to send.
    //
    unsigned char m_TxBuffer1[ RCS_BUFFER_SIZE ];
    unsigned char m_TxBuffer2[ RCS_BUFFER_SIZE ];

    //
    // Used to control transmit state machine.
    bool            m_TxOutstanding;
    unsigned int    m_TxBytesQueued;
    unsigned char*  m_CurrentTxAddress;
    bool            m_Buffer1Active;
    bool            m_CommandNotSent;

    //
    // Boolean to help with timing out of initial connection
    //
    bool m_EnableTimeout;

    //
    // If a List command is called, this counter will
    // keep track of how many ListItems there are still left to receive
    //
    unsigned int    m_ListItemsPending;

    //
    // Things send to the remote command server
    //
    HrcsCommand m_Command;
    char m_FunctionName[40];
    int    m_argc;
    char m_argv[RCS_MAX_ARG_LENGTH];

    //
    // This will contain the result of the function, which will
    // be returned by the remote command server
    //
    HrcsResultCode m_HrcsResultCode;
};


#endif // REMOTECLIENT_HPP


