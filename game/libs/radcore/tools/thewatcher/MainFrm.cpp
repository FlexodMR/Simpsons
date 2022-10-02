//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        MainFrm.cpp
//
// Subsystem:   Radical Foundation Technologies Watch Server
//
// Description:	This file contains the implementation in the watch server 
//				mainframe.
//
// Revisions:	Jan 16, 2000
//
// Usage:       
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "stdafx.h"
#include "WatchServer.h"

#include "MainFrm.h"
#include "EditBar.h"
#include "WatchPoint.h"
#include "UpdatePeriodDlg.h"
#include "..\\..\\src\\radprotocols\\DebugWatchProtocol.hpp"

//=============================================================================
// Externals
//=============================================================================

extern CWatchServerApp theApp;

//=============================================================================
// Definitions
//=============================================================================

//
// This contains the id of the timer we use to drive the requests of data.
//
#define     TimerID     0x1234


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

IMPLEMENT_DYNAMIC(CMainFrame, CFrameWnd)

BEGIN_MESSAGE_MAP(CMainFrame, CFrameWnd)
	//{{AFX_MSG_MAP(CMainFrame)
	ON_WM_CREATE()
	ON_WM_SETFOCUS()
	ON_COMMAND(ID_VIEW_EDITBAR, OnViewEditbar)
	ON_UPDATE_COMMAND_UI(ID_VIEW_EDITBAR, OnUpdateViewEditbar)
	ON_COMMAND(IDC_SAVE, OnSave)
	ON_UPDATE_COMMAND_UI(IDC_SAVE, OnUpdateSave)
	ON_COMMAND(IDC_UPDATE, OnUpdate)
	ON_UPDATE_COMMAND_UI(IDC_BOOLEAN, OnUpdateBoolean)
	ON_COMMAND(IDC_BOOLEAN, OnBoolean)
	ON_COMMAND(IDC_FUNCTION, OnFunction)
    ON_EN_CHANGE( IDC_PRESET, OnPresetUpdate )
	ON_UPDATE_COMMAND_UI(IDC_UPDATE, OnUpdateUpdate)
	ON_WM_TIMER()
    ON_CBN_SELCHANGE( IDC_ENUM, OnEnumChange )
	ON_COMMAND(ID_UPDATE_PERIOD, OnUpdatePeriod)
	ON_COMMAND(ID_SAVEALL, OnSaveall)
	ON_UPDATE_COMMAND_UI(ID_SAVEALL, OnUpdateSaveall)
    ON_EN_CHANGE( IDC_PRESETX, OnPresetUpdate )
    ON_EN_CHANGE( IDC_PRESETY, OnPresetUpdate )
    ON_EN_CHANGE( IDC_PRESETZ, OnPresetUpdate )
	ON_WM_DESTROY()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

static UINT indicators[] =
{
	ID_SEPARATOR,           // status line indicator
	ID_INDICATOR_ATTACHED,
	ID_INDICATOR_CAPS,
	ID_INDICATOR_NUM,
	ID_INDICATOR_SCRL,
};

//=============================================================================
// Contructor
//=============================================================================

CMainFrame::CMainFrame( IRadDbgComChannel* pChannel )
{	
	pChannel->AddRef( );
	m_pChannel = pChannel;
    m_SelfDetach = false;    
    m_TimerId = 0;
    m_DisablePresetUpdate = false;
    m_SaveAllEnabled = false;
}

//=============================================================================
// Destructor
//=============================================================================

CMainFrame::~CMainFrame()
{
    //
    // Detach before releasing channel.
    //
    m_SelfDetach = true;    
    m_pChannel->Detach( );

	delete m_EditBar;
    delete m_wndView;
	m_pChannel->Release( );
}

//=============================================================================
// OnCreate
//=============================================================================

