//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemContent.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemContent.h"

/////////////////////////////////////////////////////////////////////////////
// CMemContent

IMPLEMENT_DYNCREATE(CMemContent, CDocument)

CMemContent::CMemContent( )
{
}

CMemContent::~CMemContent( )
{
    ClearData( );
}

/////////////////////////////////////////////////////////////////////////////
// CMemContent diagnostics

#ifdef _DEBUG
void CMemContent::AssertValid() const
{
	CDocument::AssertValid();
}

void CMemContent::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

void CMemContent::Initialize( )
{
    m_aryDataContentList.clear( );
}

bool CMemContent::OnSubjectStateChange( int nState, int nHints, void * pUserData )
{
    switch( nState )
    {
        case SSC_MEM_TRANSLATOR_PROCESS_NEWDATA :
        {
            ASSERT( pUserData != NULL );
            MM_DataPacketBlock * Data = reinterpret_cast< MM_DataPacketBlock * >( pUserData );

            return ProcessMemRawData( *Data );
        }
        break;

        case SSC_MEM_HOST_SUSPENDED:
        case SSC_MEM_HOST_RESUMED :
        {
            m_aryDataContentList.clear( );
            Notify( SSC_MEM_CONTENT_CLEARED, 0, this );
        }
        break;
    }
    return false;
}

bool CMemContent::ProcessMemRawData( const MM_DataPacketBlock & Data )
{
    switch( Data.commandPacket.header )
    {
        case MemoryBlockType:
        {
            AddData( Data.sendMemBlockData.memorySpace, Data.sendMemBlockData.memStartPos, Data.sendMemBlockData.memLength, Data.sendMemBlockData.memBlock );
            Notify( SSC_MEM_CONTENT_RECIEVED, Data.sendMemBlockData.memorySpace, (void*)(Data.sendMemBlockData.memStartPos) );
            return true;
        }
        break;
    }
    return false;
}

void CMemContent::RequestData( const MM_ClientMemorySpace eMemorySpaceType, const unsigned int uAddress, const unsigned int uSize )
{
    __int64 nAbsoluteMemoryAddress = ( (__int64)eMemorySpaceType << 32 ) + ( uAddress );

    Notify( SSC_MEM_CONTENT_REQUEST, uSize, & nAbsoluteMemoryAddress );
}

bool CMemContent::GetByteData( const MM_ClientMemorySpace eMemorySpaceType, const unsigned int uAddress, char * pData )
{
    unsigned int uAlignedAddr = uAddress - ( uAddress % 128 );
    __int64 nAbsoluteMemoryAddress = ( (__int64)eMemorySpaceType << 32 ) + uAlignedAddr;

    DataContentList::const_iterator p = m_aryDataContentList.find( nAbsoluteMemoryAddress );
    
    *pData = 0;
    if ( p == m_aryDataContentList.end( ) )
    {
        return false;
    }
    else
    {
        const char * pStoredData = p->second.GetData( );
        ASSERT( pStoredData != NULL );

        *pData = pStoredData[ uAddress - uAlignedAddr ];
        return true;
    }
}

void CMemContent::AddData( const MM_ClientMemorySpace eMemorySpaceType, const unsigned int uAddress, const unsigned int uSize, const char * pData )
{
    // uAddress must be 128 bytes aligned
    ASSERT( ( uAddress % 128 ) == 0 );
    ASSERT( uSize == 128 );
    ASSERT( pData != NULL );

    __int64 nAbsoluteMemoryAddress = ( (__int64)eMemorySpaceType << 32 ) + uAddress;

    DataContentList::iterator p = m_aryDataContentList.find( nAbsoluteMemoryAddress );
    if ( p != m_aryDataContentList.end( ) )
    {
        p->second.SetData( pData );
    }
    else
    {
        m_aryDataContentList.insert( pair< __int64, CMemContentData128 >( nAbsoluteMemoryAddress, CMemContentData128( pData ) ) );
    }
}

void CMemContent::ClearData( )
{
    m_aryDataContentList.clear( );
    Notify( SSC_MEM_CONTENT_CLEARED, 0, this );
}
