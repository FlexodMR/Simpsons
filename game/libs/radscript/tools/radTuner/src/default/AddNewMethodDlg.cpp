//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// AddNewMethod.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "MainFrm.h"
#include "AddNewMethodDlg.h"
#include "ScriptMethod.h"
#include "SliderSettingDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAddNewMethodDlg dialog


CAddNewMethodDlg::CAddNewMethodDlg(CWnd* pParent /*=NULL*/)
: CDialog(CAddNewMethodDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CAddNewMethodDlg)
    m_strClassName = _T("");
    m_strObjectName = _T("");
	m_bDefault = TRUE;
	m_bAll = FALSE;
	m_bGCN = FALSE;
	m_bPC = FALSE;
	m_bPS2 = FALSE;
	m_bXBox = FALSE;
	//}}AFX_DATA_INIT

    m_pRTIMethod = NULL;
    m_pRTIObject = NULL;
}

CAddNewMethodDlg::~CAddNewMethodDlg()
{
    for (int i = 0; i < m_vecParamPtr.size(); i++)
    {
        delete m_vecParamPtr[i];
    }
    m_vecParamPtr.clear();
}


void CAddNewMethodDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CAddNewMethodDlg)
	DDX_Control(pDX, IDC_CHECK_XBOX, m_chkXBox);
	DDX_Control(pDX, IDC_CHECK_PS2, m_chkPS2);
	DDX_Control(pDX, IDC_CHECK_PC, m_chkPC);
	DDX_Control(pDX, IDC_CHECK_GCN, m_chkGCN);
	DDX_Control(pDX, IDC_CHECK_DEFAULT, m_chkDefault);
	DDX_Control(pDX, IDC_CHECK_ALL, m_chkAll);
    DDX_Control(pDX, IDC_EDIT_VALUE, m_txtValue);
    DDX_Control(pDX, IDC_COMBO_VALUE, m_cbxValue);
    DDX_Control(pDX, IDC_LIST_PARAMETER_LIST, m_lbxParamList);
    DDX_Control(pDX, IDC_COMBO_METHOD_LIST, m_cbxMethodList);
    DDX_Text(pDX, IDC_EDIT_CLASS_NAME, m_strClassName);
    DDX_Text(pDX, IDC_EDIT_OBJECT_NAME, m_strObjectName);
	DDX_Check(pDX, IDC_CHECK_DEFAULT, m_bDefault);
	DDX_Check(pDX, IDC_CHECK_ALL, m_bAll);
	DDX_Check(pDX, IDC_CHECK_GCN, m_bGCN);
	DDX_Check(pDX, IDC_CHECK_PC, m_bPC);
	DDX_Check(pDX, IDC_CHECK_PS2, m_bPS2);
	DDX_Check(pDX, IDC_CHECK_XBOX, m_bXBox);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CAddNewMethodDlg, CDialog)
//{{AFX_MSG_MAP(CAddNewMethodDlg)
    ON_WM_CREATE()
    ON_CBN_SELCHANGE(IDC_COMBO_METHOD_LIST, OnSelchangeComboMethodList)
    ON_LBN_SELCHANGE(IDC_LIST_PARAMETER_LIST, OnSelchangeListParameterList)
    ON_CBN_KILLFOCUS(IDC_COMBO_VALUE, OnKillfocusComboValue)
    ON_EN_KILLFOCUS(IDC_EDIT_VALUE, OnKillfocusEditValue)
    ON_WM_DROPFILES()
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
// CAddNewMethodDlg message handlers

int CAddNewMethodDlg::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CDialog::OnCreate(lpCreateStruct) == -1)
        return -1;

    return 0;
}