int CMainFrame::OnCreate( LPCREATESTRUCT lpCreateStruct )
{
    //
    // Invoke base class creation.
    //    
	if( CFrameWnd::OnCreate( lpCreateStruct ) == -1 )
    {
		return -1;
    }
    
    //
    // Create our tree view 
    //
    m_wndView = new CWatchView( this );

	if( !m_wndView->Create( AFX_WS_DEFAULT_VIEW | TVS_HASLINES | TVS_LINESATROOT | TVS_HASBUTTONS,
	    CRect(0, 0, 0, 0), this, AFX_IDW_PANE_FIRST ) )
	{
		TRACE0("Failed to create view window\n");
		return -1;
	}
	
    //
    // Create tool bar
    //
	if( !m_wndToolBar.CreateEx( this, TBSTYLE_FLAT, WS_CHILD | WS_VISIBLE | CBRS_TOP | CBRS_GRIPPER | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC) ||
		!m_wndToolBar.LoadToolBar(IDR_MAINFRAME))
	{
		TRACE0("Failed to create toolbar\n");
		return -1;      
	}

    //
    // Create status bar
    //
	if( !m_wndStatusBar.Create( this ) ||
		!m_wndStatusBar.SetIndicators( indicators, sizeof( indicators ) / sizeof(UINT) ) )
	{
		TRACE0("Failed to create status bar\n");
		return -1;      
	}

    //
    // Enable docking and dock tool bar
    //
	m_wndToolBar.EnableDocking(CBRS_ALIGN_ANY);

	EnableDocking(CBRS_ALIGN_ANY);

	DockControlBar(&m_wndToolBar);

	//
	// Contruct the editbar.
	//
	m_EditBar = new CEditBar( this );

    //
    // Initiate the attach process
    //
    m_pChannel->RegisterStatusCallback( this );

    m_pChannel->Attach( );


    //
    // read profile setting from registry
    //

    CRect rectMainFrame;
    GetWindowRect( & rectMainFrame );

    rectMainFrame.top = AfxGetApp( )->GetProfileInt( "Window Setting", "MainFrameRect Top" , rectMainFrame.top );
    rectMainFrame.bottom = AfxGetApp( )->GetProfileInt( "Window Setting", "MainFrameRect Bottom" , rectMainFrame.bottom );
    rectMainFrame.left = AfxGetApp( )->GetProfileInt( "Window Setting", "MainFrameRect Left" , rectMainFrame.left );
    rectMainFrame.right = AfxGetApp( )->GetProfileInt( "Window Setting", "MainFrameRect Right" , rectMainFrame.right );

    MoveWindow( & rectMainFrame );

	return 0;
}

//=============================================================================
// PreCreateWindow
//=============================================================================

BOOL CMainFrame::PreCreateWindow( CREATESTRUCT& cs )
{
    //
    // Pass on to base class
    //
	if( !CFrameWnd::PreCreateWindow( cs ) )
    {
    	return FALSE;
    }

    //
    // Set out own icon for the frame
    //
	HICON hIcon = ::LoadIcon( AfxGetApp()->m_hInstance,  MAKEINTRESOURCE( IDR_MAINFRAME ) );

	cs.dwExStyle &= ~WS_EX_CLIENTEDGE;
	
	cs.lpszClass = AfxRegisterWndClass(0, 0, 0, hIcon );

	return TRUE;
}

//=============================================================================
// CMainFrame diagnostics
//=============================================================================

#ifdef _DEBUG
void CMainFrame::AssertValid() const
{
	CFrameWnd::AssertValid();
}

void CMainFrame::Dump(CDumpContext& dc) const
{
	CFrameWnd::Dump(dc);
}
#endif //_DEBUG

//=============================================================================
// OnSetFocus
//=============================================================================

void CMainFrame::OnSetFocus( CWnd* pOldWnd )
{
    //
    // Forward this to our tree view
    //
	m_wndView->SetFocus();
}

//=============================================================================
// OnCmdMsg
//=============================================================================

BOOL CMainFrame::OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo)
{
    //
	// let the view have first crack at the command
    //
	if( m_wndView->OnCmdMsg(nID, nCode, pExtra, pHandlerInfo) )
    {
		return TRUE;
    }

	return CFrameWnd::OnCmdMsg(nID, nCode, pExtra, pHandlerInfo);
}

