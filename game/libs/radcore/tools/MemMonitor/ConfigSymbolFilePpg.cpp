//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ConfigSymbolFilePpg.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "ConfigSymbolFilePpg.h"

/////////////////////////////////////////////////////////////////////////////
// CConfigSymbolFilePpg property page

IMPLEMENT_DYNCREATE(CConfigSymbolFilePpg, CPropertyPageEx)

CConfigSymbolFilePpg::CConfigSymbolFilePpg() : CPropertyPageEx(CConfigSymbolFilePpg::IDD)
{
    m_pConfig = NULL;
    //{{AFX_DATA_INIT(CConfigSymbolFilePpg)
    m_strGCNExeFileName = _T("");
    m_strPCExeFileName = _T("");
    m_strPS2ExeFileName = _T("");
    m_strXboxExeFileName = _T("");
	//}}AFX_DATA_INIT
}

CConfigSymbolFilePpg::~CConfigSymbolFilePpg()
{
    m_pConfig = NULL;
}

void CConfigSymbolFilePpg::DoDataExchange(CDataExchange* pDX)
{
    CPropertyPageEx::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CConfigSymbolFilePpg)
    DDX_Text(pDX, IDC_EDIT_GCN_EXE_FILE, m_strGCNExeFileName);
    DDX_Text(pDX, IDC_EDIT_PC_EXE_FILE, m_strPCExeFileName);
    DDX_Text(pDX, IDC_EDIT_PS2_EXE_FILE, m_strPS2ExeFileName);
    DDX_Text(pDX, IDC_EDIT_XBOX_EXE_FILE, m_strXboxExeFileName);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CConfigSymbolFilePpg, CPropertyPageEx)
    //{{AFX_MSG_MAP(CConfigSymbolFilePpg)
    ON_BN_CLICKED(IDC_BUTTON_GCN_EXE_FILE, OnButtonGcnExeFile)
    ON_BN_CLICKED(IDC_BUTTON_PC_EXE_FILE, OnButtonPcExeFile)
    ON_BN_CLICKED(IDC_BUTTON_PS2_EXE_FILE, OnButtonPs2ExeFile)
    ON_BN_CLICKED(IDC_BUTTON_XBOX_EXE_FILE, OnButtonXboxExeFile)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

void CConfigSymbolFilePpg::Initialize( CMemConfiguration * pConfig )
{
    ASSERT( pConfig != NULL );
    m_pConfig = pConfig;
    pConfig->GetSymbolLookupTool( MM_Platform_GCN, m_strGCNExeFileName );
    pConfig->GetSymbolLookupTool( MM_Platform_WIN, m_strPCExeFileName );
    pConfig->GetSymbolLookupTool( MM_Platform_PS2, m_strPS2ExeFileName );
    pConfig->GetSymbolLookupTool( MM_Platform_XBOX, m_strXboxExeFileName );
}

/////////////////////////////////////////////////////////////////////////////
// CConfigSymbolFilePpg message handlers

void CConfigSymbolFilePpg::OnButtonGcnExeFile() 
{
    CBCGFileDialog dlgFileOpen( TRUE, "Select GCN Executable", FALSE, "elf", m_strGCNExeFileName, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, "Executable Files (*.elf)|*.elf|All Files (*.*)|*.*||" );

    if ( dlgFileOpen.DoModal( ) == IDOK )
    {
        CString strFileName;

        if ( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileOpen )
        {
            strFileName = dlgFileOpen.GetPathName( );
        }
        else if ( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileRecent )
        {
            strFileName = dlgFileOpen.GetRecentFilePath( );
        }

        if ( ::PathFileExists( strFileName ) )
        {
            m_strGCNExeFileName = strFileName;
            SetModified( TRUE );
            UpdateData( FALSE );
        }
        else
        {
            AfxMessageBox( "File doesn't exists!!!" );
        }
    }
}


void CConfigSymbolFilePpg::OnButtonPcExeFile() 
{
    CBCGFileDialog dlgFileOpen( TRUE, "Select Win32 Executable", FALSE, "exe", m_strPCExeFileName, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, "Executable Files (*.exe)|*.exe|All Files (*.*)|*.*||" );

    if ( dlgFileOpen.DoModal( ) == IDOK )
    {
        CString strFileName;

        if ( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileOpen )
        {
            strFileName = dlgFileOpen.GetPathName( );
        }
        else if ( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileRecent )
        {
            strFileName = dlgFileOpen.GetRecentFilePath( );
        }
        else if ( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileRecent )
        {
            strFileName = dlgFileOpen.GetPathName( );
        }

        if ( ::PathFileExists( strFileName ) )
        {
            m_strPCExeFileName = strFileName;
            SetModified( TRUE );
            UpdateData( FALSE );
        }
        else
        {
            AfxMessageBox( "File doesn't exists!!!" );
        }
    }
}

