//===========================================================================
// Copyright (C) 2001 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Memory monitor host
//
// Description: This file contains the implementation of the 
//              MemoryImage.
//
// Authors:     James Tan
//
//===========================================================================

//---------------------------------------------------------------------------
// Includes
//===========================================================================
#include "stdafx.h"
#include "MemMonitor.h"
#include "MemoryImage.h"
#include "MemoryBlock.h"

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================
IMPLEMENT_DYNCREATE( CMemoryImage, CDocument )

//===========================================================================
// Class Methods
//===========================================================================

//=============================================================================
// Function:    CMemoryImage::CMemoryImage
//=============================================================================
// Description: Constructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemoryImage::CMemoryImage() :
    m_uFirstRecordID( 0 ),
    m_uLastRecordID( 0 ),
    m_ePlatform( MM_Platform_Unknown )
{
    ClearData( );
}

//=============================================================================
// Function:    CMemoryImage::CMemoryImage
//=============================================================================
// Description: copy Constructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemoryImage::CMemoryImage( const CMemoryImage & rhs )
{
    //
    // should never call this function!!!
    //
    ASSERT( false );
}

//=============================================================================
// Function:    CMemoryImage::operator=
//=============================================================================
// Description: copy 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemoryImage & CMemoryImage::operator=( const CMemoryImage & rhs )
{
    m_aryMemorySpacePtr.clear( );
    m_MemorySpaceReadIterator = m_aryMemorySpacePtr.end( );

    //
    // time to make a copy
    //
    m_uFirstRecordID = rhs.m_uFirstRecordID;
    m_uLastRecordID = rhs.m_uLastRecordID;
    m_ePlatform = rhs.m_ePlatform;

    for( MemorySpaceList::const_iterator i = rhs.m_aryMemorySpacePtr.begin( ); i != rhs.m_aryMemorySpacePtr.end( ); i ++ )
    {
        CMemorySpacePtr pSpace = static_cast< CMemorySpace * >( RUNTIME_CLASS( CMemorySpace )->CreateObject( ) );
        *pSpace = **i;
        m_aryMemorySpacePtr.push_back( pSpace );
    }

    // don't copy iterator!!!
    m_MemorySpaceReadIterator = m_aryMemorySpacePtr.end( );

    for ( list< CMemoryFlagPtr >::const_iterator p = rhs.m_aryMemoryFlag.begin( ); p != rhs.m_aryMemoryFlag.end( ); p ++ )
    {
        CMemoryFlagPtr pFlag = static_cast< CMemoryFlag * >( RUNTIME_CLASS( CMemoryFlag )->CreateObject( ) );
        *pFlag = **p;
        m_aryMemoryFlag.push_back( pFlag );
    }

    SetModifiedFlag( TRUE );

    return *this;
}

//=============================================================================
// Function:    CMemoryImage::~CMemoryImage
//=============================================================================
// Description: Destructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemoryImage::~CMemoryImage()
{
    ClearData( );
}

//=============================================================================
// Function:    CMemoryImage::GetItemDisplayText
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
const CString & CMemoryImage::GetItemDisplayText( ) const
{
    m_strDisplayText = ::MMGetPlatformString( m_ePlatform );
    return m_strDisplayText;
}

//=============================================================================
// Function:    CMemoryImage::GetPlatformType
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
MM_ClientPlatform CMemoryImage::GetPlatformType( ) const
{
    return m_ePlatform;
}

//=============================================================================
// Function:    CMemoryImage::GetFirstRecordID
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryImage::GetFirstRecordID( ) const
{
    return m_uFirstRecordID;
}

//=============================================================================
// Function:    CMemoryImage::GetLastRecordID
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryImage::GetLastRecordID( ) const
{
    return m_uLastRecordID;
}

unsigned int CMemoryImage::GetMemorySpaceCount( ) const
{
    return m_aryMemorySpacePtr.size( );
}

bool CMemoryImage::MoveMemorySpaceFirst( ) const
{
    return stdex::MoveFirst( m_aryMemorySpacePtr, m_MemorySpaceReadIterator );
}

bool CMemoryImage::MoveMemorySpaceLast( ) const
{
    return stdex::MoveLast( m_aryMemorySpacePtr, m_MemorySpaceReadIterator );
}

bool CMemoryImage::MoveMemorySpaceNext( ) const
{
    return stdex::MoveNext( m_aryMemorySpacePtr, m_MemorySpaceReadIterator );
}

bool CMemoryImage::MoveMemorySpacePrev( ) const
{
    return stdex::MovePrev( m_aryMemorySpacePtr, m_MemorySpaceReadIterator );
}

//=============================================================================
// Function:    CMemoryImage::GetCurrentMemorySpace
//=============================================================================
// Description: Get current memory space used in the memory space iterator
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
const CMemorySpace * CMemoryImage::GetCurrentMemorySpace( ) const
{
    if ( m_MemorySpaceReadIterator == m_aryMemorySpacePtr.end( ) )
    {
        return NULL;
    }
    else
    {
        return (*m_MemorySpaceReadIterator);
    }
}