//=============================================================================
// OnViewEditBar
//=============================================================================

void CMainFrame::OnViewEditbar() 
{
	m_EditBar->SetVisible( !m_EditBar->GetVisible( ) );
}

//=============================================================================
// OnUpdateViewEditBar
//=============================================================================

void CMainFrame::OnUpdateViewEditbar(CCmdUI* pCmdUI) 
{
	pCmdUI->SetCheck( m_EditBar->GetVisible( ) );
}

//=============================================================================
// OnSave and OnUpdateSave
//=============================================================================

void CMainFrame::OnSave() 
{
    CWatchPoint* pActivePoint = m_wndView->GetActiveWatchPoint( );

    if( pActivePoint != NULL )
    {
        pActivePoint->Save( m_EditBar );
    }  

}

void CMainFrame::OnUpdateSave(CCmdUI* pCmdUI)
{
	m_EditBar->OnUpdateSave( pCmdUI );
}

//=============================================================================
// OnUpdate and OnUpdateUpdate
//=============================================================================

void CMainFrame::OnUpdate() 
{
    
    CWatchPoint* pActivePoint = m_wndView->GetActiveWatchPoint( );

    if( pActivePoint != NULL )
    {
        pActivePoint->WriteValue( this );
    }   
}

void CMainFrame::OnUpdateUpdate(CCmdUI* pCmdUI)
{
	m_EditBar->OnUpdateUpdate( pCmdUI );
}

//=============================================================================
// OnBoolean and OnUpdateBoolean
//=============================================================================

void CMainFrame::OnBoolean() 
{
    CWatchPoint* pActivePoint = m_wndView->GetActiveWatchPoint( );

    if( pActivePoint != NULL && !m_DisablePresetUpdate )
    {
        pActivePoint->UpdatePreset( m_EditBar );
        pActivePoint->WriteValue( this );
    }   
}

void CMainFrame::OnUpdateBoolean(CCmdUI* pCmdUI)
{
	m_EditBar->OnUpdateBoolean( pCmdUI );
}

//=============================================================================
// OnFunction
//=============================================================================

void CMainFrame::OnFunction() 
{
    CWatchPoint* pActivePoint = m_wndView->GetActiveWatchPoint( );

    if( pActivePoint != NULL )
    {
        pActivePoint->WriteValue( this );
    }   
}

//=============================================================================
// SetAttachStatus
//=============================================================================

void CMainFrame::SetAttachStatus(bool IsAttached)
{
	if( IsAttached ) 
	{
		m_wndStatusBar.SetPaneText( 1, "Attached" );
	}
	else
	{
		m_wndStatusBar.SetPaneText( 1, "Attaching to target..." );
	}	
}

//=============================================================================
// Function:    CMainFrame::OnStatusChange
//=============================================================================
// Description: Invoked by communication system when a change in connection
//              status has occured.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void CMainFrame::OnStatusChange
( 
    IRadDbgComChannel::ConnectionState connectionState,
    const char* Message 
)
{
    //
    // Switch on status message.
    //  
    switch( connectionState )
    {
        case IRadDbgComChannel::Attached :
        {   

            SetAttachStatus( true );

            //
            // Simply issue a receive to wait for data.
            //
            m_pChannel->ReceiveAsync( m_RxBuffer, sizeof( m_RxBuffer ), this );

            //
            // Set up the trasmitter variables.
            //
            m_TxOutstanding = false;
            m_WaitingForTxAcknowledge = false;
            m_TxBytesQueued = 0;
            m_CurrentTxAddress = m_TxBuffer1;
            m_Buffer1Active = true;

            m_OutstandingValueCount = 0;

            //
            // Set timer to periodically request values.
            //
            m_TimerId = SetTimer( TimerID, theApp.m_UpdatePeriod, NULL );

            break;
        }

        case IRadDbgComChannel::Detached :
        {   
            //
            // Check if we have self destructed. If not display reason for detach.
            //
            if( !m_SelfDetach )
            {
                char Outbuf[ 256 ];
                wsprintf( Outbuf, "Error: Failed to attach to target \"%s\" because [%s].", theApp.m_TargetName , Message );
                MessageBox( Outbuf, theApp.m_pszAppName, MB_OK | MB_ICONEXCLAMATION );
                m_wndView->Reset( );
                m_SaveAllEnabled = false;
                PostMessage( WM_CLOSE );
            }

            if( m_TimerId != 0 )
            {
                //
                // Don't kill timer as Windows does so real wierd stuff/
                //
                // KillTimer( m_TimerId );
                m_TimerId = 0;
            }

            break;
        }
        case IRadDbgComChannel::Attaching :
        case IRadDbgComChannel::Detaching:
        {
            //
            // Lets reset things.
            //
            SetAttachStatus( false );
            m_wndView->Reset( );
            m_EditBar->SetDataType( CEditBar::Undefined );
            m_SaveAllEnabled = false;
            if( m_TimerId != 0 )
            {
                KillTimer( m_TimerId );
                m_TimerId = 0;
            }

            break;
        }
    }
}

