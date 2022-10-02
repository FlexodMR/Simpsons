//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemSessionViewManager.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MainFrm.h"
#include "MemSessionViewManager.h"
#include "MemHexView.h"
#include "MemSectionCellView.h"
#include "MemBlockView.h"
/////////////////////////////////////////////////////////////////////////////
// CMemSessionViewManager

bool operator==( const CNotifyMessage & lhs, const CNotifyMessage & rhs )
{
    return ( lhs.nState == rhs.nState && lhs.nHints == rhs.nHints && lhs.pUserData == rhs.pUserData );
}

IMPLEMENT_DYNCREATE(CMemSessionViewManager, CDocument)

BEGIN_MESSAGE_MAP(CMemSessionViewManager, CDocument)
	//{{AFX_MSG_MAP(CMemSessionViewManager)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

CMemSessionViewManager::CMemSessionViewManager( ) :
    m_pMainFrameWnd( NULL ),
    m_pMemSessionDataManager( NULL ),
    m_pOverallView( NULL ),
    m_pErrorListView( NULL )
{
    m_bAutoDelete = FALSE;
}

BOOL CMemSessionViewManager::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;
	return TRUE;
}

CMemSessionViewManager::~CMemSessionViewManager()
{
    Terminate( );
}

void CMemSessionViewManager::Initialize( CMemSessionDataManager * pData )
{
    ASSERT( m_pMemSessionDataManager == NULL );
    ASSERT( ::AfxGetMainWnd( ) != NULL );   // can only initialize after main frame window is created

    m_pMainFrameWnd = static_cast< CMainFrame * >( ::AfxGetMainWnd( ) );
    m_pErrorListView = m_pMainFrameWnd->GetOutputBar( )->GetErrorListView( );
    m_pMemSessionDataManager = pData;

    m_pOverallView = static_cast< CMemOverallView * >( RUNTIME_CLASS( CMemOverallView )->CreateObject( ) );
    m_pOverallView->Initialize( pData->GetConcurrentMemoryImagePtr( ), m_pMainFrameWnd->GetWorkSpaceBar( )->GetTabWnd( ) );
    m_pOverallView->CSubject::Attach( this );

    m_pMemWndState = static_cast< CMemWndState * >( RUNTIME_CLASS( CMemWndState )->CreateObject( ) );
    WINDOWPLACEMENT wndPL;  m_pMainFrameWnd->GetWindowPlacement( & wndPL );
    CRect rcWndRect;        m_pMainFrameWnd->GetWindowRect( & rcWndRect );

    m_pMemWndState->Initialize( m_pMainFrameWnd->GetRuntimeClass( ), radMakeKey32( "CMainFrame" ), wndPL.showCmd, rcWndRect );

    //
    // Add to workspace's tab window
    //
    m_pMainFrameWnd->GetWorkSpaceBar( )->GetTabWnd( )->AddTab( m_pOverallView, _T("Overall View"), 0 );

    m_pErrorListView->ClearView( );

    //
    // initially there's no section view
    //
    m_arySectionView.clear( );

    m_pConfigurationPps = static_cast< CConfigurationPps * >( RUNTIME_CLASS( CConfigurationPps )->CreateObject( ) );
    m_pConfigurationPps->Initialize( m_pMemSessionDataManager );
}

void CMemSessionViewManager::Terminate( )
{
    if ( m_pConfigurationPps != NULL )
    {
        m_pConfigurationPps->Terminate( );
        m_pConfigurationPps = NULL;
    }

    if ( m_pMainFrameWnd != NULL )
    {
        for ( int nTabIdx = 0; nTabIdx < m_pMainFrameWnd->GetWorkSpaceBar( )->GetTabWnd( )->GetTabsNum( ); nTabIdx ++ )
        {
            if ( m_pMainFrameWnd->GetWorkSpaceBar( )->GetTabWnd( )->GetTabWnd( nTabIdx ) == m_pOverallView )
            {
                m_pMainFrameWnd->GetWorkSpaceBar( )->GetTabWnd( )->RemoveTab( nTabIdx );
            }
        }
    }

    m_pErrorListView->ClearView( );

    if ( m_pOverallView != NULL )
    {
        m_pOverallView->Terminate( );
        m_pOverallView = NULL;
    }

    MemSectionDocViewMap::iterator i;
    while( ! m_arySectionView.empty( ) )
    {
        i = m_arySectionView.begin( );
        i->second->Terminate( );
    }

    vector< CMemContentFramePtr >::iterator j;
    while( ! m_aryMemContentFramePtr.empty( ) )
    {
        j = m_aryMemContentFramePtr.begin( );
        (*j)->Terminate( );
    }

    m_pMemSessionDataManager = NULL;
    m_pMainFrameWnd = NULL;
    m_pMemWndState = NULL;
}

