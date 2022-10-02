//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// SliderSettingDlg.cpp : implementation file
//

#include "stdafx.h"
#include "radtuner.h"
#include "SliderSettingDlg.h"
#include "MainFrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSliderSettingDlg dialog


CSliderSettingDlg::CSliderSettingDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSliderSettingDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSliderSettingDlg)
	m_fltMaxValue = 1.0f;
	m_fltMinValue = 0.0f;
	m_strClass = _T("");
	m_strMethod = _T("");
	m_strName = _T("");
	m_strType = _T("");
	m_fltStepValue = 0.01f;
	//}}AFX_DATA_INIT
}


void CSliderSettingDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSliderSettingDlg)
	DDX_Control(pDX, IDC_SLIDER_TEST, m_sldTest);
	DDX_Text(pDX, IDC_EDIT_MAX_VALUE, m_fltMaxValue);
	DDX_Text(pDX, IDC_EDIT_MIN_VALUE, m_fltMinValue);
	DDX_Text(pDX, IDC_EDIT_CLASS, m_strClass);
	DDX_Text(pDX, IDC_EDIT_METHOD, m_strMethod);
	DDX_Text(pDX, IDC_EDIT_NAME, m_strName);
	DDX_Text(pDX, IDC_EDIT_TYPE, m_strType);
	DDX_Text(pDX, IDC_EDIT_STEP, m_fltStepValue);
	DDV_MinMaxFloat(pDX, m_fltStepValue, 1.e-006f, 1.e+006f);
	//}}AFX_DATA_MAP
    m_sldTest.SetRangeMax( ( m_fltMaxValue - m_fltMinValue ) / m_fltStepValue, TRUE );
    m_sldTest.SetRangeMin( 0, TRUE );
}


BEGIN_MESSAGE_MAP(CSliderSettingDlg, CDialog)
	//{{AFX_MSG_MAP(CSliderSettingDlg)
	ON_EN_KILLFOCUS(IDC_EDIT_MAX_VALUE, OnKillfocusEditMaxValue)
	ON_EN_KILLFOCUS(IDC_EDIT_MIN_VALUE, OnKillfocusEditMinValue)
	ON_EN_KILLFOCUS(IDC_EDIT_STEP, OnKillfocusEditStep)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSliderSettingDlg message handlers

void CSliderSettingDlg::OnKillfocusEditMaxValue() 
{
    UpdateData( TRUE );
}

void CSliderSettingDlg::OnKillfocusEditMinValue() 
{
    UpdateData( TRUE );
}

void CSliderSettingDlg::OnKillfocusEditStep() 
{
    UpdateData( TRUE );
}

BOOL CSliderSettingDlg::OnInitDialog() 
{
    CMainFrame * pFrm = (CMainFrame*)theApp.GetMainWnd( );
    ASSERT( pFrm );
    CWorkSpaceDoc * pWDoc = pFrm->GetWorkSpaceDocPtr( );
    ASSERT( pWDoc );

    CString strParamProfileKey;
    CString strParamProfileValue;

    strParamProfileKey.Format( "Setting_%s_%s_%i", (LPCTSTR)m_strClass, (LPCTSTR)m_strMethod, m_nParamIndex );

    strParamProfileValue = pWDoc->GetXMLProfileString( strParamProfileKey + "_MAX" );
    m_fltMaxValue = atof( strParamProfileValue );

    strParamProfileValue = pWDoc->GetXMLProfileString( strParamProfileKey + "_MIN" );
    m_fltMinValue = atof( strParamProfileValue );

    strParamProfileValue = pWDoc->GetXMLProfileString( strParamProfileKey + "_STEP" );
    m_fltStepValue = atof( strParamProfileValue );
	
	CDialog::OnInitDialog();

    return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}
