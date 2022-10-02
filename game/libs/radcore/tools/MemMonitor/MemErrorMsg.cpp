//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemErrorMsg.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemErrorMsg.h"

/////////////////////////////////////////////////////////////////////////////
// CMemErrorMsg

IMPLEMENT_DYNCREATE(CMemErrorMsg, CObject)

CMemErrorMsg::CMemErrorMsg( ) :
    m_eType( Message ),
    m_pUserData( NULL ),
    m_strMsg( CString( "" ) ),
    m_pRefObject( NULL )
{
}

CMemErrorMsg::~CMemErrorMsg()
{
}

void CMemErrorMsg::Initialize( const MessageType eType, const CString & strMsg, const void * pUserData, const CMFCRefCount * pRefObject )
{
    m_eType         = eType;
    m_strMsg        = strMsg;
    m_pUserData     = pUserData;
    m_pRefObject    = pRefObject;
}

void CMemErrorMsg::SetSubTextEntry( const vector< CString > & arySubTextEntry )
{
    m_arySubTextEntry = arySubTextEntry;
}

bool CMemErrorMsg::IsMessage( )
{
    return m_eType == Message;
}

bool CMemErrorMsg::IsError( )
{
    return m_eType == Error;
}

bool CMemErrorMsg::IsWarning( )
{
    return m_eType == Warning;
}

bool CMemErrorMsg::IsCommand( )
{
    return m_eType == Command;
}

/////////////////////////////////////////////////////////////////////////////
// CMemErrorMsg diagnostics

#ifdef _DEBUG
void CMemErrorMsg::AssertValid() const
{
	CObject::AssertValid();
}

void CMemErrorMsg::Dump(CDumpContext& dc) const
{
	CObject::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMemErrorMsg serialization

void CMemErrorMsg::Serialize(CArchive& ar)
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
// CMemErrorMsg commands
