//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        ConsoleServer.cpp
//
// Subsystem:   Radical Debug Console Server
//
// Description:	This file contains the implementation of the Debug Console.
//
// Revisions:	Dec 8, 2000    Creation
//				Feb 2, 2001	   Flow Control
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <windows.h>
#include <raddebugcommunication.hpp>
#include <radplatform.hpp>
#include "consoleServer.hpp"
#include "../src/radprotocols/debugconsoleprotocol.hpp"
#include "Resource.h"

//=============================================================================
// Local Defintions
//=============================================================================

static char ErrorBoxCaption[ ] = "DebugConsoleServer";

ConsoleWindow* ConsoleWindow::s_ListHead = NULL;

//=============================================================================
// Static Data Defintions
//=============================================================================

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// Function:    ConsoleServer::ConsoleServer
//=============================================================================
// Description: Constructor for the server object.
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

ConsoleServer::ConsoleServer( void )
    :
    m_ReferenceCount( 1 ),
    m_Channel( NULL ),
    m_SelfDestruct( false ),
	m_LastCommandRecvd( false ),
    m_Attached( false ),
    m_TxOutstanding( false ),
    m_TxBytesQueued( 0 ),
    m_CurrentTxAddress( m_TxBuffer1 ),
    m_Buffer1Active( true ),
    m_ClientRecvReady( true )
{
    
}
//=============================================================================
// Function:    ConsoleServer::~ConsoleServer
//=============================================================================
// Description: Destructor for the server object. 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

ConsoleServer::~ConsoleServer( void )
{
    if( m_Channel != NULL )
    {
        m_Channel->RegisterStatusCallback( NULL );
        m_Channel->Release( );
    }
}            
//=============================================================================
// Function:    ConsoleServer::Initialize
//=============================================================================
// Description: Sets up things and listens for console requests.
//              
// Parameters:  
//
// Returns:     false, error
//
// Notes:
//------------------------------------------------------------------------------

bool ConsoleServer::Initialize
( 
    HINSTANCE   hInstance,
    HWND        AppWindow, 
    char*       cmdLine
)
{
    //
    // Lets get the host system.
    //
    IRadDbgComTargetTable* pHost;
    radDbgComHostGetTargetTable( &pHost );
    rAssert( pHost != NULL );

    m_MainWnd = AppWindow;
    m_hInstance = hInstance;

    //
    // Lets parse the command line for a token. If specified, constains the
    // target name to use.
    //
    if( cmdLine[ 0 ] != '\0' )
    {
        //
        // Here the caller has specified a target name. Try to create a channel
        //
        radDbgComHostCreateChannel( cmdLine, HOST_DEBUG_CONSOLE_PROTOCOL, &m_Channel );
        pHost->Release( );
        if( m_Channel == NULL ) 
        {
            //
            // Failed to create channel using specified target.
            //
            char Outbuf[ 256 ];
            wsprintf( Outbuf, "Error: Failed to attach to target \"%s\".", cmdLine );    
            MessageBox( AppWindow, Outbuf, ErrorBoxCaption, MB_OK | MB_ICONEXCLAMATION );
            return( false );
        }
        else
        {
            strcpy( m_Target, cmdLine );
        }
    }
    else
    {
        //
        // Lets see if default taget exists. If so lets try to use it.
        //
        if( pHost->GetDefaultTarget( m_Target ) )
        {
            radDbgComHostCreateChannel( m_Target, HOST_DEBUG_CONSOLE_PROTOCOL, &m_Channel );
            pHost->Release( );
            if( m_Channel == NULL ) 
            {

                //
                // Failed to create channel using specified target.
                //
                char Outbuf[ 256 ];
                wsprintf( Outbuf, "Error: Failed to attach to target \"%s\".", m_Target );    
                MessageBox( AppWindow, Outbuf, ErrorBoxCaption, MB_OK | MB_ICONEXCLAMATION );
                return( false );
            }
        }
        else
        {
            pHost->Release( );
            MessageBox( AppWindow, "Error: No default target found or specified on command line." , ErrorBoxCaption, MB_OK | MB_ICONEXCLAMATION );
            return( false );
        }                   
    }

    //
    // Here we have a channel. Lets update the title of our application:
    //
    char Outbuf[ 256 ];
    wsprintf( Outbuf, "DebugConsoleServer [%s]", m_Target );    
    SetWindowText( AppWindow, Outbuf );

    //
    // Now lets attach installing a notfication routine.
    //
    m_Channel->RegisterStatusCallback( this );

    m_Channel->Attach( );

    return( true );
}

//=============================================================================
// Function:    Console::Terminate
//=============================================================================
// Description: 
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleServer::Terminate
( 
    void
)
{
    m_SelfDestruct = true;
    m_Channel->Detach( );
}

//=============================================================================
// Function:    Console::IsCompletePacket
//=============================================================================
// Description: 
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

