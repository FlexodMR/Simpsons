//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// FmtEdit.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "FmtEdit.h"
#include "ScriptMethod.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CFmtEdit
bool CFmtEdit::_IsCharOneOf(const char cChar, const char* szText)
{
    int nLength = strlen(szText);
    for (int i = 0; i < nLength; i++)
    {
        if (szText[i] == cChar)
        {
            return(true);
        }
    }
    return(false);
}

bool CFmtEdit::_IsCharNotOneOf(const char cChar, const char* szText)
{
    int nLength = strlen(szText);
    for (int i = 0; i < nLength; i++)
    {
        if (szText[i] == cChar)
        {
            return(false);
        }
    }
    return(true);
}

CFmtEdit::CFmtEdit()
{
}

CFmtEdit::~CFmtEdit()
{
}

void CFmtEdit::SetInput(const CScriptParam* pParam)
{
    // first delete all text in edit box
    SetSel(0, -1);
    Clear();
    m_pRTIParam = pParam->GetRTIParamPtr( );

    // depends on the type, enable, disable the edit box
    switch(m_pRTIParam->GetHashedType( ) )
    {
    case PAR_LONG:
    case PAR_INT:
        {
            EnableWindow(TRUE);
            ShowWindow(SW_SHOWNORMAL);
        }
        break;

    case PAR_ULONG:
    case PAR_UNSIGNED_INT:
        {
            EnableWindow(TRUE);
            ShowWindow(SW_SHOWNORMAL);
        }
        break;

    case PAR_FLOAT:
        {
            EnableWindow(TRUE);
            ShowWindow(SW_SHOWNORMAL);
        }
        break;

    case PAR_CHAR:
        {
            EnableWindow(TRUE);
            ShowWindow(SW_SHOWNORMAL);
        }
        break;

    case PAR_UNSIGNED_CHAR:
        {
            EnableWindow(TRUE);
            ShowWindow(SW_SHOWNORMAL);
        }
        break;

    case PAR_BOOL:
        {
            // boolean should use Combo box, hide the window
            EnableWindow(FALSE);
            ShowWindow(SW_HIDE);
        }
        break;

    case PAR_INT16:
        {
            EnableWindow(TRUE);
            ShowWindow(SW_SHOWNORMAL);
        }
        break;

    case PAR_UNKNOWN:
        {
            EnableWindow(TRUE);
            ShowWindow(SW_SHOWNORMAL);
        }
        break;

    case PAR_VOID:
        {
            SetWindowText("VOID TYPE DETECTED!");
            EnableWindow(FALSE);
            ShowWindow(SW_SHOWNORMAL);
        }
        break;

    default:
        {
            EnableWindow(TRUE);
            ShowWindow(SW_SHOWNORMAL);
        }
        break;
    };
    SetWindowText(pParam->ConvertValueToText());
}

BEGIN_MESSAGE_MAP(CFmtEdit, CEdit)
//{{AFX_MSG_MAP(CFmtEdit)
ON_WM_CHAR()
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFmtEdit message handlers

void CFmtEdit::OnChar(UINT nChar, UINT nRepCnt, UINT nFlags)
{
    // if control character, just return
    if (nChar < 32)
    {
        CEdit::OnChar(nChar, nRepCnt, nFlags);
        return;
    }

    switch(m_pRTIParam->GetHashedType( ))
    {
    case PAR_LONG:
    case PAR_INT:
        {
            if (!_IsCharOneOf(nChar, "0123456789"))
            {
                return;
            }
        }
        break;

    case PAR_ULONG:
    case PAR_UNSIGNED_INT:
        {
            if (!_IsCharOneOf(nChar, "0123456789+-"))
            {
                return;
            }
        }
        break;

    case PAR_FLOAT:
        {
            if (!_IsCharOneOf(nChar, "0123456789+-."))
            {
                return;
            }
        }
        break;

    case PAR_CHAR:
        {
            if (m_pRTIParam->GetIndLvl( ) == 0)
            {
                if (!_IsCharOneOf(nChar, "0123456789"))
                {
                    return;
                }
            }
        }
        break;

    case PAR_UNSIGNED_CHAR:
        {
            if (m_pRTIParam->GetIndLvl( ) == 0)
            {
                if (!_IsCharOneOf(nChar, "0123456789+-"))
                {
                    return;
                }
            }
        }
        break;

    case PAR_BOOL:
        {
            return;
        }
        break;

    case PAR_INT16:
        {
            if (!_IsCharOneOf(nChar, "0123456789+-"))
            {
                return;
            }
        }
        break;

    case PAR_UNKNOWN:
        {
        }
        break;

    case PAR_VOID:
        {
            return;
        }
        break;

    default:
        {

        }
        break;

    };

    CEdit::OnChar(nChar, nRepCnt, nFlags);
}
