//=============================================================================
//
// File:        MemorySection.h
//
// Subsystem:	Foundation Technologies - Memory monitor host
//
// Description:	This file contains class declaration of memory section
//
// Date:    	Dec 20, 2001
//
// Created By : JT
//
//=============================================================================
#if !defined(AFX_MEMORYSECTION_H__8F480B8E_18C0_4268_ABA1_80D3B9E4AD3C__INCLUDED_)
#define AFX_MEMORYSECTION_H__8F480B8E_18C0_4268_ABA1_80D3B9E4AD3C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

//=============================================================================
// Include Files
//=============================================================================
#include "MemoryBlock.h"
#include "GUIItem.h"

//=============================================================================
// Forward Class Declarations
//=============================================================================
class CMemorySection;
typedef TRef< CMemorySection > CMemorySectionPtr;

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================

//
// Memory section is part of the memory used by the memory manager to dynamically
// allocate memory.
//
// MemorySection contain a list of memory allocation block used, and keep track of
// allocation blocks.
//
class CMemorySection : 
    public CGUIItem,
	public CObject,
    public CObserver,
    public CSubject,
	public CMFCRefCount
{

    DECLARE_DYNCREATE(CMemorySection)

protected:

    CMemorySection();

    virtual ~CMemorySection();

public:

    typedef map< unsigned int, CMemoryBlockPtr >   MemoryBlockList;
    typedef map< unsigned int, CMemorySectionPtr >   MemorySectionList;
    typedef vector< CMemoryBlockPtr > MemoryCellMap;

public:

    virtual bool OnSubjectStateChange( int nState, int nHints = 0, void * pUserData = NULL );

    virtual void SetModifiedFlag(BOOL bModified = TRUE);

    virtual const CString & GetItemDisplayText( ) const;

    virtual unsigned int GetPropertyItemCount( ) const;

    virtual const CString GetPropertyItemName( unsigned int uIndex ) const;

    virtual const CString GetPropertyItemValue( unsigned int uIndex ) const;

    CMemorySection & operator=( const CMemorySection & rhs );

    MM_ClientMemorySpace GetMemorySpaceType( ) const;

    virtual bool Initialize( MM_ClientMemorySpace eSpace, IRadMemoryMonitor::MemorySectionType eSectionType, unsigned int uAddress, unsigned int uSize, const CMemoryFlag * pFlag );

    virtual void IdentifyAs( const CString & strName );

    virtual void ClearData( );

    virtual unsigned int GetTotalSize( ) const;

    virtual unsigned int GetTotalUsedSize( ) const;

    virtual unsigned int GetTotalFreeSize( ) const;

    virtual unsigned int GetLargestUsedSize( ) const;

    virtual unsigned int GetBegAddress( ) const;

    virtual unsigned int GetEndAddress( ) const;

    IRadMemoryMonitor::MemorySectionType GetSectionType( ) const;

    CString GetMemorySectionName( ) const;

    bool SetStackHighWaterMark( const unsigned int uAddress );

    bool InsertSection( CMemorySection * pSection );

    bool RemoveSection( CMemorySection * pSection );

    bool InsertAllocation( const CMemoryBlock * pBlock );

    bool RemoveAllocation( const CMemoryBlock * pBlock );

    //
    // section list accessor
    //
    unsigned int GetMemorySectionCount( ) const;

    bool MoveMemorySectionFirst( ) const;

    bool MoveMemorySectionLast( ) const;

    bool MoveMemorySectionNext( ) const;

    bool MoveMemorySectionPrev( ) const;

    const CMemorySection * GetCurrentMemorySection( ) const;

    const CMemorySection * FindMemorySectionByAddr( unsigned int uAddress ) const;

    CMemorySection * FindMemorySectionByAddr( unsigned int uAddress );

    CMemorySection * FindParentMemorySectionByAddr( CMemorySection * pSection );
    
    //
    // none-recusive search
    //
    bool IsMemoryBlockUnderSection( const CMemoryBlock * pBlock ) const;

    //
    // block list accessor
    //
    unsigned int GetMemoryBlockCount( ) const;

    bool MoveMemoryBlockFirst( ) const;

    bool MoveMemoryBlockLast( ) const;

    bool MoveMemoryBlockNext( ) const;

    bool MoveMemoryBlockPrev( ) const;

    const CMemoryBlock * GetCurrentMemoryBlock( ) const;

    const CMemoryBlock * FindMemoryBlockByAddr( unsigned int uAddress ) const;

    CMemoryBlock * FindMemoryBlockByAddr( unsigned int uAddress );

    CMemoryBlock * FindMemoryBlockWithInAddr( unsigned int uAddress );

    const CMemoryBlock * FindMemoryBlockWithInAddr( unsigned int uAddress ) const;

    void ClearMemoryBlock( );

    void SetBuildMemCellMap( bool bBuild, unsigned int uCellCount );

    bool GetBuildMemCellMap( ) const;

    const MemoryCellMap & GetMemCellMap( ) const;

#if defined(_DEBUG) || defined(_AFXDLL)
	// Diagnostic Support
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif
public:

protected:

    const CMemoryBlock * GetMajorMemoryBlockForMemoryAt( unsigned int uStartAddress, unsigned int uSize ) const;

    // build Memory cell map when new block is added or removed
    // information needed is the start address and size of memory need to be build
    void IncrementalBuildMemCellMap( const CMemoryBlock * pBlock );

    void ReBuildMemCellMap( );

    void ReCalculateFreeSize( );

    CMemoryBlockPtr CreateFreeMemoryBlock( unsigned int uAddress, unsigned int uSize ) const;

protected:

    mutable CString                         m_strDisplayText;

private:
    //
    // memory cell map data
    //
    bool                                    m_bBuildCellMap;

    MemoryCellMap                           m_aryMemCellMap;

    MM_ClientMemorySpace                    m_eMemorySpaceType;

    //
    // list of property defines a memory section
    //
    CString                                 m_strName;

    IRadMemoryMonitor::MemorySectionType    m_eType;

    unsigned int                            m_uAddress;

    unsigned int                            m_uSize;

    unsigned int                            m_uUsedSize;

    unsigned int                            m_uLargestUsedSize;

    unsigned int                            m_uAllocationOperationCount;

    unsigned int                            m_uDeallocationOperationCount;

    //
    // list of memory blocks sorted by memory address
    //
    mutable MemoryBlockList                 m_aryMemoryBlockPtr;

    //
    // iterator for reading blocks
    //
    mutable MemoryBlockList::const_iterator m_MemoryBlockReadIterator;

    //
    //
    //
    mutable MemorySectionList               m_aryMemorySectionPtr;

    //
    // iterator for reading blocks
    //
    mutable MemorySectionList::const_iterator m_MemorySectionReadIterator;
};

#endif // !defined(AFX_MEMORYSECTION_H__8F480B8E_18C0_4268_ABA1_80D3B9E4AD3C__INCLUDED_)
