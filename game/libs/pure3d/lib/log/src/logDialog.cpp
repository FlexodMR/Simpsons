//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     21 January, 2002
// Modified:    21 January, 2002
// Version:     
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>

#include "../resource.h"
#include "rule/rule.h"

static bool bModeless = TRUE;
    
//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

HWND            gLogHWND = NULL;

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

void ResizeDialogControls( HWND hwnd )
{
    HWND                dlgList;
    HWND                dlgOK;
    dlgList = GetDlgItem( hwnd, IDC_LIST1 );
    dlgOK = GetDlgItem( hwnd, IDOK );
    
    RECT                clientRect;
    RECT                listRect;
    RECT                okRect;
    RECT                clientSize;
    RECT                listSize;
    RECT                okSize;

    GetWindowRect( hwnd, &clientRect );
    GetWindowRect( dlgList, &listRect );
    GetWindowRect( dlgOK, &okRect );
    GetClientRect( hwnd, &clientSize );
    GetClientRect( dlgList, &listSize );
    GetClientRect( dlgOK, &okSize );

    // Move list
    listRect.top = 62;
    listRect.left = 8;
    listSize.right = clientSize.right - 16;
    listSize.bottom = clientSize.bottom - listRect.top - okSize.bottom - 16;

    MoveWindow( dlgList, listRect.left, listRect.top, listSize.right, listSize.bottom, TRUE );

    // Move button
    okRect.left = ( clientSize.right / 2 ) - ( okSize.right / 2 );
    okRect.top = clientSize.bottom - okSize.bottom - 8;

    MoveWindow( dlgOK, okRect.left, okRect.top, okSize.right, okSize.bottom, TRUE );

}


static BOOL CALLBACK LogWndProc( HWND hwnd, UINT iMsg, WPARAM wParam, LPARAM lParam )
{
    switch ( iMsg )
    {
        case WM_INITDIALOG:
        {
            ResizeDialogControls( hwnd );
            return TRUE;
        }

        case WM_USER:
        {
            const CLog*         pLog = (CLog*)wParam;
            const char*         pTitle = (char*)lParam;

            if ( pTitle != NULL )
            {
                // Populate control with log results
                HWND            dlgHwnd;
                dlgHwnd = GetDlgItem( hwnd, IDC_LOGWARNING );
                SetWindowText( dlgHwnd, pTitle );
            }

            if ( pLog != NULL )
            {
                unsigned int        width = 0;

                // Get TextMetrics for current font
                SIZE                size;

                HDC                 hdc;
                hdc = GetDC( hwnd );

                // Populate control with log results
                HWND            dlgHwnd;
                dlgHwnd = GetDlgItem( hwnd, IDC_LIST1 );
                LRESULT             result;

                SendMessage( dlgHwnd, LB_RESETCONTENT, 0, 0 );

                unsigned int entry;
                for ( entry = 0; entry < pLog->NumEntries(); entry++ )
                {
                    const char* log = pLog->Entry( entry )->Entry();

                    GetTextExtentPoint32( hdc, log, strlen( log ), &size );
                    if ( width < size.cx )
                    {
                        width = size.cx;
                    }

                    result = SendMessage( dlgHwnd, LB_ADDSTRING, 0, (LPARAM) log );

                    if ( result == LB_ERR )
                    {
                        MessageBox( hwnd, log, "Could not add item", MB_OK );
                    }
                }

                SendMessage( dlgHwnd, LB_SETHORIZONTALEXTENT, width, 0 );

                ReleaseDC( hwnd, hdc );
            }

            break;
        }

        case WM_SIZE:
        {
            ResizeDialogControls( hwnd );
            break;
        }

        case WM_DESTROY:
        case WM_CLOSE:
        {
            if ( bModeless )
            {
              DestroyWindow( hwnd );
              gLogHWND = NULL;
            }
            else
            {
                EndDialog( hwnd, 0 );
                gLogHWND = NULL;
            }
            return TRUE;
            break;
        }

        case WM_COMMAND:
        {
            switch( LOWORD( wParam ) )
            {
                case IDOK:
                {
                    if ( bModeless )
                    {
                      DestroyWindow( hwnd );
                      gLogHWND = NULL;
                    }
                    else
                    {
                        EndDialog( hwnd, 0 );
                        gLogHWND = NULL;
                    }
                    return TRUE;

                    break;
                }
            }
        }
    }

    return FALSE;
}

int LogDialog( const CLog* pLog, const char* pTitle, HINSTANCE hInstance, HWND hwndParent )
{
    bool        bSuccess = false;
//    HWND        hwnd = NULL;
    int         dialogOK = -1;

    if ( bModeless )
    {
        // If window already exists, use it
        if ( gLogHWND == NULL )
        {
            gLogHWND = CreateDialog( hInstance, MAKEINTRESOURCE( IDD_LOGDIALOG ), hwndParent, LogWndProc );
        }
        else
        {
            SendMessage( gLogHWND, WM_USER, (WPARAM)pLog, (LPARAM)pTitle );
        }
    }
    else
    {
        dialogOK = DialogBox( hInstance, MAKEINTRESOURCE( IDD_LOGDIALOG ), hwndParent, DLGPROC( LogWndProc ) );
    }

    if ( ( gLogHWND == NULL ) && ( dialogOK == (-1) ) )
    {
        LPVOID lpMsgBuf;
        FormatMessage( 
            FORMAT_MESSAGE_ALLOCATE_BUFFER | 
            FORMAT_MESSAGE_FROM_SYSTEM | 
            FORMAT_MESSAGE_IGNORE_INSERTS,
            NULL,
            GetLastError(),
            MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), // Default language
            (LPTSTR) &lpMsgBuf,
            0,
            NULL 
        );
        // Process any inserts in lpMsgBuf.
        // ...
        // Display the string.
        MessageBox( NULL, (LPCTSTR)lpMsgBuf, "Error", MB_OK | MB_ICONINFORMATION );
        // Free the buffer.
        LocalFree( lpMsgBuf );

        return 1;

    }

    if ( bModeless )
    { 
        SendMessage( gLogHWND, WM_USER, (WPARAM)pLog, (LPARAM)pTitle );
        ShowWindow( gLogHWND, SW_SHOW );
    }

    return 0;
}
