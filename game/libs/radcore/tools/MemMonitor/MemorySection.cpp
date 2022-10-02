//===========================================================================
// Copyright (C) 2002 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Memory monitor host
//
// Description: This file contains the implementation of the 
//              MemorySection.
//
// Authors:     James Tan
//
//===========================================================================

//---------------------------------------------------------------------------
// Includes
//===========================================================================
#include "stdafx.h"
#include "MemorySection.h"
#include "MemErrorMsg.h"

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

IMPLEMENT_DYNCREATE(CMemorySection, CObject)

//===========================================================================
// Static Data Definitions
//===========================================================================

//===========================================================================
// Class Methods
//===========================================================================

CMemoryBlockPtr CMemorySection::CreateFreeMemoryBlock( unsigned int uAddress, unsigned int uSize ) const
{
    CMemoryBlockPtr pFreeBlock = static_cast< CMemoryBlock * >( RUNTIME_CLASS( CMemoryBlock )->CreateObject( ) );
    pFreeBlock->Initialize( m_eMemorySpaceType, uAddress, uSize, NULL, 0, NULL, true );
    return pFreeBlock;
}

//=============================================================================
// Function:    CMemorySection::CMemorySection
//=============================================================================
// Description: Constructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemorySection::CMemorySection( )
{
    ClearData( );
}

//=============================================================================
// Function:    CMemorySection::~CMemorySection
//=============================================================================
// Description: Destructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemorySection::~CMemorySection()
{
    ClearData( );
}

CMemorySection & CMemorySection::operator=( const CMemorySection & rhs )
{
    rhs.AssertValid( );

    m_strDisplayText                = rhs.m_strDisplayText;
    m_bBuildCellMap                 = false;        // Never defautly build a cell map!!! Save memory
    m_aryMemCellMap.clear( );
    m_eMemorySpaceType              = rhs.m_eMemorySpaceType;
    m_strName                       = rhs.m_strName;
    m_eType                         = rhs.m_eType;
    m_uAddress                      = rhs.m_uAddress;
    m_uSize                         = rhs.m_uSize;
    m_uUsedSize                     = rhs.m_uUsedSize;
    m_uLargestUsedSize              = rhs.m_uLargestUsedSize;
    m_uAllocationOperationCount     = rhs.m_uAllocationOperationCount;
    m_uDeallocationOperationCount   = rhs.m_uDeallocationOperationCount;

    m_aryMemoryBlockPtr             = rhs.m_aryMemoryBlockPtr;
    m_MemoryBlockReadIterator       = m_aryMemoryBlockPtr.end( );
    m_aryMemorySectionPtr           = rhs.m_aryMemorySectionPtr;
    m_MemorySectionReadIterator     = m_aryMemorySectionPtr.end( );

    return *this;
}

bool CMemorySection::OnSubjectStateChange( int nState, int nHints, void * pUserData )
{
    switch( nState )
    {
        case SSC_MEM_SECTION_MODIFIED:
        {
            SetModifiedFlag( TRUE );
        }
        break;
    }
    return Notify( nState, nHints, pUserData );
}

void CMemorySection::SetModifiedFlag( BOOL bModified )
{
//    CObject::SetModifiedFlag( bModified );
    if ( bModified )
    {
        Notify( SSC_MEM_SECTION_MODIFIED, NULL, this );
    }
    else
    {
        for ( MemorySectionList::iterator p = m_aryMemorySectionPtr.begin( ); p != m_aryMemorySectionPtr.end( ); p ++ )
        {
            p->second->SetModifiedFlag( FALSE );
        }
    }
}

const CString & CMemorySection::GetItemDisplayText( ) const
{
    float fPercentUsed = (m_uSize == 0 ) ? 0.0f : float( m_uUsedSize ) / float( m_uSize ) * 100.0f;
    
    //
    //Solve floating point overflow and cause negative value
    //
    if ( fPercentUsed < 0.0f )
    {
        fPercentUsed = 0.0f;
    }
    m_strDisplayText.Format( "%s[%s] - Utilized: [%s]/[%s]-[%.2f%%]",
                    (LPCTSTR)m_strName,
                    (LPCTSTR)::MMGetMemorySectionShortString( m_eType ),
                    (LPCTSTR)::MMFormatMemorySizeString( m_uUsedSize ),
                    (LPCTSTR)::MMFormatMemorySizeString( m_uSize ),
                    fPercentUsed );

    return m_strDisplayText;
}

unsigned int CMemorySection::GetPropertyItemCount( ) const
{
    //
    // total 10 items
    //
    // 0) Section Type
    // 1) Section Name
    // 2) Section start address
    // 3) Section Total Size
    // 4) Section Total allocation count
    // 5) Section Total Used Size with Percentage
    // 6) Section Total Free Size with Percentage
    // 7) Section Largest Recorded Used Size
    // 8) Section Total new operation count
    // 9) Section Total delete operation count
    //
    return 10;
}

const CString CMemorySection::GetPropertyItemName( unsigned int uIndex ) const
{
    switch( uIndex )
    {
        //
        // section type
        //
        case 0:
        {
            return CString( "Type" );
        }
        break;

        //
        // section name
        //
        case 1:
        {
            return CString( "Name" );
        }
        break;

        //
        // section start address
        //
        case 2:
        {
            return CString( "Start Address" );
        }
        break;

        //
        // Section total size
        //
        case 3:
        {
            return CString( "Total Size" );
        }
        break;

        //
        // Section Total block count
        //
        case 4:
        {
            return CString( "Block Count" );
        }
        break;

        //
        // Section Used size
        //
        case 5:
        {
            return CString( "Used Size" );
        }
        break;

        //
        // Section Free size
        //
        case 6:
        {
            return CString( "Free Size" );
        }
        break;

        //
        // Section's largest recorded size
        //
        case 7:
        {
            return CString( "Largest Recorded Size" );
        }
        break;

        //
        // Section's allocation operation count
        //
        case 8:
        {
            return CString( "Allocation operation count" );
        }
        break;

        //
        // Section's allocation operation count
        //
        case 9:
        {
            return CString( "Deallocation operation count" );
        }
        break;
    }

    return CString("unknown");
}

