/////////////////////////////////////////////////////////////////////////////
// TextPropProp.cpp : implementation file

#pragma warning( disable : 4786 )

#include "..\..\StdAfx.h"
#include "..\..\XCon.h"
#include "..\..\XConDoc.h"    //needed forCDirectoryMgr
#include "TextPropDlg.h"

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
// CTextPropDlg dialog

CTextPropDlg::CTextPropDlg() : 
CBoxDrawingElementPropDlg(CTextPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CTextPropDlg)
    m_HardCodedString = _T("");
    m_CurrentTextType = -1;
    m_ShadowEnabled = FALSE;
    m_ShadowAlpha = 0x80;
    m_xShadowOffset = -1;
    m_yShadowOffset = -2;
    //}}AFX_DATA_INIT

    m_Type = DRAWING_ELEMENT_TEXT;

    m_TextType = FeData::TextBibleString;
    m_LastTextBibleSelection = -1;


    m_ShadowRed = m_ShadowGreen = m_ShadowBlue = 0x00;
}


void CTextPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CBoxDrawingElementPropDlg::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CTextPropDlg)
    DDX_Control(pDX, IDC_TEXT_STYLE_LIST, m_TextStyleList);
    DDX_Control(pDX, IDC_TEXT_BIBLE_STRING_LIST, m_TextBibleStringList);
    DDX_Control(pDX, IDC_TEXT_BIBLE_LIST, m_TextBibleList);
    DDX_Text(pDX, IDC_HARD_CODED_STRING, m_HardCodedString);
    DDX_Radio(pDX, IDC_FROM_TEXT_BIBLE_RADIO, m_CurrentTextType);
    DDX_Text(pDX, IDC_SHADOW_ALPHA, m_ShadowAlpha);
    DDV_MinMaxUInt(pDX, m_ShadowAlpha, 0, 255);
    DDX_Control(pDX, IDC_SHADOW_COLOUR, m_wndShadowColor);
    DDX_Text(pDX, IDC_SHADOW_OFFSET_X, m_xShadowOffset );
    DDV_MinMaxInt( pDX, m_xShadowOffset, -255, 255 );
    DDX_Text(pDX, IDC_SHADOW_OFFSET_Y, m_yShadowOffset );
    DDV_MinMaxInt( pDX, m_yShadowOffset, -255, 255 );
    DDX_Check(pDX, IDC_SHADOW_ENABLED, m_ShadowEnabled );
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CTextPropDlg, CBoxDrawingElementPropDlg)
    //{{AFX_MSG_MAP(CTextPropDlg)
      ON_LBN_SELCHANGE(IDC_TEXT_BIBLE_LIST, OnSelchangeTextBibleList)
    ON_BN_CLICKED(IDC_FROM_TEXT_BIBLE_RADIO, OnFromTextBibleRadio)
    ON_BN_CLICKED(IDC_HARD_CODED_STRING_RADIO, OnHardCodedStringRadio)
    ON_BN_CLICKED(IDC_BUTTON1, OnResizeWidthAndHeightToLargestString)
    ON_LBN_SELCHANGE(IDC_TEXT_STYLE_LIST, OnTextChange)
    ON_NOTIFY(NM_CLICK, IDC_TEXT_BIBLE_STRING_LIST, OnClickTextBibleStringList)
    ON_EN_KILLFOCUS(IDC_WIDTH, OnTextChange)
    ON_EN_KILLFOCUS(IDC_HEIGHT, OnTextChange)
    ON_EN_KILLFOCUS(IDC_HARD_CODED_STRING, OnTextChange)
    ON_BN_CLICKED(IDC_SHADOW_ENABLED, OnShadowEnabled)
    ON_BN_CLICKED(IDC_SHADOW_COLOUR, OnShadowColour)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CTextPropDlg message handlers

