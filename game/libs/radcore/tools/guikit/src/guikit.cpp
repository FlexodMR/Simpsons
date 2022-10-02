//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// guikit.cpp : Defines the initialization routines for the DLL.
//

#include "stdafx.h"
#include <afxdllx.h>
#include <raddebugcommunication.hpp>

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

static AFX_EXTENSION_MODULE guikitDLL = { NULL, NULL };

extern "C" int APIENTRY
DllMain(HINSTANCE hInstance, DWORD dwReason, LPVOID lpReserved)
{
	// Remove this if you use lpReserved
	UNREFERENCED_PARAMETER(lpReserved);

	if (dwReason == DLL_PROCESS_ATTACH)
	{
		TRACE0("guikit.DLL Initializing!\n");
		
		// Extension DLL one-time initialization
		if (!AfxInitExtensionModule(guikitDLL, hInstance))
			return 0;

		// Insert this DLL into the resource chain
		// NOTE: If this Extension DLL is being implicitly linked to by
		//  an MFC Regular DLL (such as an ActiveX Control)
		//  instead of an MFC application, then you will want to
		//  remove this line from DllMain and put it in a separate
		//  function exported from this Extension DLL.  The Regular DLL
		//  that uses this Extension DLL should then explicitly call that
		//  function to initialize this Extension DLL.  Otherwise,
		//  the CDynLinkLibrary object will not be attached to the
		//  Regular DLL's resource chain, and serious problems will
		//  result.

		new CDynLinkLibrary(guikitDLL);

		// Sockets initialization
		// NOTE: If this Extension DLL is being implicitly linked to by
		//  an MFC Regular DLL (such as an ActiveX Control)
		//  instead of an MFC application, then you will want to
		//  remove the following lines from DllMain and put them in a separate
		//  function exported from this Extension DLL.  The Regular DLL
		//  that uses this Extension DLL should then explicitly call that
		//  function to initialize this Extension DLL.
		if (!AfxSocketInit())
		{
			return FALSE;
		}
	}
	else if (dwReason == DLL_PROCESS_DETACH)
	{
		TRACE0("guikit.DLL Terminating!\n");

		// Terminate the library before destructors are called
		AfxTermExtensionModule(guikitDLL);
	}
	return 1;   // ok
}

// Return the version of the API
bool GetGuiKitApiVersion( unsigned int * pMajor, unsigned int * pMinor )
{
    char szFileName[ 512 ] = { 0 };

    DWORD dwRet = GetModuleFileName( GetModuleHandle( "radcoreapi.dll" ), szFileName, sizeof( szFileName ) );
    assert( dwRet != 0 );
    if ( dwRet == NULL )
    {
        return false;
    }

    DWORD dwFileVersionHandle = 0;

    DWORD dwFileVersionSize = GetFileVersionInfoSize( szFileName, & dwFileVersionHandle );

    void * pFileVersionData = new char[ dwFileVersionSize ];

    if ( ! GetFileVersionInfo( szFileName, 0, dwFileVersionSize, pFileVersionData ) )
    {
        delete[] pFileVersionData;
        return false;
    }

    VS_FIXEDFILEINFO * pVesrionInfo = NULL;
    UINT uLen = sizeof( VS_FIXEDFILEINFO );


    if ( ! VerQueryValue( pFileVersionData, "\\", (void**)&pVesrionInfo, &uLen ) )
    {
        delete[] pFileVersionData;
        return false;
    }

    if ( pMajor != NULL )
    {
        *pMajor = pVesrionInfo->dwFileVersionMS;
    }

    if ( pMinor != NULL )
    {
        *pMinor = pVesrionInfo->dwFileVersionLS;
    }

    delete[] pFileVersionData;

    return true;
}