const CString CMemorySection::GetPropertyItemValue( unsigned int uIndex ) const
{
    switch( uIndex )
    {
        //
        // section type
        //
        case 0:
        {
            return ::MMGetMemorySectionString( GetSectionType( ) );
        }
        break;

        //
        // section name
        //
        case 1:
        {
            return GetMemorySectionName( );
        }
        break;

        //
        // section start address
        //
        case 2:
        {
            CString strText;
            strText.Format( "0x%08x", GetBegAddress( ) );
            return strText;
        }
        break;

        //
        // Section total size
        //
        case 3:
        {
            return ::MMFormatMemorySizeString( GetTotalSize( ) );
        }
        break;

        //
        // Section Total block count
        //
        case 4:
        {
            CString strText;
            strText.Format( "%u", GetMemoryBlockCount( ) );
            return strText;
        }
        break;

        //
        // Section Used size
        //
        case 5:
        {
            return ::MMFormatMemorySizeString( GetTotalUsedSize( ) );
        }
        break;

        //
        // Section Free size
        //
        case 6:
        {
            return ::MMFormatMemorySizeString( GetTotalFreeSize( ) );
        }
        break;

        //
        // Section's largest recorded size
        //
        case 7:
        {
            return ::MMFormatMemorySizeString( GetLargestUsedSize( ) );
        }
        break;

        //
        // Section's allocation operation count
        //
        case 8:
        {
            CString strText;
            strText.Format( "%u", m_uAllocationOperationCount );
            return strText;
        }
        break;

        //
        // Section's allocation operation count
        //
        case 9:
        {
            CString strText;
            strText.Format( "%u", m_uDeallocationOperationCount );
            return strText;
        }
        break;

    }
    return CString("unknown");
}

void CMemorySection::SetBuildMemCellMap( bool bBuild, unsigned int nCellCount )
{
    m_bBuildCellMap = bBuild;

    if ( bBuild && m_aryMemCellMap.size( ) != nCellCount )
    {
        m_aryMemCellMap.clear( );
        m_aryMemCellMap.resize( nCellCount );
        if ( nCellCount > 0 )
        {
            ReBuildMemCellMap( );
        }
        SetModifiedFlag( TRUE );
    }
    else if ( ! bBuild )
    {
        m_aryMemCellMap.clear( );
    }
}

bool CMemorySection::GetBuildMemCellMap( ) const
{
    return m_bBuildCellMap;
}

MM_ClientMemorySpace CMemorySection::GetMemorySpaceType( ) const
{
    return m_eMemorySpaceType;
}

//=============================================================================
// Function:    CMemorySection::Initialize
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::Initialize( MM_ClientMemorySpace eSpace, IRadMemoryMonitor::MemorySectionType eSectionType, unsigned int uAddress, unsigned int uSize, const CMemoryFlag * pFlag )
{
    ASSERT( pFlag != NULL );
    m_eMemorySpaceType  = eSpace;
    m_eType             = eSectionType;
    m_uAddress          = uAddress;
    m_uSize             = uSize;

    m_aryMemoryBlockPtr.clear( );
    m_MemoryBlockReadIterator = m_aryMemoryBlockPtr.end( );

    if ( m_eType == IRadMemoryMonitor::MemorySectionType_Code || m_eType == IRadMemoryMonitor::MemorySectionType_StaticData )
    {
        CMemoryBlockPtr pAlocBlock = static_cast< CMemoryBlock * >( RUNTIME_CLASS( CMemoryBlock )->CreateObject( ) );
        pAlocBlock->Initialize( eSpace, m_uAddress, uSize, NULL, 0, pFlag );
        pAlocBlock->IdenitfyAs( "", "System Reserved", 0, 0 );
        m_aryMemoryBlockPtr.insert( pair< unsigned int, CMemoryBlockPtr >( pAlocBlock->GetBegAddress( ), pAlocBlock ) );
    }
    else if ( m_eType == IRadMemoryMonitor::MemorySectionType_DynamicData )
    {
        CMemoryBlockPtr pFreeBlock = CreateFreeMemoryBlock( uAddress, uSize );
        m_aryMemoryBlockPtr.insert( pair< unsigned int, CMemoryBlockPtr >( uAddress, pFreeBlock ) );
    }
    else if ( m_eType == IRadMemoryMonitor::MemorySectionType_Stack )
    {
        CMemoryBlockPtr pAlocBlock = static_cast< CMemoryBlock * >( RUNTIME_CLASS( CMemoryBlock )->CreateObject( ) );
        pAlocBlock->Initialize( eSpace, m_uAddress, uSize, NULL, 0, pFlag );
        pAlocBlock->IdenitfyAs( "", "Stack", 0, 0 );
        m_aryMemoryBlockPtr.insert( pair< unsigned int, CMemoryBlockPtr >( pAlocBlock->GetBegAddress( ), pAlocBlock ) );
    }
    else
    {
        //
        // report error, unknown Section Type recieved from client
        //
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "Declare Section : Unknown Section Type Found. Section Detail: Space[%s], Type ID [%d], Addr [0x%x], Size[%u].",
                         (LPCTSTR)::MMGetMemorySpaceString( eSpace ),
                         eSectionType,
                         uAddress,
                         uSize );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL, pFlag );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    // first time build
    ReBuildMemCellMap( );
    ReCalculateFreeSize( );
    SetModifiedFlag( TRUE );
    return true;
}

//=============================================================================
// Function:    CMemorySection::IdentifyAs
//=============================================================================
// Description: Identify this section with name
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemorySection::IdentifyAs( const CString & strName )
{
    m_strName = strName;
    SetModifiedFlag( TRUE );
}

//=============================================================================
// Function:    CMemorySection::GetBegAddress
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemorySection::ClearData( )
{
    m_strDisplayText = "";
    m_bBuildCellMap = false;
    m_aryMemCellMap.clear( );
    m_eMemorySpaceType = MM_UNKNOWN;
    m_strName = "";
    m_eType = IRadMemoryMonitor::MemorySectionType_DynamicData;
    m_uAddress = 0;
    m_uSize = 0xffffffff;
    m_uUsedSize = 0;
    m_uLargestUsedSize = 0;
    m_uAllocationOperationCount = 0;
    m_uDeallocationOperationCount = 0;
    m_aryMemoryBlockPtr.clear( );
    m_MemoryBlockReadIterator = m_aryMemoryBlockPtr.end( );
    m_aryMemorySectionPtr.clear( );
    m_MemorySectionReadIterator = m_aryMemorySectionPtr.end( );

    m_aryMemCellMap.reserve( 1024 * 10 );
}

//=============================================================================
// Function:    CMemorySection::GetBegAddress
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemorySection::GetBegAddress( ) const
{
    return m_uAddress;
}

//=============================================================================
// Function:    CMemorySection::GetTotalSize
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemorySection::GetTotalSize( ) const
{
    return m_uSize;
}

//=============================================================================
// Function:    CMemorySection::GetTotalUsedSize
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemorySection::GetTotalUsedSize( ) const
{
    return m_uUsedSize;
}

//=============================================================================
// Function:    CMemorySection::GetLargestTotalSize
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemorySection::GetLargestUsedSize( ) const
{
    return m_uLargestUsedSize;
}

//=============================================================================
// Function:    CMemorySection::GetTotalFreeSize
//============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemorySection::GetTotalFreeSize( ) const
{
    ASSERT( m_uSize >= m_uUsedSize );
    return m_uSize - m_uUsedSize;
}

