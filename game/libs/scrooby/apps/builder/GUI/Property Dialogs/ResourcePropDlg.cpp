// ResourcePropDlg.cpp : implementation file
//

#include "..\..\stdafx.h"
#include "..\..\xcon.h"

#include "strings\pcstring.h"
#include "..\..\FeData\Factories\BaseFactory.h"
#include "..\..\FeData\Helpers\FileName.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Resources\Resource.h"
#include "..\..\FeData\Resources\Image.h"
#include "..\..\FeData\Resources\Pure3dFile.h"
#include "..\..\FeData\Resources\TextBible.h"
#include "..\..\FeData\Resources\TextStyle.h"
#include "..\..\FeData\ResourceFiles\ImageFile.h"
#include "..\..\FeData\ResourceFiles\Pure3dFileFile.h"
#include "..\..\FeData\ResourceFiles\TextBibleFile.h"
#include "..\..\FeData\ResourceFiles\TextStyleFile.h"
#include "..\..\FeData\NamedElements\Project.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\ResourceFiles\ResourceFile.h"

#include "ResourcePropDlg.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CResourcePropDlg dialog


CResourcePropDlg::CResourcePropDlg(FeData::Resource* resource, FeData::Page* page, UINT nIDTemplate, CWnd* pParent /*=NULL*/)
    : CDialog( nIDTemplate, pParent )
{
    using namespace FeData;

    m_Resource = resource;
    m_Page = page;

    //{{AFX_DATA_INIT(CResourcePropDlg)
    m_ResourceName = _T("");
    m_FileName = _T("");
    m_InventoryName = _T("");
    //}}AFX_DATA_INIT
    
    m_ResourceName = m_Resource->GetName();

    ResourceFile* m_ResourceFile = m_Resource->GetResourceFile();

    FileName fileName = m_ResourceFile->GetFileName();
    PascalCString strFileName;
    fileName.Get( strFileName );

    m_FileName = strFileName;
    m_InventoryName = m_ResourceFile->GetInventoryName();

    m_OldResourceName = m_ResourceName;
    m_OldFileName = m_FileName;
    m_OldInventoryName = m_InventoryName;


}


void CResourcePropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CResourcePropDlg)
    DDX_Text(pDX, IDC_RESOURCE_NAME, m_ResourceName);
    DDX_Text(pDX, IDC_FILENAME, m_FileName);
    DDX_Text(pDX, IDC_INVENTORY_NAME, m_InventoryName);
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CResourcePropDlg, CDialog)
    //{{AFX_MSG_MAP(CResourcePropDlg)
    ON_BN_CLICKED(IDC_BROWSE, OnBrowse)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CResourcePropDlg message handlers

void CResourcePropDlg::OnBrowse() 
{
    using namespace FeData;
    int nFilter;

    Image* image = dynamic_cast<Image*>( m_Resource );
    if( image != NULL )
    {
        nFilter = IDS_IMAGE_FILTER;
    }

    TextBible* textBible = dynamic_cast<TextBible*>( m_Resource );
    if( textBible != NULL )
    {
        nFilter = IDS_TEXT_BIBLE_FILTER;
    }

    TextStyle* textStyle = dynamic_cast<TextStyle*>( m_Resource );
    if( textStyle != NULL )
    {
        nFilter = IDS_TEXT_STYLE_FILTER;
    }

     CString strFilter;
    strFilter.LoadString(nFilter);
    strFilter += _T("|");
    CString strAllFilter;
    strAllFilter.LoadString(IDS_ALL_FILTER);
    strFilter += strAllFilter;
    strFilter += _T("||");

    CFileDialog fileDialog( TRUE, NULL, NULL, OFN_HIDEREADONLY, strFilter );

    if( fileDialog.DoModal() == IDOK )
    {
        m_FileName = fileDialog.GetPathName();
        CWnd* wnd = GetDlgItem( IDC_FILENAME );
        wnd->SetWindowText( m_FileName );
    }
}


void CResourcePropDlg::OnOK() 
{
    // TODO: Add extra validation here
    using namespace FeData;

    UpdateData();

    if( m_OldResourceName != m_ResourceName )
    {
        NameManager nameManager;
        if( nameManager.IsResourceNameUnique( m_Resource, (PascalCString)m_ResourceName, m_Page ) )
        {
            m_Resource->SetName( (PascalCString)m_ResourceName );
        }
        else
        {
            g_OutputMessage.Add( "The chosen name is already being used by another object of the same type.",
                                 WarningOutputMessage );
            return;
        }

    }
    
    if( m_OldFileName != m_FileName )
    {
        FileName fileName;
        fileName.Set( (PascalCString)m_FileName );

        m_Resource->ReleaseResourceFile();
        Project* project = App()->GetProject();
        BaseFactory* factory = project->GetObjectFactory();
        ResourceFileManager* resFileMan = project->GetResourceFileManager();

        // Swap image files
        Image* image = dynamic_cast<Image*>( m_Resource );
        if( image != NULL )
        {
            ImageFile* imageFile = resFileMan->GetImageFile( fileName, project );
            m_Resource->SetResourceFile( imageFile, resFileMan );
        }

        // Swap Pure3d object files
        Pure3dFile* pure3dFile = dynamic_cast< Pure3dFile* >( m_Resource );
        if( pure3dFile != NULL )
        {
            Pure3dFileFile* pure3dFile = resFileMan->GetPure3dFileFile( fileName, project );
            m_Resource->SetResourceFile( pure3dFile, resFileMan );
        }

        // Swap text bible files
        TextBible* textBible = dynamic_cast<TextBible*>( m_Resource );
        if( textBible != NULL )
        {
            TextBibleFile* textBibleFile = resFileMan->GetTextBibleFile( fileName, project );
            m_Resource->SetResourceFile( textBibleFile, resFileMan );
        }

        // Swap text style files
        TextStyle* textStyle = dynamic_cast<TextStyle*>( m_Resource );
        if( textStyle != NULL )
        {
            TextStyleFile* textStyleFile = resFileMan->GetTextStyleFile( fileName, project );
            m_Resource->SetResourceFile( textStyleFile, resFileMan );
        }
    }

    if( m_OldInventoryName != m_InventoryName )
    {
        m_Resource->GetResourceFile()->SetInventoryName( m_InventoryName );
    }

    CDialog::OnOK();
}
