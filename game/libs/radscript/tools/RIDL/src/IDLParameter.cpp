//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// Parameter.cpp: implementation of the CIDLParameter class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "IDLParameter.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

IMPLEMENT_DYNCREATE( CIDLParameter, CObject )

//===========================================================================
// CIDLParameter::CIDLParameter
//===========================================================================
// Description: Construction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CIDLParameter::CIDLParameter() :
    m_nIndLvl( 0 )
{

}


//===========================================================================
// CIDLParameter::~CIDLParameter
//===========================================================================
// Description: Destruction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CIDLParameter::~CIDLParameter()
{

}