//=============================================================================
// Function:    CMemorySection::GetEndAddress
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemorySection::GetEndAddress( ) const
{
    if ( m_uSize == 0 )
    {
        return m_uAddress;
    }
    else
    {
        return m_uAddress + m_uSize - 1;
    }
}

//=============================================================================
// Function:    CMemorySection::GetSectionType
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
IRadMemoryMonitor::MemorySectionType CMemorySection::GetSectionType( ) const
{
    return m_eType;
}

//=============================================================================
// Function:    CMemorySection::GetMemorySectionName
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CString CMemorySection::GetMemorySectionName( ) const
{
    return m_strName;
}

//=============================================================================
// Function:    CMemorySection::InsertAllocation
//=============================================================================
// Description: Insert a allocation block into current memory section image tree
//              
// Returns:     true if successful, false otherwise
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::InsertAllocation( const CMemoryBlock * pBlock )
{
    ASSERT( pBlock );
    ASSERT( m_aryMemoryBlockPtr.size( ) != 0 );

    //==========================================================================
    // Step 1:
    // recusivly search until we hit the deepest section that has the allocation
    // starting address.
    //==========================================================================
    CMemorySection * pSection = FindMemorySectionByAddr( pBlock->GetBegAddress( ) );

    if ( pSection != this )
    {
        return pSection->InsertAllocation( pBlock );
    }

    MemoryBlockList::iterator found = m_aryMemoryBlockPtr.find( pBlock->GetBegAddress( ) );

    //
    // if new block has same starting address as a free block
    //
    if ( found != m_aryMemoryBlockPtr.end( ) )
    {
        CMemoryBlockPtr pFoundBlock = found->second;
        if ( ! pFoundBlock->IsFreeBlock( ) )
        {
            //
            // not a free block, error message as we have a memory over write
            //
            CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
            CString strError;
            strError.Format( "DeclareAllocation : overwrite previous memory block. Previous: Space[%s], Addr[0x%x], Size[%u], Current: Space [%s], Addr[0x%x], Size[%u].",
                             (LPCTSTR)::MMGetMemorySpaceString( pFoundBlock->GetMemorySpace( ) ),
                             pFoundBlock->GetBegAddress( ),
                             pFoundBlock->GetTotalSize( ),
                             (LPCTSTR)::MMGetMemorySpaceString( pBlock->GetMemorySpace( ) ),
                             pBlock->GetBegAddress( ),
                             pBlock->GetTotalSize( ) );
            pError->Initialize( CMemErrorMsg::Error, strError, NULL );
            unsigned int pCallStacks[ MM_MAX_CALLSTACK_DEPTH ];
            ASSERT( pBlock->GetCallStackDepth( ) <= MM_MAX_CALLSTACK_DEPTH );
            for ( unsigned int uCallStackIdx = 0; uCallStackIdx < pBlock->GetCallStackDepth( ); uCallStackIdx ++ )
            {
                pCallStacks[ uCallStackIdx ] = pBlock->GetCallStackAtIndex( uCallStackIdx );
            }
            pError->SetSubTextEntry( ReadStackTrace( pCallStacks, pBlock->GetCallStackDepth( ) ) );
            Notify( SSC_MEM_ERROR_MSG, 0, pError );
            return false;
        }
        else
        {
            // if there's enough space for the new block
            if ( pFoundBlock->GetTotalSize( ) >= pBlock->GetTotalSize( ) )
            {
                // always erase the free block at this location
                VERIFY( m_aryMemoryBlockPtr.erase( pFoundBlock->GetBegAddress( ) ) > 0 );
                // allocate the new block
                m_aryMemoryBlockPtr.insert( pair< unsigned int, CMemoryBlockPtr >( pBlock->GetBegAddress( ), pBlock ) );
                MemoryBlockList::const_iterator iterator = m_aryMemoryBlockPtr.find( pBlock->GetBegAddress( ) );

                ASSERT( iterator != m_aryMemoryBlockPtr.end( ) );
                unsigned int uAddress = pBlock->GetEndAddress( ) + 1;
                int nSize = 0;

                // add free block at the end
                iterator ++;
                if ( iterator != m_aryMemoryBlockPtr.end( ) )
                {
                    CMemoryBlock * pNextBlock = iterator->second;
                    // the next block must not be free block, there's no two continous free
                    // blocks (they would merge into one block)
                    ASSERT( ! pNextBlock->IsFreeBlock( ) );
                    
                    // insert a new free block between two
                    nSize = pNextBlock->GetBegAddress( ) - uAddress;
                }
                else
                {
                    // reach the end
                    nSize = GetEndAddress( ) - uAddress + 1;
                }

                if ( nSize > 0 )
                {
                    CMemoryBlockPtr pFreeBlock = CreateFreeMemoryBlock( uAddress, nSize );
                    m_aryMemoryBlockPtr.insert( pair< unsigned int, CMemoryBlockPtr >( pFreeBlock->GetBegAddress( ), pFreeBlock ) );
                }
            }
            // if there's not enough space for the new block
            else
            {
                //
                // too large to fit into free space
                //
                CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
                CString strError;
                strError.Format( "DeclareAllocation : newly allocated memory block too large to fit into the free space specified. Free Block Detail : Memory Space [%s], Addr[0x%x], Size[%u], Allocation Detail : Memory Space [%s], Addr[0x%x], Size[%u].",
                                 (LPCTSTR)::MMGetMemorySpaceString( pFoundBlock->GetMemorySpace( ) ),
                                 pFoundBlock->GetBegAddress( ),
                                 pFoundBlock->GetTotalSize( ),
                                 (LPCTSTR)::MMGetMemorySpaceString( pBlock->GetMemorySpace( ) ),
                                 pBlock->GetBegAddress( ),
                                 pBlock->GetTotalSize( ) );
                pError->Initialize( CMemErrorMsg::Error, strError, NULL );
                unsigned int pCallStacks[ MM_MAX_CALLSTACK_DEPTH ];
                ASSERT( pBlock->GetCallStackDepth( ) <= MM_MAX_CALLSTACK_DEPTH );
                for ( unsigned int uCallStackIdx = 0; uCallStackIdx < pBlock->GetCallStackDepth( ); uCallStackIdx ++ )
                {
                    pCallStacks[ uCallStackIdx ] = pBlock->GetCallStackAtIndex( uCallStackIdx );
                }
                pError->SetSubTextEntry( ReadStackTrace( pCallStacks, pBlock->GetCallStackDepth( ) ) );
                Notify( SSC_MEM_ERROR_MSG, 0, pError );
                return false;
            }
        }
    }
    // no free block of the same address, break up the free block
    else
    {
        pair< MemoryBlockList::iterator, bool > retValue = m_aryMemoryBlockPtr.insert( pair< unsigned int, CMemoryBlockPtr >( pBlock->GetBegAddress( ), pBlock ) );

        MemoryBlockList::iterator iterator = m_aryMemoryBlockPtr.find( pBlock->GetBegAddress( ) );
        MemoryBlockList::iterator p = NULL;

        p = iterator;
        //
        // check if we need to create free blocks
        // before the new block
        //
        p--;

        if ( p != m_aryMemoryBlockPtr.end( ) && p != iterator )
        {
            CMemoryBlock * pLastBlock = p->second;

            if ( !pLastBlock->IsFreeBlock( ) )
            {
                //
                // delete the newly inserted block
                //
                if ( retValue.second == true )
                {
                    VERIFY( m_aryMemoryBlockPtr.erase( iterator ) != m_aryMemoryBlockPtr.end( ) );
                }

                CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
                CString strError;
                strError.Format( "DeclareAllocation : newly allocated memory block overlap perious allocation. Perv Block Detail : Memory Space [%s], Addr[0x%x], Size[%u], Current Allocation Detail : Memory Space [%s], Addr[0x%x], Size[%u].",
                                 (LPCTSTR)::MMGetMemorySpaceString( pLastBlock->GetMemorySpace( ) ),
                                 pLastBlock->GetBegAddress( ),
                                 pLastBlock->GetTotalSize( ),
                                 (LPCTSTR)::MMGetMemorySpaceString( pBlock->GetMemorySpace( ) ),
                                 pBlock->GetBegAddress( ),
                                 pBlock->GetTotalSize( ) );
                pError->Initialize( CMemErrorMsg::Error, strError, NULL );
                unsigned int pCallStacks[ MM_MAX_CALLSTACK_DEPTH ];
                ASSERT( pBlock->GetCallStackDepth( ) <= MM_MAX_CALLSTACK_DEPTH );
                for ( unsigned int uCallStackIdx = 0; uCallStackIdx < pBlock->GetCallStackDepth( ); uCallStackIdx ++ )
                {
                    pCallStacks[ uCallStackIdx ] = pBlock->GetCallStackAtIndex( uCallStackIdx );
                }
                pError->SetSubTextEntry( ReadStackTrace( pCallStacks, pBlock->GetCallStackDepth( ) ) );
                Notify( SSC_MEM_ERROR_MSG, 0, pError );
                return false;
            }
            else
            {
                
                if ( pBlock->GetEndAddress( ) <= pLastBlock->GetEndAddress( ) )
                {
                    unsigned int uOldFreeBlockEndAddress = pLastBlock->GetEndAddress( );

                    //
                    // Retain the last free block and resize it just before the new allocation
                    //
                    pLastBlock->SetTotalSize( pBlock->GetBegAddress( ) - pLastBlock->GetBegAddress( ) );

                    //
                    // create a new free block after the new block
                    //
                    unsigned int uAddress = pBlock->GetEndAddress( ) + 1;

                    if ( ( uOldFreeBlockEndAddress ) > uAddress )
                    {
                        CMemoryBlockPtr pFreeBlock = CreateFreeMemoryBlock( uAddress, uOldFreeBlockEndAddress - uAddress + 1 );
                        m_aryMemoryBlockPtr.insert( pair< unsigned int, CMemoryBlockPtr >( pFreeBlock->GetBegAddress( ), pFreeBlock ) );
                    }
                }
                else
                {
                    //
                    // delete the newly inserted block
                    //
                    VERIFY( m_aryMemoryBlockPtr.erase( pBlock->GetBegAddress( ) ) > 0 );

                    // too large to fit into free space
                    //
                    CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
                    CString strError;
                    strError.Format( "DeclareAllocation : newly allocated memory block too large to fit into the free space specified. Free Block Detail : Memory Space [%s], Addr[0x%x], Size[%u], Allocation Detail : Memory Space [%s], Addr[0x%x], Size[%u].",
                                     (LPCTSTR)::MMGetMemorySpaceString( pLastBlock->GetMemorySpace( ) ),
                                     pLastBlock->GetBegAddress( ),
                                     pLastBlock->GetTotalSize( ),
                                     (LPCTSTR)::MMGetMemorySpaceString( pBlock->GetMemorySpace( ) ),
                                     pBlock->GetBegAddress( ),
                                     pBlock->GetTotalSize( ) );
                    pError->Initialize( CMemErrorMsg::Error, strError, NULL );
                    unsigned int pCallStacks[ MM_MAX_CALLSTACK_DEPTH ];
                    ASSERT( pBlock->GetCallStackDepth( ) <= MM_MAX_CALLSTACK_DEPTH );
                    for ( unsigned int uCallStackIdx = 0; uCallStackIdx < pBlock->GetCallStackDepth( ); uCallStackIdx ++ )
                    {
                        pCallStacks[ uCallStackIdx ] = pBlock->GetCallStackAtIndex( uCallStackIdx );
                    }
                    pError->SetSubTextEntry( ReadStackTrace( pCallStacks, pBlock->GetCallStackDepth( ) ) );
                    Notify( SSC_MEM_ERROR_MSG, 0, pError );
                    return false;
                }
            }
        }
        else
        {
            //
            // p-- must work;
            //
            ASSERT( false );
        }
    }

    ASSERT( m_aryMemoryBlockPtr.find( pBlock->GetBegAddress( ) ) != m_aryMemoryBlockPtr.end( ) );

    IncrementalBuildMemCellMap( pBlock );

    m_uAllocationOperationCount ++;

    //
    // give each allocation a unique number ( memory section based )
    // Hack: cast to non-const
    const_cast< CMemoryBlock * >( pBlock )->SetAllocationID( m_uAllocationOperationCount );

    //
    // for every 1000 allocation, we do a rebuild of free size
    //
    if ( m_uAllocationOperationCount % 10000 )
    {
        if ( ! pBlock->IsFreeBlock( ) )
        {
            m_uUsedSize += pBlock->GetTotalSize( );
        }
    }
    else
    {
        ReCalculateFreeSize( );
    }
    
    if ( m_uUsedSize > m_uLargestUsedSize )
    {
        m_uLargestUsedSize = m_uUsedSize;
    }

    Notify( SSC_MEM_BLOCK_NEW, NULL, const_cast< CMemoryBlock * >( pBlock ) );
    SetModifiedFlag( TRUE );

    return true;
}

