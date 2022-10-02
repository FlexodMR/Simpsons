//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemConfiguration.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemConfiguration.h"

/////////////////////////////////////////////////////////////////////////////
// CMemConfiguration

IMPLEMENT_SERIAL( CMemConfiguration, CDocument, VERSIONABLE_SCHEMA | 1 )

BEGIN_MESSAGE_MAP(CMemConfiguration, CDocument)
	//{{AFX_MSG_MAP(CMemConfiguration)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

CMemConfiguration::CMemConfiguration( )
{
}

BOOL CMemConfiguration::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;
	return TRUE;
}

CMemConfiguration::~CMemConfiguration()
{
    //
    // not so good fix, we load it on demand, so unload if config is about to
    // get killed
    //
    if ( ::radPEAddr2LineIsExeLoaded( ) )
    {
        ::radPEAddr2LineUnLoadExe( );
    }
}

/////////////////////////////////////////////////////////////////////////////
// CMemConfiguration diagnostics

#ifdef _DEBUG
void CMemConfiguration::AssertValid() const
{
	CDocument::AssertValid();
}

void CMemConfiguration::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

void CMemConfiguration::Initialize( )
{
    //
    // add default system colour
    //
    m_arySymbolFileTable.clear( );
    m_aryGroupIDColour.clear( );

    // sample to add default group id and colour
    // m_aryGroupIDColour.insert( pair< CString, COLORREF >( "radCore", RGB( 128, 128, 128 ) ) );
    // m_aryGroupIDColour.insert( pair< CString, COLORREF >( "radSound", RGB( 255, 255, 255 ) ) );

    SetModifiedFlag( TRUE );
}

const CMemConfiguration::MemColourTable & CMemConfiguration::GetGroupIDColourLookupTable( ) const
{
    return m_aryGroupIDColour;
}

CMemConfiguration::MemColourTable & CMemConfiguration::GetGroupIDColourLookupTable( )
{
    return m_aryGroupIDColour;
}

void CMemConfiguration::SetGroupIDColourLookupTable( const MemColourTable & aryGroupIDColour )
{
    m_aryGroupIDColour = aryGroupIDColour;
    SetModifiedFlag( TRUE );
    Notify( SSC_MEM_CONFIG_MODIFIED, 1, this );
}

COLORREF CMemConfiguration::GetMemColourByGroupID( const CString & strGroupID ) const
{
    MemColourTable::const_iterator i = m_aryGroupIDColour.find( strGroupID );
    if ( i != m_aryGroupIDColour.end( ) )
    {
        return i->second;
    }

    return RGB( 128, 128, 128 );
}

const CMemConfiguration::MemSymbolFileTable & CMemConfiguration::GetSymbolLookupToolTable( ) const
{
    return m_arySymbolFileTable;
}

CMemConfiguration::MemSymbolFileTable & CMemConfiguration::GetSymbolLookupToolTable( )
{
    return m_arySymbolFileTable;
}

void CMemConfiguration::GetSymbolLookupTool( const MM_ClientPlatform ePlatform, CString & strExeFile ) const
{
    MemSymbolFileTable::const_iterator found = m_arySymbolFileTable.find( ePlatform );
    if ( found == m_arySymbolFileTable.end( ) )
    {
        strExeFile = "";
    }
    else
    {
        strExeFile = found->second;
    }
}

void CMemConfiguration::SetSymbolLookupTool( const MM_ClientPlatform ePlatform, const CString & strExeFile )
{
    MemSymbolFileTable::iterator found = m_arySymbolFileTable.find( ePlatform );
    if ( found != m_arySymbolFileTable.end( ) )
    {
        found->second = strExeFile;
    }
    else
    {
        m_arySymbolFileTable.insert( pair< MM_ClientPlatform, CString >( ePlatform, strExeFile ) );
    }
}

const CString CMemConfiguration::GetPlatformExecutablePath( const MM_ClientPlatform ePlatform ) const
{
    MemSymbolFileTable::const_iterator p = m_arySymbolFileTable.find( ePlatform );
    if ( p != m_arySymbolFileTable.end( ) )
    {
        return p->second;
    }
    else
    {
        return CString( "" );
    }
}

const CString CMemConfiguration::GetClientExecutablePath( ) const
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    MM_ClientPlatform ePlatform = pApp->GetMemSessionDataManagerPtr( )->GetConcurrentMemoryImagePtr( )->GetPlatformType( );

    return GetPlatformExecutablePath( ePlatform );
}

/////////////////////////////////////////////////////////////////////////////
// CMemConfiguration serialization

void CMemConfiguration::Serialize( CArchive& ar )
{
	if ( ar.IsStoring( ) )
	{
        ar << m_aryGroupIDColour;
        ar << m_arySymbolFileTable;
	}
	else
	{
        ar >> m_aryGroupIDColour;
        ar >> m_arySymbolFileTable;
    }
}

BOOL CMemConfiguration::SaveModified( ) 
{
    return CDocument::SaveModified( );
}

BOOL CMemConfiguration::OnSaveDocument( LPCTSTR lpszPathName )
{
    return CDocument::OnSaveDocument( lpszPathName );
}

BOOL CMemConfiguration::OnOpenDocument( LPCTSTR lpszPathName )
{
    if ( ! CDocument::OnOpenDocument( lpszPathName ) )
    {
        return FALSE;
    }
    return TRUE;
}

void CMemConfiguration::OnCloseDocument( )
{
    CDocument::OnCloseDocument( );
}
