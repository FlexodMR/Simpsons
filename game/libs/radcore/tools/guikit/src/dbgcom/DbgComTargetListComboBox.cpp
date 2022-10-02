//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// DbgComTargetListComboBox.cpp : implementation file
//

#include "stdafx.h"
#include <raddebugcommunication.hpp>
#include "DbgComTargetListComboBox.h"

// CDbgComTargetListComboBox
IMPLEMENT_DYNCREATE(CDbgComTargetListComboBox, CComboBox)

CDbgComTargetListComboBox::CDbgComTargetListComboBox() :
    m_pDbgComTargetTable( NULL )
{
    radDbgComHostGetTargetTable( &m_pDbgComTargetTable );
}

CDbgComTargetListComboBox::~CDbgComTargetListComboBox()
{
    m_pDbgComTargetTable->Release( );
    m_pDbgComTargetTable = NULL;
}

BEGIN_MESSAGE_MAP(CDbgComTargetListComboBox, CComboBox)
    ON_CONTROL_REFLECT(CBN_SELCHANGE, OnCbnSelchange)
    ON_CONTROL_REFLECT(CBN_DROPDOWN, OnCbnDropdown)
    ON_WM_CREATE()
END_MESSAGE_MAP()

void CDbgComTargetListComboBox::TargetEnumCallBack( void* context, const radDbgComTargetName pName, const radDbgComIPAddress pIpAddress, unsigned short port, bool InUse )
{
    CDbgComTargetListComboBox * pThis = static_cast< CDbgComTargetListComboBox * >( context );
    pThis->AddString( pName );
}

void CDbgComTargetListComboBox::OnSelectTarget( const CString & strTargetName )
{
}

CString CDbgComTargetListComboBox::GetDefaultTargetName( ) const
{

    radDbgComTargetName targetName;
    if ( ! m_pDbgComTargetTable->GetDefaultTarget( targetName ) )
    {
        strcpy( targetName, "" );
    }
    return targetName;
}

CString CDbgComTargetListComboBox::GetSelectedTargetName( ) const
{
    CString strTargetName( "" );
    int nCurSel = this->GetCurSel( );
    if ( nCurSel != -1 )
    {
        this->GetLBText( nCurSel, strTargetName );
    }

    return strTargetName;
}

// CDbgComTargetListComboBox message handlers

void CDbgComTargetListComboBox::OnCbnSelchange()
{
    //
    // Get current selection and call OnSelectTarget( )
    //
    CString strTargetName;
    int nCurSel = this->GetCurSel( );
    if ( nCurSel != -1 )
    {
        this->GetLBText( nCurSel, strTargetName );
        OnSelectTarget( strTargetName );
    }
    else
    {
        strTargetName = GetDefaultTargetName( );
        this->SelectString( 0, strTargetName );
        OnSelectTarget( strTargetName );
    }
}

void CDbgComTargetListComboBox::OnCbnDropdown()
{
    //
    // read all the target from the dbgcom registry list
    //
    IRadDbgComTargetTable* pHost = NULL;
    radDbgComHostGetTargetTable( &pHost );

    m_aryTargetNameList.RemoveAll( );
    while( GetCount() > 0 )
    {
        DeleteString( 0 );
    }
    pHost->EnumerateTargets( this, TargetEnumCallBack );

    pHost->Release( );
}

int CDbgComTargetListComboBox::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    lpCreateStruct->style |= CBS_SIMPLE;

    if (CComboBox::OnCreate(lpCreateStruct) == -1)
        return -1;

    //
    // populate all entry
    //
    OnCbnDropdown( );

    SelectString( 0, GetDefaultTargetName( ) );

    return 0;
}
