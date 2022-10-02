//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ConfigFilePpg.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "ConfigFilePpg.h"

/////////////////////////////////////////////////////////////////////////////
// CConfigFilePpg dialog
IMPLEMENT_DYNCREATE(CConfigFilePpg, CPropertyPageEx)


CConfigFilePpg::CConfigFilePpg( )
	: CPropertyPageEx(CConfigFilePpg::IDD)
{
	//{{AFX_DATA_INIT(CConfigFilePpg)
	m_strSessionDataFileName = _T("");
	//}}AFX_DATA_INIT
}

CConfigFilePpg::~CConfigFilePpg()
{
}

void CConfigFilePpg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CConfigFilePpg)
	DDX_Control(pDX, IDC_EDIT_FILE_NAME, m_edtFileName);
	DDX_Control(pDX, IDC_BUTTON_FILE_BROWSER, m_butFileBrowser);
	DDX_Text(pDX, IDC_EDIT_FILE_NAME, m_strSessionDataFileName);
	//}}AFX_DATA_MAP
}

BOOL CConfigFilePpg::OnSetActive()
{
   CPropertySheetEx* psheet = ( CPropertySheetEx* ) GetParent( );   
   psheet->SetWizardButtons( PSWIZB_NEXT );

   return CPropertyPageEx::OnSetActive();
}

void CConfigFilePpg::Initialize( const CString & strFileName )
{
    m_strSessionDataFileName = strFileName;
}

CString CConfigFilePpg::GetSessionDataFileName( ) const
{
    return m_strSessionDataFileName;
}

BEGIN_MESSAGE_MAP(CConfigFilePpg, CDialog)
	//{{AFX_MSG_MAP(CConfigFilePpg)
	ON_BN_CLICKED(IDC_BUTTON_FILE_BROWSER, OnButtonFileBrowser)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CConfigFilePpg message handlers

void CConfigFilePpg::OnButtonFileBrowser() 
{
    UpdateData( TRUE );

    CBCGFileDialog dlgFileNew( FALSE, "Select filename to save session data...", FALSE, "", m_strSessionDataFileName, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, "Data Files (*.mdb)|*.mdb|All Files (*.*)|*.*||" );

    if ( dlgFileNew.DoModal( ) == IDOK )
    {
        CString strFilename;
        if( dlgFileNew.GetPage( ) == CBCGFileDialog::BCGFileOpen )
        {
            strFilename = dlgFileNew.GetPathName( );
        }
        else if( dlgFileNew.GetPage( ) == CBCGFileDialog::BCGFileRecent )
        {
            strFilename = dlgFileNew.GetRecentFilePath( );
        }

        if ( IsFileNameAcceptable( strFilename ) )
        {
            m_strSessionDataFileName = strFilename;
            UpdateData( FALSE );
            SetModified( TRUE );
        }
    }
}

BOOL CConfigFilePpg::OnInitDialog() 
{
	CDialog::OnInitDialog();

    if ( m_strSessionDataFileName.IsEmpty( ) )
    {
        m_butFileBrowser.EnableWindow( TRUE );
        m_edtFileName.SetReadOnly( FALSE );
    }
    else
    {
        m_butFileBrowser.EnableWindow( FALSE );
        m_edtFileName.SetReadOnly( TRUE );
    }

	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

CString CConfigFilePpg::GetTemplateDataFileName( )
{
    CString strExePath = ::AfxGetApp( )->m_pszHelpFilePath;
    int nFind = strExePath.ReverseFind( '\\' );

    ASSERT( nFind != -1 );

    strExePath = strExePath.Left( nFind + 1 );
    strExePath += "MemoryMonitorTemplate.mdb";

    return strExePath;
}

bool CConfigFilePpg::CopyTemplateDataFile( )
{
    if ( IsFileNameAcceptable( m_strSessionDataFileName ) )
    {
        ::CopyFile( GetTemplateDataFileName( ), m_strSessionDataFileName, FALSE );
        return true;
    }
    return false;
}

bool CConfigFilePpg::IsFileNameAcceptable( const CString & strName )
{
    if ( strName.IsEmpty( ) )
    {
        AfxMessageBox( "File name cannot be empty." );
        return false;
    }

    if ( ::PathIsRelative( strName ) )
    {
        AfxMessageBox( "File name cannot be relative path." );
        return false;
    }

    if ( ! ::PathFileExists( strName ) )
    {
        return true;
    }
    
    if ( GetTemplateDataFileName( ).CompareNoCase( strName ) == 0 )
    {
        AfxMessageBox( "File name cannot be same as source data template file." );
        return false;
    }

    if ( ::GetFileAttributes( strName ) & FILE_ATTRIBUTE_READONLY )
    {
        AfxMessageBox( "File name cannot be pointing to read only file." );
        return false;
    }

    return true;
}

BOOL CConfigFilePpg::OnApply()
{
    if ( ! IsFileNameAcceptable( m_strSessionDataFileName ) )
    {
        AfxMessageBox( "File name cannot be accepted, choose another filename." );
        return FALSE;
    }

    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    pApp->GetMemSessionDataManagerPtr( )->SetPathName( m_strSessionDataFileName );

    if ( ! CopyTemplateDataFile( ) )
    {
        ::AfxMessageBox( "Cannot copy template data file." );
        return FALSE;
    }
    SetModified( FALSE );
    return TRUE;
}

void CConfigFilePpg::OnOK( )
{
    if ( ! IsFileNameAcceptable( m_strSessionDataFileName ) )
    {
        return;
    }

    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    pApp->GetMemSessionDataManagerPtr( )->SetPathName( m_strSessionDataFileName );

    if ( ! CopyTemplateDataFile( ) )
    {
        ::AfxMessageBox( "Cannot copy template data file." );
        return;
    }
    SetModified( FALSE );
	CPropertyPageEx::OnOK();
}

LRESULT CConfigFilePpg::OnWizardNext()
{
    UpdateData( TRUE );
    if ( ! IsFileNameAcceptable( m_strSessionDataFileName ) )
    {
        return -1;
    }
    return 0;
}