//=============================================================================
// Function:    CMainFrame::OnReceiveComplete
//=============================================================================
// Description: This routine is invoked to when data is available. 
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:       When we receive a buffer, a packet may not be fully contained in
//              the buffer. To deal with this, move the remaining data into 
//              the head of the buffer and issue a receive to get the remaing.
//------------------------------------------------------------------------------

void CMainFrame::OnReceiveComplete
( 
    bool            successful, 
    unsigned int    bytesReceived
)
{
    static          bytesLeftOver = 0;

    if( successful )
    {
        //
        // Here we have received a buffer. Process the data. Simply process each packet
        // of data in the buffer. We use a technique were packets can span multiple buffers/
        //
        unsigned char* pRxAddress = m_RxBuffer;

        bytesReceived += bytesLeftOver;
        bytesLeftOver = 0;
 
        while( IsCompletePacket( bytesReceived, pRxAddress ) )
        {
            //
            // Check what kind of packet we got and process.
            //
            switch( *((WPCommand*) pRxAddress) )
            {
                case WPCNameSpace :
                {
                    //
                    // Get the view and set the name space. It understands signifcance 
                    // receiving name space.
                    //
                    WCNameSpace* pPacket = (WCNameSpace*) pRxAddress;

                    m_wndView->AddNameSpace( (char*) pPacket->m_NameSpace ); 

                    pRxAddress += sizeof( WCNameSpace );
                    bytesReceived -= sizeof( WCNameSpace );
                    break;
                }
    
                case WPCCreate :
                {
                    // 
                    // Creation of a watch point. Contruct one of the appropriate type. Note
                    // that the constructor adds itself to a list, hence no need to save pointer
                    // returned from new. 
                    //
                    WCCreate* pPacket = (WCCreate*) pRxAddress;

                    switch( pPacket->m_DataType )
                    {
                        case WPDUnsignedInt : 
                        { 
                            new CUIntWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pPacket->m_Attrib.m_ui.m_Max, pPacket->m_Attrib.m_ui.m_Min, pPacket->m_ReadOnly );
                            break;
                        };                 
                        case WPDInt : 
                        { 
                            new CIntWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pPacket->m_Attrib.m_i.m_Max, pPacket->m_Attrib.m_i.m_Min, pPacket->m_ReadOnly );
                            break;
                        };                 
                        case WPDUnsignedShort : 
                        { 
                            new CUShortWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pPacket->m_Attrib.m_us.m_Max, pPacket->m_Attrib.m_us.m_Min, pPacket->m_ReadOnly );
                            break;
                        };                 
                        case WPDShort : 
                        { 
                            new CShortWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pPacket->m_Attrib.m_s.m_Max, pPacket->m_Attrib.m_s.m_Min, pPacket->m_ReadOnly );
                            break;
                        };                 
                        case WPDUnsignedChar : 
                        { 
                            new CUCharWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pPacket->m_Attrib.m_uc.m_Max, pPacket->m_Attrib.m_uc.m_Min, pPacket->m_ReadOnly );
                            break;
                        };                 
                        case WPDChar : 
                        { 
                            new CCharWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pPacket->m_Attrib.m_c.m_Max, pPacket->m_Attrib.m_c.m_Min, pPacket->m_ReadOnly );
                            break;
                        };                 
                        case WPDFloat :      
                        { 
                            new CFloatWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pPacket->m_Attrib.m_f.m_Max, pPacket->m_Attrib.m_f.m_Min, pPacket->m_ReadOnly );
                            break;
                        };                 
                        case WPDBoolean :      
                        { 
                            new CBoolWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pPacket->m_ReadOnly );
                            break;
                        };                 
                        case WPDVector :      
                        { 
                            new CVectorWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pPacket->m_Attrib.m_vector.m_Max, pPacket->m_Attrib.m_vector.m_Min, pPacket->m_ReadOnly );
                            break;
                        };                 
                        case WPDString :
                        { 
                            new CStringWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pPacket->m_Attrib.m_string.m_Length, pPacket->m_ReadOnly );
                            break;
                        };                 

                        case WPDFunction :
                        { 
                            new CFunctionWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData);
                            break;
                        };                 

                       
                        default:{ ASSERT( false ); break; }

                    }

                    //
                    // Update bytes remaining and pointer
                    //
                    pRxAddress += sizeof( WCCreate );
                    bytesReceived -= sizeof( WCCreate);

                    break;                
                }

                case WPCCreateEnum :
                {
                    //
                    // Creation of an enumeration watchpoint
                    //
                    WCCreateEnum* pPacket = (WCCreateEnum*) pRxAddress;
                    
                    new CEnumWatchPoint( m_wndView, pPacket->m_Name, pPacket->m_Address, pPacket->m_Callback, pPacket->m_UserData, pRxAddress + sizeof( WCCreateEnum ), pPacket->m_ReadOnly );
                    
                    pRxAddress += (sizeof( WCCreateEnum ) + pPacket->m_Length);
                    bytesReceived -= (sizeof( WCCreateEnum) + pPacket->m_Length);
            
                    break;
                }

                case WPCDelete :
                {
                    //
                    // Destruction of a watch point
                    //
                    WCDelete* pPacket = (WCDelete*) pRxAddress;
                   
                    //
                    // Invoke static off the watch points.
                    //
                    CWatchPoint* pWatchPoint = CWatchPoint::Find( pPacket->m_Address );                    
                    delete pWatchPoint;

                    pRxAddress += sizeof( WCDelete );
                    bytesReceived -= sizeof( WCDelete);

                    break;
                }
                
                case WPCValue :
                {
                    //
                    // Receipt of a value. Make sure point still exists.
                    //
                    WCValue* pPacket = (WCValue*) pRxAddress;
                        
                    CWatchPoint* pWatchPoint = CWatchPoint::Find( pPacket->m_Address );                    
                    
                    if( pWatchPoint != NULL )
                    {
                        //
                        // Set the value. Just pass packet as void and let it deal with it.
                        //
                        pWatchPoint->SetValue( pPacket, m_EditBar );
                    }
     
                    //
                    // Update the receive buffer. Must deal with special case of string.
                    //                    
                    if( pPacket->m_DataType == WPDString )
                    { 
                        pRxAddress += pPacket->m_Attrib.m_string.m_Length;
                        bytesReceived -= pPacket->m_Attrib.m_string.m_Length;
                    }

                    pRxAddress += sizeof( WCValue );
                    bytesReceived -= sizeof( WCValue);

                    //
                    // Indicate we have received a value.
                    //
                    m_OutstandingValueCount--;
    
                    break;              
                }

                case WPCPacketReceived :
                {
                    //
                    // We have received acknowledge of a previous transmit. See we can send.
                    //
                    m_WaitingForTxAcknowledge = false;

                    pRxAddress += sizeof( WCPacketReceived );
                    bytesReceived -= sizeof( WCPacketReceived );

                    InitiateTransmission( );    

                    break;
                }
 
                case WPCHostRequest :
                {
                    //
                    // This command is ignored by the Watch server. May use in the
                    // future.
                    //
                    WCHostRequest* pPacket = (WCHostRequest*) pRxAddress;

                    pRxAddress += (sizeof( WCHostRequest ) + pPacket->m_Length);
                    bytesReceived -= (sizeof( WCHostRequest ) + pPacket->m_Length);
                    break;
                }

                case WPCAssociateFile :
                {
                    //
                    // Get the view and associate file
                    //
                    WCAssociateFile* pPacket = (WCAssociateFile*) pRxAddress;

                    m_wndView->AssociateFile( pPacket->m_NameSpace, pPacket->m_Filename, pPacket->m_FileType ); 

                    //
                    // Can enable the save all command
                    //
                    m_SaveAllEnabled = true;

                    pRxAddress += sizeof( WCAssociateFile );
                    bytesReceived -= sizeof( WCAssociateFile );
                    break;
                }
  
                default:
                {
                    ASSERT( false );
                    break;
                }

            }
        }

        //
        // Re-issue the receive buffer. Move any bytes remaining to the front of the buffer.
        //
        if( bytesReceived != 0 )
        {
            bytesLeftOver = bytesReceived;
            memmove( m_RxBuffer, pRxAddress, bytesLeftOver );
        }  

        m_pChannel->ReceiveAsync( m_RxBuffer + bytesLeftOver, sizeof( m_RxBuffer ) - bytesLeftOver, this );
    }
    else
    {
        bytesLeftOver = 0;
    }
}