void CMemSessionViewManager::ClearView( )
{
    m_pErrorListView->ClearView( );
    m_pOverallView->ClearView( );

    MemSectionDocViewMap::iterator i;
    while( ! m_arySectionView.empty( ) )
    {
        i = m_arySectionView.begin( );
        i->second->Terminate( );
    }

    vector< CMemContentFramePtr >::iterator j;
    while( ! m_aryMemContentFramePtr.empty( ) )
    {
        j = m_aryMemContentFramePtr.begin( );
        (*j)->Terminate( );
    }
}

void CMemSessionViewManager::AddNotifyMessage( int nState, int nHints, void * pUserData )
{
    CNotifyMessage msg;
    static unsigned int uIndex = 0;
    msg.nTimeIndex = uIndex ++;
    msg.nState = nState;
    msg.nHints = nHints;
    msg.pUserData = pUserData;

    for ( ViewNotifyMessage::const_iterator p = m_aryNotifyMessage.begin( ); p != m_aryNotifyMessage.end( ); p ++ )
    {
        if ( p->second == msg )
        {
            return;
        }
    }

    m_aryNotifyMessage.insert( pair< unsigned int, CNotifyMessage >( msg.nTimeIndex, msg ) );
}

void CMemSessionViewManager::RemoveNotifyMessage( )
{
    if ( m_aryNotifyMessage.begin( ) != m_aryNotifyMessage.end( ) )
    {
        CNotifyMessage msg = m_aryNotifyMessage.begin( )->second;
        m_aryNotifyMessage.erase( m_aryNotifyMessage.begin( ) );
        OnSubjectStateChangeUIThread( msg.nState, msg.nHints, msg.pUserData );
    }
}

bool CMemSessionViewManager::OnSubjectStateChangeUIThread( int nState, int nHints, void * pUserData )
{

    switch( nState )
    {
        case SSC_MEM_HOST_RECONNECT:
        {
            ClearView( );
        }
        break;

        case SSC_MEM_CONTENT_RECIEVED:
        {
            unsigned int uAddr = (unsigned int)( pUserData );
            MM_ClientMemorySpace eMemorySpaceType = static_cast< MM_ClientMemorySpace >( nHints );

            UpdateAllContentViewFrame( eMemorySpaceType, uAddr );
            return true;
        }
        break;

        case SSC_MEM_CONTENT_CLEARED:
        {
            UpdateAllContentViewFrame( MM_UNKNOWN, 0 );
        }
        break;

        case SSC_MEM_SECTION_MODIFIED:
        {
            CMemorySection * pSection = reinterpret_cast< CMemorySection * >( pUserData );

            CMemSectionFrame * pFrame = GetMemSectionFramePtr( pSection );

            if ( ( pFrame != NULL ) && pFrame->GetSectionCellView( ) )
            {
                pFrame->GetSectionCellView( )->OnUpdate( NULL, 0, NULL );
            }

            GetMemOverallViewPtr( )->OnUpdate( NULL, nState, 0 );
        }
        break;

        case SSC_MEM_HOST_DISCONNECT:
        case SSC_MEM_HOST_SUSPENDED:
        case SSC_MEM_HOST_RESUMED:
        {
            //
            // reload all section list view
            //
            MemSectionDocViewMap::iterator p;
            for ( p = m_arySectionView.begin( ); p != m_arySectionView.end( ); p ++ )
            {
                p->second->GetSectionListView( )->OnUpdate( NULL, nState, 0 );
                p->second->GetBlockView( )->OnUpdate( NULL, nState, 0 );
            }

            if ( nState == SSC_MEM_HOST_SUSPENDED )
            {
                AfxMessageBox( "Client operation is suspended." );
            }
        }
        break;

        case SSC_MEM_ERROR_MSG_RECIEVED:
        {
            GetErrorListView( )->OnUpdate( NULL, 0, NULL );
        }
        break;

        case SSC_MEM_SECTION_ADDED:
        case SSC_MEM_SECTION_REMOVED:
        case SSC_MEM_IMAGE_CLEARED:
        case SSC_MEM_IMAGE_MODIFIED:
        case SSC_MEM_IMAGE_CLONED:
        case SSC_MEM_SPACE_ADDED:
        case SSC_MEM_SPACE_MODIFIED:
        case SSC_MEM_SPACE_REMOVED:
//        case SSC_MEM_SESSION_DOC_CLOSE:
//        case SSC_MEM_CONFIG_MODIFIED:
        {
            GetMemOverallViewPtr( )->OnUpdate( NULL, nState, 0 );
            return true;
        }
        break;

    }
    return false;
}


