//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        DebugConsoleServer.cpp
//
// Subsystem:   Radical Foundation Technologies Debug Console Server
//
// Description:	This file contains the implementation of the debug console server.
//
// Revisions:	Dec 8, 2000
//
// Usage:       DebugCosoleServer [TargetName]. If target name not specified
//              then the default target is used,
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <windows.h>
#include "resource.h"
#include "ConsoleServer.hpp"

//=============================================================================
// Local Defintions
//=============================================================================

//=============================================================================
// Static Data Defintions
//=============================================================================

static  HWND g_TheAppWindow;

//=============================================================================
// Private Function Prototypes
//=============================================================================

LRESULT CALLBACK WinMainWndProc(HWND, UINT, WPARAM, LPARAM);

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// Function:    WinMain 
//=============================================================================
// Description: Main entry point. Load and run the target module.
// 
// Parameters:  See Windows
//
// Returns:     0 success, non zero error.
//
// Notes:
//------------------------------------------------------------------------------

int APIENTRY WinMain
(
    HINSTANCE   hInstance,
    HINSTANCE   hPrevInstance,
    LPSTR       lpCmdLine,
    int         nCmdShow
)
{
    //
    // First register a window class.
    //
	WNDCLASSEX wcex;
	wcex.cbSize         = sizeof(WNDCLASSEX); 
	wcex.style			= CS_HREDRAW | CS_VREDRAW;
	wcex.lpfnWndProc	= (WNDPROC) WinMainWndProc;
	wcex.cbClsExtra		= 0;
	wcex.cbWndExtra		= 0;
	wcex.hInstance		= hInstance;
	wcex.hIcon			= LoadIcon( wcex.hInstance, (LPCTSTR) IDI_LARGE );;
	wcex.hCursor		= NULL;
	wcex.hbrBackground	= NULL;
	wcex.lpszMenuName	= NULL;
	wcex.lpszClassName	= "DebugConsoleServer";
	wcex.hIconSm		= LoadIcon( wcex.hInstance, (LPCTSTR) IDI_SMALL );

	RegisterClassEx( &wcex );

    //
    // Create a window.
    //
    g_TheAppWindow = CreateWindow( "DebugConsoleServer", "DebugConsoleServer", WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_ICONIC,
                                    CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, NULL, NULL, hInstance, NULL);
    
    if( g_TheAppWindow == NULL )
    {
        return( 0 );
    }

    //
    // Construct the server object.
    //
    ConsoleServer* pServer = new ConsoleServer( );

    if( !pServer->Initialize( hInstance, g_TheAppWindow, lpCmdLine ) )
    {
        pServer->Release( );
        
        return( 0 );
    }

    //
    // Show the windows minimized
    //
    ShowWindow(g_TheAppWindow, SW_MINIMIZE);
    UpdateWindow(g_TheAppWindow);

    //
    // Entermessage loop.
    //
    MSG msg;
	while( GetMessage( &msg, NULL, 0, 0) ) 
	{
    	TranslateMessage(&msg);
		DispatchMessage(&msg);
	}

    pServer->Terminate( );
    
    pServer->Release( );
    
	return( 0 );
}

//=============================================================================
// Function:    WinMainWndProc 
//=============================================================================
// Description: Window procedure for the applications main window.
// 
// Parameters:  See Windows
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

LRESULT CALLBACK WinMainWndProc
(
    HWND    hWnd, 
    UINT    message,
    WPARAM  wParam,
    LPARAM  lParam
)
{
    //
    // I don't know how to disable the restore menu correctly. This works hovwever,
    //
    EnableMenuItem( GetSystemMenu( hWnd, false ), SC_RESTORE, MF_BYCOMMAND | MF_GRAYED );

    //
    // Process the message.
    //
	switch (message) 
	{
        //
        // Don't want to maximize the application.
        //
        case WM_SYSCOMMAND:
        {
            if( (wParam == SC_RESTORE ) || (wParam == SC_MAXIMIZE ) )
            {
                break;
            }

            return( DefWindowProc(hWnd, message, wParam, lParam) );
	    };

		case WM_DESTROY:
        {
			PostQuitMessage(0);
			break;
        }
		default:
        {
			return DefWindowProc(hWnd, message, wParam, lParam);
        }
   }

   return 0;
}

