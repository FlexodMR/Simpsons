//===========================================================================
// Copyright (C) 2001 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Memory monitor View
//
// Description: This file contains the implementation of the 
//              Window State storage.
//
// Authors:     James Tan
//
//===========================================================================

//---------------------------------------------------------------------------
// Includes
//===========================================================================
#include "stdafx.h"
#include "MemWndState.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

IMPLEMENT_DYNCREATE(CMemWndState, CObject)

//===========================================================================
// Static Data Definitions
//===========================================================================

//===========================================================================
// Class Methods
//===========================================================================


//=============================================================================
// Function:    CMemWndState::CMemWndState
//=============================================================================
// Description: Constructor for the MemWndState
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemWndState::CMemWndState( ) :
    m_pWndClassType( NULL ),
    m_uWndID( 0 ),
    m_nCmdShow( SW_SHOWNORMAL ),
    m_rcWndPosition( 0, 0, 0, 0 )
{
    m_ReadIterator = m_aryChildWndState.end( );
}

//=============================================================================
// Function:    CMemWndState::~CMemWndState
//=============================================================================
// Description: Destructor for the MemWndState
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemWndState::~CMemWndState()
{
}


void CMemWndState::Initialize( const CRuntimeClass * pClassInfo, unsigned int uWndID, const int nWndState, const CRect & rcWndRect )
{
    ASSERT( pClassInfo != NULL );
    ASSERT( uWndID != 0 );
    ASSERT( nWndState == SW_SHOWMAXIMIZED || nWndState == SW_SHOWMINIMIZED || nWndState == SW_SHOWNORMAL );

    //
    // cannot be initialized already
    //
    ASSERT( m_pWndClassType == NULL );

    m_pWndClassType = pClassInfo;
    m_uWndID        = uWndID;
    m_nCmdShow      = nWndState;
    m_rcWndPosition = rcWndRect;

    m_aryChildWndState.clear( );

    m_ReadIterator == m_aryChildWndState.end( );
}

const CRuntimeClass * CMemWndState::GetWindowType( ) const
{
    ASSERT( m_pWndClassType != NULL );
    return m_pWndClassType;
}

unsigned int CMemWndState::GetWndID( ) const
{
    ASSERT( m_uWndID != 0 );
    return m_uWndID;
}

void CMemWndState::SetWndState( const int nWndState )
{
    ASSERT( nWndState == SW_SHOWMAXIMIZED || nWndState == SW_SHOWMINIMIZED || nWndState == SW_SHOWNORMAL );
    m_nCmdShow = nWndState;
}

int CMemWndState::GetWndState( ) const
{
    ASSERT( m_nCmdShow == SW_SHOWMAXIMIZED || m_nCmdShow == SW_SHOWMINIMIZED || m_nCmdShow == SW_SHOWNORMAL );
    return m_nCmdShow;
}

bool CMemWndState::IsMaximized( ) const
{
    return m_nCmdShow == SW_SHOWMAXIMIZED;
}

bool CMemWndState::IsMinimized( ) const
{
    return m_nCmdShow == SW_SHOWMINIMIZED;
}

bool CMemWndState::IsNormalized( ) const
{
    return m_nCmdShow == SW_SHOWNORMAL;
}

void CMemWndState::SetWndRect( const CRect & rcWndRect )
{
    m_rcWndPosition = rcWndRect;
}

const CRect & CMemWndState::GetWndRect( ) const
{
    return m_rcWndPosition;
}

//
// child window state list
//
void CMemWndState::AddChildWndState( CMemWndState * pChildWndState )
{
    ASSERT( pChildWndState != NULL );

    CMemWndState * pFoundWndState = FindChildWndState( pChildWndState->GetWindowType( ), pChildWndState->GetWndID( ) );

    if ( pFoundWndState == NULL )
    {
        //
        // if cannot find a child window state, insert into list
        //
        m_aryChildWndState.insert( m_aryChildWndState.end( ), pChildWndState );
    }
    else
    {
        //
        // overwrite the old state
        //
        pFoundWndState->m_rcWndPosition     = pChildWndState->m_rcWndPosition;
        pFoundWndState->m_nCmdShow          = pChildWndState->m_nCmdShow;
        pFoundWndState->m_aryChildWndState  = pChildWndState->m_aryChildWndState;
    }
}

const CMemWndState * CMemWndState::GetCurrentReadIterator( ) const
{
    if ( m_ReadIterator == m_aryChildWndState.end( ) )
    {
        return NULL;
    }
    else
    {
        return *m_ReadIterator;
    }
}

const CMemWndState * CMemWndState::GetFirstChildWndState( ) const
{
    m_ReadIterator = m_aryChildWndState.begin( );
    
    return GetCurrentReadIterator( );
}

const CMemWndState * CMemWndState::GetNextChildWndState( ) const
{
    m_ReadIterator ++;

    return GetCurrentReadIterator( );
}

const CMemWndState * CMemWndState::GetPrevChildWndState( ) const
{
    m_ReadIterator --;

    return GetCurrentReadIterator( );
}

const CMemWndState * CMemWndState::GetLastChildWndState( ) const
{
    m_ReadIterator = m_aryChildWndState.end( );

    m_ReadIterator--;

    return GetCurrentReadIterator( );
}

const CMemWndState * CMemWndState::FindChildWndState( const CRuntimeClass * pClassInfo, unsigned int uWndID ) const
{
    for ( m_ReadIterator = m_aryChildWndState.begin( ); m_ReadIterator != m_aryChildWndState.end( ); m_ReadIterator ++ )
    {
        const CMemWndState * pWndState = *m_ReadIterator;
        if( pWndState->m_pWndClassType == pClassInfo && pWndState->m_uWndID == uWndID )
        {
            return pWndState;
        }
    }
    return NULL;
}

CMemWndState * CMemWndState::FindChildWndState( const CRuntimeClass * pClassInfo, unsigned int uWndID )
{
    list< CMemWndStatePtr >::iterator p;
    for ( p = m_aryChildWndState.begin( ); p != m_aryChildWndState.end( ); p ++ )
    {
        CMemWndState * pWndState = *p;
        if( pWndState->m_pWndClassType == pClassInfo && pWndState->m_uWndID == uWndID )
        {
            m_ReadIterator = p;
            return pWndState;
        }
    }
    m_ReadIterator = m_aryChildWndState.end( );
    return NULL;
}

#if defined(_DEBUG) || defined(_AFXDLL)

// Diagnostic Support
void CMemWndState::AssertValid() const
{
    CObject::AssertValid( );
}

void CMemWndState::Dump(CDumpContext& dc) const
{
    CObject::Dump( dc );
}

#endif