bool CMemSessionViewManager::OnSubjectStateChange( int nState, int nHints, void * pUserData )
{
    switch( nState )
    {
        case SSC_MEM_HOST_RECONNECT:
        case SSC_MEM_CONTENT_RECIEVED:
        case SSC_MEM_CONTENT_CLEARED:
        case SSC_MEM_SECTION_ADDED:
        case SSC_MEM_SECTION_MODIFIED:
        case SSC_MEM_SECTION_REMOVED:
        case SSC_MEM_IMAGE_MODIFIED:
        case SSC_MEM_IMAGE_CLONED:
        case SSC_MEM_SPACE_ADDED:
        case SSC_MEM_SPACE_MODIFIED:
        case SSC_MEM_SPACE_REMOVED:
        case SSC_MEM_SESSION_DOC_CLOSE:
        case SSC_MEM_CONFIG_MODIFIED:
        case SSC_MEM_SECTION_CELLMAP_DONE:
        case SSC_MEM_HOST_RESUMED:
        case SSC_MEM_HOST_SUSPENDED:
        case SSC_MEM_ERROR_MSG_RECIEVED:
        {
            AddNotifyMessage( nState, nHints, pUserData );
            return true;
        }
        break;

        //
        // internal message from views
        //
        case SSC_MEM_VIEW_OVERALLVIEW_DESTROY:
        {
            m_pOverallView = NULL;
        }
        break;
    }
    return false;
}

CMemSectionFrame * CMemSessionViewManager::LoadSectionViewFrame( CMemorySection * pSection )
{
    ASSERT( pSection != NULL );
    CMemSectionFramePtr pSectionFrame = GetMemSectionFramePtr( pSection );
    if ( pSectionFrame == NULL )
    {
        pSectionFrame = static_cast< CMemSectionFrame * >( RUNTIME_CLASS( CMemSectionFrame )->CreateObject( ) );
        pSectionFrame->Initialize( pSection, ::AfxGetMainWnd( ), this );
    }

    m_arySectionView.insert( pair< CMemorySection *, TRef< CMemSectionFrame > >( pSection, pSectionFrame ) );
    return pSectionFrame;
}

void CMemSessionViewManager::UnLoadSectionViewFrame( CMemSectionFrame * pView )
{
    ASSERT( pView != NULL );

    MemSectionDocViewMap::iterator i = m_arySectionView.find( pView->GetMemorySectionPtr( ) );
    if ( i == m_arySectionView.end( ) )
    {
        return;
    }

    while( i->first == pView->GetMemorySectionPtr( ) && i != m_arySectionView.end( ) )
    {
        CMemSectionFrame * pGot = i->second;
        if ( i->second == pView )
        {
            m_arySectionView.erase( i );
            return;
        }
        i++;
    }
}


CMemOverallView * CMemSessionViewManager::GetMemOverallViewPtr( )
{
    return m_pOverallView;
}

const CMemOverallView * CMemSessionViewManager::GetMemOverallViewPtr( ) const
{
    return m_pOverallView;
}

CMemSectionFrame * CMemSessionViewManager::GetMemSectionFramePtr( CMemorySection * pSection )
{
    MemSectionDocViewMap::const_iterator i = m_arySectionView.find( pSection );

    if ( i == m_arySectionView.end( ) )
    {
        return NULL;
    }
    else
    {
        return i->second;
    }
}

const CMemSectionFrame * CMemSessionViewManager::GetMemSectionFramePtr( CMemorySection * pSection ) const
{
    MemSectionDocViewMap::const_iterator i = m_arySectionView.find( pSection );

    if ( i == m_arySectionView.end( ) )
    {
        return NULL;
    }
    else
    {
        return i->second;
    }
}

