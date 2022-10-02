//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ModifyMethodDlg.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "MainFrm.h"
#include "ModifyMethodDlg.h"
#include "SliderSettingDlg.h"
#include "FileTreeCtrl.h"

#include "ScriptDoc.h"
#include "ScriptObject.h"
#include "ScriptMethod.h"

#include "paramsliderdlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CModifyMethodDlg dialog


CModifyMethodDlg::CModifyMethodDlg(CWnd* pParent /*=NULL*/)
: CDialog(CModifyMethodDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CModifyMethodDlg)
    m_strClassName = _T("");
    m_strMethodName = _T("");
    m_strObjectName = _T("");
	m_bDefault = TRUE;
	m_bAll = FALSE;
	m_bGCN = FALSE;
	m_bPC = FALSE;
	m_bPS2 = FALSE;
	m_bXBox = FALSE;
    //}}AFX_DATA_INIT
}

CModifyMethodDlg::~CModifyMethodDlg()
{
    for (int i = 0; i < m_vecParamPtr.size(); i++)
    {
        delete m_vecParamPtr[i];
    }
    m_vecParamPtr.clear();
}

void CModifyMethodDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CModifyMethodDlg)
	DDX_Control(pDX, IDC_CMD_SLIDER_SETTING, m_cmdSliderSetting);
	DDX_Control(pDX, IDC_BUTTON_ADD_VIEW, m_cmdAddView);
	DDX_Control(pDX, IDC_EDIT_MAX, m_txtMaxValue);
	DDX_Control(pDX, IDC_EDIT_MIN, m_txtMinValue);
	DDX_Control(pDX, IDC_SLIDER_VALUE, m_sldValue);
	DDX_Control(pDX, IDC_CHECK_XBOX, m_chkXBox);
	DDX_Control(pDX, IDC_CHECK_PS2, m_chkPS2);
	DDX_Control(pDX, IDC_CHECK_PC, m_chkPC);
	DDX_Control(pDX, IDC_CHECK_GCN, m_chkGCN);
	DDX_Control(pDX, IDC_CHECK_DEFAULT, m_chkDefault);
	DDX_Control(pDX, IDC_CHECK_ALL, m_chkAll);
    DDX_Control(pDX, IDC_LIST_PARAMETER_LIST, m_lbxParamList);
    DDX_Control(pDX, IDC_EDIT_VALUE, m_txtValue);
    DDX_Control(pDX, IDC_COMBO_VALUE, m_cbxValue);
    DDX_Text(pDX, IDC_EDIT_CLASS_NAME, m_strClassName);
    DDX_Text(pDX, IDC_EDIT_METHOD_NAME, m_strMethodName);
    DDX_Text(pDX, IDC_EDIT_OBJECT_NAME, m_strObjectName);
	DDX_Check(pDX, IDC_CHECK_DEFAULT, m_bDefault);
	DDX_Check(pDX, IDC_CHECK_ALL, m_bAll);
	DDX_Check(pDX, IDC_CHECK_GCN, m_bGCN);
	DDX_Check(pDX, IDC_CHECK_PC, m_bPC);
	DDX_Check(pDX, IDC_CHECK_PS2, m_bPS2);
	DDX_Check(pDX, IDC_CHECK_XBOX, m_bXBox);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CModifyMethodDlg, CDialog)
//{{AFX_MSG_MAP(CModifyMethodDlg)
    ON_LBN_SELCHANGE(IDC_LIST_PARAMETER_LIST, OnSelchangeListParameterList)
    ON_EN_KILLFOCUS(IDC_EDIT_VALUE, OnKillfocusEditValue)
    ON_CBN_KILLFOCUS(IDC_COMBO_VALUE, OnKillfocusComboValue)
    ON_WM_DROPFILES()
	ON_BN_CLICKED(IDC_BUTTON_INVOKE, OnButtonInvoke)
	ON_BN_CLICKED(IDC_CHECK_DEFAULT, OnCheckDefault)
	ON_BN_CLICKED(IDC_CHECK_ALL, OnCheckAll)
	ON_BN_CLICKED(IDC_CHECK_GCN, OnCheckGcn)
	ON_BN_CLICKED(IDC_CHECK_PC, OnCheckPc)
	ON_BN_CLICKED(IDC_CHECK_PS2, OnCheckPs2)
	ON_BN_CLICKED(IDC_CHECK_XBOX, OnCheckXbox)
	ON_BN_CLICKED(IDC_BUTTON_HELP, OnButtonHelp)
	ON_NOTIFY(NM_RELEASEDCAPTURE, IDC_SLIDER_VALUE, OnReleasedcaptureSliderValue)
	ON_BN_CLICKED(IDC_CMD_SLIDER_SETTING, OnCmdSliderSetting)
	ON_BN_CLICKED(IDC_BUTTON_ADD_VIEW, OnButtonAddView)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CModifyMethodDlg message handlers

