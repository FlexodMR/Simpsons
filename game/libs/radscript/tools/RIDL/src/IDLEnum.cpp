//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// Enum.cpp: implementation of the CIDLEnum class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "IDLEnum.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

IMPLEMENT_DYNCREATE( CIDLEnum, CObject )

//===========================================================================
// CIDLEnum::CIDLEnum
//===========================================================================
// Description: Construction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CIDLEnum::CIDLEnum()
{

}


//===========================================================================
// CIDLEnum::~CIDLEnum
//===========================================================================
// Description: Destruction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CIDLEnum::~CIDLEnum()
{

}


//===========================================================================
// CIDLEnum::Dump
//===========================================================================
// Description: debug dump
// 
// Constraints: 
// 
// Parameter:
//             CDumpContext& dc
// 
// Return: void 
//===========================================================================
#if defined(_DEBUG) || defined(_AFXDLL)
void CIDLEnum::Dump(CDumpContext& dc) const
{
    dc << "enum" << " " << ( LPCTSTR )m_strName << "\n{\n";

    for ( int i = 0; i < m_vecIDLEnumValue.size( ); i ++ )
    {
        dc << "    " << m_vecIDLEnumValue[i].strName << " = " << m_vecIDLEnumValue[i].nValue << ",\n";
    }

    dc << "};\n";
}
#endif
