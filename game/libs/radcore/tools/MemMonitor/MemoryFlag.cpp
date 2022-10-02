//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemoryFlag.cpp: implementation of the CMemoryFlag class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "memmonitor.h"
#include "MemoryFlag.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////
IMPLEMENT_DYNCREATE(CMemoryFlag, CObject);

CMemoryFlag::CMemoryFlag( ) :
    m_uRecordID( 0 ),
    m_uTimeStamp( 0 )
{
}

CMemoryFlag::~CMemoryFlag( )
{

}

bool CMemoryFlag::Initialize( unsigned int uRecordID, unsigned int uTimeStamp, const char * pFlagName )
{
    if ( pFlagName == NULL )
    {
        ASSERT( false );
        return false;
    }
    m_strFlagName = pFlagName;
    m_uRecordID = uRecordID;
    m_uTimeStamp = uTimeStamp;
    return true;
}

CMemoryFlag & CMemoryFlag::operator=( const CMemoryFlag & rhs )
{
    this->m_strFlagName = rhs.m_strFlagName;
    this->m_uRecordID = rhs.m_uRecordID;
    this->m_uTimeStamp = rhs.m_uTimeStamp;
    return *this;
}
