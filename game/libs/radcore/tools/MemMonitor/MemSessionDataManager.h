#if !defined(AFX_MEMSESSIONDATAMANAGER_H__3D442AFD_32FF_4148_BCCE_0A10F6DA5A09__INCLUDED_)
#define AFX_MEMSESSIONDATAMANAGER_H__3D442AFD_32FF_4148_BCCE_0A10F6DA5A09__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemSessionDataManager.h : header file
//
#include "MemRawDataQueue.h"
#include "MemRawDataQueue.h"
#include "MemMonitorHost.h"
#include "MemConfiguration.h"
#include "MemRawDataDispatcher.h"
#include "MemoryImage.h"
#include "MemMonitorErrorHandler.h"
#include "MemContent.h"

//============================================================================
// class CMemSessionDataManager
//============================================================================
class CMemSessionDataManager;
typedef TRef< CMemSessionDataManager > CMemSessionDataManagerPtr;

class CMemSessionDataManager :
    public CDocument,
    public CSubject,
    public CObserver,
    public CMFCRefCount
{
protected:

    CMemSessionDataManager();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CMemSessionDataManager)

public:

    virtual bool OnSubjectStateChange( int nState, int nHints = 0, void * pUserData = NULL );

    // Can be called only once at the initialization of the object
    void Initialize( );

    void Terminate( );

    const CMemMonitorHost * GetMemMonitorHostPtr( ) const;
    CMemMonitorHost * GetMemMonitorHostPtr( );

    const CMemRawDataQueue * GetMemRawDataQueuePtr( ) const;
    CMemRawDataQueue * GetMemRawDataQueuePtr( );

    const CMemConfiguration * GetMemConfigurationPtr( ) const;
    CMemConfiguration * GetMemConfigurationPtr( );

    const CMemMonitorErrorHandler * GetMemErrorHandlerPtr( ) const;
    CMemMonitorErrorHandler * GetMemErrorHandlerPtr( );

    const CMemRawDataDispatcher * GetRawDataTranslatorPtr( ) const;
    CMemRawDataDispatcher * GetRawDataTranslatorPtr( );

    const CMemoryImage * GetConcurrentMemoryImagePtr( ) const;
    CMemoryImage * GetConcurrentMemoryImagePtr( );

    const CMemContent * GetMemoryContentPtr( ) const;
    CMemContent * GetMemoryContentPtr( );

    bool ClearData( );

protected:

private:

    CMemMonitorHostPtr              m_pMemMonitorHost;
    CMemRawDataQueuePtr             m_pMemRawDataQueue;

    CMemConfigurationPtr            m_pConfiguration;
    CMemMonitorErrorHandlerPtr      m_pErrorHandler;
    CMemRawDataDispatcherPtr        m_pRawDataDispatcher;
    CMemoryImagePtr                 m_pConcurrentMemoryImage;
    CMemContentPtr                  m_pMemoryContent;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemSessionDataManager)
	public:
	virtual void Serialize(CArchive& ar);   // overridden for document i/o
	virtual BOOL SaveModified(); // return TRUE if ok to continue
	virtual BOOL OnSaveDocument(LPCTSTR lpszPathName);
	virtual BOOL OnOpenDocument(LPCTSTR lpszPathName);
	virtual void OnCloseDocument();
	protected:
	virtual BOOL OnNewDocument();
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMemSessionDataManager();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CMemSessionDataManager)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMSESSIONDATAMANAGER_H__3D442AFD_32FF_4148_BCCE_0A10F6DA5A09__INCLUDED_)
