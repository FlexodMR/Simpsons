//=============================================================================
//
// File:        MainFrm.h
//
// Subsystem:   Radical Foundation Technologies Watcher Server
//
// Description:	This file contains class definitions for the watcher server
//				main frame. It manages windows and is responsible for performing 
//				communication with the target.
//
// Revisions:	Jan 11, 2000
//
// Usage:       
//
//=============================================================================

#ifndef MAINFRM_H
#define MAINFRM_H

//=============================================================================
// Include Files
//=============================================================================

#include <raddebugcommunication.hpp>
#include "toolbarex.h"
#include "../../src/radprotocols/debugWatchProtocol.hpp"

class CWatchView;
class CEditBar;
class CDbgComTargetListComboBox;
//=============================================================================
// Class Declarations
//=============================================================================

//
// This is the definition of the frame. It orchustrates contruction of the various
// status and control bars and we as the main view. It also manages communication.
//
class CMainFrame : public CFrameWnd,
    	           public IRadDbgComChannelStatusCallback,
                   public IRadDbgComChannelSendCallback,
                   public IRadDbgComChannelReceiveCallback 
				 
{
	public:
		CMainFrame( IRadDbgComChannel* pChannel);
		virtual ~CMainFrame();

	protected: 
		DECLARE_DYNAMIC(CMainFrame)

	public:
		void SetAttachStatus( bool IsAttached );

        //
        // Members associated with communication interface.
        //
        void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState,  const char* Message );
        void OnSendComplete( bool Successful );
        void OnReceiveComplete( bool Successful, unsigned int bytesReceived );

        //
        // Ref count is defeated. Will not present problem.
        //
        void AddRef( void) { };
        void Release( void ) { };


	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMainFrame)
	public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual BOOL OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo);
	protected:
	virtual BOOL OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult);
	//}}AFX_VIRTUAL
    
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif
public:
  	CStatusBar      m_wndStatusBar;
protected:
	CToolBarEx      m_wndToolBar;
	CWatchView*     m_wndView;
public:  
	CEditBar*       m_EditBar;
    CDbgComTargetListComboBox   * m_pTargetList;

    //  
    // This flag presents recusive updates from occurring.
    //
    bool    m_DisablePresetUpdate;

// Generated message map functions
protected:
	//{{AFX_MSG(CMainFrame)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnSetFocus(CWnd *pOldWnd);
	afx_msg void OnViewEditbar();
	afx_msg void OnUpdateViewEditbar(CCmdUI* pCmdUI);
    afx_msg void OnTargetConnect();
    afx_msg void OnUpdateTargetConnect(CCmdUI* pCmdUI);
	afx_msg void OnSave();
	afx_msg void OnUpdateSave(CCmdUI* pCmdUI);
	afx_msg void OnUpdate();
	afx_msg void OnUpdateBoolean(CCmdUI* pCmdUI);
	afx_msg void OnBoolean();
	afx_msg void OnFunction();
	afx_msg void OnPresetUpdate();
	afx_msg void OnUpdateUpdate(CCmdUI* pCmdUI);
	afx_msg void OnTimer(UINT nIDEvent);
    afx_msg void OnEnumChange( void );
	afx_msg void OnUpdatePeriod();
	afx_msg void OnSaveall();
	afx_msg void OnUpdateSaveall(CCmdUI* pCmdUI);
	afx_msg void OnDestroy();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

public:
    void* GetTxBuffer( unsigned int size );
    void InitiateTransmission( );
private:
	bool m_SaveAllEnabled;
	bool IsCompletePacket( unsigned int bytesRemaining, unsigned char* pRxBuffer );
	bool ParseCommandLine( char* cmd );
	IRadDbgComChannel*	m_pChannel;
    
    //
    // This member is used to indicate that we issued the detach and
    // the the callback was not an error indication..
    //
    bool            m_SelfDetach;

    //
    // This is our receive buffer. 
    //
    unsigned char m_RxBuffer[ 10 * 1024 ];

    //
    // Buffer used for transmitting data. Double buffered so we can
    // queue information to send.
    //
    unsigned char m_TxBuffer1[ WP_MAX_PACKET ];
    unsigned char m_TxBuffer2[ WP_MAX_PACKET ];

    //
    // Used to control transmit state machine.    
    //
    bool            m_TxOutstanding;
    unsigned int    m_TxBytesQueued;
    unsigned char*  m_CurrentTxAddress;
    bool            m_Buffer1Active;
    bool            m_WaitingForTxAcknowledge;

     
    //
    // Nonzero if timer is running.
    //
    unsigned int m_TimerId;

    //
    // This boolean helps control the request of data. We don't resend 
    // a request for values unless we have got the previous values.
    //
    unsigned int  m_OutstandingValueCount;



};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif 
