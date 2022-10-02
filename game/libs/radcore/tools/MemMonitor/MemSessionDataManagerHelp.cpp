//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemSessionDataManager.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemMonitorHost.h"
#include "MemSessionDataManager.h"
#include "MemRawDataQueue.h"

bool CMemSessionDataManager::OnSubjectStateChange( int nState, int nHints, void * pUserData )
{
    switch( nState )
    {
        case SSC_MEM_ERROR_MSG:
        {
            return true;
        }

        case SSC_MEM_HOST_RECONNECT:
		{
            //
            // when attaching, it may not attach to last platform we were using,
            // so must unload pdb files.
            //
            if ( radPEAddr2LineIsExeLoaded( ) )
            {
                radPEAddr2LineUnLoadExe( );
            }

            m_pConcurrentMemoryImage->ClearData( );
			m_pMemoryContent->ClearData( );
			SetModifiedFlag( TRUE );

            Notify( nState, nHints, pUserData );

            return true;
		}
		break;

        case SSC_MEM_CONFIG_MODIFIED:
        {
            SetModifiedFlag( TRUE );
            return true;
        }
        break;

        case SSC_MEM_CONTENT_REQUEST:
        {
            ASSERT( m_pMemMonitorHost != NULL );
            if ( m_pMemMonitorHost != NULL )
            {
                __int64 nAbsoluteMemoryAddress = * (__int64*) pUserData;

                MM_ClientMemorySpace eSpace = (MM_ClientMemorySpace)( nAbsoluteMemoryAddress >> 32 );
                unsigned int uAddress = (unsigned int)( nAbsoluteMemoryAddress & 0x00000000ffffffff );
                unsigned int uSize = nHints;
                m_pMemMonitorHost->RequestMemContentData( eSpace, uAddress, uSize );
            }
            return true;
        }
        break;

        case SSC_MEM_HOST_ONRECIEVE:
        {
            return true;
        }
        break;

        default:
        {
            return Notify( nState, nHints, pUserData );
        }
        break;
    }
    return false;
}

