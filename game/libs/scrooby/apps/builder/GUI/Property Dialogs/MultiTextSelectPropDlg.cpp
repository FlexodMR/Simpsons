/////////////////////////////////////////////////////////////////////////////
// TextPropProp.cpp : implementation file

#pragma warning( disable : 4786 )

#include "..\..\StdAfx.h"
#include "..\..\XCon.h"
#include "..\..\XConDoc.h"    //needed forCDirectoryMgr
#include "MultiTextSelectPropDlg.h"

#include "Strings\UnicodeString.h"

#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\Text.h"
#include "..\..\FeData\Resources\TextBible.h"
#include "..\..\FeData\Resources\TextStyle.h"
#include "..\..\FeData\ResourceFiles\TextBibleFile.h"
#include "..\..\FeData\ResourceFiles\TextStyleFile.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// CMultiTextSelectPropDlg dialog

CMultiTextSelectPropDlg::CMultiTextSelectPropDlg() : 
CDialog(CMultiTextSelectPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CMultiTextSelectPropDlg)
    m_HardCodedString = _T("");
    m_CurrentTextType = -1;
    //}}AFX_DATA_INIT

    m_Page = NULL;

    m_TextType = FeData::TextBibleString;
    m_LastTextBibleSelection = -1;
}


void CMultiTextSelectPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CMultiTextSelectPropDlg)
    DDX_Control(pDX, IDC_TEXT_BIBLE_STRING_LIST, m_TextBibleStringList);
    DDX_Control(pDX, IDC_TEXT_BIBLE_LIST, m_TextBibleList);
    DDX_Text(pDX, IDC_HARD_CODED_STRING, m_HardCodedString);
    DDX_Radio(pDX, IDC_FROM_TEXT_BIBLE_RADIO, m_CurrentTextType);
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CMultiTextSelectPropDlg, CDialog)
    //{{AFX_MSG_MAP(CMultiTextSelectPropDlg)
      ON_LBN_SELCHANGE(IDC_TEXT_BIBLE_LIST, OnSelchangeTextBibleList)
    ON_BN_CLICKED(IDC_FROM_TEXT_BIBLE_RADIO, OnFromTextBibleRadio)
    ON_BN_CLICKED(IDC_HARD_CODED_STRING_RADIO, OnHardCodedStringRadio)
    ON_NOTIFY(NM_CLICK, IDC_TEXT_BIBLE_STRING_LIST, OnClickTextBibleStringList)
    ON_NOTIFY(NM_DBLCLK, IDC_TEXT_BIBLE_STRING_LIST, OnDblclkTextBibleStringList)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CMultiTextSelectPropDlg message handlers

BOOL CMultiTextSelectPropDlg::OnInitDialog() 
{
    using namespace FeData;

    CDialog::OnInitDialog();
    
    if( m_Page == NULL )
    {
        return false;
    }

    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return false;
    }

    //
    // Set up the text bibles
    //
    int i;
    for( i = 0; i < resMan->GetNumberOfTextBibles(); i++ )
    {
        TextBible* textBible = resMan->GetTextBibleWithoutCounting( i );
        if( textBible != NULL )
        {
            m_TextBibleList.AddString( textBible->GetName() );
        }
    }

    bool foundItem = false;
    CString tempString;
    for( i = 0; (!foundItem) && (i < resMan->GetNumberOfTextBibles()); i++ )
    {
        m_TextBibleList.GetText( i, tempString );
        if( tempString == m_SelectedBible )
        {
            m_TextBibleList.SetCurSel( i );
            foundItem = true;
        }
    }

    if( !foundItem )
    {
        m_TextBibleList.SetCurSel(0);
    }
    
    //
    // Set up the text bible list
    //
    m_TextBibleStringList.SetColumnHeadings( "Name", "String" );
    OnSelchangeTextBibleList();

    //
    // Set up the text type
    //
    if( m_TextType == FeData::TextBibleString )
    {   
        m_CurrentTextType = 0;
        UpdateData( FALSE );
        OnFromTextBibleRadio();
    }
    else
    {
        m_CurrentTextType = 1;
        UpdateData( FALSE );
        OnHardCodedStringRadio();
    }

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}


void CMultiTextSelectPropDlg::OnOK() 
{
    int selection;

    POSITION pos = m_TextBibleStringList.GetFirstSelectedItemPosition();
    if( pos != NULL )
    {
        selection = m_TextBibleStringList.GetNextSelectedItem( pos );
        m_SelectedBibleString = m_TextBibleStringList.GetItemText( selection, 0 );
    }

    selection = m_TextBibleList.GetCurSel();
    if( selection != LB_ERR )
    {
        CString tempString;
        m_TextBibleList.GetText( selection, tempString );
        m_SelectedBible = tempString;
    }

    CDialog::OnOK();
}


void CMultiTextSelectPropDlg::OnSelchangeTextBibleList() 
{
    using namespace FeData;
    
    if( m_Page == NULL )
    {
        return;
    }

    int selection = m_TextBibleList.GetCurSel();
    if( selection == LB_ERR )
    {
        return;
    }

    // Don't update anything if nothing changed
    if( selection == m_LastTextBibleSelection )
    {
        return;
    }
    m_LastTextBibleSelection = selection;

    CString tempString;
    m_TextBibleList.GetText( selection, tempString );
    PascalCString textBibleName = tempString;


    m_TextBibleStringList.DeleteAllItems();



    FeData::ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return;
    }

    TextBible* textBible = resMan->GetTextBibleWithoutCounting( textBibleName );
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

    // Try and select the string
    m_TextBibleStringList.SelectItem( m_SelectedBibleString );
}


void CMultiTextSelectPropDlg::OnFromTextBibleRadio() 
{
    GetDlgItem(IDC_TEXT_BIBLE_LIST)->EnableWindow( TRUE );
    GetDlgItem(IDC_TEXT_BIBLE_STRING_LIST)->ShowWindow( TRUE );
    GetDlgItem(IDC_TEXT_BIBLE_STRING_LIST_HIDE)->ShowWindow( FALSE );
    GetDlgItem(IDC_HARD_CODED_STRING)->EnableWindow( FALSE );
    
    m_TextType = FeData::TextBibleString;
}


void CMultiTextSelectPropDlg::OnHardCodedStringRadio() 
{
    GetDlgItem(IDC_TEXT_BIBLE_LIST)->EnableWindow( FALSE );
    GetDlgItem(IDC_TEXT_BIBLE_STRING_LIST)->ShowWindow( FALSE );
    GetDlgItem(IDC_TEXT_BIBLE_STRING_LIST_HIDE)->ShowWindow( TRUE );
    GetDlgItem(IDC_HARD_CODED_STRING)->EnableWindow( TRUE );

    m_TextType = FeData::HardCodedString;
}


void CMultiTextSelectPropDlg::OnClickTextBibleStringList(NMHDR* pNMHDR, LRESULT* pResult) 
{
    *pResult = 0;

    POSITION pos = m_TextBibleStringList.GetFirstSelectedItemPosition();
    if( pos != NULL )
    {
        int selection = m_TextBibleStringList.GetNextSelectedItem( pos );
        m_SelectedBibleString = m_TextBibleStringList.GetItemText( selection, 0 );
    }
}


void CMultiTextSelectPropDlg::OnDblclkTextBibleStringList(NMHDR* pNMHDR, LRESULT* pResult) 
{
    OnOK();

    *pResult = 0;
}