//=============================================================================
// Function:    CMemorySection::RemoveAllocation
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::RemoveAllocation( const CMemoryBlock * pBlock )
{
    ASSERT( pBlock );

    //
    // free( NULL ) is okay in those memory space
    //
    if ( ( pBlock->GetMemorySpace( ) == MM_PS2_EE ) ||
         ( pBlock->GetMemorySpace( ) == MM_GCN_MAIN ) || 
         ( pBlock->GetMemorySpace( ) == MM_WIN_MAIN ) )
    {
        if ( pBlock->GetBegAddress( ) == 0 )
        {
            return true;
        }
    }

    CMemorySection * pSection = FindMemorySectionByAddr( pBlock->GetBegAddress( ) );

    if ( pSection != this )
    {
        return pSection->RemoveAllocation( pBlock );
    }

    //
    // find the instance of the same memory address
    //
    MemoryBlockList::iterator p = m_aryMemoryBlockPtr.find( pBlock->GetBegAddress( ) );

    ASSERT( p != m_aryMemoryBlockPtr.end( ) );

    if ( pBlock->IsFreeBlock( ) )
    {
        return false;
    }

    //
    // delete memory block of the same address
    //

    MemoryBlockList::iterator last = NULL;
    MemoryBlockList::iterator next = NULL;
    CMemoryBlock * pLastBlock = NULL;
    CMemoryBlock * pNextBlock = NULL;

    //
    // before deletion, see if we can merge two free block into one
    //
    last = p;
    if ( last != m_aryMemoryBlockPtr.begin( ) )
    {
        last--;
        pLastBlock = last->second;
    }

    next = p;
    next++;
    if ( next != m_aryMemoryBlockPtr.end( ) )
    {
        pNextBlock = next->second;
    }

    VERIFY( m_aryMemoryBlockPtr.erase( p ) != m_aryMemoryBlockPtr.end( ) );

    if ( ( pLastBlock != NULL && pNextBlock != NULL ) && ( pLastBlock->IsFreeBlock( ) && pNextBlock->IsFreeBlock( ) ) && pLastBlock != pNextBlock )
    {
        //
        // now do two way merge
        //
        unsigned int uAddress = pLastBlock->GetBegAddress( );
        unsigned int uSize = pNextBlock->GetEndAddress( ) - uAddress + 1;
        pLastBlock->Initialize( m_eMemorySpaceType, uAddress, uSize, NULL, 0, NULL, true );
        VERIFY( m_aryMemoryBlockPtr.erase( pNextBlock->GetBegAddress( ) ) );
    }
    else if ( pLastBlock != NULL && pLastBlock->IsFreeBlock( ) )
    {
        //
        // now do one way merge with last free block
        //
        unsigned int uAddress = pLastBlock->GetBegAddress( );
        unsigned int uSize = pBlock->GetEndAddress( ) - uAddress + 1;
        pLastBlock->Initialize( m_eMemorySpaceType, uAddress, uSize, NULL, 0, NULL, true );
    }
    else if ( pNextBlock != NULL && pNextBlock->IsFreeBlock( ) )
    {
        //
        // now do one way merge with next free block
        //
        unsigned int uAddress = pBlock->GetBegAddress( );
        int nSize = pNextBlock->GetEndAddress( ) - uAddress + 1;

        VERIFY( m_aryMemoryBlockPtr.erase( pNextBlock->GetBegAddress( ) ) > 0 );
        CMemoryBlockPtr pFreeBlock = CreateFreeMemoryBlock( uAddress, nSize );
        m_aryMemoryBlockPtr.insert( pair< unsigned int, CMemoryBlockPtr >( pFreeBlock->GetBegAddress( ), pFreeBlock ) );
    }
    else
    {
        unsigned int uAddress = pBlock->GetBegAddress( );
        int nSize = pBlock->GetTotalSize( );

        CMemoryBlockPtr pFreeBlock = CreateFreeMemoryBlock( uAddress, nSize );
        m_aryMemoryBlockPtr.insert( pair< unsigned int, CMemoryBlockPtr >( pFreeBlock->GetBegAddress( ), pFreeBlock ) );
    }

    IncrementalBuildMemCellMap( pBlock );

    m_uDeallocationOperationCount ++;
    //
    // for every 1000 deallocation, we do a rebuild of free size
    //
    if ( m_uDeallocationOperationCount % 10000 )
    {
        if ( ! pBlock->IsFreeBlock( ) )
        {
            if ( m_uUsedSize < pBlock->GetTotalSize( ) )
            {
                m_uUsedSize = 0;
            }
            else
            {
                m_uUsedSize -= pBlock->GetTotalSize( );
            }
        }
    }
    else
    {
        ReCalculateFreeSize( );
    }

    Notify( SSC_MEM_BLOCK_FREE, NULL, const_cast< CMemoryBlock * >( pBlock ) );

    SetModifiedFlag( TRUE );

    return true;
}

