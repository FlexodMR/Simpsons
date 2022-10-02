//=============================================================================
//
// File:        MemMonitorHost.h
//
// Subsystem:	Foundation Technologies - Memory monitor host
//
// Description:	This file contains class declaration of MemMonitorHost
//
// Date:    	Nov 30, 2001
//
// Created By : JT
//
//=============================================================================
#if !defined(AFX_MEMMONITORHOST_H__B08CB9C3_D16D_4CD9_B911_1FFD8BEE1136__INCLUDED_)
#define AFX_MEMMONITORHOST_H__B08CB9C3_D16D_4CD9_B911_1FFD8BEE1136__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

//=============================================================================
// Include Files
//=============================================================================

//=============================================================================
// Forward Class Declarations
//=============================================================================
class CMemMonitorHost;
typedef TRef< CMemMonitorHost > CMemMonitorHostPtr;

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================
//
// CMemMonitorHost - communciation class for both Rx and Tx.
// Must call SetActiveOutputRawDataQueue( )  to set output data queue,
// else recieved data will lost
//
class CMemMonitorHost :
    public CWinThread,                          // host is just another thread
    public IRadDbgComChannelStatusCallback,
    public IRadDbgComChannelSendCallback,
    public IRadDbgComChannelReceiveCallback,
	public CSubject,
    public CMFCRefCount
{
	DECLARE_DYNCREATE(CMemMonitorHost)

protected:

    CMemMonitorHost( );           // protected constructor used by dynamic creation

    virtual ~CMemMonitorHost( );

public:

    //
    // clear all data before initialize or before restart
    //
    void ClearAllData( );

    //
    // initialize thread
    //
    virtual BOOL InitInstance( );

    //
    // must call StartCommunication() before memory monitor can recieve anything from client
    //
    void StartCommunication( );

    //
    // must call StopCommunication() before destory the memory monitor host object
    //
    void StopCommunication( );

    //
    // Is communication channel already started
    //
    bool IsCommStarted( );

    //
    // find out if client is connected
    //
    bool IsConnected( );

    //
    // find out connection status
    //
    void GetConnectionStatus( IRadDbgComChannel::ConnectionState & eStatus, CString & strStatus );

    //
    // Is client suspended from operation
    //
    bool IsClientSuspended( );

    //
    // Get the target name currently trying to connect to
    //
    CString GetCurrentTarget( ) const;

    //
    // set the target we should try to connnect to
    //
    void SetCurrentTarget( const CString & strTarget );

	CString GetDefaultTarget( ) const;

    //
    // get list of target name and ip address
    //
    void GetTargetList( vector< CString > & aryName ) const;

    //
    // Command to the client
    //
    void RequestClientSuspend( );

    void RequestClientResume( );

    void RequestMemContentData( const MM_ClientMemorySpace eMemorySpaceType, const unsigned int uAddress, const unsigned int uSize );

    void RequestStackUsage( MM_ClientMemorySpace memorySpace, unsigned int uStackStartAddress );

    void RequestRefCount( MM_ClientMemorySpace memorySpace, const unsigned int uObjectPtr, const unsigned int uRefCountPtr );

    //
    // IRefCount, must be thread safe
    //
    virtual void AddRef( void );

    virtual void Release( void );

    IRadDbgComTargetTable * GetTargetTablePtr( );

    unsigned int GetAllocationCount( ) const;

    unsigned int GetDeallocationCount( ) const;

protected:

    //
    // MFC message mapping
    //
    DECLARE_MESSAGE_MAP()

    //
    // target list callback
    //
    static void OnEnumerateTarget( void* context, const radDbgComTargetName pName, const radDbgComIPAddress pIpAddress, unsigned short port, bool InUse );

protected:

    //
    // IRadDbgComChannelStatusCallback Override
    //
    virtual void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState,
                                  const char* Message );

    //
    // IRadDbgComChannelSendCallback Override
    //
    virtual void OnSendComplete( bool Successful );

    //
    // IRadDbgComChannelReceiveCallback Override
    //
    virtual void OnReceiveComplete( bool Successful, unsigned int bytesReceived );

    enum _ThreadMsg
    {
        TM_MM_START_COMMUNICATION = WM_USER + 1,            // wParam - None
        TM_MM_STOP_COMMUNICATION,                           // wParam - None
        TM_MM_GET_CONNECTION_STATUS,                        // wParam - IRadDbgComChannel::ConnectionState * pState
        TM_MM_DO_CLIENT_SUSPEND,                            // wParam - None
        TM_MM_DO_CLIENT_RESUME,                             // wParam - None
        TM_MM_DO_MEMCONTENT,                                // wParam - None
        TM_MM_DO_STACK_USAGE,                               // wParam - MM_ClientMemorySpace, lParam - unsigned int uStackStartAddress
        TM_MM_SET_CURRENT_TARGET_NAME,                      // wParam - char[ 256 ] pTargetName
        TM_MM_GET_TARGET_LIST,                              // wParam - vector< CString > * pAryName
        TM_MM_END_TREAD,                                    // wParam - None
    };
    
    //
    // Thread message handler
    //
    void OnStartCommunication( WPARAM wParam, LPARAM lParam );

    void OnStopCommunication( WPARAM wParam, LPARAM lParam );

    void OnGetConnectionStatus( WPARAM wParam, LPARAM lParam );

    void OnDoClientSuspend( WPARAM wParam, LPARAM lParam );

    void OnDoClientResume( WPARAM wParam, LPARAM lParam );

    void OnDoMemContent( WPARAM wParam, LPARAM lParam );

    void OnDoStackUsage( WPARAM wParam, LPARAM lParam );

    void OnGetClientSuspend( WPARAM wParam, LPARAM lParam );

    void OnSetCurrentTargetName( WPARAM wParam, LPARAM lParam );

    void OnSetActiveOutputRawDataQueue( WPARAM wParam, LPARAM lParam );

    void OnGetActiveOutputRawDataQueue( WPARAM wParam, LPARAM lParam );

    void OnEndThread( WPARAM wParam, LPARAM lParam );
    //
    // other help function
    //
    void InitiateTransmission( );

    unsigned int GetPacketSize( const MM_DataPacketBlock & Data );

    void SetAttachedStatus( bool bAttached );

    bool GetAttachedStatus( ) const;

    void SendRequestStackUsage( MM_ClientMemorySpace memorySpace, unsigned int uStackStartAddress );

    void ProcessRxBuffer( );

    void SendAck( );

