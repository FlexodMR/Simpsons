//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// Method.cpp: implementation of the CIDLMethod class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "IDLMethod.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

IMPLEMENT_DYNCREATE( CIDLMethod, CObject )

//===========================================================================
// CIDLMethod::CIDLMethod
//===========================================================================
// Description: Construction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CIDLMethod::CIDLMethod( )
{
    m_strName = _T( "  " );
}


//===========================================================================
// CIDLMethod::~CIDLMethod
//===========================================================================
// Description: Destruction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CIDLMethod::~CIDLMethod( )
{

}


//===========================================================================
// CIDLMethod::GetName
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CString 
//===========================================================================
CString CIDLMethod::GetName( ) const
{
    return m_strName;
}


//===========================================================================
// CIDLMethod::SetName
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
void CIDLMethod::SetName( const CString & strName )
{
    m_strName = strName;
}


//===========================================================================
// CIDLMethod::GetReturnType
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CIDLParameterPtr 
//===========================================================================
CIDLParameterPtr CIDLMethod::GetReturnType( ) const
{
    return m_pReturnType;
}


//===========================================================================
// CIDLMethod::SetReturnType
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CIDLParameterPtr & pRetType
// 
// Return: void 
//===========================================================================
void CIDLMethod::SetReturnType( const CIDLParameterPtr & pRetType )
{
    m_pReturnType = pRetType;
}


//===========================================================================
// CIDLMethod::AddParameter
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CIDLParameterPtr & pParameter
// 
// Return: void 
//===========================================================================
void CIDLMethod::AddParameter( const CIDLParameterPtr & pParameter )
{
    m_vecParameterPtr.push_back( pParameter );
}


//===========================================================================
// CIDLMethod::Dump
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
void CIDLMethod::Dump(CDumpContext& dc) const
{
    dc << "virtual" << " ";
    dc << m_pReturnType->GetSpecifier( ) << ( ( m_pReturnType->GetSpecifier( ).GetLength( ) > 0 ) ? " " : "" );
    dc << m_pReturnType->GetDeclarator( ) << ( ( m_pReturnType->GetDeclarator( ).GetLength( ) > 0 ) ? " " : "" );
    dc << m_pReturnType->GetIndLvl( ) << " ";
    dc << m_strName << "(";
    
    for ( int i = 0; i < m_vecParameterPtr.size( ); i ++ )
    {
        dc << " ";
        dc << m_vecParameterPtr[i]->GetSpecifier( ) << ( ( m_vecParameterPtr[i]->GetSpecifier( ).GetLength( ) > 0 ) ? " " : "" );
        dc << m_vecParameterPtr[i]->GetDeclarator( ) << ( ( m_vecParameterPtr[i]->GetDeclarator( ).GetLength( ) > 0 ) ? " " : "" );
        dc << m_vecParameterPtr[i]->GetIndLvl( ) << " ";
        dc << m_vecParameterPtr[i]->GetName( );
        dc << ",";
    }

    dc << " ) = 0;\n";
}
#endif