BOOL CAddNewMethodDlg::OnInitDialog()
{
    CDialog::OnInitDialog();

    for (int i = 0; i < (int)m_pRTIObject->GetNumberOfMethods(); i++)
    {
        m_cbxMethodList.AddString(m_pRTIObject->GetMethodByIndex(i)->GetName());
    }

    m_cbxMethodList.SetCurSel(0);
    IRadTypeInfoMethod *pRTIMethod = m_pRTIObject->GetMethodByIndex(0);
    _PopulateParamList(pRTIMethod);

    char szText[256];
    strcpy(szText, m_pRTIObject->GetName());

    if (szText[0] = 'I')
    {
        szText[1] = tolower(szText[1]);
    }
    m_strClassName = &szText[1];


    UpdateData(FALSE);

    return TRUE;  // return TRUE unless you set the focus to a control
    // EXCEPTION: OCX Property Pages should return FALSE
}

void CAddNewMethodDlg::_DisplayParamList()
{
    while(m_lbxParamList.GetCount() != 0)
    {
        m_lbxParamList.DeleteString(0);
    };

    for (int j = 0; j < m_vecParamPtr.size(); j++)
    {
        m_lbxParamList.AddString(m_vecParamPtr[j]->GetDisplayText());
    }
}

void CAddNewMethodDlg::_PopulateParamList(IRadTypeInfoMethod* pRTIMethod)
{
    ASSERT(m_lbxParamList.GetCount() == m_vecParamPtr.size());

    for (int i = 0; i < m_vecParamPtr.size(); i++)
    {
        delete m_vecParamPtr[i];
    }
    m_vecParamPtr.resize(pRTIMethod->GetNumberOfParams());

    for (int j = 0; j < (int)pRTIMethod->GetNumberOfParams(); j++)
    {
        ref< IRadTypeInfoParam > pRTIParam;

        pRTIParam = pRTIMethod->GetParamInfoAt( j );

        CScriptParam *pParam = new CScriptParam(pRTIParam);
        m_vecParamPtr[j] = pParam;
    }

    _DisplayParamList();
    m_lbxParamList.SetCurSel(0);
    _DisplayParamValue();

    m_pRTIMethod = pRTIMethod;

    ASSERT(m_lbxParamList.GetCount() == m_vecParamPtr.size());
}

void CAddNewMethodDlg::SetRTIObjectPtr(IRadTypeInfo *pTypeInfo)
{
    m_pRTIObject = pTypeInfo;
}

CScriptParam* CAddNewMethodDlg::GetParamPtrAt(int nIndex)
{
    ASSERT(m_vecParamPtr.size() > nIndex);
    return(m_vecParamPtr[nIndex]);
}

int CAddNewMethodDlg::GetParamCount()
{
    return(m_vecParamPtr.size());
}

IRadTypeInfoMethod* CAddNewMethodDlg::GetRTIMethodPtr() const
{
    return(m_pRTIMethod);
}

void CAddNewMethodDlg::SetObjectName(const CString &strObjectName)
{
    m_strObjectName = strObjectName;
}

void CAddNewMethodDlg::OnSelchangeComboMethodList()
{
    ASSERT(m_pRTIObject);
    int nIndex = m_cbxMethodList.GetCurSel();
    IRadTypeInfoMethod *pRTIMethod = m_pRTIObject->GetMethodByIndex(nIndex);

    _PopulateParamList(pRTIMethod);
    _DisplayParamValue();
}

int CAddNewMethodDlg::DoModal()
{
    if (m_pRTIObject == NULL || m_strObjectName.GetLength() == 0)
    {
        TRACE("Cannot initalize Add New Method dialog window due to TypeInfo and object name not set.\n");
        return IDCANCEL;
    }

    return CDialog::DoModal();
}

void CAddNewMethodDlg::OnOK()
{
    OnKillfocusEditValue();
    OnKillfocusComboValue();

    ASSERT(m_pRTIObject);
    int nIndex = m_cbxMethodList.GetCurSel();
    IRadTypeInfoMethod *pRTIMethod = m_pRTIObject->GetMethodByIndex(nIndex);

    m_pRTIMethod = pRTIMethod;

    CDialog::OnOK();
}

void CAddNewMethodDlg::OnSelchangeListParameterList()
{
    // Time to display the value of the parameter on the edit box or the combo box
    _DisplayParamValue();
}

