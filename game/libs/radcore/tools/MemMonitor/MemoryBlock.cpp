//===========================================================================
// Copyright (C) 2001 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Memory monitor host
//
// Description: This file contains the implementation of the 
//              MemoryBlock.
//
// Authors:     James Tan
//
//===========================================================================

//---------------------------------------------------------------------------
// Includes
//===========================================================================
#include "stdafx.h"
#include "MemoryBlock.h"

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

IMPLEMENT_DYNCREATE(CMemoryBlock, CObject)

//===========================================================================
// Static Data Definitions
//===========================================================================

//===========================================================================
// Class Methods
//===========================================================================
//=============================================================================
// Function:    CMemoryBlock::CMemoryBlock
//=============================================================================
// Description: Constructor for the MemoryBlock
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemoryBlock::CMemoryBlock() :
    m_eMemorySpaceType( MM_UNKNOWN ),
    m_uBegAddress( 0 ),
    m_uTotalSize( 0 ),
    m_strGroup( "" ),
    m_strName( "" ),
    m_uClientObjRefCount( 0 ),
    m_uClientObjRefCountPtr( 0 ),
    m_bFreeBlock( false ),
    m_uAllocationID( 0 )
{
    m_aryCallStack.reserve( MM_MAX_CALLSTACK_DEPTH );
}

//=============================================================================
// Function:    CMemoryBlock::~CMemoryBlock
//=============================================================================
// Description: Desctructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemoryBlock::~CMemoryBlock()
{
}

//=============================================================================
// Function:    CMemoryBlock::CMemoryBlock
//=============================================================================
// Description: copy constructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemoryBlock::CMemoryBlock( const CMemoryBlock & rhs )
{
    //
    // never call copy constructor, use class factory only
    //
    ASSERT( false );
}

//=============================================================================
// Function:    CMemoryBlock::Initialize
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::Initialize( MM_ClientMemorySpace eMemorySpaceType,
                               unsigned int uBegAddress,
                               unsigned int uSize,
                               const unsigned int callStack[ MM_MAX_CALLSTACK_DEPTH ],
                               unsigned int uCallStackDepth,
                               const CMemoryFlag * pMemoryFlag,
                               bool bFreeBlock )
{
    ASSERT( uCallStackDepth <= MM_MAX_CALLSTACK_DEPTH );

    m_eMemorySpaceType      = eMemorySpaceType;
    m_uBegAddress           = uBegAddress;
    m_uTotalSize            = uSize;
    m_bFreeBlock            = bFreeBlock;

    m_aryCallStack.clear( );

    for ( unsigned int i = 0; i < uCallStackDepth; i ++ )
    {
        m_aryCallStack.push_back( callStack[ i ] );
    }

    m_aryChildObject.clear( );
    m_aryParentObject.clear( );

    m_uAllocationID = 0;

    if ( ! bFreeBlock )
    {
        m_pMemoryFlag = pMemoryFlag;
    }
    else
    {
        m_pMemoryFlag = NULL;
    }

    return true;
}

//=============================================================================
// Function:    CMemoryBlock::IdenitfyAs
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::IdenitfyAs( const CString & strGroup, const CString & strName, unsigned int uClientRefCount, unsigned int uClientRefCountPtr )
{
    if ( m_bFreeBlock == true )
    {
        return false;
    }

    m_strGroup              = strGroup;
    m_strName               = strName;

    if( m_uClientObjRefCountPtr == 0 )
    {
        m_uClientObjRefCount    = uClientRefCount;
        m_uClientObjRefCountPtr = uClientRefCountPtr;
    }
    return true;
}

//=============================================================================
// Function:    CMemoryBlock::IdenitfyAs
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemoryBlock::SetAllocationID( unsigned int uID )
{
    m_uAllocationID = uID;
}

//=============================================================================
// Function:    CMemoryBlock::IdenitfyAs
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetAllocationID( ) const
{
    return m_uAllocationID;
}

//=============================================================================
// Function:    CMemoryBlock::IsFreeBlock
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::IsFreeBlock( ) const
{
    return m_bFreeBlock;
}

//=============================================================================
// Function:    CMemoryBlock::GetMemorySpace
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
MM_ClientMemorySpace CMemoryBlock::GetMemorySpace( ) const
{
    return m_eMemorySpaceType;
}