//=============================================================================
// Function:    CMainFrame::OnSendComplete
//=============================================================================
// Description: Check if successful, If so, see if more to send and do so if
//              ready.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void CMainFrame::OnSendComplete
( 
    bool successful
)
{
    m_TxOutstanding = false;

    if( successful )
    {
        //
        // Initiate send possible,
        //
        InitiateTransmission( );
    }      
}

//=============================================================================
// Function:    CMainFrame::IsCompletePacket
//=============================================================================
// Description: Check if the data remaining in the buffer contains a complete
//              packet.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

bool CMainFrame::IsCompletePacket(unsigned int bytesRemaining, unsigned char *pRxBuffer)
{
    //
    // First make sure we have a command code.
    //
    if( bytesRemaining < sizeof( WPCommand ) )
    {
        return( false );
    }

    switch( *((WPCommand*) pRxBuffer) )
    {
        case WPCNameSpace :
        {
            if( bytesRemaining < sizeof( WCNameSpace ) )
            {
                return( false );
            }
            break;
        }

        case WPCCreate :
        {
            if( bytesRemaining < sizeof( WCCreate ) )
            {
                return( false );
            }
            break;
        }

        case WPCCreateEnum :
        {
            if( bytesRemaining < sizeof( WCCreateEnum ) )
            {
                return( false );
            }
            WCCreateEnum* pPacket = (WCCreateEnum*) pRxBuffer;
            if( pPacket->m_Length + sizeof( WCCreateEnum ) > bytesRemaining )
            {
                return( false );
            }
    
            break;
        }

        case WPCDelete :
        {
            if( bytesRemaining < sizeof( WCDelete ) )
            {
                return( false );
            }
            break;
        }

        case WPCAssociateFile :
        {
            if( bytesRemaining < sizeof( WCAssociateFile ) )
            {
                return( false );
            }
            break;
        }

        case WPCPacketReceived :
        {
            if( bytesRemaining < sizeof( WCPacketReceived ) )
            {
                return( false );
            }
            break;
        }
        
        case WPCValue :
        {
            if( bytesRemaining < sizeof( WCValue ) )
            {
                return( false );
            }
            WCValue* pPacket = (WCValue*) pRxBuffer;
            if( pPacket->m_DataType == WPDString )
            {
                if( pPacket->m_Attrib.m_string.m_Length + sizeof( WCValue ) > bytesRemaining )
                {
                    return( false );
                }
           
            }
            break;              
        }

        case WPCHostRequest :
        {
            if( bytesRemaining < sizeof( WCHostRequest ) )
            {
                return( false );
            }
            WCHostRequest* pPacket = (WCHostRequest*) pRxBuffer;
            if( pPacket->m_Length + sizeof( WCHostRequest ) > bytesRemaining )
            {
                return( false );
            }
    
            break;
        }

 

        default:
        {
            ASSERT( false );
            break;
        }

    }

    return( true );
}