bool ConsoleServer::IsCompletePacket( unsigned int bytesRemaining, unsigned char* pRxBuffer )
{
    if ( bytesRemaining < sizeof( HdcpCommand ) )
    {
        return false;
    }

    switch( *((HdcpCommand*) pRxBuffer) )
    {
        case HdcsCreate :
        {
            return bytesRemaining >= sizeof( HdcpCreateCmd );
        }
        break;

        case HdcsTitle :
        {
            return bytesRemaining >= sizeof( HdcpTitleCmd );
        }
        break;

        case HdcsBackgroundColor :
        {
            return bytesRemaining >= sizeof( HdcpBackgroundColorCmd );
        }
        break;

        case HdcsClear :
        {
            return bytesRemaining >= sizeof( HdcpClearCmd );
        }
        break;

        case HdcsCursorPosition :
        {
            return bytesRemaining >= sizeof( HdcpCursorPositionCmd );
        }
        break;

        case HdcsTextColor :
        {
            return bytesRemaining >= sizeof( HdcpTextColorCmd );
        }
        break;

        case HdcsTextOutAt :
        {
            return bytesRemaining >= sizeof( HdcpTextOutAtCmd );
        }
        break;

        case HdcsTextOut :
        {
            return bytesRemaining >= sizeof( HdcpTextOutCmd );
        }
        break;

        case HdcsClose :
        {
            return bytesRemaining >= sizeof( HdcpCloseCmd );
        }
        break;

        case HdcsKeyboardInput :
        {
            return bytesRemaining >= sizeof( HdcpKeyboardInputCmd );
        }
        break;

        case HdcsVirtualKeyInput :
        {
            return bytesRemaining >= sizeof( HdcpVirtualKeyInputCmd );
        }
        break;

        case HdcsPointerInput :
        {
            return bytesRemaining >= sizeof( HdcpPointerInputCmd );
        }
        break;

        case HdcsClientRecvReady :
        {
            return bytesRemaining >= sizeof( HdcpClientRecvReadyCmd );
        }
        break;

        case HdcsHostRecvReady :
        {
            return bytesRemaining >= sizeof( HdcpHostRecvReadyCmd );
        }
        break;

        default:
        {
            rAssert( false );
        }
        break;
    }
    return false;
}

//=============================================================================
// Function:    Console::OnStatusChange
//=============================================================================
// Description: 
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleServer::OnStatusChange
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
            //
            // Simply issue a receive to wait for data.
            //
            m_Channel->ReceiveAsync( m_RxBuffer, sizeof( m_RxBuffer ), this );

            //
            // Set up the trasmitter variables.
            //
            m_Attached = true;

            InitiateTransmission( );

            break;
        }

        case IRadDbgComChannel::Attaching :
        {
            //
            // If we are attached, clear consoles. Print message that we lost communication.
            //
            if( m_Attached )
            {
                //
                // Here we enumerate each of the windows we have created
                // destroy them.
                //
                ConsoleWindow::DeleteAll( );

                m_Attached = false;

                m_TxBytesQueued = 0;
                m_CurrentTxAddress = m_TxBuffer1;
                m_Buffer1Active = true;
                m_TxOutstanding = false;
                m_ClientRecvReady = true;
            }

            break;
        }

        case IRadDbgComChannel::Detached :
        {   
            //
            // Here we enumerate each of the windows we have created
            // destroy them.
            //
            ConsoleWindow::DeleteAll( );

            m_Attached = false;

            m_TxBytesQueued = 0;
            m_CurrentTxAddress = m_TxBuffer1;
            m_Buffer1Active = true;
            m_TxOutstanding = false;
            m_ClientRecvReady = true;

            //
            // Check if we have self destructed. If not display reason for detach.
            //
            if( !m_SelfDestruct )
            {
                char Outbuf[ 256 ];
                wsprintf( Outbuf, "Error: Failed to attach to target \"%s\" because [%s].", m_Target , Message );
                MessageBox( m_MainWnd, Outbuf, ErrorBoxCaption, MB_OK | MB_ICONEXCLAMATION );
            }
            break;
        }
    
        default:
        {
            //  
            // Close windows that exist for the other messages.
            //
            ConsoleWindow::DeleteAll( );

            break;
        }
    }
}

