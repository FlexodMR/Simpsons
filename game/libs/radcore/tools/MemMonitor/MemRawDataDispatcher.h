// MemRawDataDispatcher.h: interface for the CMemRawDataDispatcher class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MEMRAWDATADISPATCHER_H__2B913EF7_AD84_4F30_A074_30FF1346A0C7__INCLUDED_)
#define AFX_MEMRAWDATADISPATCHER_H__2B913EF7_AD84_4F30_A074_30FF1346A0C7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "mfcrefcount.h"
#include "Observer.h"

// Input data from CMemMonitorHost will be translated and processed by
// CMemRawDataDispatcher.
// Translator will observe the data, when data is changed, data will
// notify translator that new data has arrived.

class CMemRawDataDispatcher;
typedef TRef< CMemRawDataDispatcher > CMemRawDataDispatcherPtr;

class CMemRawDataDispatcher :
    public CObject,
    public CSubject,
    public CObserver,
    public CMFCRefCount
{
    friend class CMemMonitorApp;        // cheat for OnRecieveNewData( )

    DECLARE_DYNCREATE(CMemRawDataDispatcher)

protected:

    CMemRawDataDispatcher();

    virtual ~CMemRawDataDispatcher();

public:

    //
    // 
    //
    void OnRecieveNewData( WPARAM wParam, LPARAM lParam );

    //
    // notifying when new data is ready in the input queue,
    // 
    virtual bool OnSubjectStateChange( int nState, int nHints = 0, void * pUserData = NULL );

protected:

};

#endif // !defined(AFX_MEMRAWDATADISPATCHER_H__2B913EF7_AD84_4F30_A074_30FF1346A0C7__INCLUDED_)
