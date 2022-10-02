//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// FmtComboBox.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "FmtComboBox.h"
#include "ScriptMethod.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CFmtComboBox

CFmtComboBox::CFmtComboBox()
{
}

CFmtComboBox::~CFmtComboBox()
{
}

void CFmtComboBox::SetInput(const CScriptParam* pParam)
{
    // first delete all item in ComboBox
    while(GetCount() != 0)
    {
        DeleteString(0);
    };

    m_pRTIParam = pParam->GetRTIParamPtr();

    // depends on the type, enable, disable the edit box
    switch(m_pRTIParam->GetHashedType( ) )
    {
    case PAR_LONG:
    case PAR_INT:
        {
            EnableWindow(FALSE);
            ShowWindow(SW_HIDE);
        }
        break;

    case PAR_ULONG:
    case PAR_UNSIGNED_INT:
        {
            EnableWindow(FALSE);
            ShowWindow(SW_HIDE);
        }
        break;

    case PAR_FLOAT:
        {
            EnableWindow(FALSE);
            ShowWindow(SW_HIDE);
        }
        break;

    case PAR_CHAR:
        {
            EnableWindow(FALSE);
            ShowWindow(SW_HIDE);
        }
        break;

    case PAR_UNSIGNED_CHAR:
        {
            EnableWindow(FALSE);
            ShowWindow(SW_HIDE);
        }
        break;

    case PAR_BOOL:
        {
            // boolean should use Combo box
            EnableWindow(TRUE);
            ShowWindow(SW_SHOWNORMAL);
            AddString("false");
            AddString("true");
            if (pParam->GetValueBool() == true)
            {
                SetCurSel(1);
            }
            else
            {
                SetCurSel(0);
            }
        }
        break;

    case PAR_INT16:
        {
            EnableWindow(FALSE);
            ShowWindow(SW_HIDE);
        }
        break;

    case PAR_UNKNOWN:
        {
            EnableWindow(FALSE);
            ShowWindow(SW_HIDE);
        }
        break;

    case PAR_VOID:
        {
            EnableWindow(FALSE);
            ShowWindow(SW_HIDE);
        }
        break;

    default:
        {
            EnableWindow(FALSE);
            ShowWindow(SW_HIDE);
        }
        break;

    };
}

BEGIN_MESSAGE_MAP(CFmtComboBox, CComboBox)
//{{AFX_MSG_MAP(CFmtComboBox)
// NOTE - the ClassWizard will add and remove mapping macros here.
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFmtComboBox message handlers
