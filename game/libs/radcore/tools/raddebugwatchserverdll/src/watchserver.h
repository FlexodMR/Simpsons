//=============================================================================
//
// File:        WatchServer.h
//
// Subsystem:   Foundation Technologies - WatchServerDll
//
// Description: This file contains all definitions and classes required to
//              implement the the Watch Server.
//
// Revisions:   April 18, 2002 Creation
//
//=============================================================================

#ifndef WATCHSERVER_HPP
#define WATCHSERVER_HPP

#include <raddebugcommunication.hpp>
#include "..\..\..\src\radprotocols\debugWatchProtocol.hpp"

#include "radwatchserver.h"
#include "WatchNode.h"
#include "WatchPoint.h"

//============================================================================
// watch server class
//============================================================================
class CWatchServer :
    public IRadDbgComChannelStatusCallback,
    public IRadDbgComChannelSendCallback,
    public IRadDbgComChannelReceiveCallback 
{
public:

    CWatchServer( );

    virtual ~CWatchServer( );

public:

    enum LastError
    {
        ErrorUnknown,
        ErrorAlreadyInitialized,
        ErrorOutofMemory,
        ErrorDefaultTargetNotFound,
        ErrorTargetSelectedCannotBeAttached,
    };

    bool Initialize
            (
                const char * pTargetName,
                unsigned int updateTimeInMilliSec,
                radWatchServerConnectionStatusCallBack * pStatusCallBack,
                radWatchServerOnWPChangeCallBack * pWPChangeCallBack,
                radWatchServerOnRecieveWPValueCallBack * pWPValueCallBack,
                void * pUserData
            );

    void Terminate( );

    void Service( );

    void SetLastErrorCode( CWatchServer::LastError error );

    const char * GetLastErrorMessage( ) const;

    const char * GetClientTargetName( ) const;

    IRadDbgComChannel::ConnectionState GetClientConnectionStatus( ) const;

    void SetUpdateTimeInterval( const unsigned int updateTime );

    unsigned int GetUpdateTimeInterval( ) const;

    void EnumerateWatchPoints( radWatchServerEnumerateWatchPointsCallBack * pWatchPointCallBack, void * pUserData ) const;

    bool SelectWPAttribute( const char * pWPName, radWatchServerWPAttribute * pWPAttributes );

    bool SelectWPValue( const char * pWPName, radWatchServerWPValue * pWPValue );

    bool UpdateWPValue( const char * pWPName, const radWatchServerWPValue * pWPValue );

    //
    // Ref count is defeated. singleton object
    //
    void AddRef( void) { };
    void Release( void ) { };

    void SendValueRequest( const WCRequestValue & RequestValue );

    static bool ConstructWatchPointFullName( const CWatchPoint * pWatchPoint, string & strFullName );

protected:

    static const char ms_ErrorMessage[ ][ 256 ];

    //
    // Members associated with communication interface.
    //
    void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState,  const char* Message );
    void OnSendComplete( bool Successful );
    void OnReceiveComplete( bool Successful, unsigned int bytesReceived );

    void SetAttachStatus( bool bAttached );

    void InitiateTransmission( void );

    bool IsCompletePacket( unsigned int bytesRemaining, unsigned char *pRxBuffer );

    //
    // dispatch of callbacks
    //
    void DispatchValueOnChange( );

    void DispatchValueRequest( );
    void DispatchValueRequest( const CWatchNode * pNode );    // help function for recrusive call.

    void DispatchWPOnChange( );

    void* GetTxBuffer( unsigned int uBufferSize );

private:

    bool InsertWatchPoint( const char * pFullNameSpace, const char * pWatchPointName, const radWatchServerWPAttribute & WPAttribute );

    bool RemoveWatchPoint( const char * pFullNameSpace, const char * pWatchPointName );

    bool RecieveWatchPointValue( const char * pFullNameSpace, const char * pWatchPointName, radWatchServerWPValue );

    bool TransmitWatchPointValue( const char * pFullNameSpace, const char * pWatchPointName, radWatchServerWPValue );

    //
    // heiachy tree for namespace.
    //
    CWatchNodePtr                   m_pRootNode;

    //
    // Current namespace.
    //
    char                            m_szCurrentNameSpace[ WP_MAX_NAMESPACELENGTH ];

    //
    // List of entry has value just changed, and callback
    // should be notified.
    //
    typedef list< string >          ValueOnChangeList;

    //
    // list of watch point created, and callback
    // should be notified.
    // string - the full name of the watch point.
    // bool - if true create, false delete
    //
    typedef list< pair< string, bool > > WatchPointCreateList;

    WatchPointCreateList            m_aryWPCreate;

    ValueOnChangeList               m_aryValueOnChange;

    LastError                       m_LastError;

    unsigned int                    m_uUpdateIntervalInMilliSec;

    //========================================================================
    // Callback functions.
    //========================================================================
    radWatchServerConnectionStatusCallBack *    m_pStatusCallBack;
    radWatchServerOnWPChangeCallBack *          m_pWPChangeCallBack;
    radWatchServerOnRecieveWPValueCallBack *    m_pWPValueCallBack;
    void *                                      m_pUserData;

    //========================================================================
    // Member data related to debug communication channel.
    //========================================================================

    IRadDbgComTargetTable*          m_pHost;

    IRadDbgComChannel*              m_pChannel;

    char                            m_szTargetName[ 256 ];

    //
    // This member is used to indicate that we issued the detach and
    // the the callback was not an error indication.
    //
    bool                            m_SelfDetach;

    //
    // This is our receive buffer. 
    //
    unsigned char                   m_RxBuffer[ 100 * 1024 ];

    //
    // Buffer used for transmitting data. Double buffered so we can
    // queue information to send.
    //
    unsigned char                   m_TxBuffer1[ WP_MAX_PACKET ];
    unsigned char                   m_TxBuffer2[ WP_MAX_PACKET ];

    //
    // Used to control transmit state machine.    
    //
    bool                            m_TxOutstanding;
    unsigned int                    m_TxBytesQueued;
    unsigned int                    m_TxBytesLeftOver;
    unsigned char*                  m_CurrentTxAddress;
    bool                            m_Buffer1Active;
    bool                            m_WaitingForTxAcknowledge;

    unsigned int                    m_uLastUpdateTime;

    bool                            m_bInService;

    bool                            m_bConnected;
};

//
// singleton watcher server.
//
extern CWatchServer * s_theWatchServer;

#endif // WATCHSERVER_HPP
