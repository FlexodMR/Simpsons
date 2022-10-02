//===========================================================================
// Copyright (C) 2001 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Memory monitor host
//
// Description: This file contains the implementation of the 
//              MemorySpace.
//
// Authors:     James Tan
//
//===========================================================================

//---------------------------------------------------------------------------
// Includes
//===========================================================================
#include "stdafx.h"
#include "MemorySpace.h"

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

IMPLEMENT_DYNCREATE(CMemorySpace, CMemorySection)

//===========================================================================
// Static Data Definitions
//===========================================================================

//===========================================================================
// Class Methods
//===========================================================================

//=============================================================================
// Function:    CMemorySpace::CMemorySpace
//=============================================================================
// Description: Constructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemorySpace::CMemorySpace( ) :
    CMemorySection( )
{
}

//=============================================================================
// Function:    CMemorySpace::~CMemorySpace
//=============================================================================
// Description: Destructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemorySpace::~CMemorySpace()
{
}

//=============================================================================
// Function:    CMemorySpace::operator=
//=============================================================================
// Description: assignment operator
//              
// Returns:     CMemorySpace &
//
// Notes:
//------------------------------------------------------------------------------
CMemorySpace & CMemorySpace::operator=( const CMemorySpace & rhs )
{
    ( *static_cast< CMemorySection * >( this ) ) = ( * static_cast< const CMemorySection * >( & rhs ) );
    return *this;
}

//=============================================================================
// Function:    CMemorySpace::GetItemDisplayText
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
const CString & CMemorySpace::GetItemDisplayText( ) const
{
    m_strDisplayText.Format( "Memory Space: %s", (LPCTSTR)::MMGetMemorySpaceString( GetMemorySpaceType( ) ) );

    return m_strDisplayText;
}

//=============================================================================
// Function:    CMemorySpace::Initialize
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySpace::Initialize( MM_ClientMemorySpace eSpace, IRadMemoryMonitor::MemorySectionType eSectionType, unsigned int uAddress, unsigned int uSize, const CMemoryFlag * pFlag )
{
    return CMemorySection::Initialize( eSpace, IRadMemoryMonitor::MemorySectionType_DynamicData, uAddress, uSize, pFlag );
}

#if defined(_DEBUG) || defined(_AFXDLL)
//=============================================================================
// Function:    CMemorySpace::AssertValid
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemorySpace::AssertValid( ) const
{
    CMemorySection::AssertValid( );
}

//=============================================================================
// Function:    CMemorySpace::Dump
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemorySpace::Dump(CDumpContext& dc) const
{
    CMemorySection::Dump( dc );
}
#endif
