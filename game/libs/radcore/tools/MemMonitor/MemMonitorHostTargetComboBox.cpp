//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemMonitorHostTargetComboBox.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemMonitorHostTargetComboBox.h"

/////////////////////////////////////////////////////////////////////////////
// CMemMonitorHostTargetComboBox

CMemMonitorHostTargetComboBox::CMemMonitorHostTargetComboBox()
{
}

CMemMonitorHostTargetComboBox::~CMemMonitorHostTargetComboBox()
{
}


BEGIN_MESSAGE_MAP(CMemMonitorHostTargetComboBox, CComboBox)
	//{{AFX_MSG_MAP(CMemMonitorHostTargetComboBox)
	ON_WM_CREATE()
	ON_CONTROL_REFLECT(CBN_SELCHANGE, OnSelchange)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

BOOL CMemMonitorHostTargetComboBox::PreTranslateMessage(MSG* pMsg) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	return CComboBox::PreTranslateMessage(pMsg);
}

/////////////////////////////////////////////////////////////////////////////
// CMemMonitorHostTargetComboBox message handlers
IMPLEMENT_SERIAL(CMemMonitorHostTargetComboButton, CBCGToolbarComboBoxButton, 1)

BOOL CMemMonitorHostTargetComboButton::m_bHasFocus = FALSE;

BOOL CMemMonitorHostTargetComboButton::NotifyCommand( int iNotifyCode )
{
    BOOL bRes = CBCGToolbarComboBoxButton::NotifyCommand (iNotifyCode);

    switch (iNotifyCode)
    {
	    case CBN_KILLFOCUS:
        {
		    m_bHasFocus = FALSE;
		    bRes = TRUE;
        }
	    break;

        case CBN_SETFOCUS:
        {
		    m_bHasFocus = TRUE;
		    bRes = TRUE;
        }
	    break;

        case CBN_DROPDOWN:
        {
            int nItemCount = GetComboBox( )->GetCount( );
            for ( int i = 0; i < nItemCount; i ++ )
            {
                GetComboBox( )->DeleteString( 0 );
            }

            CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
            if ( pApp->GetMemSessionDataManagerPtr( ) != NULL && 
                 pApp->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( ) != NULL )
            {
                CMemMonitorHost * pHost = pApp->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( );

                vector< CString > aryTargetList;
                pHost->GetTargetList( aryTargetList );

                for ( unsigned int nTargetIdx = 0; nTargetIdx < aryTargetList.size( ); nTargetIdx++ )
                {
                    GetComboBox( )->AddString( aryTargetList[ nTargetIdx ] );
                }
            }
        }
        break;
    }

    return bRes;
}

CString CMemMonitorHostTargetComboButton::GetCurrentSelected( ) const
{
    CString strTarget;
    int nCurSel = GetComboBox( )->GetCurSel( );

    if ( nCurSel != -1 )
    {
        GetComboBox( )->GetLBText( nCurSel, strTarget );
    }
    return strTarget;
}


int CMemMonitorHostTargetComboBox::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    lpCreateStruct->style |= CBS_SIMPLE;
	if (CComboBox::OnCreate(lpCreateStruct) == -1)
		return -1;
	return 0;
}

void CMemMonitorHostTargetComboBox::OnSelchange() 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    ASSERT( pApp != NULL );

    CString strTarget;
    int nCurSel = GetCurSel( );

    if ( nCurSel != -1 )
    {
        GetLBText( nCurSel, strTarget );
        pApp->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( )->SetCurrentTarget( strTarget );
    }
}