//=============================================================================
// Function:    Console::OnReceiveComplete
//=============================================================================
// Description: 
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleServer::OnReceiveComplete
( 
    bool            successful, 
    unsigned int    bytesReceived
)
{
    static int bytesLeftOver = 0;

    if( successful )
    {
        //
        // Here we have received a buffer. Process the data. Simply process each packet
        // of data in the buffer. 
        //
        unsigned char* pRxAddress = m_RxBuffer;

        bytesReceived += bytesLeftOver;
        bytesLeftOver = 0;

        while( IsCompletePacket( bytesReceived, pRxAddress ) )
        {
            //
            // Switch on the command code of the buffer.
            // 
            switch( *((HdcpCommand*) pRxAddress) )
            {
                case HdcsCreate :
                {
                    HdcpCreateCmd* pCommand = (HdcpCreateCmd*) pRxAddress;
                    if ( ConsoleWindow::Find( pCommand->m_ConsoleId ) == NULL )
                    {
                        //
                        // Request to create a console windows. Simpy do so.
                        //
                        new ConsoleWindow( this, pCommand->m_ConsoleId );
                    }

                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HdcpCreateCmd );
                    pRxAddress += sizeof( HdcpCreateCmd );

                    break;
                }    
        
                case HdcsTitle :
                {
                    HdcpTitleCmd* pCommand = (HdcpTitleCmd*) pRxAddress;

                    ConsoleWindow* pCW = ConsoleWindow::Find( pCommand->m_ConsoleId );
                    if( pCW != NULL )
                    {    
                        pCW->SetTitle( pCommand->m_Title );
                    }
                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HdcpTitleCmd );
                    pRxAddress += sizeof( HdcpTitleCmd );

                    break;
                }    
        
                case HdcsBackgroundColor :
                {
                    HdcpBackgroundColorCmd* pCommand = (HdcpBackgroundColorCmd*) pRxAddress;

                    ConsoleWindow* pCW = ConsoleWindow::Find( pCommand->m_ConsoleId );
                    if( pCW != NULL )
                    {
                        pCW->SetBackgroundColor( pCommand->m_BackgroundColor );
                    }
                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HdcpBackgroundColorCmd );
                    pRxAddress += sizeof( HdcpBackgroundColorCmd );

                    break;
                }    
        
                case HdcsClear :
                {
                    HdcpClearCmd* pCommand = (HdcpClearCmd*) pRxAddress;

                    ConsoleWindow* pCW = ConsoleWindow::Find( pCommand->m_ConsoleId );
                    if( pCW != NULL )
                    {
                        pCW->Clear( );
                    }
                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HdcpClearCmd );
                    pRxAddress += sizeof( HdcpClearCmd );

                    break;
                }    
                
                case HdcsCursorPosition :
                {
                    HdcpCursorPositionCmd* pCommand = (HdcpCursorPositionCmd*) pRxAddress;

                    ConsoleWindow* pCW = ConsoleWindow::Find( pCommand->m_ConsoleId );
                    if( pCW != NULL )
                    {
                        pCW->SetCursorPosition( pCommand->m_XPosition, pCommand->m_YPosition );
                    }
                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HdcpCursorPositionCmd );
                    pRxAddress += sizeof( HdcpCursorPositionCmd );

                    break;
                }    
                

                case HdcsTextColor :
                {
                    HdcpTextColorCmd* pCommand = (HdcpTextColorCmd*) pRxAddress;

                    ConsoleWindow* pCW = ConsoleWindow::Find( pCommand->m_ConsoleId );
                    if( pCW != NULL )
                    {
                        pCW->SetTextColor( pCommand->m_TextColor );
                    }
                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HdcpTextColorCmd );
                    pRxAddress += sizeof( HdcpTextColorCmd );

                    break;
                }    
                
                case HdcsTextOutAt :
                {
                    HdcpTextOutAtCmd* pCommand = (HdcpTextOutAtCmd*) pRxAddress;

                    ConsoleWindow* pCW = ConsoleWindow::Find( pCommand->m_ConsoleId );
                    if( pCW != NULL )
                    {
                       pCW->TextOutAt( pCommand->m_XPosition, pCommand->m_YPosition, pCommand->m_Text );
                    }
                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HdcpTextOutAtCmd );
                    pRxAddress += sizeof( HdcpTextOutAtCmd );

                    break;
                }    

                case HdcsTextOut :
                {
                    HdcpTextOutCmd* pCommand = (HdcpTextOutCmd*) pRxAddress;

                    ConsoleWindow* pCW = ConsoleWindow::Find( pCommand->m_ConsoleId );
                    if( pCW != NULL )
                    {
                        pCW->TextOut( pCommand->m_Text );
                    }
                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HdcpTextOutCmd );
                    pRxAddress += sizeof( HdcpTextOutCmd );

                    break;
                }    

                case HdcsClose :
                {
                    HdcpCloseCmd* pCommand = (HdcpCloseCmd*) pRxAddress;

                    ConsoleWindow* pCW = ConsoleWindow::Find( pCommand->m_ConsoleId );
                    if( pCW != NULL )
                    {
                        delete pCW;
                    }
                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HdcpCloseCmd );
                    pRxAddress += sizeof( HdcpCloseCmd );

                    break;
                }    

                case HdcsClientRecvReady :
                {
                    HdcpClientRecvReadyCmd* pCommand = (HdcpClientRecvReadyCmd*) pRxAddress;
					
					//
					// Host is ready to recive more data.  Set boolean to true
					//
					m_ClientRecvReady = true;

                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HdcpClientRecvReadyCmd );
                    pRxAddress += sizeof( HdcpClientRecvReadyCmd );

                    InitiateTransmission( );

                    break;
                }    

                default:
                {
                    rAssertMsg( false, "Bad packet received from target");
                }
       
            }
        }

        //
		// Call invalidate rect for all consoles.  This will ensure that a 
		// HostRecvReadyCommand goes out
		//
		ConsoleWindow::InvalidateAll();

        //
        // Re-issue the receive buffer. Move any bytes remaining to the front of the buffer.
        //
        if( bytesReceived != 0 )
        {
            bytesLeftOver = bytesReceived;
            memmove( m_RxBuffer, pRxAddress, bytesLeftOver );
        }  

        //
        // Re-issue the receive buffer.
        //
        m_Channel->ReceiveAsync( m_RxBuffer + bytesLeftOver, sizeof( m_RxBuffer ) - bytesLeftOver, this );

    }

}

//=============================================================================
// Function:    ConsoleServer::SendHostRecvReadyCommand
//=============================================================================
// Description: Send host recieve ready to the client
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleServer::SendHostRecvReadyCommand( void )
{
    if( ( m_TxBytesQueued + sizeof( HdcpHostRecvReadyCmd ) ) <= DBGCNSL_BUFFER_SIZE )
    {
        //
        // We have room. Add the data,
        //
        HdcpHostRecvReadyCmd* pCommand = (HdcpHostRecvReadyCmd*) m_CurrentTxAddress;
        pCommand->m_Command = (HdcpCommand)radPlatformEndian32( HdcsHostRecvReady );

        m_CurrentTxAddress += sizeof( HdcpHostRecvReadyCmd );
        m_TxBytesQueued += sizeof( HdcpHostRecvReadyCmd );

        InitiateTransmission( );
    }
    else
    {
        //
        // Here we don't have room. Print warning message and return.
        //
        rDebugString("DebugConsoleServer lost key input. Increase buffer size\n");
    }
}


//=============================================================================
// Function:    ConsoleServer::OnSendComplete
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

