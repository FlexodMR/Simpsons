//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemMonitorErrorHandler.cpp: implementation of the CMemMonitorErrorHandler class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "MemMonitorErrorHandler.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////
IMPLEMENT_DYNCREATE(CMemMonitorErrorHandler, CDocument)

CMemMonitorErrorHandler::CMemMonitorErrorHandler()
{

}

CMemMonitorErrorHandler::~CMemMonitorErrorHandler()
{
}

bool CMemMonitorErrorHandler::OnSubjectStateChange( int nState, int nHints, void * pUserData )
{
    switch( nState )
    {
        case SSC_MEM_ERROR_MSG :
        {
            CSingleLock sLock( & g_cs );
            sLock.Lock( );
            m_aryErrorMsg.push( reinterpret_cast< CMemErrorMsg * >( pUserData ) );
            sLock.Unlock( );
            Notify( SSC_MEM_ERROR_MSG_RECIEVED, 0, NULL );
            return true;
        }
        break;
    }
    return false;
}

bool CMemMonitorErrorHandler::IsEmpty( ) const
{
    CSingleLock sLock( & g_cs, true );
    return m_aryErrorMsg.empty( );
}

CMemErrorMsgPtr CMemMonitorErrorHandler::Remove( )
{
    CSingleLock sLock( & g_cs, true );
    if ( ! m_aryErrorMsg.empty( ) )
    {
        CMemErrorMsgPtr pData = m_aryErrorMsg.front( );
        m_aryErrorMsg.pop( );
        return pData;
    }
    return NULL;
}

void CMemMonitorErrorHandler::Clear( )
{
    CSingleLock sLock( & g_cs, true );
    while( !m_aryErrorMsg.empty( ) )
    {
        m_aryErrorMsg.pop( );
    }
}

unsigned int CMemMonitorErrorHandler::GetSize( ) const
{
    CSingleLock sLock( & g_cs, true );
    return m_aryErrorMsg.size( );
}