bool CMemorySection::SetStackHighWaterMark( const unsigned int uAddress )
{
    if ( m_eType != IRadMemoryMonitor::MemorySectionType_Stack )
    {
        //
        // report that stack specified by client is not stack
        //
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "Stack : stack section sepcific by client at addr[0x%x]. Section at that address: Space[%s], Section Type [%s], Addr [0x%x], Size[%u].",
                         uAddress,
                         (LPCTSTR)::MMGetMemorySpaceString( GetMemorySpaceType( ) ),
                         GetSectionType( ),
                         GetBegAddress( ),
                         GetTotalSize( ) );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    if ( uAddress < GetBegAddress( ) )
    {
        //
        // report error where stack is overflow
        //
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "Stack : stack over flow at addr[0x%x]. Stack Section Detail: Space[%s], Section Type [%s], Addr [0x%x], Size[%u].",
                         uAddress,
                         (LPCTSTR)::MMGetMemorySpaceString( GetMemorySpaceType( ) ),
                         GetSectionType( ),
                         GetBegAddress( ),
                         GetTotalSize( ) );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        //
        // allocate two memory block, first one is the free memory block,
        // second one is the allocated memory block
        //
        ClearMemoryBlock( );

        CMemoryBlockPtr pAloc = static_cast< CMemoryBlock * >( RUNTIME_CLASS( CMemoryBlock )->CreateObject( ) );
        pAloc->Initialize( GetMemorySpaceType( ), GetBegAddress( ), GetTotalSize( ), NULL, 0, NULL );
        pAloc->IdenitfyAs( "", "Stack", 0, 0 );
        InsertAllocation( pAloc );
        ReCalculateFreeSize( );
        ReBuildMemCellMap( );

        return false;
    }
    else if ( uAddress > GetEndAddress( ) )
    {
        //
        // report error where stack is underflow
        //
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "Stack : stack under flow at addr[0x%x]. Stack Section Detail: Space[%s], Section Type [%s], Addr [0x%x], Size[%u].",
                         uAddress,
                         (LPCTSTR)::MMGetMemorySpaceString( GetMemorySpaceType( ) ),
                         GetSectionType( ),
                         GetBegAddress( ),
                         this->GetTotalSize( ) );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );

        CMemoryBlockPtr pFree = CreateFreeMemoryBlock( GetBegAddress( ), GetTotalSize( ) );
        InsertAllocation( pFree );
        ReCalculateFreeSize( );
        ReBuildMemCellMap( );
        return false;
    }
    else
    {
        //
        // allocate two memory block, first one is the free memory block,
        // second one is the allocated memory block
        //
        ClearMemoryBlock( );

        CMemoryBlockPtr pFree = CreateFreeMemoryBlock( GetBegAddress( ), uAddress - GetBegAddress( ) );
        InsertAllocation( pFree );

        CMemoryBlockPtr pAloc = static_cast< CMemoryBlock * >( RUNTIME_CLASS( CMemoryBlock )->CreateObject( ) );
        pAloc->Initialize( GetMemorySpaceType( ), uAddress, GetEndAddress( ) - uAddress, NULL, 0, NULL );
        pAloc->IdenitfyAs( "", "Stack", 0, 0 );
        InsertAllocation( pAloc );
        ReCalculateFreeSize( );
        ReBuildMemCellMap( );
        return true;
    }
    return false;
}