//=============================================================================
// Function:    CMainFrame::OnTimer
//=============================================================================
// Description: This routine is invoked to periodically request data from
//              the target. 
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void CMainFrame::OnTimer(UINT nIDEvent) 
{
    //
    // Pass timer on if not for us or we have stopped our timer.
    //
    if( (nIDEvent != TimerID) || (m_TimerId == 0) )
    {    
    	CFrameWnd::OnTimer(nIDEvent);
        return;
    }
    
    //
    // Here we send a request to the target with the ids of the watch points
    // we want the value of. Don't do it it we are waiting for a previous response.
    //
    if( m_OutstandingValueCount == 0 )
    {
        //
        // Invoke watchpoints to issue there read requests.
        //
        m_OutstandingValueCount = CWatchPoint::RequestValues( this );
   
    }
}

//=============================================================================
// Function:    CMainFrame::GetTxBuffer
//=============================================================================
// Description: Check if room to add next packet. If not report an error if
//				not already done so.
//
// Parameters:	size
//              
// Returns:		pointer to buffer if room
//              null otherwise.
//
// Notes:       The caller should imediately add his data to the pointer returned
//              by this call. Then initiate transmission.
//------------------------------------------------------------------------------

void* CMainFrame::GetTxBuffer( unsigned int size )
{

    void*   p = NULL;
    //
    // Check if room in the active buffer to add 
    //
    if( (m_TxBytesQueued + size) <= sizeof( m_TxBuffer1 ) )
    {
        //
        p = m_CurrentTxAddress;
        m_CurrentTxAddress += size;
        m_TxBytesQueued += size;
	}
	else
	{
        //
        // Here we failed to transmit. This is not good and should not happen.
        // Increase buffers if occurs.
        //
        m_wndStatusBar.SetWindowText( "Transmitter buffer overflow occurred");
	}   
    
    return( p );
}