void ConsoleServer::OnSendComplete
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
// Function:    Console::SendKeyPress
//=============================================================================
// Description: Add key to send buffer and initiate send if neccessary.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleServer::SendKeyPress( unsigned int consoleId, int character )
{

    //
    // Check if room in the active buffer to add 
    //
    if( m_TxBytesQueued + sizeof( HdcpKeyboardInputCmd ) <= DBGCNSL_BUFFER_SIZE )
    {
        //
        // We have room. Add the data,
        //
        HdcpKeyboardInputCmd* pCommand = (HdcpKeyboardInputCmd*) m_CurrentTxAddress;
        pCommand->m_Command = HdcsKeyboardInput;
        pCommand->m_ConsoleId = consoleId;
        pCommand->m_AsciiKey = character;

        m_CurrentTxAddress += sizeof( HdcpKeyboardInputCmd );
        m_TxBytesQueued += sizeof( HdcpKeyboardInputCmd );

        InitiateTransmission( );
    }
    else
    {
        //
        // Here we don't have room. Print warning message and return.
        //
        rDebugString("DebugConsoleServer lost key input. Increase buffer size\n");
    }

}

//=============================================================================
// Function:    Console::ShouldSendVKey
//=============================================================================
// Description: can this virtual key be send?
//              
// Parameters:  vkey - win32 virtual key VK_xxxx
//
// Returns:     true if can
//
// Notes:
//------------------------------------------------------------------------------

bool ConsoleServer::ShouldSendVKey( unsigned int vkey )
{
    //
    // don't send ctrl/shift
    //
    if ( vkey == VK_CONTROL ||
         vkey == VK_SHIFT )
    {
        return false;
    }

    return true;
}

//=============================================================================
// Function:    Console::SendVirtualKey
//=============================================================================
// Description: Add virtual key to send buffer and initiate send if neccessary.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleServer::SendVirtualKey( unsigned int consoleId, int vkey, bool ctrl, bool shift, bool alt )
{

    //
    // Check if room in the active buffer to add 
    //
    if( m_TxBytesQueued + sizeof( HdcpKeyboardInputCmd ) <= DBGCNSL_BUFFER_SIZE )
    {
        //
        // We have room. Add the data,
        //
        HdcpVirtualKeyInputCmd* pCommand = (HdcpVirtualKeyInputCmd*) m_CurrentTxAddress;
        pCommand->m_Command = HdcsVirtualKeyInput;
        pCommand->m_ConsoleId = consoleId;
        pCommand->m_VirtualKey = vkey;
        pCommand->m_Ctrl = ctrl;
        pCommand->m_Shift = shift;
        pCommand->m_Alt = alt;

        m_CurrentTxAddress += sizeof( HdcpVirtualKeyInputCmd );
        m_TxBytesQueued += sizeof( HdcpVirtualKeyInputCmd );
        
        InitiateTransmission( );
    }
    else
    {
        //
        // Here we don't have room. Print warning message and return.
        //
        rDebugString("DebugConsoleServer lost key input. Increase buffer size\n");
    }

}

//=============================================================================
// Function:    ConsoleServer::SendMouseClick
//=============================================================================
// Description: Add click to send buffer and initiate send if neccessary.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleServer::SendMouseEvent( unsigned int consoleId, int TextX, int TextY, int ScreenX, int ScreenY, HdcpInputMouseEventType type, bool ctrl, bool shift, bool alt, bool lbutton )
{
    //
    // Check if room in the active buffer to add 
    //
    if( m_TxBytesQueued + sizeof( HdcpPointerInputCmd ) <= DBGCNSL_BUFFER_SIZE )
    {
        //
        // We have room. Add the data,
        //
        HdcpPointerInputCmd* pCommand = (HdcpPointerInputCmd*) m_CurrentTxAddress;
        pCommand->m_Command = HdcsPointerInput;
        pCommand->m_ConsoleId = consoleId;
        pCommand->m_XTextPixels = TextX;
        pCommand->m_YTextPixels = TextY;
        pCommand->m_XScreenPixels = ScreenX;
        pCommand->m_YScreenPixels = ScreenY;
        pCommand->m_Type = type;
        pCommand->m_Ctrl = ctrl;
        pCommand->m_Shift = shift;
        pCommand->m_Alt = alt;
        pCommand->m_LButton = lbutton;

        m_CurrentTxAddress += sizeof( HdcpPointerInputCmd );
        m_TxBytesQueued += sizeof( HdcpPointerInputCmd );

        InitiateTransmission( );
    }
    else
    {
        //
        // Here we don't have room. Print warning message and return.
        //
        rDebugString("DebugConsoleServer lost mouse input. Increase buffer size\n");
    }

}

//=============================================================================
// Function:    ConsoleServer::InitiateTransmission
//=============================================================================
// Description: Try to send data if we can.
//              
// Parameters:  
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleServer::InitiateTransmission( void )
{
    //
    // Check if attached, and no transmit outstanding and that we have data to send.,
    //
    if( m_Attached && !m_TxOutstanding && (m_TxBytesQueued != 0) && m_ClientRecvReady )
    {
        if( m_Buffer1Active )
        {
            //
            // We will send buffer1 and reset things for buffer 2
            //
            m_Channel->SendAsync( m_TxBuffer1, m_TxBytesQueued, this );
            m_CurrentTxAddress = m_TxBuffer2;
        }
        else
        {
            //
            // We will send buffer2 and reset things for buffer 1
            //
            m_Channel->SendAsync( m_TxBuffer2, m_TxBytesQueued, this );
            m_CurrentTxAddress = m_TxBuffer1;                
        }
        m_Buffer1Active = !m_Buffer1Active;
        m_TxBytesQueued = 0;
        m_TxOutstanding = true;
        m_ClientRecvReady = false;
    }
}

//=============================================================================
// Function:    ConsoleServer::AddRef
//=============================================================================
// Description: This member is used to update the reference count of the object.
//
// Parameters:  none
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------
    
