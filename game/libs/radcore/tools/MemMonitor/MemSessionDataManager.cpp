//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemSessionDataManager.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemMonitorHost.h"
#include "MemSessionDataManager.h"
#include "MemRawDataQueue.h"
IMPLEMENT_DYNCREATE(CMemSessionDataManager, CDocument)

BEGIN_MESSAGE_MAP(CMemSessionDataManager, CDocument)
	//{{AFX_MSG_MAP(CMemSessionDataManager)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

CMemSessionDataManager::CMemSessionDataManager()
{
    m_bAutoDelete = FALSE;
}

CMemSessionDataManager::~CMemSessionDataManager()
{
}

BOOL CMemSessionDataManager::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;
	return TRUE;
}

void CMemSessionDataManager::Initialize( )
{
    ASSERT( m_pMemMonitorHost == NULL );
    ASSERT( m_pMemRawDataQueue == NULL );

    // must be NULL to start with
    ASSERT( m_pConfiguration == NULL );
    ASSERT( m_pErrorHandler == NULL );
    ASSERT( m_pRawDataDispatcher == NULL );
    ASSERT( m_pConcurrentMemoryImage == NULL );
    ASSERT( m_pMemoryContent == NULL );

    //
    // create a thread for communication host
    // there can be only one communication channel, logically.
    //
    m_pMemMonitorHost = static_cast< CMemMonitorHost * >( ::AfxBeginThread( RUNTIME_CLASS( CMemMonitorHost ) ) );
    ASSERT( m_pMemMonitorHost != NULL );

    //
    // create a FIFO queue for holding recieved raw data from communication channel
    // there can be only one active FIFO queue.
    //
    m_pMemRawDataQueue = static_cast< CMemRawDataQueue * >( RUNTIME_CLASS( CMemRawDataQueue )->CreateObject( ) );
    ASSERT( m_pMemRawDataQueue != NULL );

    //
    // create configuration
    //
    m_pConfiguration = static_cast< CMemConfiguration * >( RUNTIME_CLASS( CMemConfiguration )->CreateObject( ) );
    ASSERT( m_pConfiguration != NULL );

    m_pConfiguration->Initialize( );

    //
    // Create a global error handler
    //
    m_pErrorHandler = static_cast< CMemMonitorErrorHandler * >( RUNTIME_CLASS( CMemMonitorErrorHandler )->CreateObject( ) );
    ASSERT( m_pErrorHandler != NULL ); 
    
    //
    // data dispatcher, dispatch all queued comm data
    //
    m_pRawDataDispatcher = static_cast< CMemRawDataDispatcher * >( RUNTIME_CLASS( CMemRawDataDispatcher )->CreateObject( ) );
    ASSERT( m_pRawDataDispatcher != NULL );

    //
    // create a concurrent memory image to record current images
    //
    m_pConcurrentMemoryImage = static_cast< CMemoryImage * >( RUNTIME_CLASS( CMemoryImage )->CreateObject( ) );
    ASSERT( m_pConcurrentMemoryImage != NULL );

    //
    // create a storage where all memory content is stored
    //
    m_pMemoryContent = static_cast< CMemContent * >( RUNTIME_CLASS( CMemContent )->CreateObject( ) );
    ASSERT( m_pMemoryContent != NULL );

    //
    // now setup the internal pipeline/dependency as the follows
    //

    m_pRawDataDispatcher->Attach( m_pErrorHandler );
    m_pMemoryContent->Attach( m_pErrorHandler );
    m_pConfiguration->Attach( m_pErrorHandler );
    m_pConcurrentMemoryImage->Attach( m_pErrorHandler );
    m_pMemMonitorHost->Attach( m_pErrorHandler );
    Attach( m_pErrorHandler );

    m_pRawDataDispatcher->Attach( m_pConcurrentMemoryImage );
    m_pRawDataDispatcher->Attach( m_pMemoryContent );

    // attach sub document for observing
    m_pMemMonitorHost->Attach( this );
	m_pConfiguration->Attach( this );
    m_pConcurrentMemoryImage->Attach( this );
    m_pMemoryContent->Attach( this );
    m_pErrorHandler->Attach( this );

    m_pMemMonitorHost->Attach( m_pMemRawDataQueue );
    m_pMemRawDataQueue->Attach( m_pRawDataDispatcher );
    m_pMemMonitorHost->Attach( m_pMemoryContent );      // for Suspend and Resume

    Sleep( 100 );
}

void CMemSessionDataManager::Terminate( )
{
    //
    // must stop communication first!!!
    //
    m_pMemMonitorHost->StopCommunication( );

    // detach sub document for observing
    // reverse order as the attach
    m_pMemMonitorHost->Detach( m_pMemRawDataQueue );
    m_pMemRawDataQueue->Detach( m_pRawDataDispatcher );
    m_pMemMonitorHost->Detach( m_pMemoryContent );

    m_pMemMonitorHost->Detach( this );
	m_pConfiguration->Detach( this );
    m_pConcurrentMemoryImage->Detach( this );
    m_pMemoryContent->Detach( this );
    m_pErrorHandler->Detach( this );

    m_pRawDataDispatcher->Detach( m_pConcurrentMemoryImage );
    m_pRawDataDispatcher->Detach( m_pMemoryContent );

    if ( m_pErrorHandler != NULL )
    {
        if ( m_pRawDataDispatcher != NULL )
        {
            m_pRawDataDispatcher->Detach( m_pErrorHandler );
        }
        if ( m_pMemoryContent != NULL )
        {
            m_pMemoryContent->Detach( m_pErrorHandler );
        }
        if ( m_pConfiguration != NULL )
        {
            m_pConfiguration->Detach( m_pErrorHandler );
        }
        if ( m_pConcurrentMemoryImage != NULL )
        {
            m_pConcurrentMemoryImage->Detach( m_pErrorHandler );
        }
    }
    Detach( m_pErrorHandler );

    m_pMemMonitorHost = NULL;
    m_pMemRawDataQueue = NULL;
    m_pConfiguration = NULL;
    m_pErrorHandler = NULL;
    m_pRawDataDispatcher = NULL;
    m_pConcurrentMemoryImage = NULL;
    m_pMemoryContent = NULL;
    Sleep( 10 );
}