BOOL CTextPropDlg::OnInitDialog() 
{
    using namespace FeData;

    CBoxDrawingElementPropDlg::OnInitDialog();
    
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
    // Set up the text styles
    //
    for( i = 0; i < resMan->GetNumberOfTextStyles(); i++ )
    {
        TextStyle* textStyle = resMan->GetTextStyleWithoutCounting( i );
        if( textStyle != NULL )
        {
            m_TextStyleList.AddString( textStyle->GetName() );
        }
    }

    foundItem = false;
    for( i = 0; (!foundItem) && (i < resMan->GetNumberOfTextStyles()); i++ )
    {
        m_TextStyleList.GetText( i, tempString );
        if( tempString == m_SelectedStyle )
        {
            m_TextStyleList.SetCurSel( i );
            foundItem = true;
        }
    }

    if( !foundItem )
    {
        m_TextStyleList.SetCurSel(0);
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

    m_shadowColor = RGB( m_ShadowRed, m_ShadowGreen, m_ShadowBlue );
    m_wndShadowColor.m_pClr = &m_shadowColor;

    CWnd* temp = GetDescendantWindow( IDC_SHADOW_ALPHA );
    if( temp )
    {
        temp->EnableWindow( m_ShadowEnabled );
    }
    temp = GetDescendantWindow( IDC_SHADOW_OFFSET_X );
    if( temp )
    {
        temp->EnableWindow( m_ShadowEnabled );
    }
    temp = GetDescendantWindow( IDC_SHADOW_OFFSET_Y );
    if( temp )
    {
        temp->EnableWindow( m_ShadowEnabled );
    }

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
   
}


void CTextPropDlg::OnOK() 
{
    int selection = m_TextStyleList.GetCurSel();
    if( selection != LB_ERR )
    {
        CString tempString;
        m_TextStyleList.GetText( selection, tempString );
        m_SelectedStyle = tempString;
    }
    
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

    m_ShadowRed = GetRValue( m_shadowColor );
    m_ShadowGreen = GetGValue( m_shadowColor );
    m_ShadowBlue = GetBValue( m_shadowColor );

    CBoxDrawingElementPropDlg::OnOK();
}


void CTextPropDlg::OnSelchangeTextBibleList() 
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

    // Make sure the width and height are ok
    OnTextChange();
}


void CTextPropDlg::OnFromTextBibleRadio() 
{
    GetDlgItem(IDC_TEXT_BIBLE_LIST)->EnableWindow( TRUE );
    GetDlgItem(IDC_TEXT_BIBLE_STRING_LIST)->ShowWindow( TRUE );
    GetDlgItem(IDC_TEXT_BIBLE_STRING_LIST_HIDE)->ShowWindow( FALSE );
    GetDlgItem(IDC_HARD_CODED_STRING)->EnableWindow( FALSE );
    
    m_TextType = FeData::TextBibleString;
    OnTextChange();
}


void CTextPropDlg::OnHardCodedStringRadio() 
{
    GetDlgItem(IDC_TEXT_BIBLE_LIST)->EnableWindow( FALSE );
    GetDlgItem(IDC_TEXT_BIBLE_STRING_LIST)->ShowWindow( FALSE );
    GetDlgItem(IDC_TEXT_BIBLE_STRING_LIST_HIDE)->ShowWindow( TRUE );
    GetDlgItem(IDC_HARD_CODED_STRING)->EnableWindow( TRUE );

    m_TextType = FeData::HardCodedString;
    OnTextChange();
}


void CTextPropDlg::OnResizeWidthAndHeightToLargestString() 
{
    int width = 0;
    int height = 0;

    if( GetMinSize( width, height ) )
    {
        UpdateData( TRUE );

        m_nWidth = width;
        m_nHeight = height;

        UpdateData( FALSE );
    }
}


void CTextPropDlg::OnClickTextBibleStringList(NMHDR* pNMHDR, LRESULT* pResult) 
{
    *pResult = 0;

    POSITION pos = m_TextBibleStringList.GetFirstSelectedItemPosition();
    if( pos != NULL )
    {
        int selection = m_TextBibleStringList.GetNextSelectedItem( pos );
        m_SelectedBibleString = m_TextBibleStringList.GetItemText( selection, 0 );
    }
    
    OnTextChange();
}