void ConsoleServer::AddRef( void )
{
    m_ReferenceCount++;
}

//=============================================================================
// Function:    ConsoleServer::Release
//=============================================================================
// Description: This member is used to update the reference count of the object.
//
// Parameters:  none
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------
    
void ConsoleServer::Release( void )
{
    m_ReferenceCount--;
    if( m_ReferenceCount == 0 )
    {
        delete this;
    }   
}

//=============================================================================
// Function:    ConsoleWindow::ConsoleWindow
//=============================================================================
// Description: Constructor for the console window
//              
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

ConsoleWindow::ConsoleWindow( ConsoleServer* pServer, unsigned int consoleId ) :
    m_Window( NULL ),
    m_Next( NULL ),
    m_pServer( NULL ),
    m_ConsoleId( 0 ),
    m_bLButtonDown( false )
{
    m_pServer = pServer;

    pServer->AddRef( );

    m_ConsoleId = consoleId;
    
    m_CursorX = 0;
    m_CursorY = 0;
    m_BackgroundColor = 0;
    m_ForegroundColor = RGB( 255, 255, 255 );
    m_StartRow = 0;

    //
    // First check if this is the first window. If so, register the window class.
    //
    if( s_ListHead == NULL )
    {
    
        //
        // Register window class used for creating console windows.
        //
	    WNDCLASSEX wcex;
	    wcex.cbSize         = sizeof(WNDCLASSEX); 
	    wcex.style			= CS_HREDRAW | CS_VREDRAW;
	    wcex.lpfnWndProc	= (WNDPROC) ConsoleWndProc;
	    wcex.cbClsExtra		= 0;
	    wcex.cbWndExtra		= sizeof( void* );
	    wcex.hInstance		= pServer->m_hInstance;
	    wcex.hIcon			= LoadIcon( wcex.hInstance, (LPCTSTR) IDI_LARGE );
	    wcex.hCursor		= LoadCursor(NULL, IDC_ARROW);
	    wcex.hbrBackground	= (HBRUSH) GetStockObject( BLACK_BRUSH );
	    wcex.lpszMenuName	= NULL;
	    wcex.lpszClassName	= "DebugConsole";
	    wcex.hIconSm		= LoadIcon( wcex.hInstance, (LPCTSTR) IDI_SMALL );

	    RegisterClassEx( &wcex );
    }

    HDC hDC = GetDC( NULL );

    TEXTMETRIC tm;
    GetTextMetrics( hDC, &tm );
    GetTextExtentPoint32( hDC, "0", 1, & m_sizFontSize );

    m_sizFontSize.cy -= 4;      // why do we get the height of fonts 4 pixel taller?

    //  
    // Create the window and show it.
    //

    RECT Rect;
    Rect.top = 0;
    Rect.left = 0;
    Rect.right = m_sizFontSize.cx * 80 ;
    Rect.bottom = m_sizFontSize.cy * 25;

    AdjustWindowRect( &Rect,WS_OVERLAPPED | WS_VISIBLE | WS_CAPTION | WS_THICKFRAME | WS_SYSMENU | WS_MAXIMIZEBOX | WS_MINIMIZEBOX | WS_VSCROLL, false );

    m_ClientDeltaX = (Rect.right - Rect.left) - (m_sizFontSize.cx * 80); 

    m_ClientDeltaY = (Rect.bottom - Rect.top) - (m_sizFontSize.cy * 25) ;

    m_RowsToDisplay = 25;

    m_Window = CreateWindow( "DebugConsole", "DebugConsole", WS_OVERLAPPED | WS_VISIBLE | WS_CAPTION | WS_THICKFRAME | WS_SYSMENU | WS_MAXIMIZEBOX | WS_MINIMIZEBOX | WS_VSCROLL,
               CW_USEDEFAULT, 0, Rect.right - Rect.left + GetSystemMetrics( SM_CXVSCROLL ), Rect.bottom - Rect.top, pServer->m_MainWnd, NULL, pServer->m_hInstance, (void*) this );

    SetScrollRange( m_Window, SB_VERT, 0, MAX_ROWS - 1, TRUE );
  
    Clear( );
    ShowWindow(m_Window, SW_SHOW);
    InvalidateRect( m_Window, NULL, false );
    ::SetActiveWindow( m_Window );
    ::SetForegroundWindow( m_Window );   
    //
    // Add ourself to the head of the list. Not sorted.
    //
    m_Next = s_ListHead;
    s_ListHead = this;
}

//=============================================================================
// Function:    ConsoleWindow::~ConsoleWindow
//=============================================================================
// Description: Destructor for the console window
//              
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

ConsoleWindow::~ConsoleWindow( void )
{
    //
    // Remove ourself from the list of windows.
    //
    ConsoleWindow** ppPrevious = &s_ListHead;
    
    while( *ppPrevious != this )
    {
        ppPrevious = &((*ppPrevious)->m_Next);
    }

    *ppPrevious = (*ppPrevious)->m_Next;

    DestroyWindow( m_Window );

    if( s_ListHead == NULL )
    {

        UnregisterClass("DebugConsole", m_pServer->m_hInstance );
    }

    m_pServer->Release( );;

}

//=============================================================================
// Function:    ConsoleWindow::ConsoleWndProc
//=============================================================================
// Description: This member is invoked to feild windows messages directed to
//              a debug console window.
//              
// Parameters:  See windows
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