//=============================================================================
// Function:    CMemoryImage::FindMemorySpaceByType
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemorySpace * CMemoryImage::FindMemorySpaceByType( MM_ClientMemorySpace eType ) const
{
    if ( eType == MM_UNKNOWN )
    {
        return NULL;
    }

    vector< CMemorySpacePtr >::const_iterator p = NULL;

    for ( p = m_aryMemorySpacePtr.begin( ); p != m_aryMemorySpacePtr.end( ); p ++ )
    {
        if ( (*p)->GetMemorySpaceType( ) ==  eType )
        {
            return (*p);
        }
    }

    return NULL;
}

void CMemoryImage::AddMemorySpace( CMemorySpace * pMemorySpace )
{
    ASSERT( pMemorySpace );

    m_aryMemorySpacePtr.push_back( pMemorySpace );

    pMemorySpace->Attach( this );

    Notify( SSC_MEM_IMAGE_MODIFIED, 0, this );
    Notify( SSC_MEM_SPACE_ADDED, NULL, pMemorySpace );
}

#if defined(_DEBUG) || defined(_AFXDLL)
//=============================================================================
// Function:    CMemoryImage::AssertValid
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemoryImage::AssertValid() const
{
    CDocument::AssertValid( );
    ASSERT( m_uFirstRecordID > 0 );
    ASSERT( m_uLastRecordID >= m_uFirstRecordID );
}

//=============================================================================
// Function:    CMemoryImage::Dump
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemoryImage::Dump(CDumpContext& dc) const
{
    //
    // dump memory spaces
    //
    dc << "MemorySpaces count: [" << m_aryMemorySpacePtr.size( ) << "]\n";
    {
    for ( MemorySpaceList::const_iterator p = m_aryMemorySpacePtr.begin( ); p != m_aryMemorySpacePtr.end( ); p ++ )
    {
        dc << *p;
    }
    }
}
#endif

void CMemoryImage::SetModifiedFlag( BOOL bModified )
{
    CDocument::SetModifiedFlag( bModified );
    Notify( SSC_MEM_IMAGE_MODIFIED, 0, this );
}


bool CMemoryImage::OnSubjectStateChange( int nState, int nHints, void * pUserData )
{
    switch( nState )
    {
        case SSC_MEM_TRANSLATOR_PROCESS_NEWDATA:
        {
            ASSERT( pUserData != NULL );
            MM_DataPacketBlock * Data = reinterpret_cast< MM_DataPacketBlock * >( pUserData );

            return ProcessMemRawData( * Data );
        }
        break;
        case SSC_MEM_HOST_SUSPENDED:
        {
            /*
            //
            // code is disabled due to all platform doesn't provide actuate data on where stack start and end
            //
            for ( MemorySpaceList::const_iterator p = m_aryMemorySpacePtr.begin( ); p != m_aryMemorySpacePtr.end( ); p ++ )
            {
                if ( (*p)->GetMemorySpaceType( ) == MM_PS2_EE || (*p)->GetMemorySpaceType( ) == MM_GCN_MAIN || (*p)->GetMemorySpaceType( ) == MM_WIN_MAIN )
                {
                    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
                    ASSERT( pApp );
                    CMemSessionDataManager * pDataManager = pApp->GetMemSessionDataManagerPtr( );
                    ASSERT( pDataManager );
                    CMemMonitorHost * pHost = pDataManager->GetMemMonitorHostPtr( );
                    ASSERT( pHost );

                    bool bEOF = (*p)->MoveMemorySectionFirst( );

                    while( ! bEOF )
                    {
                        const CMemorySection * pSection = (*p)->GetCurrentMemorySection( );
                        if ( pSection->GetSectionType( ) == IRadMemoryMonitor::MemorySectionType_Stack )
                        {
                            pHost->RequestStackUsage( (*p)->GetMemorySpaceType( ), pSection->GetBegAddress( ) );
                        }
                    }
                }
            }
            return true;
            */
        }
        break;
    }

    //
    // memory image propergate down all messages
    //
    return Notify( nState, nHints, pUserData );
}

void CMemoryImage::ClearData( )
{
    m_ePlatform = MM_Platform_Unknown;
    m_uFirstRecordID = 0;
    m_uLastRecordID = 0;
    m_MemorySpaceReadIterator = m_aryMemorySpacePtr.end( );
    m_aryMemorySpacePtr.clear( );

    m_aryMemoryFlag.clear( );
    CMemoryFlagPtr pFlag = static_cast< CMemoryFlag * >( RUNTIME_CLASS( CMemoryFlag )->CreateObject( ) );
    pFlag->Initialize( 0, 0, "" );
    m_aryMemoryFlag.push_back( pFlag );

    Notify( SSC_MEM_IMAGE_CLEARED, 0, this );
}

