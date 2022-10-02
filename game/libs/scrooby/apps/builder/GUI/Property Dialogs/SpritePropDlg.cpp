/////////////////////////////////////////////////////////////////////////////
// SpritePropDlg.cpp : implementation file

#pragma warning( disable : 4786 )

#include "..\..\StdAfx.h"
#include "SpritePropDlg.h"

#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\Resources\Image.h"
#include "..\..\FeData\ResourceFiles\ImageFile.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// CSpritePropDlg dialog

CSpritePropDlg::CSpritePropDlg() :
CBoxDrawingElementPropDlg(CSpritePropDlg::IDD),
m_SelectedImageName( "" )
{
    //{{AFX_DATA_INIT(CSpritePropDlg)
    //}}AFX_DATA_INIT

    m_Type = DRAWING_ELEMENT_SPRITE;
}

void CSpritePropDlg::DoDataExchange(CDataExchange* pDX)
{
    CBoxDrawingElementPropDlg::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CSpritePropDlg)
    DDX_Control(pDX, IDC_IMAGE_RESOURCE_LIST_BOX, m_ImageResourceListBox);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CSpritePropDlg, CBoxDrawingElementPropDlg)
    //{{AFX_MSG_MAP(CSpritePropDlg)
    ON_LBN_SELCHANGE(IDC_IMAGE_RESOURCE_LIST_BOX, OnSelchangeImageResourceListBox)
    ON_BN_CLICKED(IDC_SET_TO_IMAGES_WIDTH_AND_HEIGHT, OnSetToImagesWidthAndHeight)
    ON_EN_KILLFOCUS(IDC_HEIGHT, OnSelchangeImageResourceListBox)
    ON_EN_KILLFOCUS(IDC_WIDTH, OnSelchangeImageResourceListBox)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSpritePropDlg message handlers

BOOL CSpritePropDlg::OnInitDialog() 
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
    for( i = 0; i < resMan->GetNumberOfImages(); i++ )
    {
        FeData::Image* image = resMan->GetImageWithoutCounting( i );
        if( image != NULL )
        {
            m_ImageResourceListBox.AddString( image->GetName() );
        }
    }

    bool foundItem = false;
    CString tempString;
    for( i = 0; (!foundItem) && (i < resMan->GetNumberOfImages()); i++ )
    {
        m_ImageResourceListBox.GetText( i, tempString );
        if( tempString == m_SelectedImageName )
        {
            m_ImageResourceListBox.SetCurSel( i );
            foundItem = true;
        }
    }

    if( !foundItem )
    {
        m_ImageResourceListBox.SetCurSel(0);
    }

    OnSelchangeImageResourceListBox();

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}


void CSpritePropDlg::SetSelectedImageName( PascalCString& imageName )
{
    m_SelectedImageName = imageName;
}


void CSpritePropDlg::GetSelectedImageName( PascalCString& imageName )
{
    imageName = m_SelectedImageName;
}


void CSpritePropDlg::OnSelchangeImageResourceListBox() 
{
    UpdateData( TRUE );

    using namespace FeData;

    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return;
    }

    int selection = m_ImageResourceListBox.GetCurSel();
    if( selection == LB_ERR )
    {
        return;
    }

    CString tempName;
    m_ImageResourceListBox.GetText( selection, tempName );

    PascalCString selectionName( tempName );

    Image* image = resMan->GetImageWithoutCounting( selectionName );
    if( image != NULL )
    {
        ImageFile* imageFile = dynamic_cast<ImageFile*>( image->GetResourceFile() );
        if( imageFile != NULL )
        {
            if( m_nWidth < imageFile->GetWidth() )
            {
                m_nWidth = imageFile->GetWidth();
            }

            if( m_nHeight < imageFile->GetHeight() )
            {
                m_nHeight = imageFile->GetHeight();
            }
        }
    }

    UpdateData( FALSE );
}


void CSpritePropDlg::OnSetToImagesWidthAndHeight() 
{
    using namespace FeData;

    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return;
    }

    int selection = m_ImageResourceListBox.GetCurSel();
    if( selection == LB_ERR )
    {
        return;
    }

    CString tempName;
    m_ImageResourceListBox.GetText( selection, tempName );

    PascalCString selectionName( tempName );


    Image* image = resMan->GetImageWithoutCounting( selectionName );
    if( image != NULL )
    {
        ImageFile* imageFile = dynamic_cast<ImageFile*>( image->GetResourceFile() );
        if( imageFile != NULL )
        {
            UpdateData( TRUE );
            m_nWidth = imageFile->GetWidth();
            m_nHeight = imageFile->GetHeight();
            UpdateData( FALSE );
        }
        return;
    }
}


void CSpritePropDlg::OnOK() 
{
    UpdateData( TRUE );

    int selection = m_ImageResourceListBox.GetCurSel();
    if( selection != LB_ERR )
    {
        CString tempString;
        m_ImageResourceListBox.GetText( selection, tempString );
        m_SelectedImageName = tempString;
    }

    CBoxDrawingElementPropDlg::OnOK();
}
