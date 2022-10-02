//=============================================================================
//
// File:        MemoryBlock.h
//
// Subsystem:	Foundation Technologies - Memory monitor host
//
// Description:	This file contains class declaration of memory block
//
// Date:    	Dec 20, 2001
//
// Created By : JT
//
//=============================================================================
#if !defined(AFX_MEMORYBLOCK_H__30DC1516_F6B4_40F7_8B40_ACBFB700E5D1__INCLUDED_)
#define AFX_MEMORYBLOCK_H__30DC1516_F6B4_40F7_8B40_ACBFB700E5D1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

//=============================================================================
// Include Files
//=============================================================================
#include <MemoryFlag.h>

//=============================================================================
// Forward Class Declarations
//=============================================================================
class CMemoryBlock;

typedef TRef< CMemoryBlock > CMemoryBlockPtr;

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================

//
// CMemoryBlock is a storage class for memory block, only allocated memory block
// is stored, free memory block can be calculated from two CMemoryBlock
//
// CMemoryBlock could be an object allocation, or just plain memory allocation.
// In the case of object allocation, it uses refcount, and referenced object list,
// Everytime, an addref or release is called, it will update referenced object list.
// 
class CMemoryBlock :
    public CObject,
    public CMFCRefCount
{
	DECLARE_DYNCREATE(CMemoryBlock)

protected:

    CMemoryBlock( );

    virtual ~CMemoryBlock( );

    //
    // do not call those functions
    //
    CMemoryBlock( const CMemoryBlock & rhs );

    CMemoryBlock & operator=( const CMemoryBlock & rhs );

public:

    typedef map< unsigned int, unsigned int >   RefObjectArray;     // object pointer, owning count

    bool Initialize(
                    MM_ClientMemorySpace eMemorySpaceType,
                    unsigned int uBegAddress,
                    unsigned int uSize,
                    const unsigned int callStack[ MM_MAX_CALLSTACK_DEPTH ],
                    unsigned int uCallStackDepth,
                    const CMemoryFlag * pMemoryFlag,
                    bool bFreeBlock = false
                   );

    void SetAllocationID( unsigned int uID );

    unsigned int GetAllocationID( ) const;

    bool IdenitfyAs( const CString & strGroup, const CString & strName, unsigned int uClientRefCount, unsigned int uClientRefCountPtr );

    //
    // property accessor
    //
    bool IsFreeBlock( ) const;

    MM_ClientMemorySpace GetMemorySpace( ) const;

    unsigned int GetBegAddress( ) const;

    unsigned int GetEndAddress( ) const;

    unsigned int GetTotalSize( ) const;

    void SetTotalSize( unsigned int uSize );

    const CString & GetGroupID( ) const;

    CString GetObjectName( ) const;

    bool IsClientObjectRefCount( ) const;

    unsigned int GetClientObjectRefCount( ) const;

    unsigned int GetCallStackDepth( ) const;

    unsigned int GetCallStackAtIndex( unsigned int uIndex ) const;

    unsigned int GetChildRefObjectCount( ) const;

    const CMemoryFlag * GetMemoryFlag( ) const;

    //
    // child objects accessor
    //
    unsigned int GetChildObjectCount( ) const;

    bool MoveChildObjectFirst( ) const;

    bool MoveChildObjectLast( ) const;

    bool MoveChildObjectNext( ) const;

    bool MoveChildObjectPrev( ) const;

    unsigned int GetCurrentChildObjectAddr( ) const;

    //
    // parent objects accessor
    //
    unsigned int GetParentObjectCount( ) const;

    bool MoveParentObjectFirst( ) const;

    bool MoveParentObjectLast( ) const;

    bool MoveParentObjectNext( ) const;

    bool MoveParentObjectPrev( ) const;

    unsigned int GetCurrentParentObjectAddr( ) const;

    //
    // operations
    //
    //
    // AddRef if pBlock belongs to "this" object
    //
    // for example:
    // CParentObject::DoSomething( )
    // ...
    //    pChildObject->AddRef( );
    // ...
    //
    // CParentObject->ReportAddRef( pChildObject );
    //
    bool ReportAddRef( CMemoryBlock * pBlock );

    bool ReportRelease( CMemoryBlock * pBlock );

    bool ReportRefCount( const unsigned int uRefCount );

#if defined(_DEBUG) || defined(_AFXDLL)
    // Diagnostic Support
    virtual void AssertValid() const;
    virtual void Dump(CDumpContext& dc) const;
#endif

protected:
    void IncrementRefCount( );

    void DecrementRefCount( );

private:

    MM_ClientMemorySpace    m_eMemorySpaceType;         // Type of memory space

    unsigned int            m_uBegAddress;              // begin address of the memory
    unsigned int            m_uTotalSize;               // total size of the memory

    unsigned int            m_uAllocationID;            // allocation ID (incremented from 1)

    CString                 m_strGroup;                 // group name
    CString                 m_strName;                  // name of the memory block

    CMemoryFlagPtr          m_pMemoryFlag;              // after which memory flag, this memory block is created.

    //
    // The way refcount is report work as the follows :
    // 1) when object created, it report inital refcount to host,
    // 2) everytime, ReportAddRef( )/ReportRelease( ), pBlock->m_uClientObjRefCount changes
    //
    unsigned int            m_uClientObjRefCount;       // dereferenced unsigned int from "m_uClientObjRefCountPtr"
    unsigned int            m_uClientObjRefCountPtr;    // if NULL means not refcount object

    vector< unsigned int >  m_aryCallStack;             // list of callstack

    RefObjectArray          m_aryChildObject;           // object from addref, child objects owned by this object
    mutable RefObjectArray::const_iterator m_ChildObjectIterator;

    RefObjectArray          m_aryParentObject;          // object from addref, parent objects owns this object
    mutable RefObjectArray::const_iterator m_ParentObjectIterator;

    bool                    m_bFreeBlock;               // is this a free object
};


#endif // !defined(AFX_MEMORYBLOCK_H__30DC1516_F6B4_40F7_8B40_ACBFB700E5D1__INCLUDED_)