BOOL CModifyMethodDlg::OnInitDialog()
{
    CDialog::OnInitDialog();

    ASSERT(m_pScriptMethod->GetValid());    // Must be a valid method start with

    IRadTypeInfoMethod *pRTIMethod = m_pScriptMethod->GetRTIMethodPtr();
    _PopulateParamList(pRTIMethod);

    m_strClassName = m_pScriptMethod->GetParentObject()->GetClassName();
    m_strObjectName = m_pScriptMethod->GetParentObject()->GetName();
    m_strMethodName = m_pScriptMethod->GetName();

    UpdateData(FALSE);

    return TRUE;  // return TRUE unless you set the focus to a control
    // EXCEPTION: OCX Property Pages should return FALSE
}

void CModifyMethodDlg::_DisplayParamList()
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

void CModifyMethodDlg::_PopulateParamList(IRadTypeInfoMethod* pRTIMethod)
{
    ASSERT(m_lbxParamList.GetCount() == m_vecParamPtr.size());

    for (int i = 0; i < m_vecParamPtr.size(); i++)
    {
        delete m_vecParamPtr[i];
    }
    m_vecParamPtr.resize(pRTIMethod->GetNumberOfParams());

    for (int j = 0; j < (int)pRTIMethod->GetNumberOfParams(); j++)
    {
        CScriptParam *pParam = new CScriptParam(*(m_pScriptMethod->GetParamAt(j)));
        m_vecParamPtr[j] = pParam;
    }

    _DisplayParamList();
    m_lbxParamList.SetCurSel(0);
    _DisplayParamValue();

    ASSERT(m_lbxParamList.GetCount() == m_vecParamPtr.size());
}

static bool IsParamNumericalType( const CScriptParam * pParam )
{
    CString strType = pParam->GetRTIParamPtr( )->GetType( );

    if ( (
         strType == "short" ||
         strType == "unsigned short" ||
         strType == "int" ||
         strType == "unsigned int" ||
         strType == "long" ||
         strType == "unsigned long" ||
         strType == "char" ||
         strType == "unsigned char" ||
         strType == "float" ||
         strType == "double"
         ) && ( pParam->GetRTIParamPtr( )->GetIndLvl( ) == 0 )
       )
    {
        return true;
    }

    return false;
}


void CModifyMethodDlg::_DisplayParamValue()
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

    // also change them in AddMethodDlg as well
    CMainFrame * pFrm = (CMainFrame*)theApp.GetMainWnd( );
    ASSERT( pFrm );

    CWorkSpaceDoc * pWDoc = pFrm->GetWorkSpaceDocPtr( );
    ASSERT( pWDoc );

    CString strParamProfileKey;
    strParamProfileKey.Format( "Setting_%s_%s_%i", (LPCTSTR)m_pScriptMethod->GetParentObject( )->GetRadTypeInfo( )->GetName( ),
                                                   (LPCTSTR)m_pScriptMethod->GetName( ), nParamIndex );
    if ( IsParamNumericalType( pParam ) )
    {
        m_cmdSliderSetting.ShowWindow( SW_SHOWNORMAL );
    }
    else
    {
        m_cmdSliderSetting.ShowWindow( SW_HIDE );
    }
    
    // only display slider by if profile exists for this parameter and it has to be numerical type as well
    if ( IsParamNumericalType( pParam ) && pWDoc->GetXMLProfileString( strParamProfileKey + "_MAX" ) != NULL  )
    {
        float fltMaxValue = atof( pWDoc->GetXMLProfileString( strParamProfileKey + "_MAX", "1.0" ) );
        float fltMinValue = atof( pWDoc->GetXMLProfileString( strParamProfileKey + "_MIN", "0.0" ) );
        float fltStepValue = atof( pWDoc->GetXMLProfileString( strParamProfileKey + "_STEP", "0.01" ) );
        m_txtMaxValue.ShowWindow( SW_SHOWNORMAL );
        m_txtMinValue.ShowWindow( SW_SHOWNORMAL );
        m_sldValue.ShowWindow( SW_SHOWNORMAL );
        m_cmdAddView.ShowWindow( SW_SHOWNORMAL );

        m_sldValue.SetRange( 0, ( fltMaxValue - fltMinValue ) / fltStepValue, TRUE );

        CString strValue;
        m_txtValue.GetWindowText( strValue );
        m_sldValue.SetPos( ( atof( strValue ) - fltMinValue ) / fltStepValue );

        m_txtMaxValue.SetWindowText( pWDoc->GetXMLProfileString( strParamProfileKey + "_MAX" ) );
        m_txtMinValue.SetWindowText( pWDoc->GetXMLProfileString( strParamProfileKey + "_MIN" ) );
    }
    else
    {
        m_txtMaxValue.ShowWindow( SW_HIDE );
        m_txtMinValue.ShowWindow( SW_HIDE );
        m_sldValue.ShowWindow( SW_HIDE );
        m_cmdAddView.ShowWindow( SW_HIDE );
    }
}