void CConfigSymbolFilePpg::OnButtonPs2ExeFile() 
{
    CBCGFileDialog dlgFileOpen( TRUE, "Select PS2 Executable", FALSE, "elf", m_strPS2ExeFileName, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, "Executable Files (*.elf)|*.elf|All Files (*.*)|*.*||" );

    if ( dlgFileOpen.DoModal( ) == IDOK )
    {
        CString strFileName;

        if ( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileOpen )
        {
            strFileName = dlgFileOpen.GetPathName( );
        }
        else if ( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileRecent )
        {
            strFileName = dlgFileOpen.GetRecentFilePath( );
        }

        if ( ::PathFileExists( strFileName ) )
        {
            m_strPS2ExeFileName = strFileName;
            SetModified( TRUE );
            UpdateData( FALSE );
        }
        else
        {
            AfxMessageBox( "File doesn't exists!!!" );
        }
    }
}

void CConfigSymbolFilePpg::OnButtonXboxExeFile() 
{
    CBCGFileDialog dlgFileOpen( TRUE, "Select XBox Executable -=( NOT .XBE )=-", FALSE, "exe", m_strXboxExeFileName, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, "Executable Files (*.exe)|*.exe|All Files (*.*)|*.*||" );

    if ( dlgFileOpen.DoModal( ) == IDOK )
    {
        CString strFileName;

        if ( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileOpen )
        {
            strFileName = dlgFileOpen.GetPathName( );
        }
        else if ( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileRecent )
        {
            strFileName = dlgFileOpen.GetRecentFilePath( );
        }

        if ( ::PathFileExists( strFileName ) )
        {
            m_strXboxExeFileName = strFileName;
            SetModified( TRUE );
            UpdateData( FALSE );
        }
        else
        {
            AfxMessageBox( "File doesn't exists!!!" );
        }
    }
}

BOOL CConfigSymbolFilePpg::OnSetActive() 
{
    CPropertySheetEx* psheet = ( CPropertySheetEx* ) GetParent( );   
    psheet->SetWizardButtons( PSWIZB_BACK | PSWIZB_NEXT );

    return CPropertyPageEx::OnSetActive();
}

BOOL CConfigSymbolFilePpg::OnApply() 
{
    m_pConfig->SetSymbolLookupTool( MM_Platform_GCN, m_strGCNExeFileName );
    m_pConfig->SetSymbolLookupTool( MM_Platform_WIN, m_strPCExeFileName );
    m_pConfig->SetSymbolLookupTool( MM_Platform_PS2, m_strPS2ExeFileName );
    m_pConfig->SetSymbolLookupTool( MM_Platform_XBOX, m_strXboxExeFileName );

    if ( radPEAddr2LineIsExeLoaded( ) )
    {
        radPEAddr2LineUnLoadExe( );
    }

    if ( ! m_pConfig->GetClientExecutablePath( ).IsEmpty( ) )
    {
        radPEAddr2LineLoadExe( m_pConfig->GetClientExecutablePath( ) );
    }

    return CPropertyPageEx::OnApply();
}

void CConfigSymbolFilePpg::OnOK() 
{
    m_pConfig->SetSymbolLookupTool( MM_Platform_GCN, m_strGCNExeFileName );
    m_pConfig->SetSymbolLookupTool( MM_Platform_WIN, m_strPCExeFileName );
    m_pConfig->SetSymbolLookupTool( MM_Platform_PS2, m_strPS2ExeFileName );
    m_pConfig->SetSymbolLookupTool( MM_Platform_XBOX, m_strXboxExeFileName );

    if ( ! radPEAddr2LineIsExeLoaded( ) )
    {
        if ( ! m_pConfig->GetClientExecutablePath( ).IsEmpty( ) )
        {
            radPEAddr2LineLoadExe( m_pConfig->GetClientExecutablePath( ) );
        }
        else
        {
            ::radPEAddr2LineUnLoadExe( );
        }
    }
    CPropertyPageEx::OnOK();
}