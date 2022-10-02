//=============================================================================
//
// File:        MemorySpace.h
//
// Subsystem:	Foundation Technologies - Memory monitor host
//
// Description:	This file contains class declaration of MemorySpace
//
// Date:    	Dec 20, 2001
//
// Created By : JT
//
//=============================================================================
#if !defined(AFX_MEMORYSPACE_H__B8D2D53C_1D17_4F90_B37C_1579F8C90C09__INCLUDED_)
#define AFX_MEMORYSPACE_H__B8D2D53C_1D17_4F90_B37C_1579F8C90C09__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

//=============================================================================
// Include Files
//=============================================================================
#include "MemorySection.h"
#include "GUIItem.h"
#include "MemMonitorErrorHandler.h"

//=============================================================================
// Forward Class Declarations
//=============================================================================
class CMemorySpace;

typedef TRef< CMemorySpace > CMemorySpacePtr;

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================

class CMemorySpace :
    public CMemorySection
{

	DECLARE_DYNCREATE(CMemorySpace)

protected:

	CMemorySpace();
    CMemorySpace( const CMemorySpace & rhs );

	virtual ~CMemorySpace();

public:

    CMemorySpace & operator=( const CMemorySpace & rhs );

    virtual const CString & GetItemDisplayText( ) const;

    virtual bool Initialize( MM_ClientMemorySpace eSpace, IRadMemoryMonitor::MemorySectionType eSectionType, unsigned int uAddress, unsigned int uSize, const CMemoryFlag * pFlag );

#if defined(_DEBUG) || defined(_AFXDLL)
	// Diagnostic Support
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

private:
};

#endif // !defined(AFX_MEMORYSPACE_H__B8D2D53C_1D17_4F90_B37C_1579F8C90C09__INCLUDED_)