bool CMemorySection::InsertSection( CMemorySection * pSection )
{
    ASSERT( pSection );

    CMemorySection * pParentSection = FindMemorySectionByAddr( pSection->GetBegAddress( ) );

    if ( pParentSection == NULL )
    {
        //
        // report error where parent section cannot be found
        //
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "DeclareSection : Failed to delcare section, parent section has memory address[0x%x] cannot be found. Section Detail: Space[%s], Section Type [%s], Addr [0x%x], Size[%u].",
                         pSection->GetBegAddress( ),
                         (LPCTSTR)::MMGetMemorySpaceString( pSection->GetMemorySpaceType( ) ),
                         pSection->GetSectionType( ),
                         pSection->GetBegAddress( ),
                         pSection->GetTotalSize( ) );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    pParentSection->m_aryMemorySectionPtr.insert( pair< unsigned int, CMemorySectionPtr >( pSection->GetBegAddress( ), pSection ) );
    pSection->Attach( pParentSection );

    Notify( SSC_MEM_SECTION_ADDED, NULL, pSection );
    SetModifiedFlag( TRUE );

    return true;
}

bool CMemorySection::RemoveSection( CMemorySection * pSection )
{
    ASSERT( pSection );

    CMemorySection * pParentSection = FindParentMemorySectionByAddr( pSection );

    if ( pParentSection == NULL )
    {
        //
        // report error where parent sectio cannot be found
        //
        CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
        CString strError;
        strError.Format( "RescindSection : Failed to rescind section, parent section has memory address[0x%x] cannot be found. Section Detail: Space[%s], Section Type [%s], Addr [0x%x], Size[%u].",
                         pSection->GetBegAddress( ),
                         (LPCTSTR)::MMGetMemorySpaceString( pSection->GetMemorySpaceType( ) ),
                         pSection->GetSectionType( ),
                         pSection->GetBegAddress( ),
                         pSection->GetTotalSize( ) );
        pError->Initialize( CMemErrorMsg::Error, strError, NULL );
        Notify( SSC_MEM_ERROR_MSG, 0, pError );
        return false;
    }

    ASSERT( pParentSection != NULL );
    pSection->Detach( pParentSection );
    VERIFY( pParentSection->m_aryMemorySectionPtr.erase( pSection->GetBegAddress( ) ) );

    Notify( SSC_MEM_SECTION_REMOVED, NULL, pSection );
    SetModifiedFlag( TRUE );

    return true;
}

//=============================================================================
// Function:    CMemorySection::GetMemorySectionCount
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemorySection::GetMemorySectionCount( ) const
{
    return m_aryMemorySectionPtr.size( );
}

//=============================================================================
// Function:    CMemorySection::MoveMemorySectionFirst
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::MoveMemorySectionFirst( ) const
{
    return stdex::MoveFirst( m_aryMemorySectionPtr, m_MemorySectionReadIterator );
}

//=============================================================================
// Function:    CMemorySection::MoveMemorySectionLast
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::MoveMemorySectionLast( ) const
{
    return stdex::MoveLast( m_aryMemorySectionPtr, m_MemorySectionReadIterator );
}

//=============================================================================
// Function:    CMemorySection::MoveMemorySectionNext
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::MoveMemorySectionNext( ) const
{
    return stdex::MoveNext( m_aryMemorySectionPtr, m_MemorySectionReadIterator );
}

//=============================================================================
// Function:    CMemorySection::MoveMemorySectionPrev
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::MoveMemorySectionPrev( ) const
{
    return stdex::MovePrev( m_aryMemorySectionPtr, m_MemorySectionReadIterator );
}

//=============================================================================
// Function:    CMemorySection::GetCurrentMemorySection
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
const CMemorySection * CMemorySection::GetCurrentMemorySection( ) const
{
    if ( m_MemorySectionReadIterator == m_aryMemorySectionPtr.end( ) )
    {
        return NULL;
    }
    return m_MemorySectionReadIterator->second;
}

//=============================================================================
// Function:    CMemorySection::FindMemorySectionByAddr
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
#pragma warning( disable : 4717 )
const CMemorySection * CMemorySection::FindMemorySectionByAddr( unsigned int uAddress ) const
{
    return const_cast< CMemorySection * >( FindMemorySectionByAddr( uAddress ) );
}
#pragma warning( default : 4717 )

//=============================================================================
// Function:    CMemorySection::FindMemorySectionByAddr
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemorySection * CMemorySection::FindMemorySectionByAddr( unsigned int uAddress )
{
    ASSERT( uAddress >= m_uAddress && uAddress <= ( m_uAddress + m_uSize ) );
    
    for ( MemorySectionList::iterator p = m_aryMemorySectionPtr.begin( ); p != m_aryMemorySectionPtr.end( ); p ++ )
    {
        CMemorySection * pSection = p->second;
        if ( uAddress >= pSection->GetBegAddress( ) && uAddress <= pSection->GetEndAddress( ) )
        {
            //
            // recusivly search for memory section from its child section
            //
            return pSection->FindMemorySectionByAddr( uAddress );
        }
    }
    return this;
}

//=============================================================================
// Function:    CMemorySection::GetMemoryBlockCount
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemorySection * CMemorySection::FindParentMemorySectionByAddr( CMemorySection * pSection )
{
    for ( MemorySectionList::iterator p = m_aryMemorySectionPtr.begin( ); p != m_aryMemorySectionPtr.end( ); p ++ )
    {
        CMemorySection * pSearchSection = p->second;
        if ( pSection != pSearchSection )
        {
            //
            // recusivly search for memory section from its child section
            //
            CMemorySection * pFoundSection = pSearchSection->FindParentMemorySectionByAddr( pSection );

            if ( pFoundSection != NULL )
            {
                return pFoundSection;
            }
        }
        else
        {
            return this;
        }
    }
    return NULL;
}

//=============================================================================
// Function:    CMemorySection::GetMemoryBlockCount
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemorySection::GetMemoryBlockCount( ) const
{
    return m_aryMemoryBlockPtr.size( );
}

