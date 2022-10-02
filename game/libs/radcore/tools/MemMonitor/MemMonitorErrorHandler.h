// MemMonitorErrorHandler.h: interface for the CMemMonitorErrorHandler class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MEMMONITORERRORHANDLER_H__F2A3CCD6_AB16_452E_A9BC_E4E5AD708C04__INCLUDED_)
#define AFX_MEMMONITORERRORHANDLER_H__F2A3CCD6_AB16_452E_A9BC_E4E5AD708C04__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MemErrorMsg.h"

class CMemMonitorErrorHandler;
typedef TRef< CMemMonitorErrorHandler > CMemMonitorErrorHandlerPtr;

class CMemMonitorErrorHandler :
    public CSubject,
    public CObserver,
    public CDocument,
    public CMFCRefCount
{
    DECLARE_DYNCREATE(CMemMonitorErrorHandler)

protected:

    CMemMonitorErrorHandler();

    virtual ~CMemMonitorErrorHandler();

public:

    bool OnSubjectStateChange( int nState, int nHints = 0, void * pUserData = NULL );

    bool IsEmpty( ) const;

    CMemErrorMsgPtr Remove( );

    void Clear( );

    unsigned int GetSize( ) const;

public:

private:

    queue< CMemErrorMsgPtr >    m_aryErrorMsg;
};

#endif // !defined(AFX_MEMMONITORERRORHANDLER_H__F2A3CCD6_AB16_452E_A9BC_E4E5AD708C04__INCLUDED_)
