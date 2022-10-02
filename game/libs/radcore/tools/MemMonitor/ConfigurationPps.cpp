//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ConfigurationPps.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemMonitorHost.h"
#include "ConfigurationPps.h"

/////////////////////////////////////////////////////////////////////////////
// CConfigurationPps

IMPLEMENT_DYNCREATE(CConfigurationPps, CPropertySheetEx)

void CConfigurationPps::DoDataExchange(CDataExchange* pDX)
{
	CPropertySheetEx::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CConfigFilePpg)
	//}}AFX_DATA_MAP
}

CConfigurationPps::CConfigurationPps( ) :
    CPropertySheetEx( "Session Configuration", NULL, 0),
    m_pConfigDoc( NULL )
{
}

CConfigurationPps::~CConfigurationPps()
{
}

void CConfigurationPps::Initialize( CMemSessionDataManager * pData, bool bWizardMode )
{
	ASSERT( pData != NULL );
    m_pConfigDoc = pData->GetMemConfigurationPtr( );

    m_ppgTarget.Initialize( pData->GetMemMonitorHostPtr( )->GetTargetTablePtr( ) );

    if ( bWizardMode )
    {
        SetWizardMode( );
    }
//    AddPage( & m_ppgFile );
    AddPage( & m_ppgTarget );
    AddPage( & m_ppgSymbol );
    AddPage( & m_ppgColour );
}

void CConfigurationPps::Terminate( )
{
    m_pConfigDoc = NULL;
}

BEGIN_MESSAGE_MAP(CConfigurationPps, CPropertySheetEx)
	//{{AFX_MSG_MAP(CConfigurationPps)
	ON_WM_CREATE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CConfigurationPps message handlers


int CConfigurationPps::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if (CPropertySheetEx::OnCreate(lpCreateStruct) == -1)
		return -1;

    return 0;
}

int CConfigurationPps::DoModal() 
{
//  m_ppgFile.Initialize( m_pConfigDoc->GetPathName( ) );
	m_ppgColour.Initialize( m_pConfigDoc );
    m_ppgSymbol.Initialize( m_pConfigDoc );

    return CPropertySheetEx::DoModal();
}
