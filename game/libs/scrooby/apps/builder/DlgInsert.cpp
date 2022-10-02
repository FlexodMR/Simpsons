/////////////////////////////////////////////////////////////////////////////
// DlgInsert.cpp : implementation file

#include "StdAfx.h"
#include "resource.h"
#include "xObject.h"
#include "DlgInsert.h"

#include "FeData\Helpers\OutputMessage.h"
#include "FeData\Helpers\ResourceManager.h"
#include "FeData\Resources\Image.h"
#include "FeData\Resources\TextBible.h"
#include "FeData\Resources\TextStyle.h"
#include "FeData\ResourceFiles\TextBibleFile.h"

#include "Strings\PCString.h"
#include "Strings\UnicodeString.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CInsertSpriteDlg dialog

CInsertSpriteDlg::CInsertSpriteDlg() : CDialog(CInsertSpriteDlg::IDD),
m_ResourceManager( NULL ),
m_SelectedImageName( "" ),
m_NameManuallyChanged( false )
{
    //{{AFX_DATA_INIT(CInsertSpriteDlg)
    m_SpriteName = _T("");
    //}}AFX_DATA_INIT
}

void CInsertSpriteDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CInsertSpriteDlg)
    DDX_Control(pDX, IDC_IMAGE_RESOURCE_LIST_BOX, m_ImageResourceListBox);
    DDX_Text(pDX, IDC_IMAGE_NAME, m_SpriteName);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CInsertSpriteDlg, CDialog)
    //{{AFX_MSG_MAP(CInsertSpriteDlg)
    ON_LBN_SELCHANGE(IDC_IMAGE_RESOURCE_LIST_BOX, OnSelchangeImageResourceListBox)
    ON_EN_CHANGE(IDC_IMAGE_NAME, OnChangeImageName)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CInsertSpriteDlg message handlers

BOOL CInsertSpriteDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();

    if( m_ResourceManager == NULL )
    {
        return false;
    }

    for( int i = 0; i < m_ResourceManager->GetNumberOfImages(); i++ )
    {
        FeData::Image* image = m_ResourceManager->GetImageWithoutCounting( i );
        if( image != NULL )
        {
            m_ImageResourceListBox.AddString( image->GetName() );
        }
    }

    m_ImageResourceListBox.SetCurSel(0);
    OnSelchangeImageResourceListBox();
    
    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}


void CInsertSpriteDlg::OnSelchangeImageResourceListBox() 
{
    if( !m_NameManuallyChanged )
    {
        int selection = m_ImageResourceListBox.GetCurSel();
        if( selection != LB_ERR )
        {
            m_ImageResourceListBox.GetText( selection, m_SpriteName );
        }
        UpdateData( FALSE );
    }
}


void CInsertSpriteDlg::OnChangeImageName() 
{
    m_NameManuallyChanged = true;
}


void CInsertSpriteDlg::OnOK() 
{
    int selection = m_ImageResourceListBox.GetCurSel();
    if( selection != LB_ERR )
    {
        CString tempString;
        m_ImageResourceListBox.GetText( selection, tempString );
        m_SelectedImageName = tempString;
    }

    CDialog::OnOK();
}


void CInsertSpriteDlg::SetResourceManager( FeData::ResourceManager* resourceManager )
{
    m_ResourceManager = resourceManager;
}


void CInsertSpriteDlg::SetSpriteName( PascalCString& spriteName )
{
    m_SpriteName = spriteName;
}


bool CInsertSpriteDlg::GetSelectedImageName( PascalCString& imageName )
{
    if( m_SelectedImageName == "" )
    {
        return false;
    }
    else
    {
        imageName = m_SelectedImageName;
        return true;
    }
}


bool CInsertSpriteDlg::GetSpriteName( PascalCString& spriteName )
{
    if( m_SelectedImageName == "" )
    {
        return false;
    }
    else
    {
        spriteName = m_SpriteName;
        return true;
    }
}

/////////////////////////////////////////////////////////////////////////////
// CInsertStringDlg dialog

CInsertStringDlg::CInsertStringDlg() : CDialog(CInsertStringDlg::IDD)
{
    //{{AFX_DATA_INIT(CInsertStringDlg)
    m_str = _T("");
    //}}AFX_DATA_INIT
}

void CInsertStringDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CInsertStringDlg)
    DDX_Text(pDX, IDC_STRING, m_str);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CInsertStringDlg, CDialog)
    //{{AFX_MSG_MAP(CInsertStringDlg)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CInsertStringDlg message handlers