//=============================================================================
// Function:    CMemorySection::MoveMemoryBlockFirst
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::MoveMemoryBlockFirst( ) const
{
    return stdex::MoveFirst( m_aryMemoryBlockPtr, m_MemoryBlockReadIterator );
}

//=============================================================================
// Function:    CMemorySection::MoveMemoryBlockLast
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::MoveMemoryBlockLast( ) const
{
    return stdex::MoveLast( m_aryMemoryBlockPtr, m_MemoryBlockReadIterator );
}

//=============================================================================
// Function:    CMemorySection::MoveMemoryBlockLast
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::MoveMemoryBlockNext( ) const
{
    return stdex::MoveNext( m_aryMemoryBlockPtr, m_MemoryBlockReadIterator );
}

//=============================================================================
// Function:    CMemorySection::MoveMemoryBlockLast
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemorySection::MoveMemoryBlockPrev( ) const
{
    return stdex::MovePrev( m_aryMemoryBlockPtr, m_MemoryBlockReadIterator );
}

//=============================================================================
// Function:    CMemorySection::GetCurrentMemoryBlock
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
const CMemoryBlock * CMemorySection::GetCurrentMemoryBlock( ) const
{
    if ( m_MemoryBlockReadIterator == m_aryMemoryBlockPtr.end( ) )
    {
        return NULL;
    }
    return m_MemoryBlockReadIterator->second;
}

//=============================================================================
// Function:    CMemorySection::FindMemoryBlockByAddr
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
const CMemoryBlock * CMemorySection::FindMemoryBlockByAddr( unsigned int uAddress ) const
{
    return const_cast< CMemorySection * >( this )->FindMemoryBlockByAddr( uAddress );
}

//=============================================================================
// Function:    CMemorySection::FindMemoryBlockByAddr
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemoryBlock * CMemorySection::FindMemoryBlockByAddr( unsigned int uAddress )
{
    CMemorySection * pParentSection = FindMemorySectionByAddr( uAddress );
    ASSERT( pParentSection != NULL );

    if ( pParentSection == this )
    {
        m_MemoryBlockReadIterator = m_aryMemoryBlockPtr.find( uAddress );
        if ( m_MemoryBlockReadIterator == m_aryMemoryBlockPtr.end( ) )
        {
            return NULL;
        }
        else
        {
            CMemoryBlock * pBlock = m_MemoryBlockReadIterator->second;
            ASSERT( uAddress == pBlock->GetBegAddress( ) );
            return pBlock;
        }
    }
    else
    {
        return pParentSection->FindMemoryBlockByAddr( uAddress );
    }
}

//=============================================================================
// Function:    CMemorySection::ClearMemoryBlock
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemorySection::ClearMemoryBlock( )
{
    m_aryMemoryBlockPtr.clear( );
    m_MemoryBlockReadIterator = m_aryMemoryBlockPtr.end( );
    m_uUsedSize = 0;
}

#if defined(_DEBUG) || defined(_AFXDLL)

//=============================================================================
// Function:    CMemorySection::AssertValid
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemorySection::AssertValid() const
{
/* Commented out for none testing use.
    CObject::AssertValid( );

    unsigned int uTotalSize = 0;
    unsigned int uLastAddress = m_uAddress;
    bool bLastFree = !m_aryMemoryBlockPtr.begin( )->second->IsFreeBlock( );
    for ( MemoryBlockList::const_iterator i = m_aryMemoryBlockPtr.begin( ); i != m_aryMemoryBlockPtr.end( ); i ++ )
    {
        if( bLastFree == i->second->IsFreeBlock( ) || uLastAddress != i->second->GetBegAddress( ) )
        {
            for (MemoryBlockList::iterator ip = m_aryMemoryBlockPtr.begin( ); ip != m_aryMemoryBlockPtr.end( ); ip++)
            {
                AfxTrace( "0x%08x[0x%08x],0x%08x\n", ip->second->GetBegAddress( ), ip->second->GetTotalSize( ), ip->second->GetEndAddress( ) );
            }
            ASSERT( false );
        }

        bLastFree = i->second->IsFreeBlock( );
        uLastAddress += i->second->GetTotalSize( );
        uTotalSize += i->second->GetTotalSize( );
    }

    ASSERT( uTotalSize == m_uSize );
*/
}

//=============================================================================
// Function:    CMemorySection::Dump
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemorySection::Dump(CDumpContext& dc) const
{
    //
    // dump memory allocation
    //
    dc << "Section name[" << (LPCTSTR)m_strName << "], type[" << (LPCTSTR)MMGetMemorySectionString( m_eType ) << "] addr[" << m_uAddress << "], size[" << m_uSize << "], child section count: [" << m_aryMemorySectionPtr.size( ) <<  "], alloc count: [" << m_aryMemoryBlockPtr.size( ) << "]\n";
    {
        for ( MemorySectionList::const_iterator q = m_aryMemorySectionPtr.begin( ); q != m_aryMemorySectionPtr.end( ); q ++ )
        {
            dc << q->second;
        }
        for ( MemoryBlockList::const_iterator p = m_aryMemoryBlockPtr.begin( ); p != m_aryMemoryBlockPtr.end( ); p ++ )
        {
            dc << p->second;
        }
    }
}

#endif

const CMemoryBlock * CMemorySection::GetMajorMemoryBlockForMemoryAt( unsigned int uStartAddress, unsigned int uSize ) const
{
    ASSERT( m_aryMemoryBlockPtr.size( ) > 0 );

    ASSERT( uSize != 0 );

    const unsigned int uEndAddress = uStartAddress + uSize - 1;

    //
    // find the first memory object start at this address
    //
    const CMemoryBlock * pCompare = NULL;
    const CMemoryBlock * pAnswser = NULL;
    MemoryBlockList::const_iterator p = m_aryMemoryBlockPtr.upper_bound( uStartAddress );

    if ( p != m_aryMemoryBlockPtr.begin( ) )
    {
        p--;
    }

    if ( p == m_aryMemoryBlockPtr.end( ) )
    {
        p = m_aryMemoryBlockPtr.begin( );
    }

    ASSERT( p != m_aryMemoryBlockPtr.end( ) );
    pCompare = p->second;
    pAnswser = pCompare;

    float fMaxUsed = 0.0f;   // in fraction

    while ( p != m_aryMemoryBlockPtr.end( ) && pCompare->GetBegAddress( ) <= uEndAddress )
    {
        pCompare = p->second;

        if ( ! pCompare->IsFreeBlock( ) )
        {
            unsigned int uStartInCell = max( pCompare->GetBegAddress( ), uStartAddress );
            unsigned int uEndInCell = min( pCompare->GetEndAddress( ), uEndAddress );
            if ( uEndInCell >= uStartInCell )
            {
                if ( fMaxUsed < (float)( uEndInCell - uStartInCell ) / (float)( uSize ) )
                {
                    fMaxUsed = (float)( uEndInCell - uStartInCell ) / (float)( uSize );
                    pAnswser = pCompare;
                }
            }
        }

        p++;
    }

    return pAnswser;

}

