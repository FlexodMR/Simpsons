//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemHexAddrComboBox.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemHexAddrComboBox.h"
#include "MemContentFrame.h"

/////////////////////////////////////////////////////////////////////////////
// CMemHexAddrComboBox

CMemHexAddrComboBox::CMemHexAddrComboBox()
{
}

CMemHexAddrComboBox::~CMemHexAddrComboBox()
{
}


BEGIN_MESSAGE_MAP(CMemHexAddrComboBox, CComboBox)
	//{{AFX_MSG_MAP(CMemHexAddrComboBox)
	ON_CONTROL_REFLECT(CBN_SELCHANGE, OnSelchange)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

BOOL CMemHexAddrComboBox::PreTranslateMessage(MSG* pMsg) 
{
	if ( pMsg->message == WM_KEYDOWN )
	{
		CMemContentFrame* pFrame = static_cast< CMemContentFrame * >( GetParentFrame( ) );
		if ( pFrame != NULL )
		{
			switch ( pMsg->wParam )
			{
			    case VK_ESCAPE:
                {
				    pFrame->SetFocus( );
				    return TRUE;
                }
                break;

			    case VK_RETURN:
                {
				    pFrame->PostMessage( WM_COMMAND, ID_HEXEDIT_ADDRESS, (LPARAM)GetSafeHwnd( ) );
				    return TRUE;
                }
			}
		}
	}

	return CComboBox::PreTranslateMessage( pMsg );
}

void CMemHexAddrComboBox::OnSelchange() 
{
	CMemContentFrame* pFrame = static_cast< CMemContentFrame * >( GetParentFrame( ) );
    pFrame->PostMessage( WM_COMMAND, ID_HEXEDIT_ADDRESS, (LPARAM)GetSafeHwnd( ) );
}

/////////////////////////////////////////////////////////////////////////////
// CMemHexAddrComboBox message handlers


IMPLEMENT_SERIAL(CMemHexAddrComboButton, CBCGToolbarComboBoxButton, 1)

BOOL CMemHexAddrComboButton::m_bHasFocus = FALSE;

BOOL CMemHexAddrComboButton::NotifyCommand( int iNotifyCode )
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
    }

    return bRes;
}
