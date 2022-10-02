//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "stdafx.h"
#include "PEAddr2Line.h"

extern CRITICAL_SECTION    g_ExclusionObject;
extern char g_DllPath[ 1024 ];
void ClearData( );

BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
    switch( ul_reason_for_call )
    {
        case DLL_PROCESS_ATTACH:
        {
            InitializeCriticalSection( & g_ExclusionObject );
            ClearData( );

            ::GetModuleFileName( NULL, g_DllPath, sizeof( g_DllPath ) );
            
            int nCharIdx = strlen( g_DllPath );
            while( nCharIdx > 1 )
            {
                if ( g_DllPath[ nCharIdx ] == '\\' )
                {
                    g_DllPath[ nCharIdx + 1 ] = '\0';
                    break;
                }
                nCharIdx --;
            }
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
            radPEAddr2LineUnLoadExe( );
            DeleteCriticalSection( & g_ExclusionObject );
        }
        break;
    }
    return TRUE;
}



