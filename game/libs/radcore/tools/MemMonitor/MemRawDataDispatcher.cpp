//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        MemRawDataDispatcher.cpp
//
// Subsystem:	Foundation Technologies - Memory Monitor Host
//
// Description:	This file contains the implementation of the Foundation 
//              Technologies memory monitor host
//
// Date:    	Nov 30, 2001
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================
#include "stdafx.h"
#include "MemRawDataDispatcher.h"
#include "MemMonitor.h"
#include "MemRawDataQueue.h"

//=============================================================================
// Local Defintions
//=============================================================================

//=============================================================================
// Static Data Defintions
//=============================================================================

//=============================================================================
// MFC Macro
//=============================================================================
IMPLEMENT_DYNCREATE(CMemRawDataDispatcher, CObject)

//=============================================================================
// Function:    CMemRawDataDispatcher::CMemRawDataDispatcher
//=============================================================================
// Description: Default constructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemRawDataDispatcher::CMemRawDataDispatcher( )
{

}

//=============================================================================
// Function:    CMemRawDataDispatcher::~CMemRawDataDispatcher
//=============================================================================
// Description: Destructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemRawDataDispatcher::~CMemRawDataDispatcher( )
{
}

//=============================================================================
// Function:    CMemRawDataDispatcher::OnSubjectStateChange
//=============================================================================
// Description: Callback function when new data is avriable in assoicated
//				CMemRawDataQueue
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemRawDataDispatcher::OnSubjectStateChange( int nState, int nHints, void * pUserData )
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    ASSERT( pApp );
    CMemSessionDataManager * pDataMang = pApp->GetMemSessionDataManagerPtr( );
    ASSERT( pDataMang );
    CMemRawDataQueue * pQueue = pDataMang->GetMemRawDataQueuePtr( );
    ASSERT( pQueue );

    switch( nState )
    {
        case SSC_MEM_HOST_RESUMED:
        case SSC_MEM_HOST_SUSPENDED:
        {
            Notify( nState, nHints, pUserData );
        }
        break;
    };
    return false;
}

void CMemRawDataDispatcher::OnRecieveNewData( WPARAM wParam, LPARAM lParam )
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    ASSERT( pApp );
    CMemSessionDataManager * pDataMang = pApp->GetMemSessionDataManagerPtr( );
    ASSERT( pDataMang );
    CMemRawDataQueue * pQueue = pDataMang->GetMemRawDataQueuePtr( );
    ASSERT( pQueue );

    //
    // Process data queue until it is empty
    //
    DWORD dwTimeStart = ::GetTickCount( );
    MM_DataPacketBlock Data;
    while( ! pQueue->IsEmpty( ) && ( ::GetTickCount( ) - dwTimeStart ) < 200 )
    {
        Data = pQueue->Remove( );
        //
        // let all observer to process this data and do what is needed
        //
        Notify( SSC_MEM_TRANSLATOR_PROCESS_NEWDATA, 0, & Data );
    }
}