const CMemMonitorHost * CMemSessionDataManager::GetMemMonitorHostPtr( ) const
{
    ASSERT( m_pMemMonitorHost != NULL );
    return m_pMemMonitorHost;
}

CMemMonitorHost * CMemSessionDataManager::GetMemMonitorHostPtr( )
{
    ASSERT( m_pMemMonitorHost != NULL );
    return m_pMemMonitorHost;
}

const CMemRawDataQueue * CMemSessionDataManager::GetMemRawDataQueuePtr( ) const
{
    ASSERT( m_pMemRawDataQueue != NULL );
    return m_pMemRawDataQueue;
}

CMemRawDataQueue * CMemSessionDataManager::GetMemRawDataQueuePtr( )
{
    ASSERT( m_pMemRawDataQueue != NULL );
    return m_pMemRawDataQueue;
}

const CMemConfiguration * CMemSessionDataManager::GetMemConfigurationPtr( ) const
{
    ASSERT( m_pConfiguration != NULL );
    return m_pConfiguration;
}

CMemConfiguration * CMemSessionDataManager::GetMemConfigurationPtr( )
{
    ASSERT( m_pConfiguration != NULL );
    return m_pConfiguration;
}

const CMemMonitorErrorHandler * CMemSessionDataManager::GetMemErrorHandlerPtr( ) const
{
    ASSERT( m_pErrorHandler != NULL );
    return m_pErrorHandler;
}

CMemMonitorErrorHandler * CMemSessionDataManager::GetMemErrorHandlerPtr( )
{
    ASSERT( m_pErrorHandler != NULL );
    return m_pErrorHandler;
}

const CMemRawDataDispatcher * CMemSessionDataManager::GetRawDataTranslatorPtr( ) const
{
    ASSERT( m_pRawDataDispatcher != NULL );
    return m_pRawDataDispatcher;
}

CMemRawDataDispatcher * CMemSessionDataManager::GetRawDataTranslatorPtr( )
{
    ASSERT( m_pRawDataDispatcher != NULL );
    return m_pRawDataDispatcher;
}

const CMemoryImage * CMemSessionDataManager::GetConcurrentMemoryImagePtr( ) const
{
    ASSERT( m_pConcurrentMemoryImage != NULL );
    return m_pConcurrentMemoryImage;
}

CMemoryImage * CMemSessionDataManager::GetConcurrentMemoryImagePtr( )
{
    ASSERT( m_pConcurrentMemoryImage != NULL );
    return m_pConcurrentMemoryImage;
}

const CMemContent * CMemSessionDataManager::GetMemoryContentPtr( ) const
{
    ASSERT( m_pMemoryContent != NULL );
    return m_pMemoryContent;
}

CMemContent * CMemSessionDataManager::GetMemoryContentPtr( )
{
    ASSERT( m_pMemoryContent != NULL );
    return m_pMemoryContent;
}


#ifdef _DEBUG
void CMemSessionDataManager::AssertValid() const
{
	CDocument::AssertValid();
}

void CMemSessionDataManager::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMemSessionDataManager serialization

void CMemSessionDataManager::Serialize(CArchive& ar)
{
    if ( ar.IsStoring( ) )
    {
    }
    else
    {
    }
}

/////////////////////////////////////////////////////////////////////////////
// CMemSessionDataManager commands
BOOL CMemSessionDataManager::OnSaveDocument( LPCTSTR lpszPathName ) 
{
    SetModifiedFlag( FALSE );
    return TRUE;
}

BOOL CMemSessionDataManager::SaveModified( )
{
    if ( IsModified( ) )
    {
        return FALSE;
    }
    else
    {
        return TRUE;
    }
    return CDocument::SaveModified();
}


BOOL CMemSessionDataManager::OnOpenDocument(LPCTSTR lpszPathName) 
{

    SetModifiedFlag( FALSE );
    return TRUE;
}

void CMemSessionDataManager::OnCloseDocument() 
{
    //
    // notify all observer that document is about to close itself
    //
    Notify( SSC_MEM_SESSION_DOC_CLOSE, 0, 0 );

    if ( IsModified( ) )
    {
        ::AfxTrace( "Session document is not saved before closing.\n" );
    }

    Terminate( );

    CDocument::OnCloseDocument();
}

bool CMemSessionDataManager::ClearData( )
{
    //
    // clear data only clear all data in the data manager, and doesn't destory anything
    //
    m_pMemMonitorHost->StopCommunication( );

    m_pMemRawDataQueue->ClearData( );
    m_pConcurrentMemoryImage->ClearData( );
    m_pMemoryContent->ClearData( );

    return true;
}