/////////////////////////////////////////////////////////////////////////////
// CInsertTextDlg dialog

CInsertTextDlg::CInsertTextDlg() : CDialog(CInsertTextDlg::IDD)
{
    //{{AFX_DATA_INIT(CInsertTextDlg)
    m_TextName = _T("");
    m_HardCodedString = _T("");
    //}}AFX_DATA_INIT
}

void CInsertTextDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CInsertTextDlg)
    DDX_Control(pDX, IDC_TEXT_STYLE_LIST, m_TextStyleList);
    DDX_Control(pDX, IDC_TEXT_BIBLE_STRING_LIST, m_TextBibleStringList);
    DDX_Control(pDX, IDC_TEXT_BIBLE_LIST, m_TextBibleList);
    DDX_Text(pDX, IDC_TEXT_NAME, m_TextName);
    DDX_Text(pDX, IDC_HARD_CODED_STRING, m_HardCodedString);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CInsertTextDlg, CDialog)
    //{{AFX_MSG_MAP(CInsertTextDlg)
    ON_LBN_SELCHANGE(IDC_TEXT_BIBLE_LIST, OnSelchangeTextBibleList)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CInsertTextDlg message handlers

BOOL CInsertTextDlg::OnInitDialog() 
{
    using namespace FeData;

    CDialog::OnInitDialog();
    
    if( m_ResourceManager == NULL )
    {
        return false;
    }

    int i;
    for( i = 0; i < m_ResourceManager->GetNumberOfTextBibles(); i++ )
    {
        TextBible* textBible = m_ResourceManager->GetTextBibleWithoutCounting( i );
        if( textBible != NULL )
        {
            m_TextBibleList.AddString( textBible->GetName() );
        }
    }
    m_TextBibleList.SetCurSel(0);
    


    for( i = 0; i < m_ResourceManager->GetNumberOfTextStyles(); i++ )
    {
        TextStyle* textStyle = m_ResourceManager->GetTextStyleWithoutCounting( i );
        if( textStyle != NULL )
        {
            m_TextStyleList.AddString( textStyle->GetName() );
        }
    }
    m_TextStyleList.SetCurSel(0);

    m_TextBibleStringList.SetColumnHeadings( "Name", "String" );
    OnSelchangeTextBibleList();

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CInsertTextDlg::OnOK() 
{
    CDialog::OnOK();
}


void CInsertTextDlg::SetResourceManager( FeData::ResourceManager* resourceManager )
{
    m_ResourceManager = resourceManager;
}


void CInsertTextDlg::OnSelchangeTextBibleList() 
{
    using namespace FeData;
    m_TextBibleStringList.DeleteAllItems();

    if( m_ResourceManager == NULL )
    {
        return;
    }

    int selection = m_TextBibleList.GetCurSel();
    if( selection == LB_ERR )
    {
        return;
    }

    CString tempString;
    m_TextBibleList.GetText( selection, tempString );
    PascalCString textBibleName = tempString;

    TextBible* textBible = m_ResourceManager->GetTextBibleWithoutCounting( textBibleName );
    if( textBible == NULL )
    {
        return;
    }

    TextBibleFile* textBibleFile = dynamic_cast<TextBibleFile*>( textBible->GetResourceFile() );
    if( textBibleFile == NULL )
    {
        return;
    }

    StringSet stringNames;
    if( !textBibleFile->GetAllStringNames( stringNames ) )
    {
        return;
    }

    StringSet::iterator it;
    for( it = stringNames.begin(); it != stringNames.end(); it++ )
    {
        PascalCString name( *it );
        UnicodeString translationString;

        // Find the translation string
        if( !textBibleFile->GetString( name, translationString ) )
        {
            translationString.ReadAscii( "*** Error ***", -1 );
        }

        // Cope the string to a buffer
        int size = translationString.Length() + 1;
        char* buffer = new char[ size ];
        if( buffer == NULL )
        {
            FeData::g_OutputMessage.Add( "CInsertTextDlg::OnSelchangeTextBibleList: Out of Memory!", 
                                         FeData::DebugOutputMessage );
            continue;
        }
        translationString.MakeAscii( buffer, size );

        // Add the list element
        m_TextBibleStringList.InsertItem( name, buffer );

        delete [] buffer;
    }
  
    // Add full row selection to listctrl
    m_TextBibleStringList.SetFullRowSel( TRUE );

    // Sort the list according to the Name column
    m_TextBibleStringList.SortColumn( 0, TRUE );
}