LRESULT CALLBACK ConsoleWindow::ConsoleWndProc
( 
    HWND    hWnd,
    UINT    message, 
    WPARAM  wParam,
    LPARAM  lParam
)
{
    if( message == WM_NCCREATE )
    {
        //
        // Set the windows instance data.
        //
        SetWindowLong( hWnd, 0, (long) (((CREATESTRUCT*) lParam)->lpCreateParams) );

        return( DefWindowProc(hWnd, message, wParam, lParam) );
    }

    //
    // Get the this pointer to the channel associated with this window.
    //
    ConsoleWindow* pWindow = (ConsoleWindow*) GetWindowLong( hWnd, 0 );

    //
    // Process the message.
    //
	switch (message) 
	{
        //
        // Don't want to allow closes to occur.
        //
        case WM_SYSCOMMAND:
        {
            if( (wParam == SC_CLOSE )  )
            {
                delete pWindow;
            }

            return( DefWindowProc(hWnd, message, wParam, lParam) );
	    };

        case WM_CHAR :
        {
            pWindow->m_pServer->SendKeyPress( pWindow->m_ConsoleId, (int) ((TCHAR) wParam) );
        }
        break;

        case WM_SYSKEYDOWN:
        {
            if ( pWindow->m_pServer->ShouldSendVKey( wParam ) )
            {
                bool bCtrl = GetKeyState( VK_CONTROL ) < 0;
                bool bShift = GetKeyState( VK_SHIFT ) < 0;
                bool bAlt = GetKeyState( VK_MENU ) < 0;
                pWindow->m_pServer->SendVirtualKey( pWindow->m_ConsoleId, wParam, bCtrl, bShift, bAlt );
            }
            return( DefWindowProc(hWnd, message, wParam, lParam) );
        }
        break;

        case WM_KEYDOWN:
        {
            if ( pWindow->m_pServer->ShouldSendVKey( wParam ) )
            {
                bool bCtrl = GetKeyState( VK_CONTROL ) < 0;
                bool bShift = GetKeyState( VK_SHIFT ) < 0;
                bool bAlt = GetKeyState( VK_MENU ) < 0;
                pWindow->m_pServer->SendVirtualKey( pWindow->m_ConsoleId, wParam, bCtrl, bShift, bAlt );
            }
            return( DefWindowProc(hWnd, message, wParam, lParam) );
        }
        break;

        case WM_LBUTTONDOWN:
        {
            bool bCtrl = GetKeyState( VK_CONTROL ) < 0;
            bool bShift = GetKeyState( VK_SHIFT ) < 0;
            bool bAlt = GetKeyState( VK_MENU ) < 0;
            pWindow->m_bLButtonDown = true;
            pWindow->m_pServer->SendMouseEvent( pWindow->m_ConsoleId, LOWORD(lParam) / pWindow->m_sizFontSize.cx, pWindow->m_StartRow + HIWORD(lParam) / pWindow->m_sizFontSize.cy, LOWORD(lParam), HIWORD(lParam), HdcpMouseLeftButtonDown, bCtrl, bShift, bAlt, pWindow->m_bLButtonDown );
            pWindow->m_pServer->SendMouseEvent( pWindow->m_ConsoleId, LOWORD(lParam) / pWindow->m_sizFontSize.cx, pWindow->m_StartRow + HIWORD(lParam) / pWindow->m_sizFontSize.cy, LOWORD(lParam), HIWORD(lParam), HdcpMouseLeftButtonClick, bCtrl, bShift, bAlt, pWindow->m_bLButtonDown );
            break;
        }

        case WM_LBUTTONUP:
        {
            bool bCtrl = GetKeyState( VK_CONTROL ) < 0;
            bool bShift = GetKeyState( VK_SHIFT ) < 0;
            bool bAlt = GetKeyState( VK_MENU ) < 0;
            pWindow->m_bLButtonDown = false;
            pWindow->m_pServer->SendMouseEvent( pWindow->m_ConsoleId, LOWORD(lParam) / pWindow->m_sizFontSize.cx, pWindow->m_StartRow + HIWORD(lParam) / pWindow->m_sizFontSize.cy, LOWORD(lParam), HIWORD(lParam), HdcpMouseLeftButtonUp, bCtrl, bShift, bAlt, pWindow->m_bLButtonDown );
            break;
        }

        case WM_MOUSEMOVE:
        {
            bool bCtrl = GetKeyState( VK_CONTROL ) < 0;
            bool bShift = GetKeyState( VK_SHIFT ) < 0;
            bool bAlt = GetKeyState( VK_MENU ) < 0;
            pWindow->m_pServer->SendMouseEvent( pWindow->m_ConsoleId, LOWORD(lParam) / pWindow->m_sizFontSize.cx, pWindow->m_StartRow + HIWORD(lParam) / pWindow->m_sizFontSize.cy, LOWORD(lParam), HIWORD(lParam), HdcpMouseMove, bCtrl, bShift, bAlt, pWindow->m_bLButtonDown );
            break;
        }
    
        case WM_RBUTTONDOWN:
        {
            pWindow->PasteClipBoard( );
            break;
        }
        
        case WM_SIZE :
        {
            unsigned int width = LOWORD(lParam);
            unsigned int height = HIWORD(lParam);
            bool    resize = false;            

            if( width > (unsigned int)(pWindow->m_sizFontSize.cx) * 80 )
            {
                width = ( pWindow->m_sizFontSize.cx  * 80 ); 
                resize = true;            
            }
            
            if( (height) % pWindow->m_sizFontSize.cy != 0 )
            {
                height = (((height) / pWindow->m_sizFontSize.cy) + 1) * pWindow->m_sizFontSize.cy; 
                
                resize = true;            
            }

            pWindow->m_RowsToDisplay = height / pWindow->m_sizFontSize.cy;

            if( resize )
            {
                SetWindowPos( hWnd, NULL, 0, 0, width + pWindow->m_ClientDeltaX + GetSystemMetrics( SM_CXVSCROLL ), height + pWindow->m_ClientDeltaY, SWP_NOMOVE | SWP_NOZORDER | SWP_SHOWWINDOW);
                InvalidateRect( hWnd, NULL, false );
            }
            else
            {
                return DefWindowProc(hWnd, message, wParam, lParam);  
            }
            break;
        }
            
        case WM_PAINT :
        {
            HideCaret( hWnd );
            pWindow->Paint( (HDC) wParam );
            ShowCaret( hWnd );
			break;
        }                
    
        case WM_SETFOCUS:
        {
            CreateCaret( hWnd, NULL, pWindow->m_sizFontSize.cx, 2 );
            SetCaretPos( pWindow->m_CursorX * pWindow->m_sizFontSize.cx, ( pWindow->m_CursorY - pWindow->m_StartRow ) * pWindow->m_sizFontSize.cy + pWindow->m_sizFontSize.cy - 2 );
            ShowCaret( hWnd );
        }
        break;

        case WM_KILLFOCUS:
        {
            DestroyCaret( );
        }
        break;

        case WM_VSCROLL:
        {
            switch( LOWORD(wParam) )
            {
                case SB_BOTTOM :
                {
                    pWindow->m_StartRow =  MAX_ROWS - pWindow->m_RowsToDisplay;
                    break;
                }

                case SB_TOP :
                {
                    pWindow->m_StartRow = 0;
                    break;
                }

                case SB_LINEDOWN :
                {
                    pWindow->m_StartRow++ ;
                    break;
                }

                case SB_LINEUP :
                {
                    pWindow->m_StartRow-- ;
                  
                    break;
                }

                case SB_PAGEDOWN :
                {
                    pWindow->m_StartRow += pWindow->m_RowsToDisplay;
                    break;
                }

                case SB_PAGEUP :
                {
                    pWindow->m_StartRow -= pWindow->m_RowsToDisplay;
                    break;
                }
                
                case SB_THUMBPOSITION:
                case SB_THUMBTRACK:
                {
                    pWindow->m_StartRow = HIWORD(wParam );
                    break;
                }

                case SB_ENDSCROLL:
                {
                    
                    break;
                }
            }

            if( pWindow->m_StartRow > (int)  MAX_ROWS - (int) pWindow->m_RowsToDisplay )
            {
                 pWindow->m_StartRow =  MAX_ROWS - pWindow->m_RowsToDisplay;
            };
   
            if( pWindow->m_StartRow < 0 )
            {
                 pWindow->m_StartRow =  0;
            };
   
            SetScrollPos( pWindow->m_Window, SB_VERT, pWindow->m_StartRow, true );

            InvalidateRect( hWnd, NULL, false );


            break;                    
        }

		default:
        {
			return DefWindowProc(hWnd, message, wParam, lParam);
        }
   }

   return( 0 );
}

