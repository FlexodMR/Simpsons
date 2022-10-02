//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     22 July, 2002
//
// Component:   GetVersionString.c
//
// Description: Used to retrieve the version string from a Maya MLL plug-in
//              for display in Maya's UI.
//
// Constraints: ** LINK with:  version.lib, kernel32.lib
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/GetVersionString.hpp"

#include <windows.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

void GetVersionString( const char* pDllName, char* buf, size_t maxBytes )
{
    DWORD version_len, zero_ptr;
    VS_FIXEDFILEINFO* vsffi;
    UINT vsffi_len;
    char* version_data = NULL;

    GetModuleFileName(GetModuleHandle( pDllName ), buf, maxBytes );
    version_len = GetFileVersionInfoSize( buf, &zero_ptr );
    version_data = (char*) malloc( version_len );
    GetFileVersionInfo( buf, 0, version_len, version_data);
    VerQueryValue(version_data, "\\", (void**)(&vsffi), &vsffi_len);
    if ( vsffi->dwFileVersionLS > 0 )
    {
        sprintf(buf, "%d.%d.%d.%d", (vsffi->dwFileVersionMS >> 16),(vsffi->dwFileVersionMS & 0x0ffff), (vsffi->dwFileVersionLS >> 16),(vsffi->dwFileVersionLS & 0x0ffff));
    }
    else
    {
        sprintf(buf, "%d.%d", (vsffi->dwFileVersionMS >> 16),(vsffi->dwFileVersionMS & 0x0ffff));
    }
    free( version_data );
}