//=============================================================================
// Function:    CMainFrame::InitiateTransmission
//=============================================================================
// Description: Try to send data if we can.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void CMainFrame::InitiateTransmission( void )
{
    //
    // Check if no transmit outstanding and that we have data to send.,
    //
    if( !m_TxOutstanding && (m_TxBytesQueued != 0) && !m_WaitingForTxAcknowledge )
    {
        if( m_Buffer1Active )
        {
            //
            // We will send buffer1 and reset things for buffer 2
            //
            m_pChannel->SendAsync( m_TxBuffer1, m_TxBytesQueued, this );
            m_CurrentTxAddress = m_TxBuffer2;                
        }
        else
        {
            //
            // We will send buffer2 and reset things for buffer 1
            //
            m_pChannel->SendAsync( m_TxBuffer2, m_TxBytesQueued, this );
            m_CurrentTxAddress = m_TxBuffer1;                

        }

        m_Buffer1Active = !m_Buffer1Active;
        m_TxBytesQueued = 0;
        m_TxOutstanding = true;
        m_WaitingForTxAcknowledge = true;
    
    }
}

//=============================================================================
// Function:    CMainFrame::OnNotify
//=============================================================================
// Description: Field messages from the various controls on the edit bar.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

BOOL CMainFrame::OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult) 
{

    NMHDR* pNmHdr = (NMHDR*) lParam;

    //
    // Check for the controls we are interested in receiving notification.
    //
    if( (wParam == IDC_SLIDER) || (wParam == IDC_SLIDERX) || (wParam == IDC_SLIDERY) || (wParam == IDC_SLIDERZ) )
    {
        CWatchPoint* pActivePoint = m_wndView->GetActiveWatchPoint( );

        if( pNmHdr->code == NM_RELEASEDCAPTURE )
        {
            //
            // Slider released. Write the value.
            //
            if( pActivePoint != NULL )
            {
                pActivePoint->WriteValue( this );
            }   
        }
        else if( pNmHdr->code == NM_CUSTOMDRAW )
        {
            //
            // Slider moved. Update preset
            //
            if( pActivePoint != NULL && !m_DisablePresetUpdate )
            {
                pActivePoint->UpdatePreset( m_EditBar );
            }   

        }
    }

    if( wParam == IDC_ENUM )
    {
        CWatchPoint* pActivePoint = m_wndView->GetActiveWatchPoint( );

        if( pNmHdr->code == CBN_SELCHANGE  )
        {
            //
            // Slider released. Write the value.
            //
            if( pActivePoint != NULL )
            {
                pActivePoint->WriteValue( this );
            }   
        }
    }

    //
    // Pass on to frame
    //

	return CFrameWnd::OnNotify(wParam, lParam, pResult);
}