//=============================================================================
// Function:    CMemoryBlock::GetBegAddress
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetBegAddress( ) const
{ 
    return m_uBegAddress;
}

//=============================================================================
// Function:    CMemoryBlock::GetEndAddress
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetEndAddress( ) const
{
    if ( m_uTotalSize == 0 )
    {
        return m_uBegAddress;
    }
    else
    {
        return m_uBegAddress + m_uTotalSize - 1;
    }
}

//=============================================================================
// Function:    CMemoryBlock::GetTotalSize
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetTotalSize( ) const
{
    return m_uTotalSize;
}

//=============================================================================
// Function:    CMemoryBlock::SetTotalSize
//=============================================================================
// Description: 
//
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemoryBlock::SetTotalSize( unsigned int uSize )
{
    m_uTotalSize = uSize;
}

//=============================================================================
// Function:    CMemoryBlock::GetGroupID
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
const CString & CMemoryBlock::GetGroupID( ) const
{
    return m_strGroup;
}

//=============================================================================
// Function:    CMemoryBlock::GetObjectName
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CString CMemoryBlock::GetObjectName( ) const
{
    return m_strName;
}

//=============================================================================
// Function:    CMemoryBlock::GetClientObjectRefCount
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetClientObjectRefCount( ) const
{
    return m_uClientObjRefCount;
}

//=============================================================================
// Function:    CMemoryBlock::IsClientObjectRefCount
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::IsClientObjectRefCount( ) const
{
    return m_uClientObjRefCountPtr != 0;
}

//=============================================================================
// Function:    CMemoryBlock::GetCallStackDepth
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetCallStackDepth( ) const
{
    return m_aryCallStack.size( );
}

//=============================================================================
// Function:    CMemoryBlock::GetCallStackAtIndex
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetCallStackAtIndex( unsigned int uIndex ) const
{
    return m_aryCallStack.at( uIndex );
}

//=============================================================================
// Function:    CMemoryBlock::GetChildObjectCount
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetChildObjectCount( ) const
{
    return m_aryChildObject.size( );
}

//=============================================================================
// Function:    CMemoryBlock::MoveChildObjectFirst
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::MoveChildObjectFirst( ) const
{
    return stdex::MoveFirst( m_aryChildObject, m_ChildObjectIterator );
}

//=============================================================================
// Function:    CMemoryBlock::MoveChildObjectLast
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::MoveChildObjectLast( ) const
{
    return stdex::MoveLast( m_aryChildObject, m_ChildObjectIterator );
}

//=============================================================================
// Function:    CMemoryBlock::MoveChildObjectNext
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::MoveChildObjectNext( ) const
{
    return stdex::MoveNext( m_aryChildObject, m_ChildObjectIterator );
}

//=============================================================================
// Function:    CMemoryBlock::MoveChildObjectPrev
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::MoveChildObjectPrev( ) const
{
    return stdex::MovePrev( m_aryChildObject, m_ChildObjectIterator );
}

//=============================================================================
// Function:    CMemoryBlock::GetCurrentChildObject
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetCurrentChildObjectAddr( ) const
{
    if ( m_ChildObjectIterator == m_aryChildObject.end( ) )
    {
        return 0;
    }
    return m_ChildObjectIterator->first;
}

//=============================================================================
// Function:    CMemoryBlock::GetParentObjectCount
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetParentObjectCount( ) const
{
    return m_aryParentObject.size( );
}

//=============================================================================
// Function:    CMemoryBlock::MoveParentObjectFirst
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::MoveParentObjectFirst( ) const
{
    return stdex::MoveFirst( m_aryParentObject, m_ParentObjectIterator );
}

//=============================================================================
// Function:    CMemoryBlock::MoveParentObjectLast
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::MoveParentObjectLast( ) const
{
    return stdex::MoveLast( m_aryParentObject, m_ParentObjectIterator );
}

//=============================================================================
// Function:    CMemoryBlock::MoveParentObjectNext
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::MoveParentObjectNext( ) const
{
    return stdex::MoveNext( m_aryParentObject, m_ParentObjectIterator );
}

//=============================================================================
// Function:    CMemoryBlock::MoveParentObjectPrev
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::MoveParentObjectPrev( ) const
{
    return stdex::MovePrev( m_aryParentObject, m_ParentObjectIterator );
}

