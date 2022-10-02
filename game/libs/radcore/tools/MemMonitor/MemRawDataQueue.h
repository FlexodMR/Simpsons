// MemRawDataQueue.h: interface for the CMemRawDataQueue class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MEMRAWDATAQUEUE_H__82A50433_A80B_41EB_BE8A_66A14C363424__INCLUDED_)
#define AFX_MEMRAWDATAQUEUE_H__82A50433_A80B_41EB_BE8A_66A14C363424__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CMemRawDataQueue;
typedef TRef< CMemRawDataQueue > CMemRawDataQueuePtr;

//
// simple FIFO queue
//
class CMemRawDataQueue :
    public CObject,
    public CObserver,
    public CSubject,
    public CMFCRefCount
{
	DECLARE_DYNCREATE(CMemRawDataQueue)
protected:
    CMemRawDataQueue();
	virtual ~CMemRawDataQueue();

public:

    virtual bool OnSubjectStateChange( int nState, int nHints = 0, void * pUserData = NULL );

    void Add( const MM_DataPacketBlock & RawData );

    MM_DataPacketBlock Remove( );

    bool IsEmpty( ) const;

    void ClearData( );

    unsigned int GetSize( ) const;

public:

    typedef queue< MM_DataPacketBlock >   RawDataQueue;

private:

    bool            m_bStartDataProcess;

    RawDataQueue    m_aryDataQueue;
};

#endif // !defined(AFX_MEMRAWDATAQUEUE_H__82A50433_A80B_41EB_BE8A_66A14C363424__INCLUDED_)