//=============================================================================
// Function:    CMainFrame::OnPresetUpdate
//=============================================================================
// Description: Invoked when the preset value edit control is manually altered.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void CMainFrame::OnPresetUpdate( void )
{
    CWatchPoint* pActivePoint = m_wndView->GetActiveWatchPoint( );
 
   if( pActivePoint != NULL )
   {
        pActivePoint->PresetValidate( m_EditBar );
   }   
}

//=============================================================================
// Function:    CMainFrame::OnEnumChange
//=============================================================================
// Description: Invoked when the preset enumeration changes.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void CMainFrame::OnEnumChange( void )
{
    CWatchPoint* pActivePoint = m_wndView->GetActiveWatchPoint( );

    if( pActivePoint != NULL && !m_DisablePresetUpdate )
    {
        pActivePoint->UpdatePreset( m_EditBar );
        pActivePoint->WriteValue( this );
    }   
}

//=============================================================================
// Function:    CMainFrame::OnUpdatePeriod
//=============================================================================
// Description: Invoked to alter the update period
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void CMainFrame::OnUpdatePeriod() 
{
	CUpdatePeriodDlg PeriodDlg;
    PeriodDlg.m_Period = theApp.m_UpdatePeriod;
	if( IDOK == PeriodDlg.DoModal() )
    {
        theApp.m_UpdatePeriod = PeriodDlg.m_Period;
    
        //
        // If timer is running, kill it and start it with the new period.,
        //
        if( m_TimerId != 0 )
        {
           KillTimer( m_TimerId );
           m_TimerId = SetTimer( TimerID, theApp.m_UpdatePeriod, NULL );
        }    
    }    
}

void CMainFrame::OnSaveall() 
{
    CWatchPoint::SaveAll( m_EditBar );
}

void CMainFrame::OnUpdateSaveall(CCmdUI* pCmdUI) 
{

    pCmdUI->Enable( m_SaveAllEnabled );
}

void CMainFrame::OnDestroy() 
{
    //
    // write profile setting to registry
    //

    CRect rectMainFrame;
    GetWindowRect( & rectMainFrame );

    VERIFY( AfxGetApp( )->WriteProfileInt( "Window Setting", "MainFrameRect Top" , rectMainFrame.top ) );
    VERIFY( AfxGetApp( )->WriteProfileInt( "Window Setting", "MainFrameRect Bottom" , rectMainFrame.bottom ) );
    VERIFY( AfxGetApp( )->WriteProfileInt( "Window Setting", "MainFrameRect Left" , rectMainFrame.left ) );
    VERIFY( AfxGetApp( )->WriteProfileInt( "Window Setting", "MainFrameRect Right" , rectMainFrame.right ) );

    MoveWindow( & rectMainFrame );

    CFrameWnd::OnDestroy();
}