CMemoryBlock * CMemorySection::FindMemoryBlockWithInAddr( unsigned int uAddress )
{
    CMemorySection * pParentSection = FindMemorySectionByAddr( uAddress );
    ASSERT( pParentSection != NULL );

    if ( pParentSection == this )
    {
        m_MemoryBlockReadIterator = m_aryMemoryBlockPtr.find( uAddress );
        if ( m_MemoryBlockReadIterator == m_aryMemoryBlockPtr.end( ) )
        {
            //
            // search if any memory block contain this address
            //
            m_MemoryBlockReadIterator = m_aryMemoryBlockPtr.lower_bound( uAddress );
            m_MemoryBlockReadIterator --;
            if ( m_MemoryBlockReadIterator == m_aryMemoryBlockPtr.end( ) )
            {
                return NULL;
            }
            else
            {
                const CMemoryBlock * pBlock = m_MemoryBlockReadIterator->second;
                if ( pBlock->GetBegAddress( ) <= uAddress && pBlock->GetEndAddress( ) >= uAddress )
                {
                    CMemoryBlock * pBlock = m_MemoryBlockReadIterator->second;
                    ASSERT( uAddress >= pBlock->GetBegAddress( ) && uAddress <= pBlock->GetEndAddress( ) );
                    return pBlock;
                }
                else
                {
                    return NULL;
                }
            }
        }
        else
        {
            CMemoryBlock * pBlock = m_MemoryBlockReadIterator->second;
            ASSERT( uAddress >= pBlock->GetBegAddress( ) && uAddress <= pBlock->GetEndAddress( ) );
            return pBlock;
        }
    }
    else
    {
        return pParentSection->FindMemoryBlockWithInAddr( uAddress );
    }
}

const CMemoryBlock * CMemorySection::FindMemoryBlockWithInAddr( unsigned int uAddress ) const
{
    return const_cast< CMemorySection * >( this )->FindMemoryBlockWithInAddr( uAddress );
}

void CMemorySection::IncrementalBuildMemCellMap( const CMemoryBlock * pBlock )
{
    if ( !m_bBuildCellMap )
    {
        return;
    }

    if ( m_aryMemCellMap.size( ) == 0 )
    {
        ReBuildMemCellMap( );
        return;
    }

    int nCellCount = m_aryMemCellMap.size( );

    //
    // find out starting cell, and ending cell
    //

    int nStartCellIndex = (int)floor( (double)( pBlock->GetBegAddress( ) - GetBegAddress( ) ) / (double)GetTotalSize( ) * (double)nCellCount );
    if ( nStartCellIndex > 0 )
    {
        nStartCellIndex--;
    }

    int nEndCellIndex  = (int)ceil( (double)( pBlock->GetEndAddress( ) - GetBegAddress( ) ) / (double)GetTotalSize( ) * (double)nCellCount );
    if ( nEndCellIndex < nCellCount )
    {
        nEndCellIndex++;
    }
    else if ( nEndCellIndex > nCellCount )
    {
        nEndCellIndex = nCellCount;
    }

    unsigned int uBytesPerCell = (unsigned int)ceil( (double)GetTotalSize( ) / (double)nCellCount );
    unsigned int uSectionStartAddress = GetBegAddress( );
    unsigned int uSectionEndAddress = GetEndAddress( );
    unsigned int uCellStartAddress = 0;
    unsigned int uCellActualSize = 0;
    for ( int i = nStartCellIndex; i < nEndCellIndex; i ++ )
    {
        uCellStartAddress = uSectionStartAddress + i * uBytesPerCell;
        // last cell is not full size
        if ( i == ( nCellCount - 1 ) )
        {
            uCellActualSize = GetEndAddress( ) - uCellStartAddress + 1;
            ASSERT( uCellActualSize <= uBytesPerCell );
        }
        else
        {
            uCellActualSize = uBytesPerCell;
        }

        ASSERT( uCellStartAddress <= uSectionEndAddress );
        pBlock = GetMajorMemoryBlockForMemoryAt( uCellStartAddress, uCellActualSize );
        ASSERT( pBlock != NULL );
        m_aryMemCellMap[ i ] = pBlock;
    }
}

void CMemorySection::ReBuildMemCellMap( )
{
    if ( !m_bBuildCellMap )
    {
        return;
    }

    int nCellCount = m_aryMemCellMap.size( );
    unsigned int uBytesPerCell = (unsigned int)ceil( (double)GetTotalSize( ) / (double)nCellCount );
    unsigned int uSectionStartAddress = GetBegAddress( );
    unsigned int uSectionEndAddress = GetEndAddress( );
    unsigned int uCellStartAddress = 0;
    unsigned int uCellActualSize = 0;
    CMemoryBlockPtr pBlock;
    unsigned int uUpdatePerCell = (unsigned int)ceil( (double)nCellCount / 100.0 );

    for ( int i = 0; i < nCellCount; i ++ )
    {
        uCellStartAddress = uSectionStartAddress + i * uBytesPerCell;
        // last cell is not full size
        if ( i == ( nCellCount - 1 ) )
        {
            uCellActualSize = GetEndAddress( ) - uCellStartAddress + 1;
            ASSERT( uCellActualSize <= uBytesPerCell );
        }
        else
        {
            uCellActualSize = uBytesPerCell;
        }

        pBlock = GetMajorMemoryBlockForMemoryAt( uCellStartAddress, uCellActualSize );
        ASSERT( pBlock != NULL );
        m_aryMemCellMap[ i ] = pBlock;
    }
}

void CMemorySection::ReCalculateFreeSize( )
{
    unsigned int uUsedSize = 0;
    for ( MemoryBlockList::const_iterator i = m_aryMemoryBlockPtr.begin( ); i != m_aryMemoryBlockPtr.end( ); i++ )
    {
        if ( ! i->second->IsFreeBlock( ) )
        {
            uUsedSize += i->second->GetTotalSize( );
        }
    }
    m_uUsedSize = uUsedSize;
}

const CMemorySection::MemoryCellMap & CMemorySection::GetMemCellMap( ) const
{
    return m_aryMemCellMap;
}

bool CMemorySection::IsMemoryBlockUnderSection( const CMemoryBlock * pBlock ) const
{
    MemoryBlockList::const_iterator p;

    for ( p = m_aryMemoryBlockPtr.begin( ); p != m_aryMemoryBlockPtr.end( ); p ++ )
    {
        if ( p->second == pBlock )
        {
            return true;
        }
    }
    return false;
}
