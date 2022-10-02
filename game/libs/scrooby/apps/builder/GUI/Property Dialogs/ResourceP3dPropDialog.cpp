// ResourceP3dPropDialog.cpp : implementation file
//

#include "..\..\stdafx.h"
#include "..\..\xcon.h"

#include <assert.h>
#include "..\..\FeData\Resources\Pure3dFile.h"
#include "ResourceP3dPropDialog.h"


/*
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif
*/

/////////////////////////////////////////////////////////////////////////////
// CResourceP3dPropDialog dialog


CResourceP3dPropDialog::CResourceP3dPropDialog
(
    FeData::Resource* resource, 
    FeData::Page* page, 
    UINT nIDTemplate,
    CWnd* pParent 
)
    : CResourcePropDlg( resource, page, nIDTemplate, pParent )
{
    FeData::Pure3dFile* file = dynamic_cast< FeData::Pure3dFile* >( resource );
    assert( file != NULL );
    this->m_AnimationName = file->GetAnimationName();
    this->m_CameraName = file->GetCameraName();
    this->m_InventoryName = file->GetInventoryName();
}



void CResourceP3dPropDialog::DoDataExchange(CDataExchange* pDX)
{
    CResourcePropDlg::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CResourceP3dPropDialog)
    DDX_Text(pDX, IDC_P3DPROP_CAMERA, m_CameraName);
    DDX_Text(pDX, IDC_P3DPROP_INVENTORY, m_InventoryName);
    DDX_Text(pDX, IDC_P3DPROP_MULTICONTROLLER, m_AnimationName);
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CResourceP3dPropDialog, CResourcePropDlg)
    //{{AFX_MSG_MAP(CResourceP3dPropDialog)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CResourceP3dPropDialog message handlers

void CResourceP3dPropDialog::OnOK() 
{
    //get data out of the dialog
    UpdateData();
    FeData::Pure3dFile* file = dynamic_cast< FeData::Pure3dFile* >( this->m_Resource );
    file->SetAnimationName( this->m_AnimationName.GetBuffer( 256 ) );       //IAN IMPROVE: hardcoded string length
    file->SetCameraName( this->m_CameraName.GetBuffer( 256 ) );
    file->SetInventoryName( this->m_InventoryName.GetBuffer( 256 ) );
    CResourcePropDlg::OnOK();
}