void CTextPropDlg::OnTextChange() 
{
    UpdateData( TRUE );

    int width = 0;
    int height = 0;

    /*if( GetMinSize( width, height ) )
    {
        if( width > m_nWidth )
        {
            m_nWidth = width;
        }

        if( height > m_nHeight )
        {
            m_nHeight = height;
        }

        UpdateData( FALSE );
    }*/
}

bool CTextPropDlg::GetMinSize( int& width, int& height )
{
    using namespace FeData;

    PascalCString selectedTextStyle;
    PascalCString selectedTextBible;
    PascalCString selectedTextBibleString;

    // Get the resource manager
    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return false;
    }

    // Get the text style
    int selection = m_TextStyleList.GetCurSel();
    if( selection != LB_ERR )
    {
        CString tempString;
        m_TextStyleList.GetText( selection, tempString );
        selectedTextStyle = tempString;
    }
    else
    {
        return false;
    }

    // Get the text style resource
    TextStyle* textStyle = resMan->GetTextStyleWithoutCounting( selectedTextStyle );
    if( textStyle == NULL )
    {
        return false;
    }

    TextStyleFile* textStyleFile = dynamic_cast<TextStyleFile*>( textStyle->GetResourceFile() );
    if( textStyleFile == NULL )
    {
        return false;
    }

    // Do we have a hard coded string?
    if( m_TextType == FeData::HardCodedString )
    {
        UnicodeString string;
        string.ReadAscii( m_HardCodedString );
        return textStyleFile->GetStringExtent( string, width, height );
    }
    else    
    {
        // We have a text bible string

        // Get the text bible
        selection = m_TextBibleList.GetCurSel();
        if( selection != LB_ERR )
        {
            CString tempString;
            m_TextBibleList.GetText( selection, tempString );
            selectedTextBible = tempString;
        }
        else
        {
            return false;
        }

        // Get the text bible string
        POSITION pos = m_TextBibleStringList.GetFirstSelectedItemPosition();
        if( pos != NULL )
        {
            selection = m_TextBibleStringList.GetNextSelectedItem( pos );
            selectedTextBibleString = m_TextBibleStringList.GetItemText( selection, 0 );
        }
        else
        {
            return false;
        }

        // Get the text bible resource
        TextBible* textBible = resMan->GetTextBibleWithoutCounting( selectedTextBible );
        if( textBible == NULL )
        {
            return false;
        }

        TextBibleFile* textBibleFile = dynamic_cast<TextBibleFile*>( textBible->GetResourceFile() );
        if( textBibleFile == NULL )
        {
            return false;
        }

        // Find the width and height
        width = 1;
        height = 1;
        for( int i = 0; i < textBibleFile->GetNumberOfLanguages(); i++ )
        {
            UnicodeString string;
            if( textBibleFile->GetString( selectedTextBibleString, string, i ) )
            {
                int tempWidth = 0;
                int tempHeight = 0;
                if( textStyleFile->GetStringExtent( string, tempWidth, tempHeight ) )
                {
                    if( tempWidth > width )
                    {
                        width = tempWidth;
                    }

                    if( tempHeight > height )
                    {
                        height = tempHeight;
                    }
                
                }
            }
        }
    }
    return true;
}

void CTextPropDlg::OnShadowEnabled()
{
    m_ShadowEnabled = !m_ShadowEnabled;
    CWnd* temp = GetDescendantWindow( IDC_SHADOW_ALPHA );
    if( temp )
    {
        temp->EnableWindow( m_ShadowEnabled );
    }
    temp = GetDescendantWindow( IDC_SHADOW_OFFSET_X );
    if( temp )
    {
        temp->EnableWindow( m_ShadowEnabled );
    }
    temp = GetDescendantWindow( IDC_SHADOW_OFFSET_Y );
    if( temp )
    {
        temp->EnableWindow( m_ShadowEnabled );
    }
}

void CTextPropDlg::OnShadowColour()
{
    if( m_ShadowEnabled )
    {
        CColorDialog dlg( m_shadowColor, CC_FULLOPEN );
        if( dlg.DoModal() != IDOK )
        {
            return;
        }
        m_shadowColor = dlg.GetColor();
        m_wndShadowColor.Invalidate();
    }
}