void CAddNewMethodDlg::OnKillfocusComboValue()
{
    _SaveParamValue();
}

void CAddNewMethodDlg::OnKillfocusEditValue()
{
    _SaveParamValue();
}

void CAddNewMethodDlg::_DisplayParamValue()
{
    int nParamIndex = m_lbxParamList.GetCurSel();
    if (nParamIndex == LB_ERR)
    {
        return;
    }

    ASSERT(m_vecParamPtr.size() > nParamIndex);
    CScriptParam *pParam = m_vecParamPtr[nParamIndex];
    m_txtValue.SetInput(pParam);
    m_cbxValue.SetInput(pParam);
}

void CAddNewMethodDlg::_SaveParamValue()
{
    int nParamIndex = m_lbxParamList.GetCurSel();
    if (nParamIndex == LB_ERR)
    {
        return;
    }

    ASSERT(m_vecParamPtr.size() > nParamIndex);
    CScriptParam *pParam = m_vecParamPtr[nParamIndex];


    CString strText;
    ref< IRadTypeInfoParam > pRTIParam = pParam->GetRTIParamPtr( );
    if (m_txtValue.IsWindowEnabled())
    {
        m_txtValue.GetWindowText(strText);
    }
    else
    {
        m_cbxValue.GetWindowText(strText);
    }

    pParam->Parse(strText, pRTIParam);
    m_txtValue.SetWindowText(pParam->ConvertValueToText());

    _DisplayParamList();
    m_lbxParamList.SetCurSel(nParamIndex);
}

void CAddNewMethodDlg::OnDropFiles(HDROP hDropInfo)
{
    //
    // The function allow user to drop a file from shell to the dialog box
    //
    
    char szFileName[1024];

    //
    // We cannot accept drop of multiple files
    //
    if (::DragQueryFile(hDropInfo, (UINT)-1, szFileName, sizeof(szFileName)) > 1)
    {
        ::AfxMessageBox("Don't try to drop more than one file, it confuse me :(");
        return;
    }

    //
    // Get the file name dropped
    //
    ::DragQueryFile(hDropInfo, 0, szFileName, sizeof(szFileName));

    ASSERT(m_lbxParamList.GetCount() == m_vecParamPtr.size());

    IRadTypeInfoParam* pRTIParam = m_vecParamPtr[m_lbxParamList.GetCurSel()]->GetRTIParamPtr();

    if (pRTIParam == NULL)
    {
        ::AfxMessageBox("TypeInfo paramter is undefined, strange problem, \nhave James notified right the way.");
        return;
    }

    if (pRTIParam->GetHashedType( ) == PAR_CHAR || pRTIParam->GetHashedType( ) == PAR_UNSIGNED_CHAR)
    {
        if (pRTIParam->GetIndLvl( ) == 1)
        {
            char szFinalFileName[1024];
            ::PathRelativePathTo(szFinalFileName, ((CMainFrame*)theApp.m_pMainWnd)->GetWorkSpaceDocPtr()->GetWorkSpacePath(), FILE_ATTRIBUTE_DIRECTORY,
                                 szFileName, FILE_ATTRIBUTE_NORMAL);

            if (szFinalFileName[0] == '\\')
            {
                m_txtValue.SetWindowText(&szFinalFileName[1]);
            }
            else
            {
                m_txtValue.SetWindowText(szFinalFileName);
            }
            _SaveParamValue();
        }
    }
}

void CAddNewMethodDlg::OnCheckDefault() 
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

void CAddNewMethodDlg::OnCheckAll() 
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

void CAddNewMethodDlg::OnCheckGcn() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CAddNewMethodDlg::OnCheckPc() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CAddNewMethodDlg::OnCheckPs2() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CAddNewMethodDlg::OnCheckXbox() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CAddNewMethodDlg::OnButtonHelp() 
{
    AfxMessageBox( ID_PLATFORM_HELP_STRING );	
}

ParserConst::PlatformType CAddNewMethodDlg::GetPlatform( ) const
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