void CModifyMethodDlg::_SaveParamValue()
{
    int nParamIndex = m_lbxParamList.GetCurSel();
    if (nParamIndex == LB_ERR)
    {
        return;
    }

    ASSERT(m_vecParamPtr.size() > nParamIndex);
    CScriptParam *pParam = m_vecParamPtr[nParamIndex];

    CString strText;
    ref< IRadTypeInfoParam > pRTIParam = pParam->GetRTIParamPtr();
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


void CModifyMethodDlg::OnOK()
{
    OnKillfocusEditValue();
    OnKillfocusComboValue();

    CScriptObject *pObj = m_pScriptMethod->GetParentObject();
    CScriptDoc *pDoc = pObj->GetParentDoc();

    for (int j = 0; j < m_pScriptMethod->GetParamCount(); j++)
    {
        CScriptParam *pParam = m_pScriptMethod->GetParamAt(j);
        pParam->CopyValue( *GetParamPtr(j) );
    }

    m_pScriptMethod->SetPlatForm( GetPlatform( ) );

    m_pTree2Update->SetItemText(m_hMet, m_pScriptMethod->GetDisplayText());
    m_pTree2Update->SetItemText(m_hObj, pObj->GetDisplayText());
    m_pTree2Update->SetItemText(m_hDoc, pDoc->GetFileTitle());

    //DestroyWindow( );     // use this for Modaless windows

    CDialog::OnOK();
}

void CModifyMethodDlg::SetScriptMethodPtr(CScriptMethod* pMethod)
{
    m_pScriptMethod = pMethod;

    m_bAll      = FALSE;
    m_bDefault  = FALSE;
    m_bPC       = FALSE;
    m_bXBox     = FALSE;
    m_bPS2      = FALSE;
    m_bGCN      = FALSE;

    if ( pMethod->GetPlatForm( ) == ParserConst::PT_ALL )
    {
        m_bAll      = TRUE;
        m_bPC       = TRUE;
        m_bXBox     = TRUE;
        m_bPS2      = TRUE;
        m_bGCN      = TRUE;
    }
    else if ( pMethod->GetPlatForm( ) == ParserConst::PT_DEFAULT )
    {
        m_bDefault = TRUE;
    }
    else
    {
        if ( pMethod->GetPlatForm( ) & ParserConst::PT_PC )
        {
            m_bDefault = FALSE;
            m_bPC = TRUE;
        }

        if ( pMethod->GetPlatForm( ) & ParserConst::PT_XBOX )
        {
            m_bDefault = FALSE;
            m_bXBox = TRUE;
        }

        if ( pMethod->GetPlatForm( ) & ParserConst::PT_PS2 )
        {
            m_bDefault = FALSE;
            m_bPS2 = TRUE;
        }

        if ( pMethod->GetPlatForm( ) & ParserConst::PT_GCN )
        {
            m_bDefault = FALSE;
            m_bGCN = TRUE;
        }
    }
}

CScriptMethod* CModifyMethodDlg::GetRTIMethodPtr() const
{
    return(m_pScriptMethod);
}

int CModifyMethodDlg::GetScriptParamCount() const
{
    return(m_vecParamPtr.size());
}

CScriptParam* CModifyMethodDlg::GetParamPtr(const int nIdx)
{
    ASSERT(m_vecParamPtr.size() > nIdx);
    return(m_vecParamPtr[nIdx]);
}

void CModifyMethodDlg::OnSelchangeListParameterList()
{
    // Time to display the value of the parameter on the edit box or the combo box
    _DisplayParamValue();
}

void CModifyMethodDlg::OnKillfocusEditValue()
{
    _SaveParamValue();
}

void CModifyMethodDlg::OnKillfocusComboValue()
{
    _SaveParamValue();
}

void CModifyMethodDlg::OnDropFiles(HDROP hDropInfo)
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
        ::AfxMessageBox("Don't try to drop more than one file.");
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
        ::AfxMessageBox("Paramter is undefined, strange problem.");
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

void CModifyMethodDlg::OnButtonInvoke() 
{
    // Save user input
    OnKillfocusEditValue();
    OnKillfocusComboValue();

    CScriptMethod oCallMethod(*m_pScriptMethod);

    for (int j = 0; j < oCallMethod.GetParamCount(); j++)
    {
        CScriptParam *pParam = oCallMethod.GetParamAt(j);
        *pParam = *m_vecParamPtr[j];
        pParam->SetParentMethod(&oCallMethod);
    }

    // let's call the RPC
    ((CMainFrame*)theApp.m_pMainWnd)->CallRCC(m_pScriptMethod->GetParentObject(), &oCallMethod);
}

void CModifyMethodDlg::OnCheckDefault() 
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

void CModifyMethodDlg::OnCheckAll() 
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

void CModifyMethodDlg::OnCheckGcn() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CModifyMethodDlg::OnCheckPc() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CModifyMethodDlg::OnCheckPs2() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CModifyMethodDlg::OnCheckXbox() 
{
    UpdateData( TRUE );

    // If any of the platform is checked, 
    // Uncheck platform "All" and "Default"
    m_bAll = FALSE;
    m_bDefault = FALSE;

    UpdateData( FALSE );
}

void CModifyMethodDlg::OnButtonHelp() 
{
    AfxMessageBox( ID_PLATFORM_HELP_STRING );	
}

ParserConst::PlatformType CModifyMethodDlg::GetPlatform( ) const
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

void CModifyMethodDlg::OnReleasedcaptureSliderValue(NMHDR* pNMHDR, LRESULT* pResult) 
{
    int nParamIndex = m_lbxParamList.GetCurSel();
    if (nParamIndex == LB_ERR)
    {
        return;
    }

    CMainFrame * pFrm = (CMainFrame*)theApp.GetMainWnd( );
    ASSERT( pFrm );

    CWorkSpaceDoc * pWDoc = pFrm->GetWorkSpaceDocPtr( );
    ASSERT( pWDoc );

    CString strParamProfileKey;
    strParamProfileKey.Format( "Setting_%s_%s_%i", (LPCTSTR)m_pScriptMethod->GetParentObject( )->GetRadTypeInfo( )->GetName( ),
                                                   (LPCTSTR)m_pScriptMethod->GetName( ), nParamIndex );
    CString strValue;

    float fltMaxValue = atof( pWDoc->GetXMLProfileString( strParamProfileKey + "_MAX", "1.0" ) );
    float fltMinValue = atof( pWDoc->GetXMLProfileString( strParamProfileKey + "_MIN", "0.0" ) );
    float fltStepValue = atof( pWDoc->GetXMLProfileString( strParamProfileKey + "_STEP", "0.01" ) );

    float fltValue = (float)m_sldValue.GetPos( )  * fltStepValue + fltMinValue;
    strValue.Format( "%f", fltValue );
    // remove trailing 0 and .
    strValue.TrimRight( "0" );
    m_txtValue.SetWindowText( strValue );

	*pResult = 0;
}

void CModifyMethodDlg::OnCmdSliderSetting() 
{
    int nParamIndex = m_lbxParamList.GetCurSel();
    if (nParamIndex == LB_ERR)
    {
        return;
    }

    CSliderSettingDlg oSliderDlg;

    oSliderDlg.m_strClass   = m_pScriptMethod->GetParentObject( )->GetRadTypeInfo( )->GetName( );
    oSliderDlg.m_strMethod  = m_pScriptMethod->GetName( );
    oSliderDlg.m_strType    = m_pScriptMethod->GetParamAt( nParamIndex )->GetRTIParamPtr( )->GetType( );
    oSliderDlg.m_strName    = m_pScriptMethod->GetParamAt( nParamIndex )->GetRTIParamPtr( )->GetName( );
    oSliderDlg.m_nParamIndex = nParamIndex;

    if( oSliderDlg.DoModal( ) == IDOK )
    {
        CMainFrame * pFrm = (CMainFrame*)theApp.GetMainWnd( );
        ASSERT( pFrm );
        CWorkSpaceDoc * pWDoc = pFrm->GetWorkSpaceDocPtr( );
        ASSERT( pWDoc );

        CString strParamProfileKey;
        CString strParamProfileValue;
        
        strParamProfileKey.Format( "Setting_%s_%s_%i", (LPCTSTR)oSliderDlg.m_strClass, (LPCTSTR)oSliderDlg.m_strMethod, nParamIndex );

        strParamProfileValue.Format( "%f", oSliderDlg.m_fltMaxValue );
        pWDoc->SetXMLProfileString( strParamProfileKey + "_MAX", strParamProfileValue );

        strParamProfileValue.Format( "%f", oSliderDlg.m_fltMinValue );
        pWDoc->SetXMLProfileString( strParamProfileKey + "_MIN", strParamProfileValue );

        strParamProfileValue.Format( "%f", oSliderDlg.m_fltStepValue );
        pWDoc->SetXMLProfileString( strParamProfileKey + "_STEP", strParamProfileValue );
        _DisplayParamValue( );
    }
}

void CModifyMethodDlg::OnButtonAddView() 
{
    int nParamIndex = m_lbxParamList.GetCurSel();
    if (nParamIndex == LB_ERR)
    {
        return;
    }

    if ( m_pScriptMethod->GetParamAt( nParamIndex )->GetParamWnd( ) )
    {
        return;
    }

    m_pScriptMethod->GetParamAt( nParamIndex )->SpawnWindow( m_pTree2Update, m_hMet, m_hObj, m_hDoc );

    // reposition itself
    int x = 0;
    int y = 0;
    CMainFrame * pMainFrame = (CMainFrame *)theApp.GetMainWnd( );
    set< CParamSliderDlg * >::iterator p = pMainFrame->m_aryParamSliderDlg.begin( );

    CRect rectClient;
    CRect rectSlider;

    pMainFrame->GetClientArea( )->GetWindowRect( & rectClient );
    GetWindowRect( & rectSlider );
    pMainFrame->GetClientArea( )->ScreenToClient( & rectSlider );

    bool bSliderCell[10][3] = { false };   // slider occupicant cell, true = occupied

    if ( p == pMainFrame->m_aryParamSliderDlg.end( ) )
    {
        x = 0;
        y = 0;
        m_pScriptMethod->GetParamAt( nParamIndex )->GetParamWnd( )->MoveWindow( x, y, rectSlider.Width(), rectSlider.Height( ) );
    }
    else
    {
        while ( p != pMainFrame->m_aryParamSliderDlg.end( ) )
        {
            (*p)->GetWindowRect( & rectSlider );
            pMainFrame->GetClientArea( )->ScreenToClient( & rectSlider );
            int nCellXPos = rectSlider.left / rectSlider.Width( );
            int nCellYPos = rectSlider.top / rectSlider.Height( );
            
            bSliderCell[ nCellXPos ][ nCellYPos ] = true;

            p ++;
        }

        bool bDone = false;
        for ( int i = 0; i < 3; i ++ )
        {
            for ( int j = 0; j < 10; j ++ )
            {
                if ( bSliderCell[ j ][ i ] == false )
                {
                    x = j * rectSlider.Width( );
                    y = i * rectSlider.Height( );
                
                    m_pScriptMethod->GetParamAt( nParamIndex )->GetParamWnd( )->MoveWindow( x, y, rectSlider.Width(), rectSlider.Height( ) );
                    return;
                }
            }
        }
    }


}
