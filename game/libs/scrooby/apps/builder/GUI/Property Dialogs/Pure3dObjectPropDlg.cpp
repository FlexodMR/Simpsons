/////////////////////////////////////////////////////////////////////////////
// SpritePropDlg.cpp : implementation file

#pragma warning( disable : 4786 )

#include "..\..\StdAfx.h"
#include "Pure3dObjectPropDlg.h"

#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\Resources\Pure3dFile.h"
#include "..\..\FeData\ResourceFiles\ImageFile.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// CPure3dPropDlgdialog

CPure3dObjectPropDlg::CPure3dObjectPropDlg() :
CBoxDrawingElementPropDlg(CPure3dObjectPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CPure3dObjectPropDlg)
    //}}AFX_DATA_INIT

    m_Type = DRAWING_ELEMENT_PURE3DOBJECT;
}

void CPure3dObjectPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CBoxDrawingElementPropDlg::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CPure3dObjectPropDlg)
    DDX_Control(pDX, IDC_PURE3DFILE_RESOURCE_LIST_BOX, m_Pure3dFileResourceListBox);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CPure3dObjectPropDlg, CBoxDrawingElementPropDlg)
    //{{AFX_MSG_MAP(CPure3dObjectPropDlg)
    ON_LBN_SELCHANGE(IDC_PURE3DFILE_RESOURCE_LIST_BOX, OnSelchangeResourceListBox)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPure3dObjectPropDlg message handlers

BOOL CPure3dObjectPropDlg::OnInitDialog() 
{
    CBoxDrawingElementPropDlg::OnInitDialog();

    if( m_Page == NULL )
    {
        return false;
    }

    FeData::ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return false;
    }

    int i;
    for( i = 0; i < resMan->GetNumberOfPure3dFiles(); i++ )
    {
        FeData::Pure3dFile* pure3dFile = resMan->GetPure3dFileWithoutCounting( i );
        if( pure3dFile != NULL )
        {
            m_Pure3dFileResourceListBox.AddString( pure3dFile->GetName() );
        }
    }

    bool foundItem = false;
    CString tempString;
    for( i = 0; (!foundItem) && (i < resMan->GetNumberOfPure3dFiles()); i++ )
    {
        m_Pure3dFileResourceListBox.GetText( i, tempString );
        if( tempString == m_SelectedName )
        {
            m_Pure3dFileResourceListBox.SetCurSel( i );
            foundItem = true;
        }
    }

    if( !foundItem )
    {
        m_Pure3dFileResourceListBox.SetCurSel(0);
    }

    OnSelchangeResourceListBox();

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CPure3dObjectPropDlg::OnOK() 
{
    UpdateData( TRUE );

    int selection = m_Pure3dFileResourceListBox.GetCurSel();
    if( selection != LB_ERR )
    {
        CString tempString;
        m_Pure3dFileResourceListBox.GetText( selection, tempString );
        m_SelectedName = tempString;
    }

    CBoxDrawingElementPropDlg::OnOK();
}

void CPure3dObjectPropDlg::OnSelchangeResourceListBox() 
{
    UpdateData( TRUE );

    using namespace FeData;

    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return;
    }

    int selection = m_Pure3dFileResourceListBox.GetCurSel();
    if( selection == LB_ERR )
    {
        return;
    }

    CString tempName;
    m_Pure3dFileResourceListBox.GetText( selection, tempName );

    PascalCString selectionName( tempName );

    UpdateData( FALSE );
}

void CPure3dObjectPropDlg::SetSelectedImageName( PascalCString& imageName )
{
    m_SelectedName = imageName;
}

void CPure3dObjectPropDlg::GetSelectedImageName( PascalCString& imageName )
{
    imageName = m_SelectedName;
}
