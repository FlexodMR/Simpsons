//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// Interface.cpp: implementation of the CIDLInterface class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "IDLInterface.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

IMPLEMENT_DYNCREATE( CIDLInterface, CObject )

//===========================================================================
// CIDLInterface::CIDLInterface
//===========================================================================
// Description: Construction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CIDLInterface::CIDLInterface() :
    m_bEvaluated( false )
{
}


//===========================================================================
// CIDLInterface::~CIDLInterface
//===========================================================================
// Description: Destruction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CIDLInterface::~CIDLInterface()
{
}


//===========================================================================
// CIDLInterface::GetName
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CString 
//===========================================================================
CString CIDLInterface::GetName( ) const
{
    return m_strName;
}


//===========================================================================
// CIDLInterface::SetName
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CString & strName
// 
// Return: void 
//===========================================================================
void CIDLInterface::SetName( const CString & strName )
{
    m_strName = strName;
}


//===========================================================================
// CIDLInterface::SetBaseClass
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CString & strBaseClass
// 
// Return: void 
//===========================================================================
void CIDLInterface::SetBaseClass( const CString & strBaseClass )
{
    m_strBaseClass = strBaseClass;
}


//===========================================================================
// CIDLInterface::SetBaseClass
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CIDLInterfacePtr & pBaseClass
// 
// Return: void 
//===========================================================================
void CIDLInterface::SetBaseClass( const CIDLInterfacePtr & pBaseClass )
{
    m_pBaseClass = pBaseClass;
}


//===========================================================================
// CIDLInterface::GetBaseClass
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CString 
//===========================================================================
CString CIDLInterface::GetBaseClass( ) const
{
    if ( ! m_bEvaluated )
    {
        return m_strBaseClass;
    }
    else
    {
        if ( m_pBaseClass != NULL )
        {
            return CString( "" );
        }
        else
        {
            return m_pBaseClass->GetName( );
        }
    }
}


//===========================================================================
// CIDLInterface::GetBaseClassPtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CIDLInterfacePtr 
//===========================================================================
CIDLInterfacePtr CIDLInterface::GetBaseClassPtr( ) const
{
    if ( ! m_bEvaluated )
    {
        return NULL;
    }
    else
    {
        return m_pBaseClass;
    }
}


//===========================================================================
// CIDLInterface::Evaluate
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             vector< CIDLInterfacePtr > & vecInterfacesPtr
// 
// Return: void 
//===========================================================================
void CIDLInterface::Evaluate( vector< CIDLInterfacePtr > & vecInterfacesPtr )
{
    CString strBaseClass = GetBaseClass( );

    if ( strBaseClass.GetLength( ) == 0 )
    {
        m_bEvaluated = true;
        return;
    }

    for ( int i = 0; i < vecInterfacesPtr.size( ); i ++ )
    {
        if ( strBaseClass == vecInterfacesPtr.at( i )->GetName( ) )
        {
            SetBaseClass( vecInterfacesPtr.at( i ) );
            m_bEvaluated = true;
            return;
        }
    }
}


//===========================================================================
// CIDLInterface::AddMethodPtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CIDLMethodPtr & pMethod
// 
// Return: void 
//===========================================================================
void CIDLInterface::AddMethodPtr( const CIDLMethodPtr & pMethod )
{
    m_vecMethodPtr.push_back( pMethod );
}


//===========================================================================
// CIDLInterface::AddEnumPtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CIDLEnumPtr & pEnum
// 
// Return: void 
//===========================================================================
void CIDLInterface::AddEnumPtr( const CIDLEnumPtr & pEnum )
{
    m_veCIDLEnumPtr.push_back( pEnum );
}


//===========================================================================
// CIDLInterface::Dump
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CDumpContext& dc
// 
// Return: void 
//===========================================================================
#if defined(_DEBUG) || defined(_AFXDLL)
void CIDLInterface::Dump(CDumpContext& dc) const
{
    dc << "struct" << " " << m_strName << " : public " << GetBaseClass( ) << "\n";
    dc << "{" << "\n";
    dc.Flush( );
    for ( int i = 0; i < m_vecMethodPtr.size( ); i ++ )
    {
        m_vecMethodPtr.at( i )->Dump( dc );
        dc.Flush( );
    }
    for ( int j = 0; j < m_veCIDLEnumPtr.size( ); j ++ )
    {
        m_veCIDLEnumPtr.at( j )->Dump( dc );
        dc.Flush( );
    }
    dc << "};\n";
    dc.Flush( );
}
#endif