//=============================================================================
// Function:    ConsoleWindow::DeleteAll
//=============================================================================
// Description: This member is invoked to kill all console windows
//              
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::DeleteAll( void )
{
    while( s_ListHead != NULL )
    {
        delete s_ListHead;
    }
}

//=============================================================================
// Function:    ConsoleWindow::InvalidateAll
//=============================================================================
// Description: This member is invoked to invalidate all console windows
//              
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::InvalidateAll( void )
{
    ConsoleWindow* pCW = s_ListHead;

    while( pCW != NULL )
    {
		InvalidateRect( pCW->m_Window, NULL, false );
        pCW = pCW->m_Next;
    }
}


//=============================================================================
// Function:    ConsoleWindow::Find
//=============================================================================
// Description: This member will be an consolewindow object given the id
//              
// Parameters:  console id
//
// Returns:     Object if found, null otherwise.
//
// Notes:
//------------------------------------------------------------------------------

ConsoleWindow* ConsoleWindow::Find( unsigned int consoleId )
{
    ConsoleWindow* pCW = s_ListHead;

    while( pCW != NULL )
    {
        if( pCW->m_ConsoleId == consoleId )
        {
            return( pCW );
        }
        
        pCW = pCW->m_Next;
    }

    //
    // Assert if we get here.
    //
    return( NULL );      
}

//=============================================================================
// Function:    ConsoleWindow::SetTitle
//=============================================================================
// Description: 
//              
// Parameters:  set to set title.
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::SetTitle( char* title )
{
    SetWindowText( m_Window, title );

}

//=============================================================================
// Function:    ConsoleWindow::BackgroundColor
//=============================================================================
// Description: 
//              
// Parameters:  set to set title.
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::SetBackgroundColor( unsigned int color )
{
    m_BackgroundColor = color;
   
    InvalidateRect( m_Window, NULL, false );
}

//=============================================================================
// Function:    ConsoleWindow::Clear
//=============================================================================
// Description: 
//              
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::Clear( void )
{
    for( unsigned int x = 0 ; x < MAX_COLUMNS ; x++ )
    {
        for( unsigned int y = 0; y < MAX_ROWS ; y++ )
        {
            m_ScreenBuffer[ x][ y ].m_Char = ' ';
            m_ScreenBuffer[ x][ y ].m_Color = m_ForegroundColor;
        }
    }

    SetCursorPosition( 0, 0 );

    InvalidateRect( m_Window, NULL, false );

}

