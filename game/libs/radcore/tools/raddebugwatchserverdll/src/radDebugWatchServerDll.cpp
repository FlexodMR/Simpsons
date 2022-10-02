//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        radDebugWatchServerDll.cpp
//
// Subsystem:   Radical Foundation Tech - Debug Watch Server DLL
//
// Description:	DLL interface implementation
//
// Revisions:	Apr 30, 2002
//
//=============================================================================

#include "stdafx.h"
#include "radDebugWatchServerDll.h"
#include "watchserver.h"

//
// The singlton watch server
//
CWatchServer * s_theWatchServer = NULL;

//===========================================================================
// DllMain
//===========================================================================
// Description: Entry point for dll.
//
// Constraints:	None
//
// Parameters:	See MSDN help
// return:      See MSDN help
//===========================================================================
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

//===========================================================================
// radWatchServerGetLastErrorMessage
//===========================================================================
// Description: return the last error code in string.
//
// Constraints:	None
//
// Parameters:	None
// return:      Last error code in string
//===========================================================================
const char * __stdcall radWatchServerGetLastErrorMessage( void )
{
    if ( s_theWatchServer != NULL )
    {
        return s_theWatchServer->GetLastErrorMessage( );
    }
    else
    {
        return NULL;
    }
}

//===========================================================================
// radWatchServerInitialize
//===========================================================================
// Description: Initialize the watch server and start the debug comm channel.
//
// Constraints:	None
//
// Parameters
//
//      pTargetName - the name of the target to connect to, if NULL,
//                  default target will be used.
//      updateTimeInMilliSec - amount of time between each polling
//      pStatusCallBack - Status callback for the communication channel.
//                  If user choose not to recieve any callback, set it to
//                  NULL.
//      radWatchServerOnWPChangeCallBack - callback when new watch point
//                  is created or old watch point is deleted. If user
//                  choose not to recieve any callback, set it to NULL.
//      radWatchServerOnRecieveWPValueCallBack - callback when value for
//                  a watch point has been changed. If user choose not
//                  to recieve any callback, set it to NULL.
//      pUserData - user pointer
// Return
//      true if initialized successfully, false otherwise
//
//===========================================================================
bool __stdcall radWatchServerInitialize
                (
                    const char * pTargetName,
                    unsigned int updateTimeInMilliSec,
                    radWatchServerConnectionStatusCallBack * pStatusCallBack,
                    radWatchServerOnWPChangeCallBack * pWPChangeCallBack,
                    radWatchServerOnRecieveWPValueCallBack * pWPValueCallBack,
                    void * pUserData
                )
{
    // pre-condition check
    if ( s_theWatchServer != NULL )
    {
        s_theWatchServer->SetLastErrorCode( CWatchServer::ErrorAlreadyInitialized );
        return false;
    }

    CWatchServer * pWatcher = new CWatchServer;

    if ( pWatcher == NULL )
    {
        s_theWatchServer->SetLastErrorCode( CWatchServer::ErrorOutofMemory );
        return false;
    }

    if ( pWatcher->Initialize
            (
                pTargetName,
                updateTimeInMilliSec,
                pStatusCallBack,
                pWPChangeCallBack,
                pWPValueCallBack,
                pUserData
            ) )
    {
        s_theWatchServer = pWatcher;
        return true;
    }
    else
    {
        return false;
    }
}

//===========================================================================
// radWatchServerTerminate
//===========================================================================
// Description: Terminate the watch server and the debug comm channel as well
//
// Constraints:	None
//
// Parameters:  None
//
// Return:      None
//===========================================================================
void __stdcall radWatchServerTerminate( void )
{
    if ( s_theWatchServer == NULL )
    {
        return;
    }
    else
    {
        CWatchServer * pWatcher = s_theWatchServer;
        s_theWatchServer = NULL;

        pWatcher->Terminate( );
        delete pWatcher;
    }
}

//===========================================================================
// radWatchServerService
//===========================================================================
// Description: Service the watcher server
//
// Constraints:	None
//
// Parameters:  None
//
// Return:      None
//===========================================================================
void __stdcall radWatchServerService( void )
{
    if ( s_theWatchServer != NULL )
    {
        s_theWatchServer->Service( );
    }
}

//===========================================================================
// radWatchServerGetTargetName
//===========================================================================
// Description: return the name of the target connected to
//
// Constraints:	None
//
// Parameters:  None
//
// Return:      Name of the target
//===========================================================================
const char * __stdcall radWatchServerGetTargetName( void )
{
    if ( s_theWatchServer != NULL )
    {
        return s_theWatchServer->GetClientTargetName( );
    }
    else
    {
        return NULL;
    }
}

//===========================================================================
// radWatchServerIsConnected
//===========================================================================
// Description: return true if watcher server is connected to the client.
//
// Constraints:	None
//
// Parameters:  None
//
// Return:      true - if connected to the client system.
//===========================================================================
bool __stdcall radWatchServerIsConnected( void )
{
    if ( s_theWatchServer != NULL )
    {
        return ( s_theWatchServer->GetClientConnectionStatus( ) == IRadDbgComChannel::Attached );
    }
    else
    {
        return false;
    }
}