//=============================================================================
// Function:    CMemoryBlock::GetCurrentParentObject
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
unsigned int CMemoryBlock::GetCurrentParentObjectAddr( ) const
{
    if ( m_ParentObjectIterator == m_aryParentObject.end( ) )
    {
        return 0;
    }
    return m_ParentObjectIterator->first;
}

//=============================================================================
// Function:    CMemoryBlock::ReportAddRef
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemoryBlock::IncrementRefCount( )
{
    m_uClientObjRefCount ++;
}

//=============================================================================
// Function:    CMemoryBlock::ReportAddRef
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemoryBlock::DecrementRefCount( )
{
    m_uClientObjRefCount ++;
}

//=============================================================================
// Function:    CMemoryBlock::ReportAddRef
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::ReportAddRef( CMemoryBlock * pBlock )
{

    //
    // add pBlock as child object of "this" object
    //
    RefObjectArray::iterator p = m_aryChildObject.find( pBlock->GetBegAddress( ) );
    if ( p != m_aryChildObject.end( ) )
    {
        p->second += 1;
    }
    else
    {
        m_aryChildObject.insert( pair< unsigned int, unsigned int >( pBlock->GetBegAddress( ), 1 ) );
    }

    //
    // add "this" as parent object of "pBlock" object
    //

    p = pBlock->m_aryParentObject.find( this->GetBegAddress( ) );
    if ( p != pBlock->m_aryParentObject.end( ) )
    {
        p->second += 1;
    }
    else
    {
        pBlock->m_aryParentObject.insert( pair< unsigned int, unsigned int >( this->GetBegAddress( ), 1 ) );
    }

    pBlock->IncrementRefCount( );

    return true;
}

//=============================================================================
// Function:    CMemoryBlock::ReportRelease
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::ReportRelease( CMemoryBlock * pBlock )
{

    //
    // erase pBlock as child object of "this" object
    //
    RefObjectArray::iterator p = m_aryChildObject.find( pBlock->GetBegAddress( ) );
    if ( p != m_aryChildObject.end( ) )
    {
        if ( p->second == 1 )
        {
            //
            // if owning refcount going to be 0, erase from list
            //
            VERIFY( m_aryChildObject.erase( p->first ) > 0 );
        }
        else
        {
            p->second -= 1;
        }
    }
    else
    {
        return true;
    }

    //
    // erase "this" as parent object of "pBlock" object
    //
    unsigned int uAddressToFind = this->GetBegAddress( );

    p = pBlock->m_aryParentObject.find( this->GetBegAddress( ) );

    if ( p != pBlock->m_aryParentObject.end( ) )
    {
        unsigned int uAddressFound = p->first;
        ASSERT( p->first == this->GetBegAddress( ) );
        if ( p->second == 1 )
        {
            //
            // if owning refcount going to be 0, erase from list
            //
            VERIFY( pBlock->m_aryParentObject.erase( p->first ) > 0 );
        }
        else
        {
            p->second -= 1;
        }
    }
    else
    {
        return true;
    }

    pBlock->DecrementRefCount( );

    return true;
}

//=============================================================================
// Function:    CMemoryBlock::ReportRefCount
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
bool CMemoryBlock::ReportRefCount( const unsigned int uRefCount )
{
    m_uClientObjRefCount = uRefCount;

    if ( uRefCount == 0 )
    {
        return false;
    }
    return true;
}

//=============================================================================
// Function:    CMemoryBlock::Dump
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
const CMemoryFlag * CMemoryBlock::GetMemoryFlag( ) const
{
    return m_pMemoryFlag;
}

#if defined(_DEBUG) || defined(_AFXDLL)
//=============================================================================
// Function:    CMemoryBlock::AssertValid
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemoryBlock::AssertValid() const
{
    CObject::AssertValid( );
}

//=============================================================================
// Function:    CMemoryBlock::Dump
//=============================================================================
// Description: 
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
void CMemoryBlock::Dump(CDumpContext& dc) const
{
    if ( m_bFreeBlock )
    {
        dc << "FreeBlock: addr[" << m_uBegAddress << "], size[" << m_uTotalSize << "]\n";
    }
    else
    {
        dc << "AlocBlock: addr[" << m_uBegAddress << "], size[" << m_uTotalSize << "], group[" << (LPCTSTR)m_strGroup << "], name[" << (LPCTSTR)m_strName << "]\n";
    }
}
#endif
