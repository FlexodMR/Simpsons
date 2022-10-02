//=============================================================================
//
// File:        MemoryImage.h
//
// Subsystem:	Foundation Technologies - Memory monitor host
//
// Description:	This file contains class declaration of MemoryImage
//
// Date:    	Dec 20, 2001
//
// Created By : JT
//
//=============================================================================
#if !defined(AFX_MEMORYIMAGE_H__EC3FEB64_1489_4546_ADB8_A913ACEA7421__INCLUDED_)
#define AFX_MEMORYIMAGE_H__EC3FEB64_1489_4546_ADB8_A913ACEA7421__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

//=============================================================================
// Include Files
//=============================================================================
#include "MemorySpace.h"
#include "GUIItem.h"
//=============================================================================
// Forward Class Declarations
//=============================================================================
class CMemRawData;

class CMemoryImage;
typedef TRef< CMemoryImage > CMemoryImagePtr;

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================

//=============================================================================
// CMemoryImage
//      Class defines what the memory looks like at specific time defined by
//      record ID.
//      Memory uses following assumption:
//      1) Record ID from client will always starts with 1
//=============================================================================
class CMemoryImage :
    public CGUIItem,
    public CDocument,
    public CObserver,
    public CSubject,
    public CMFCRefCount
{
	DECLARE_DYNCREATE(CMemoryImage)

protected:

    CMemoryImage( );

    CMemoryImage( const CMemoryImage & rhs );

    virtual ~CMemoryImage( );

public:

    CMemoryImage & operator=( const CMemoryImage & rhs );

    typedef vector< CMemorySpacePtr > MemorySpaceList;

    virtual void SetModifiedFlag(BOOL bModified = TRUE);

    virtual bool OnSubjectStateChange( int nState, int nHints = 0, void * pUserData = NULL );

    virtual const CString & GetItemDisplayText( ) const;

    MM_ClientPlatform GetPlatformType( ) const;

    //
    // Get record ID of this memory image.
    // Allow us to identify range of records this memory image
    // covers.
    // By default, the first record should always be the first event
    // recorded.
    //
    unsigned int GetFirstRecordID( ) const;

    unsigned int GetLastRecordID( ) const;

    //
    // clear all data in it,
    //
    void ClearData( );

    //
    // MemorySpace array accessors
    //
    unsigned int GetMemorySpaceCount( ) const;

    bool MoveMemorySpaceFirst( ) const;

    bool MoveMemorySpaceLast( ) const;

    bool MoveMemorySpaceNext( ) const;

    bool MoveMemorySpacePrev( ) const;

    const CMemorySpace * GetCurrentMemorySpace( ) const;

    CMemorySpace * FindMemorySpaceByType( MM_ClientMemorySpace eType ) const;

    void AddMemorySpace( CMemorySpace * pMemorySpace );

#if defined(_DEBUG) || defined(_AFXDLL)
	// Diagnostic Support
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

    bool ProcessMemRawData( const MM_DataPacketBlock & pData );

    void UpdateRecordID( unsigned int uRecordID );

    //
    // Do copy data
    //
    bool DeclarePlatform(
                    unsigned int uRecordID,
                    MM_ClientPlatform ePlatform,
                    unsigned int uUserData
                        );

    bool DeclareSpace(
                    unsigned int uRecordID,
                    MM_ClientMemorySpace eMemorySpace,
                    unsigned int uAddrStart,
                    unsigned int uSize
                    );

    bool DeclareSection(
                    unsigned int uRecordID,
                    MM_ClientMemorySpace eMemorySpace,
                    IRadMemoryMonitor::MemorySectionType eSectionType,
                    unsigned int uAddress,
                    unsigned int uSize
                       );

    bool IdentifySection( 
                    unsigned int uRecordID,
                    MM_ClientMemorySpace eMemorySpace,
                    unsigned int uAddress,
                    const char * szName
                        );

    bool RescindSection( 
                    unsigned int uRecordID,
                    MM_ClientMemorySpace eMemorySpace,
                    unsigned int uAddress
                       );

    bool DeclareAllocation(
                    unsigned int uRecordID,
                    MM_ClientMemorySpace eMemorySpace,
                    unsigned int uAddress,
                    unsigned int uSize,
                    unsigned int uCallStackDepth,
                    const unsigned int * pCallStacks
                          );

    bool IdentifyAllocation(
                    unsigned int uRecordID,
                    MM_ClientMemorySpace eMemorySpace,
                    unsigned int uAddress,
                    const char * szGroup,
                    const char * szName,
                    unsigned int uObjRefCount,
                    unsigned int uObjRefCountPtr );

    bool RescindAllocation(
                    unsigned int uRecordID,
                    MM_ClientMemorySpace eMemorySpace,
                    unsigned int uAddress
                          );

    bool ReportAddRef(
                    unsigned int uRecordID,
                    MM_ClientMemorySpace eMemorySpaceObject,
                    unsigned int uObjectAddress,
                    MM_ClientMemorySpace eMemorySpaceRef,
                    unsigned int uRefAddress,
                    const unsigned int uStackTrace[ MM_MAX_CALLSTACK_DEPTH ],
                    unsigned int uCallStackDepth
                     );

    bool ReportRelease(
                    unsigned int uRecordID,
                    MM_ClientMemorySpace eMemorySpaceObject,
                    unsigned int uObjectAddress,
                    MM_ClientMemorySpace eMemorySpaceRef,
                    unsigned int uRefAddress,
                    const unsigned int uStackTrace[ MM_MAX_CALLSTACK_DEPTH ],
                    unsigned int uCallStackDepth
                      );

    bool ReportStackUsage(
                    MM_ClientMemorySpace eMemorySpace,
                    unsigned int uStackSectionStartPos,
                    unsigned int uHighWaterMark
                         );

    bool IssueFlag( 
                    unsigned int uRecordID,
                    unsigned int uTimeStamp,
                    const char * pName
                    );

private:

    mutable CString                 m_strDisplayText;

    MM_ClientPlatform               m_ePlatform;

    MemorySpaceList                 m_aryMemorySpacePtr;

    mutable MemorySpaceList::const_iterator m_MemorySpaceReadIterator;

    unsigned int                    m_uFirstRecordID;

    unsigned int                    m_uLastRecordID;

    list< CMemoryFlagPtr >          m_aryMemoryFlag;                    // all memory flag in time order
};

#endif // !defined(AFX_MEMORYIMAGE_H__EC3FEB64_1489_4546_ADB8_A913ACEA7421__INCLUDED_)