CConfigurationPps * CMemSessionViewManager::GetConfigurationPpsPtr( )
{
    return m_pConfigurationPps;
}

const CConfigurationPps * CMemSessionViewManager::GetConfigurationPpsPtr( ) const
{
    return m_pConfigurationPps;
}

CMemContentFrame * CMemSessionViewManager::LoadContentViewFrame( )
{
    CMemContentFramePtr pFrame = static_cast< CMemContentFrame * >( RUNTIME_CLASS( CMemContentFrame )->CreateObject( ) );
    
    if ( pFrame != NULL )
    {
        pFrame->Initialize( ::AfxGetMainWnd( ), this );
        m_aryMemContentFramePtr.push_back( pFrame );
    }

    return pFrame;
}

void CMemSessionViewManager::UnLoadContentViewFrame( CMemContentFrame * pContentFrame )
{
    CMemContentFramePtr pFrame = m_aryMemContentFramePtr[0];

    vector< CMemContentFramePtr >::iterator i;
    for ( i = m_aryMemContentFramePtr.begin( ); i != m_aryMemContentFramePtr.end( ); i++ )
    {
        if( pContentFrame == *i )
        {
            m_aryMemContentFramePtr.erase( i );
            return;
        }
    }
}

void CMemSessionViewManager::UpdateAllContentViewFrame( MM_ClientMemorySpace eMemorySpaceType, unsigned int uAddr )
{
    vector< CMemContentFramePtr >::iterator i;
    for ( i = m_aryMemContentFramePtr.begin( ); i != m_aryMemContentFramePtr.end( ); i++ )
    {
        if ( eMemorySpaceType == MM_UNKNOWN && uAddr == 0 )
        {
            CMemHexView * pView = (*i)->GetMemContentView( );
            pView->Invalidate( );
        }
        else if ( (*i)->GetMemContentView( )->GetMemSpace( ) == eMemorySpaceType )
        {
            CMemHexView * pView = (*i)->GetMemContentView( );
            unsigned int uViewStartAddr = pView->GetCurrentViewAddress( );
            unsigned int uViewEndAddr = pView->GetCurrentViewDataSize( ) + uViewStartAddr;
            if ( uViewStartAddr >= uAddr && uViewEndAddr <= uViewEndAddr )
            {
                pView->Invalidate( );
            }
        }
    }
}

CMemErrorListView * CMemSessionViewManager::GetErrorListView( )
{
    return m_pErrorListView;
}

const CMemErrorListView * CMemSessionViewManager::GetErrorListView( ) const
{
    return m_pErrorListView;
}

CMemWndState * CMemSessionViewManager::FindWindowState( const CRuntimeClass * pClassInfo, unsigned int uWndID )
{
    return m_pMemWndState->FindChildWndState( pClassInfo, uWndID );
}

const CMemWndState * CMemSessionViewManager::FindWindowState( const CRuntimeClass * pClassInfo, unsigned int uWndID ) const
{
    return m_pMemWndState->FindChildWndState( pClassInfo, uWndID );
}

void CMemSessionViewManager::AddWindowState( const CRuntimeClass * pClassInfo, unsigned int uWndID, const int nWndState, const CRect & rcWndRect )
{
    CMemWndStatePtr pWndState = static_cast< CMemWndState * >( RUNTIME_CLASS( CMemWndState )->CreateObject( ) );
    ASSERT( pWndState != NULL );
    pWndState->Initialize( pClassInfo, uWndID, nWndState, rcWndRect );

    m_pMemWndState->AddChildWndState( pWndState );
}

/////////////////////////////////////////////////////////////////////////////
// CMemSessionViewManager diagnostics

#ifdef _DEBUG
void CMemSessionViewManager::AssertValid() const
{
	CDocument::AssertValid();
}

void CMemSessionViewManager::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMemSessionViewManager serialization

void CMemSessionViewManager::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: add storing code here
	}
	else
	{
		// TODO: add loading code here
	}
}

/////////////////////////////////////////////////////////////////////////////
// CMemSessionViewManager commands

void CMemSessionViewManager::OnCloseDocument() 
{
    Terminate( );
	CDocument::OnCloseDocument();
}