//===========================================================================
// radWatchServerSetUpdateTimeInterval
//===========================================================================
// Description: Set time interval between each update
//
// Constraints:	None
//
// Parameters:  updateTimeInMilliSecond - time in milli-second
//
// Return:      None
//===========================================================================
void __stdcall radWatchServerSetUpdateTimeInterval
            (
                unsigned int updateTimeInMilliSecond
            )
{
    if ( s_theWatchServer != NULL )
    {
        s_theWatchServer->SetUpdateTimeInterval( updateTimeInMilliSecond );
    }
}

//===========================================================================
// radWatchServerGetUpdateTimeInterval
//===========================================================================
// Description: Get time interval between each update
//
// Constraints:	None
//
// Parameters:  
//
// Return:      time in milli-second
//===========================================================================
unsigned int __stdcall radWatchServerGetUpdateTimeInterval( void )
{
    if ( s_theWatchServer != NULL )
    {
        return s_theWatchServer->GetUpdateTimeInterval( );
    }
    else
    {
        return 0;
    }
}

//===========================================================================
// radWatchServerEnumerateWatchPoints
//===========================================================================
// Description: Enumerate all watch points in Breath first search order
//
// Constraints:	None
//
// Parameters:  pWatchPointCallBack - callback
//              pUserData - user data pointer
//
// Return:      None
//===========================================================================
void __stdcall radWatchServerEnumerateWatchPoints
            (
                radWatchServerEnumerateWatchPointsCallBack * pWatchPointCallBack,
                void * pUserData
            )
{
    if ( s_theWatchServer != NULL )
    {
        s_theWatchServer->EnumerateWatchPoints( pWatchPointCallBack, pUserData );
    }
}

//===========================================================================
// radWatchServerSelectWPAttribute
//===========================================================================
// Description: Return attribute of a watch point.
//
// Constraints:	Must call radWatchServerFreeWPAttribute( ) to free memory
//              allocated.
//
// Parameters:  pWPName - name of the watch point
//              pWPAttributes - returning attributes
//
// Return:      true if found, and pWPAttributes contain valid data
//===========================================================================
bool __stdcall radWatchServerSelectWPAttribute
            (
                const char * pWPName,
                radWatchServerWPAttribute * pWPAttributes
            )
{
    if ( s_theWatchServer != NULL )
    {
        return s_theWatchServer->SelectWPAttribute( pWPName, pWPAttributes );
    }
    else
    {
        return false;
    }
}

//===========================================================================
// radWatchServerSelectWPValue
//===========================================================================
// Description: Return value of a watch point.
//
// Constraints:	Must call radWatchServerFreeWPValue( ) to free memory
//              allocated.
//
// Parameters:  pWPName - name of the watch point
//              pWPValue - returning value
//
// Return:      true if found, and pWPValue contain valid data
//===========================================================================
bool __stdcall radWatchServerSelectWPValue
            (
                const char * pWPName,
                radWatchServerWPValue * pWPValue
            )
{
    if ( s_theWatchServer != NULL )
    {
        return s_theWatchServer->SelectWPValue( pWPName, pWPValue );
    }
    else
    {
        return false;
    }
}

//===========================================================================
// radWatchServerFreeWPAttribute
//===========================================================================
// Description: Free memory allocated in the watch point attribute
//              (radWatchServerWPAttribute)
//
// Constraints:	None
//
// Parameters:  pWPAttributes - attributes pointer
//
// Return:      None
//===========================================================================
void __stdcall radWatchServerFreeWPAttribute( radWatchServerWPAttribute * pWPAttributes )
{
    if ( pWPAttributes != NULL )
    {
        CWatchPoint::DeleteMemoryAllocated( pWPAttributes );
    }
}

//===========================================================================
// radWatchServerFreeWPValue
//===========================================================================
// Description: Free memory allocated in the watch point attribute
//              (radWatchServerWPAttribute)
//
// Constraints:	None
//
// Parameters:  pWPAttributes - attributes pointer
//
// Return:      None
//===========================================================================
void __stdcall radWatchServerFreeWPValue( radWatchServerWPValue * pWPValue )
{
    if ( pWPValue != NULL )
    {
        CWatchPoint::DeleteMemoryAllocated( pWPValue );
    }
}

//===========================================================================
// radWatchServerUpdateWPValue
//===========================================================================
// Description: Update watch point value from host PC to console client
//
// Constraints:	None
//
// Parameters:  pWPName - name of the watch point
//
// Return:      None
//===========================================================================
bool __stdcall radWatchServerUpdateWPValue
            (
                const char * pWPName,
                const radWatchServerWPValue * pWPValue
            )
{
    if ( s_theWatchServer != NULL )
    {
        return s_theWatchServer->UpdateWPValue( pWPName, pWPValue );
    }
    else
    {
        return false;
    }
}
