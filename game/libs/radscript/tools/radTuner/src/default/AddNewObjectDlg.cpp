//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// AddNewObjectDlg.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "AddNewObjectDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAddNewObjectDlg dialog


CAddNewObjectDlg::CAddNewObjectDlg(CWnd* pParent /*=NULL*/)
: CDialog(CAddNewObjectDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CAddNewObjectDlg)
    m_strObjectName = _T("");
	m_bDefault = TRUE;
	m_bAll = FALSE;
	m_bGCN = FALSE;
	m_bPC = FALSE;
	m_bPS2 = FALSE;
	m_bXBox = FALSE;
    //}}AFX_DATA_INIT
}


void CAddNewObjectDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CAddNewObjectDlg)
	DDX_Control(pDX, IDC_CHECK_XBOX, m_chkXBox);
	DDX_Control(pDX, IDC_CHECK_PS2, m_chkPS2);
	DDX_Control(pDX, IDC_CHECK_PC, m_chkPC);
	DDX_Control(pDX, IDC_CHECK_GCN, m_chkGCN);
	DDX_Control(pDX, IDC_CHECK_DEFAULT, m_chkDefault);
	DDX_Control(pDX, IDC_CHECK_ALL, m_chkAll);
    DDX_Control(pDX, IDC_COMBO_CLASS_LIST, m_cbxClassList);
    DDX_Text(pDX, IDC_EDIT_OBJECT_NAME, m_strObjectName);
	DDX_Check(pDX, IDC_CHECK_DEFAULT, m_bDefault);
	DDX_Check(pDX, IDC_CHECK_ALL, m_bAll);
	DDX_Check(pDX, IDC_CHECK_GCN, m_bGCN);
	DDX_Check(pDX, IDC_CHECK_PC, m_bPC);
	DDX_Check(pDX, IDC_CHECK_PS2, m_bPS2);
	DDX_Check(pDX, IDC_CHECK_XBOX, m_bXBox);
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CAddNewObjectDlg, CDialog)
//{{AFX_MSG_MAP(CAddNewObjectDlg)
    ON_WM_CREATE()
	ON_BN_CLICKED(IDC_CHECK_DEFAULT, OnCheckDefault)
	ON_BN_CLICKED(IDC_CHECK_ALL, OnCheckAll)
	ON_BN_CLICKED(IDC_CHECK_GCN, OnCheckGcn)
	ON_BN_CLICKED(IDC_CHECK_PC, OnCheckPc)
	ON_BN_CLICKED(IDC_CHECK_PS2, OnCheckPs2)
	ON_BN_CLICKED(IDC_CHECK_XBOX, OnCheckXbox)
	ON_BN_CLICKED(IDC_BUTTON_HELP, OnButtonHelp)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CAddNewObjectDlg message handlers

int CAddNewObjectDlg::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CDialog::OnCreate(lpCreateStruct) == -1)
        return -1;

    return 0;
}

void CAddNewObjectDlg::OnOK()
{
    if (!UpdateData(TRUE))
    {
        return;
    }

    if (m_strObjectName.FindOneOf(" \t\r\n ~!@#$%^&*()-=+\\|[]{};\':\",./<>?") != -1)
    {
        ::AfxMessageBox("Object name contain invalid character.");
        return;
    }

    if (m_strObjectName.GetLength() < 3)
    {
        ::AfxMessageBox("Please provide a object name least 3 characters long");
        return;
    }

    m_nClassIndex = m_cbxClassList.GetCurSel();

    switch(GetCheckedRadioButton(IDC_RADIO_CREATE, IDC_RADIO_WITH))
    {
    case IDC_RADIO_CREATE:
        {
            m_eCreationMethod = CScriptObject::RT_CREATE;
        }
        break;

    case IDC_RADIO_WITH:
        {
            m_eCreationMethod = CScriptObject::RT_WITH;
        }
        break;
    }

    CDialog::OnOK();
}

BOOL CAddNewObjectDlg::OnInitDialog()
{
    CDialog::OnInitDialog();

    IRadTypeInfoSystem *pTypeInfoSystem = ::radTypeInfoSystemGet();
    ASSERT(pTypeInfoSystem);

    char szText[256];

    for (int i = 0; i < pTypeInfoSystem->GetTypeInfoCount(); i++)
    {
        strcpy(szText, pTypeInfoSystem->GetTypeInfoAt(i)->GetName());

        if (szText[0] == 'I')
        {
            szText[1] = tolower(szText[1]);
            m_cbxClassList.AddString(&szText[1]);
        }
        else
        {
            m_cbxClassList.AddString(szText);
        }
    }

    CheckRadioButton(IDC_RADIO_CREATE, IDC_RADIO_WITH, IDC_RADIO_CREATE);

    m_cbxClassList.SetCurSel(0);

    return TRUE;  // return TRUE unless you set the focus to a control
    // EXCEPTION: OCX Property Pages should return FALSE
}

void CAddNewObjectDlg::OnCheckDefault() 
{
    UpdateData( TRUE );

    // if Default check button is checked, disable GCN, XBox, PC, and PS2 check box
    if ( m_bDefault == TRUE )
    {
        m_bGCN = FALSE;
        m_bPC  = FALSE;
        m_bPS2 = FALSE;
        m_bXBox = FALSE;

        // default and all are mutually exclusive
        m_bAll = FALSE;
    }

    UpdateData( FALSE );
}

void CAddNewObjectDlg::OnCheckAll() 
{
    UpdateData( TRUE );

    // if All check button is checked, disable GCN, XBox, PC, and PS2 check box
    if ( m_bAll == TRUE )
    {
        m_bGCN = TRUE;
        m_bPC  = TRUE;
        m_bPS2 = TRUE;
        m_bXBox = TRUE;

        // default and all are mutually exclusive
        m_bDefault = FALSE;
    }

    UpdateData( FALSE );
}

void CAddNewObjectDlg::OnCheckGcn() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CAddNewObjectDlg::OnCheckPc() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CAddNewObjectDlg::OnCheckPs2() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CAddNewObjectDlg::OnCheckXbox() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CAddNewObjectDlg::OnButtonHelp() 
{
    AfxMessageBox( ID_PLATFORM_HELP_STRING );	
}

ParserConst::PlatformType CAddNewObjectDlg::GetPlatform( ) const
{
    // if no option is selected, use Default
    ParserConst::PlatformType ePlatForm = (ParserConst::PlatformType)
        (
           ( m_bAll ?  ParserConst::PT_ALL     : 0 ) |
           ( m_bPC ?   ParserConst::PT_PC      : 0 ) |
           ( m_bXBox ? ParserConst::PT_XBOX    : 0 ) |
           ( m_bPS2 ?  ParserConst::PT_PS2     : 0 ) |
           ( m_bGCN ?  ParserConst::PT_GCN     : 0 ) |
           ( m_bDefault ? ParserConst::PT_DEFAULT : 0)
        );

    if ( ePlatForm == NULL )
    {
        return ParserConst::PT_DEFAULT;
    }
    else
    {
        return ePlatForm;
    }
}
