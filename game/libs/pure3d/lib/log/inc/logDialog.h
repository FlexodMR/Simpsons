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

// Recompilation protection flag.
#ifndef __LOGDIALOG_H_
#define __LOGDIALOG_H_ 

//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

BOOL CALLBACK LogWndProc( HWND hwnd, UINT iMsg, WPARAM wParam, LPARAM lParam );
int LogDialog( const CLog* pLog, const char* pTitle, HINSTANCE hInstance, HWND hwndParent );

#endif // __LOGDIALOG_H_