private:

    struct _TargetData
    {
        CString         strName;
        CString         strIPAddr;
        unsigned short  uPort;
        bool            bInUse;
    };

    struct _ContentRequest
    {
        MM_ClientMemorySpace    eMemorySpaceType;
        unsigned int            uAddress;
        unsigned int            uSize;
    };

    bool                            m_bSelfDetach;
    bool                            m_bAttached;
    bool                            m_bTxOutstanding;
    bool                            m_bWaitingForTxAcknowledge;

    bool                            m_bClientSuspended;

    bool                            m_bSendDataAcked;

    unsigned int                    m_uRxBytesQueued;   
    unsigned int                    m_uRxBytesProcessed;

    ref< IRadDbgComTargetTable >    m_pDbgComTargetTable;
	ref< IRadDbgComChannel >        m_pChannel;

    char                            m_szTargetName[ 128 ];

    unsigned char                   m_pRxBuffer[ 30 * 1024 ];

    unsigned char                   m_pTxBuffer[ 30 * 1024 ];

    queue< _ContentRequest >        m_aryContentRequestQueue;
    vector< _TargetData >           m_aryTargetList;

    queue< MM_DataPacketBlock >     m_aryTxQueue;

    unsigned int                    m_uAllocationCount;
    unsigned int                    m_uDeallocationCout;
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMMONITORHOST_H__B08CB9C3_D16D_4CD9_B911_1FFD8BEE1136__INCLUDED_)
