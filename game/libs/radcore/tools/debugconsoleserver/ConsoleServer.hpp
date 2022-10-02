//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        ConsoleServer.Hpp
//
// Subsystem:	Radical Debug Console Server
//
// Description:	This file contains all definitions and classes relevant to
//              the console server.
//
// Revisions:	8-Dec-2000 Creation
//				2-Feb-2001 HostReady command addd
//
// Notes:       
//
//=============================================================================

#ifndef	CONSOLESERVER_HPP
#define CONSOLESERVER_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <windows.h>
#include <raddebugcommunication.hpp>
#include "..\src\radprotocols\debugconsoleprotocol.hpp"

//=============================================================================
// Forward Class Declarations
//=============================================================================

class ConsoleWindow;

//=============================================================================
// Defintions
//=============================================================================

class ConsoleServer : public IRadDbgComChannelStatusCallback,
                      public IRadDbgComChannelReceiveCallback,
                      public IRadDbgComChannelSendCallback
{
    public:

    //
    // Constructor. Nothing too interesting.
    //
    ConsoleServer( void );

    //
    // Initialization and termination.
    //
    bool Initialize( HINSTANCE hInstance, HWND AppWindow, char* cmdLine );
    void Terminate( void );

    //
    // Status callback
    //
    virtual void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState,
                                 const char* Message );
       
    virtual void OnReceiveComplete( bool successful, unsigned int bytesReceived );
    virtual void OnSendComplete( bool successful );

    //
    // bIRefCount
    //
    virtual void AddRef( void );
    virtual void Release( void );

    //
    // Members to transmit character codes and mouse clicks to the
    // target 
    //
    void SendKeyPress( unsigned int consoleId, int character );
    void SendVirtualKey( unsigned int consoleId, int vkey, bool ctrl, bool shift, bool alt );
    void SendMouseEvent( unsigned int consoleId, int TextX, int TextY, int ScreenX, int ScreenY, HdcpInputMouseEventType type, bool ctrl, bool shift, bool alt, bool lbutton );

    bool ShouldSendVKey( unsigned int vkey );

	bool IsCompletePacket( unsigned int bytesRemaining, unsigned char* pRxBuffer );

    HWND        m_MainWnd;
    HINSTANCE   m_hInstance;

    protected:

    void InitiateTransmission( void );

    void SendHostRecvReadyCommand( void );

    private:
    
    //
    // Destruction done through release.
    //
    ~ConsoleServer( void );

    //
    // This member maintains the reference count of this object.
    //
    unsigned int m_ReferenceCount;    

    //
    // Channel used for communication.
    //
    IRadDbgComChannel*     m_Channel;

    //
    // Contains name of target connected to.
    //
    radDbgComTargetName m_Target;

    //  
    // Boolean to control termination,
    //
    bool    m_SelfDestruct;

    //
    // Buffer used to receive messages from the target.
    //
    unsigned char m_RxBuffer[ DBGCNSL_BUFFER_SIZE ];

    //
    // Buffer used for transmitting data. Double buffered so we can
    // queue information to send.
    //
    unsigned char m_TxBuffer1[ DBGCNSL_BUFFER_SIZE ];
    unsigned char m_TxBuffer2[ DBGCNSL_BUFFER_SIZE ];

    //
    // Used to control transmit state machine.
    bool            m_Attached;
    bool            m_TxOutstanding;
    unsigned int    m_TxBytesQueued;
    unsigned char*  m_CurrentTxAddress;
    bool            m_Buffer1Active;

    bool            m_ClientRecvReady;

	//
	// Set upon processing the last command in the RxBuffer
	bool			m_LastCommandRecvd;

       
};

//
// This class simply wraps the debug console window.
//
class ConsoleWindow 
{
    public:
    
    ConsoleWindow( ConsoleServer* pServer, unsigned int consoleId );
    ~ConsoleWindow( void );

    void SetTitle( char* title );
    void SetBackgroundColor( unsigned int color );
    void Clear( void );
    void SetCursorPosition( int x, int y );
    void SetTextColor( unsigned int color );
    void TextOutAt( int x, int y, char* text );
    void TextOut( char* text );

    //
    // Member used to paint the image
    //
    void Paint( HDC deviceContext );

    //
    // Paste Clipboard text into console by virtual char input.
    //
    void PasteClipBoard( );
    
    //
    // Static members used to delete all
    //
    static void DeleteAll( void );

	//
	// Static member used to InvalidateRect all
	//
	static void InvalidateAll( void );

    //
    // Member used to find the object given the id.
    //
    static ConsoleWindow* Find( unsigned int consoleId );

    //
    // Static used to field window messages.

    static LRESULT CALLBACK ConsoleWndProc( HWND hWnd, UINT message, WPARAM  wParam, LPARAM lParam );

    protected:

    SIZE GetFontSize( ) const;

    private:

    HWND                    m_Window;

    char                    m_szClipBoardText[ 1024 ];

    SIZE                    m_sizFontSize;

    ConsoleWindow*          m_Next;

    static  ConsoleWindow* s_ListHead;

    //
    // Parent server.
    //
    ConsoleServer*          m_pServer;

    //
    // Id of console. Provided by the target.
    //
    unsigned int            m_ConsoleId;
   
    //
    // This data represents the virtual screen. We maintain the text in this buffer
    // and paint portions of it.
    //
    #define MAX_COLUMNS         80
    #define MAX_ROWS            1024
    
    struct  Character
    {
        unsigned char m_Char;
        COLORREF      m_Color;
    };

    Character     m_ScreenBuffer[ MAX_COLUMNS ][ MAX_ROWS ];
    unsigned int  m_CursorX;
    unsigned int  m_CursorY;

    COLORREF    m_BackgroundColor;    
    COLORREF    m_ForegroundColor;    

    unsigned int m_ClientDeltaX;
    unsigned int m_ClientDeltaY;

    unsigned int m_RowsToDisplay;
    int          m_StartRow;
    bool            m_bLButtonDown;
};
  

#endif