//=============================================================================
// Function:    ConsoleWindow::SetCursorPosition
//=============================================================================
// Description: 
//              
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::SetCursorPosition( int x, int y )
{
    while( x >= MAX_COLUMNS )
    {
        x -= MAX_COLUMNS;
        y++;
    };

    if( y >= MAX_ROWS )
    {
        y -= MAX_ROWS;
    }
        
    m_CursorX = x;
    
    m_CursorY = y;

 
    if( (int) m_CursorY < m_StartRow )
    {
        m_StartRow = m_CursorY;
    }
    else if( m_CursorY >= m_StartRow + m_RowsToDisplay )
    {
        m_StartRow = m_CursorY - m_RowsToDisplay + 1;
    }

    if ( GetFocus( ) == m_Window )
    {
        SetCaretPos( m_CursorX * m_sizFontSize.cx, (m_CursorY - m_StartRow) * m_sizFontSize.cy + m_sizFontSize.cy - 2 );
    }

    SetScrollPos( m_Window, SB_VERT, m_StartRow, true );
}

//=============================================================================
// Function:    ConsoleWindow::SetTextColor
//=============================================================================
// Description: 
//              
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::SetTextColor( unsigned int color )
{
    m_ForegroundColor = color;   

}

//=============================================================================
// Function:    ConsoleWindow::TextOutAt
//=============================================================================
// Description: 
//              
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::TextOutAt( int x, int y, char* text )
{
    SetCursorPosition( x, y );
    TextOut( text );
}

//=============================================================================
// Function:    ConsoleWindow::TextOutAt
//=============================================================================
// Description: 
//              
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::TextOut( char* text )
{
    while( *text != '\0' )
    {
        if( *text == 0x0D )			// Enter
        {        
            SetCursorPosition( 0, m_CursorY );    
        }
        else if( *text == 0x0A )	// ???
        {
            SetCursorPosition( 0, m_CursorY + 1  );       
        }
        else if( (*text >= 0x20) && (*text < 0x80 ) )
        {
            m_ScreenBuffer[ m_CursorX][ m_CursorY ].m_Char = *text;
            m_ScreenBuffer[ m_CursorX][ m_CursorY ].m_Color = m_ForegroundColor;        
            
            SetCursorPosition( m_CursorX + 1, m_CursorY );       
        }
        
        text++;    
    }
	
    InvalidateRect( m_Window, NULL, false );
}

//=============================================================================
// Function:    ConsoleWindow::Paint
//=============================================================================
// Description: 
//              
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::Paint( HDC deviceContext )
{
    (void)deviceContext;

	PAINTSTRUCT ps;
	HDC hDC = BeginPaint( m_Window, &ps );

	RECT rect;
	GetClientRect( m_Window, &rect );

    //
    // Set font to system font.
    //
    HFONT hfnt, hOldFont; 
 
    hfnt = (HFONT) GetStockObject(OEM_FIXED_FONT); 
    hOldFont = (HFONT) SelectObject(hDC, hfnt);

    SetBkColor( hDC, m_BackgroundColor );

    ::SetTextColor( hDC, m_ForegroundColor );

    if ( m_Window == GetFocus( ) )
    {
        SetCaretPos( m_CursorX * m_sizFontSize.cx, (m_CursorY - m_StartRow) * m_sizFontSize.cy + m_sizFontSize.cy - 2 );
    }

    for( int y = m_StartRow ; y < (int) m_StartRow + (int) m_RowsToDisplay ; y++ )
    {
        for( int x = 0 ; x < 80 ; x ++ )
        {
            ::SetTextColor( hDC, m_ScreenBuffer[x][ y].m_Color );
            ::TextOut( hDC,x * m_sizFontSize.cx, (y - m_StartRow) * m_sizFontSize.cy, (const char*) &(m_ScreenBuffer[x][y].m_Char), 1 );
        }
    }      

    SelectObject(hDC, hOldFont); 

	EndPaint( m_Window, &ps );
}

//=============================================================================
// Function:    ConsoleWindow::GetFontSize
//=============================================================================
// Description: Get Size of current font.
//              
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

SIZE ConsoleWindow::GetFontSize( ) const
{
    return m_sizFontSize;
}

//=============================================================================
// Function:    ConsoleWindow::PasteClipBoard
//=============================================================================
// Description: Paste some text from clipboard into console window by
//              keyboard input simulation.
//              
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void ConsoleWindow::PasteClipBoard( )
{
    strcpy( m_szClipBoardText, "" );
    if ( OpenClipboard( m_Window ) )
    {
        //
        // copy clipboard data into m_szClipBoardText
        //
        if( IsClipboardFormatAvailable( CF_TEXT) || IsClipboardFormatAvailable( CF_OEMTEXT ) )
        {
            HANDLE hClipData = NULL;
            hClipData = GetClipboardData( CF_TEXT );

            if ( hClipData != NULL )
            {
                char * lpClipData = static_cast< char * >( GlobalLock( hClipData ) );
                if ( lpClipData != NULL )
                {
                    strcpy( m_szClipBoardText, lpClipData );
                    GlobalUnlock( hClipData );
                }
            }
        }
        CloseClipboard( );

        //
        // use keyboard message as virtual output
        //
        unsigned int nCharIndex = 0;
        while( m_szClipBoardText[ nCharIndex ] != '\0' )
        {
            SHORT sExtKey = VkKeyScanEx( m_szClipBoardText[ nCharIndex ], GetKeyboardLayout( NULL ) );
            
            bool bShift = m_szClipBoardText[ nCharIndex ] & 0x20 != 0;
            m_pServer->SendVirtualKey( m_ConsoleId, (sExtKey & 0xff), (sExtKey & 0x200) == 1, (sExtKey & 0x100) == 1, (sExtKey & 0x400) == 1 );

            m_pServer->SendKeyPress( m_ConsoleId, (int) (m_szClipBoardText[ nCharIndex ]) );

            nCharIndex++;
        }       
    }
}


