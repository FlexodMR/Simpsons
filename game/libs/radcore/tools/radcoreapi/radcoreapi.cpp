//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// radcoreapi.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"
#include "radcoreapi.h"

BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
	switch (ul_reason_for_call)
	{
	    case DLL_PROCESS_ATTACH:
        {
        }
        break;

        case DLL_THREAD_ATTACH:
        {
        }
        break;

        case DLL_THREAD_DETACH:
        {

        }
        break;

        case DLL_PROCESS_DETACH:
        {

        }
        break;
	}
    return TRUE;
}


// Return the version of the API
bool GetRadCoreApiVersion( unsigned int * pMajor, unsigned int * pMinor )
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
