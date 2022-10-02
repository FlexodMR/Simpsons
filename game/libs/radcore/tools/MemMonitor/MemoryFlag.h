//=============================================================================
//
// File:        MemoryFlag.h
//
// Subsystem:	Foundation Technologies - Memory monitor host
//
// Description:	This file contains class declaration of memory flag
//
// Date:    	May 17th, 2002
//
// Created By : JT
//
//=============================================================================
#if !defined(AFX_MEMORYFLAG_H__25AA24A9_94D9_426C_A412_62188CE30C5E__INCLUDED_)
#define AFX_MEMORYFLAG_H__25AA24A9_94D9_426C_A412_62188CE30C5E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

//=============================================================================
// Include Files
//=============================================================================

//=============================================================================
// Forward Class Declarations
//=============================================================================
class CMemoryFlag;
typedef TRef< CMemoryFlag > CMemoryFlagPtr;

//=============================================================================
// Defintions
//=============================================================================

//=============================================================================
// Class Declarations
//=============================================================================

class CMemoryFlag :
    public CObject, 
    public CMFCRefCount  
{
    DECLARE_DYNCREATE(CMemoryFlag)

public:

    CMemoryFlag( );

    virtual ~CMemoryFlag( );

    CMemoryFlag & operator=( const CMemoryFlag & rhs );

    bool Initialize( unsigned int uRecordID, unsigned int uTimeStamp, const char * pFlagName );

    const CString & GetFlagName( ) const
    {
        return m_strFlagName;
    }

protected:

private:

    CString         m_strFlagName;
    unsigned int    m_uRecordID;
    unsigned int    m_uTimeStamp;
};

#endif // !defined(AFX_MEMORYFLAG_H__25AA24A9_94D9_426C_A412_62188CE30C5E__INCLUDED_)
