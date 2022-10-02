/////////////////////////////////////////////////////////////////////////////
// MultiTextPropProp.cpp : implementation file

#pragma warning( disable : 4786 )

#include "..\..\StdAfx.h"
#include "..\..\XCon.h"
#include "..\..\XConDoc.h"    //needed forCDirectoryMgr
#include "MultiTextPropDlg.h"
#include "MultiTextSelectPropDlg.h"

#include "Strings\UnicodeString.h"

#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\NamedElements\MultiText.h"
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
// CMultiTextPropDlg dialog

CMultiTextPropDlg::CMultiTextPropDlg() : 
CBoxDrawingElementPropDlg(CMultiTextPropDlg::IDD),
m_TextList( NULL )
{
    //{{AFX_DATA_INIT(CMultiTextPropDlg)
    m_ShadowEnabled = FALSE;
    m_ShadowAlpha = 0x80;
    m_xShadowOffset = -1;
    m_yShadowOffset = -2;
    //}}AFX_DATA_INIT

    m_Type = DRAWING_ELEMENT_MULTI_TEXT;

    m_CurrentlyShownText = 0;

    m_pDragImage = NULL; 
    //m_pDragImage = new CImageList;
    m_bDragging = FALSE;

    m_ShadowRed = m_ShadowGreen = m_ShadowBlue = 0x00;
}


CMultiTextPropDlg::~CMultiTextPropDlg()
{
    if( m_pDragImage != NULL )
    {
        delete m_pDragImage;
        m_pDragImage = NULL;
    }
}


void CMultiTextPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CBoxDrawingElementPropDlg::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CMultiTextPropDlg)
    DDX_Control(pDX, IDC_MULTI_TEXT_STRINGS, m_StringsList);
    DDX_Control(pDX, IDC_TEXT_STYLE_LIST, m_TextStyleList);
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


BEGIN_MESSAGE_MAP(CMultiTextPropDlg, CBoxDrawingElementPropDlg)
    //{{AFX_MSG_MAP(CMultiTextPropDlg)
    ON_BN_CLICKED(IDC_BUTTON1, OnResizeWidthAndHeightToLargestString)
    ON_LBN_SELCHANGE(IDC_TEXT_STYLE_LIST, OnTextChange)
    ON_NOTIFY(LVN_BEGINDRAG, IDC_MULTI_TEXT_STRINGS, OnBegindragMultiTextStrings)
    ON_WM_MOUSEMOVE()
    ON_WM_LBUTTONUP()
    ON_NOTIFY(NM_DBLCLK, IDC_MULTI_TEXT_STRINGS, OnDblclkMultiTextStrings)
    ON_BN_CLICKED(IDC_ADD_MULTITEXT_ITEM, OnAddMultitextItem)
    ON_BN_CLICKED(IDC_EDIT_MULTITEXT_ITEM, OnEditMultitextItem)
    ON_BN_CLICKED(IDC_DELETE_MULTITEXT_ITEM, OnDeleteMultitextItem)
    ON_EN_KILLFOCUS(IDC_WIDTH, OnTextChange)
    ON_EN_KILLFOCUS(IDC_HEIGHT, OnTextChange)
    ON_NOTIFY(LVN_KEYDOWN, IDC_MULTI_TEXT_STRINGS, OnKeydownMultiTextStrings)
    ON_BN_CLICKED(IDC_SHADOW_ENABLED, OnShadowEnabled)
    ON_BN_CLICKED(IDC_SHADOW_COLOUR, OnShadowColour)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CMultiTextPropDlg message handlers

BOOL CMultiTextPropDlg::OnInitDialog() 
{
    using namespace FeData;

    CBoxDrawingElementPropDlg::OnInitDialog();
    
    if( m_Page == NULL )
    {
        return false;
    }

 
    //
    // Set up the Strings list
    //
    if( m_TextList == NULL )
    {
        return false;
    }

    // Set the list style
    m_StringsList.SetExtendedStyle( LVS_EX_FULLROWSELECT | 
                                    LVS_EX_ONECLICKACTIVATE | 
                                    LVS_EX_GRIDLINES );

    m_ImageList.Create( 16, 16, ILC_COLOR4 | ILC_MASK, 1, 1 );
    
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_TEXT_BIBLE_STRING ) );
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_HARD_CODED_STRING ) );
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_TEXT_BIBLE_STRING_SELECT ) );
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_HARD_CODED_STRING_SELECT ) );


    CRect listRect;
    m_StringsList.GetWindowRect( listRect );
    int cx = ( listRect.Width() - 4 ) / 3;

    m_StringsList.SetImageList( &m_ImageList, LVSIL_SMALL );
    m_StringsList.InsertColumn(0, "Text Bible", LVCFMT_LEFT, cx );
    m_StringsList.InsertColumn(1, "Name", LVCFMT_LEFT, cx );
    m_StringsList.InsertColumn(2, "String/Hard Coded String", LVCFMT_LEFT, cx * 4 );

    UpdateStringList();
    
  
    //
    // Set up the text styles
    //
    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return false;
    }

    for( int i = 0; i < resMan->GetNumberOfTextStyles(); i++ )
    {
        TextStyle* textStyle = resMan->GetTextStyleWithoutCounting( i );
        if( textStyle != NULL )
        {
            m_TextStyleList.AddString( textStyle->GetName() );
        }
    }

    bool foundItem = false;
    for( i = 0; (!foundItem) && (i < resMan->GetNumberOfTextStyles()); i++ )
    {
        CString tempString;
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


void CMultiTextPropDlg::SetTextList( FeData::TextList* textList ) 
{
    m_TextList = textList;
}


void CMultiTextPropDlg::OnOK() 
{
    int selection = m_TextStyleList.GetCurSel();
    if( selection != LB_ERR )
    {
        CString tempString;
        m_TextStyleList.GetText( selection, tempString );
        m_SelectedStyle = tempString;
    }

    m_ShadowRed = GetRValue( m_shadowColor );
    m_ShadowGreen = GetGValue( m_shadowColor );
    m_ShadowBlue = GetBValue( m_shadowColor );

    CBoxDrawingElementPropDlg::OnOK();
}


void CMultiTextPropDlg::OnResizeWidthAndHeightToLargestString() 
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


void CMultiTextPropDlg::OnTextChange() 
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


void CMultiTextPropDlg::UpdateStringList()
{
    using namespace FeData;
    
    if( m_Page == NULL )
    {
        return;
    }

    FeData::ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return;
    }

    // Make sure we have the correct number of rows
    while( m_TextList->GetNumberOfTexts() < m_StringsList.GetItemCount() )
    {
        m_StringsList.DeleteItem( 0 );
    }

    while( m_TextList->GetNumberOfTexts() > m_StringsList.GetItemCount() )
    {
        m_StringsList.InsertItem( 0, "", 0 );
    }


    // Fill the list
    for( int i = 0; i < m_TextList->GetNumberOfTexts(); i++ )
    {
        TextTypeEnum type;
        if( !m_TextList->GetTextType( i, type ) )
        {
            continue;
        }

        if( i == m_CurrentlyShownText )
        {
            m_StringsList.SetItem( i, 0, LVIF_IMAGE, NULL, type + 2, 0, 0, 0 );
        }
        else
        {
            m_StringsList.SetItem( i, 0, LVIF_IMAGE, NULL, type, 0, 0, 0 );
        }
        
        if( type == FeData::TextBibleString )
        {
            PascalCString textBibleName;
            PascalCString textBibleString;
            if( m_TextList->GetTextBibleName( i, textBibleName ) &&
                m_TextList->GetTextBibleString( i, textBibleString ) )
            {
                // Get the text bible
                TextBible* textBible = resMan->GetTextBibleWithoutCounting( textBibleName );
                if( textBible == NULL )
                {
                    continue;
                }

                TextBibleFile* textBibleFile = dynamic_cast<TextBibleFile*>( textBible->GetResourceFile() );
                if( textBibleFile == NULL )
                {
                    continue;
                }

                UnicodeString translationString;

                // Find the translation string
                if( !textBibleFile->GetString( textBibleString, translationString ) )
                {
                    translationString.ReadAscii( "*** Error ***", -1 );
                }

                // Cope the string to a buffer
                int size = translationString.Length() + 1;
                char* buffer = new char[ size ];
                if( buffer == NULL )
                {
                    FeData::g_OutputMessage.Add( "CMultiTextPropDlg::UpdateStringList: Out of Memory!", 
                                                 FeData::DebugOutputMessage );
                    continue;
                }
                translationString.MakeAscii( buffer, size );


                // Add the list elements
                //m_StringsList.InsertItem( i, textBibleName, type + imageAdd );
                m_StringsList.SetItemText( i, 0, textBibleName );
                m_StringsList.SetItemText( i, 1, textBibleString );
                m_StringsList.SetItemText( i, 2, buffer );

                delete [] buffer;
            }
        }
        else
        {
            PascalCString hardCodedString;
            if( m_TextList->GetHardCodedString( i, hardCodedString ) )
            {
                //m_StringsList.InsertItem( i, "", type + imageAdd );
                m_StringsList.SetItemText( i, 0, "" );
                m_StringsList.SetItemText( i, 1, "" );
                m_StringsList.SetItemText( i, 2, hardCodedString );
            }
        }
    }
}


bool CMultiTextPropDlg::GetMinSize( int& width, int& height )
{
    using namespace FeData;

    // Get the resource manager
    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return false;
    }

    // Get the text style
    PascalCString selectedTextStyle;
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

    width = 1;
    height = 1;
    int tempWidth = 0;
    int tempHeight = 0;

    for( int i = 0; i < m_TextList->GetNumberOfTexts(); i++ )
    {
        TextTypeEnum type;
        if( !m_TextList->GetTextType( i, type ) )
        {
            continue;
        }

        // Do we have a hard coded string?
        if( type == HardCodedString )
        {
            PascalCString hardCodedString;
            if( !m_TextList->GetHardCodedString( i, hardCodedString ) )
            {
                continue;
            }

            UnicodeString string;
            string.ReadAscii( hardCodedString );
            if( textStyleFile->GetStringExtent( string, width, height ) )
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
        else    
        {
            // We have a text bible string
            PascalCString selectedTextBible;
            PascalCString selectedTextBibleString;

            // Get the text bible
            if( !m_TextList->GetTextBibleName( i, selectedTextBible ) )
            {
                continue;
            }

            // Get the text bible string
            if( !m_TextList->GetTextBibleString( i, selectedTextBibleString ) )
            {
                continue;
            }

            // Get the text bible resource
            TextBible* textBible = resMan->GetTextBibleWithoutCounting( selectedTextBible );
            if( textBible == NULL )
            {
                continue;
            }

            TextBibleFile* textBibleFile = dynamic_cast<TextBibleFile*>( textBible->GetResourceFile() );
            if( textBibleFile == NULL )
            {
                continue; 
            }

            // Find the width and height

            for( int l = 0; l < textBibleFile->GetNumberOfLanguages(); l++ )
            {
                UnicodeString string;
                if( textBibleFile->GetString( selectedTextBibleString, string, l ) )
                {
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
            }  // for
        }  // if type
    }  // for 
    return true;
}


void CMultiTextPropDlg::OnBegindragMultiTextStrings(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_LISTVIEW* pNMListView = (NM_LISTVIEW*)pNMHDR;

    //RECORD THE INDEX OF THE ITEM BEIGN DRAGGED AS m_nDragIndex
    m_nDragIndex = pNMListView->iItem;

    //CREATE A DRAG IMAGE FROM THE CENTER POINT OF THE ITEM IMAGE
    POINT pt;
    pt.x = 8;
    pt.y = 8;

    m_pDragImage = m_StringsList.CreateDragImage(m_nDragIndex, &pt);
    m_pDragImage->BeginDrag(0, CPoint (8, 8));
    m_pDragImage->DragEnter( GetDesktopWindow(), pNMListView->ptAction );

    //SET THE FLAGS INDICATING A DRAG IN PROGRESS
    m_bDragging = TRUE;
    m_pDropWnd = NULL;
    m_nDropIndex = -1;
    m_pDropWnd = &m_StringsList;

    //CAPTURE ALL MOUSE MESSAGES IN CASE THE USER DRAGS OUTSIDE OF THE VIEW
    SetCapture();

    *pResult = 0;
}


void CMultiTextPropDlg::OnMouseMove(UINT nFlags, CPoint point) 
{
    if( m_bDragging )
    {
        m_ptDropPoint = point;
        ClientToScreen(&m_ptDropPoint);

        //MOVE THE DRAG IMAGE
        m_pDragImage->DragMove(m_ptDropPoint);

        //TEMPORARILY UNLOCK WINDOW UPDATES
        m_pDragImage->DragShowNolock(FALSE);

        //CONVERT THE DROP POINT TO CLIENT CO-ORDIANTES
        m_pDropWnd = WindowFromPoint(m_ptDropPoint);
        m_pDropWnd->ScreenToClient(&m_ptDropPoint);

        //LOCK WINDOW UPDATES
        m_pDragImage->DragShowNolock(TRUE);
    }
    
    CBoxDrawingElementPropDlg::OnMouseMove(nFlags, point);
}


void CMultiTextPropDlg::OnLButtonUp(UINT nFlags, CPoint point) 
{
    if( m_bDragging )
    {
        //RELEASE THE MOUSE CAPTURE AND END THE DRAGGING
        ::ReleaseCapture();
        m_bDragging = FALSE;
        m_pDragImage->DragLeave(GetDesktopWindow());
        m_pDragImage->EndDrag();
        delete m_pDragImage;
        m_pDragImage = NULL;

        //GET THE WINDOW UNDER THE DROP POINT
        CPoint pt(point);
        ClientToScreen(&pt);
        m_pDropWnd = WindowFromPoint(pt);

        //DROP THE ITEM ON THE LIST
        if( m_pDropWnd == &m_StringsList )
        {
            DropItemOnList();
        }
    }

    CBoxDrawingElementPropDlg::OnLButtonUp(nFlags, point);
}


void CMultiTextPropDlg::DropItemOnList()
{
    //GET THE DROP INDEX
    m_ptDropPoint.y += 10;
    m_nDropIndex = m_StringsList.HitTest(m_ptDropPoint);

    if( m_nDropIndex < 0 )
    {
        return;
    }

    if( m_TextList->MoveText( m_nDragIndex, m_nDropIndex ) )
    {
        if( m_nDragIndex == m_CurrentlyShownText )
        {
            m_CurrentlyShownText = m_nDropIndex;
        }
        else if( (m_nDragIndex < m_CurrentlyShownText) && 
                 (m_nDropIndex < m_CurrentlyShownText) )
        {
            // Do nothing
        }
        else if( (m_nDragIndex > m_CurrentlyShownText) && 
                 (m_nDropIndex > m_CurrentlyShownText) )
        {
            // Do nothing
        }
        else if( m_nDragIndex < m_nDropIndex )
        {
            m_CurrentlyShownText--;
        }
        else if( m_nDragIndex > m_nDropIndex )
        {
            m_CurrentlyShownText++;
        }
            
        UpdateStringList();
    }
}


void CMultiTextPropDlg::OnDblclkMultiTextStrings(NMHDR* pNMHDR, LRESULT* pResult) 
{
    POSITION pos = m_StringsList.GetFirstSelectedItemPosition();
    if( pos != NULL )
    {
        m_CurrentlyShownText = m_StringsList.GetNextSelectedItem( pos );
        UpdateStringList();
    }

    *pResult = 0;
}


void CMultiTextPropDlg::OnAddMultitextItem() 
{
    CMultiTextSelectPropDlg textPropDlg;
    textPropDlg.m_Page = m_Page;

    // Do the dialog
    if (textPropDlg.DoModal() != IDOK)
    {
        return;
    }

    PascalCString selectedBible;
    PascalCString selectedBibleString;
    PascalCString hardCodedString;

    // Get the new settings
    if( textPropDlg.m_TextType == FeData::TextBibleString )
    {
        selectedBible = textPropDlg.m_SelectedBible;
        selectedBibleString = textPropDlg.m_SelectedBibleString;

        m_TextList->AddTextBibleString( selectedBible, selectedBibleString );
    }
    else
    {
        hardCodedString = textPropDlg.m_HardCodedString;

        m_TextList->AddHardCodedString( hardCodedString );
    }

    // Update the list
    UpdateStringList();

    // Update the size
    OnTextChange();
}


void CMultiTextPropDlg::OnEditMultitextItem() 
{
    POSITION pos = m_StringsList.GetFirstSelectedItemPosition();
    if( pos == NULL )
    {
        return;
    }

    int index = m_StringsList.GetNextSelectedItem( pos );

    CMultiTextSelectPropDlg textPropDlg;
    textPropDlg.m_Page = m_Page;


    // Get the old settings
    if( !m_TextList->GetTextType( index, textPropDlg.m_TextType ) )
    {
        return;
    }

    PascalCString selectedBible;
    PascalCString selectedBibleString;
    PascalCString hardCodedString;

    if( textPropDlg.m_TextType == FeData::TextBibleString )
    {
        if( !m_TextList->GetTextBibleName( index, selectedBible ) )
        {
            return;
        }

        if( !m_TextList->GetTextBibleString( index, selectedBibleString ) )
        {
            return;
        }

        textPropDlg.m_SelectedBible = selectedBible;
        textPropDlg.m_SelectedBibleString = selectedBibleString;
    }
    else
    {
        if( !m_TextList->GetHardCodedString( index, hardCodedString ) )
        {
            return;
        }

        textPropDlg.m_HardCodedString = hardCodedString;
    }

    // Do the dialog
    if (textPropDlg.DoModal() != IDOK)
    {
        return;
    }

    // Get the new settings
    m_TextList->SetTextType( index, textPropDlg.m_TextType );

    if( textPropDlg.m_TextType == FeData::TextBibleString )
    {
        selectedBible = textPropDlg.m_SelectedBible;
        selectedBibleString = textPropDlg.m_SelectedBibleString;

        m_TextList->SetTextBibleName( index, selectedBible );
        m_TextList->SetTextBibleString( index, selectedBibleString );
    }
    else
    {
        hardCodedString = textPropDlg.m_HardCodedString;

        m_TextList->SetHardCodedString( index, hardCodedString );
    }

    // Update the list
    UpdateStringList();

    // Update the size
    OnTextChange();
}


void CMultiTextPropDlg::OnDeleteMultitextItem() 
{
    POSITION pos = m_StringsList.GetFirstSelectedItemPosition();
    if( pos != NULL )
    {
        int selection = m_StringsList.GetNextSelectedItem( pos );

        m_TextList->RemoveText( selection );
    
        if( m_CurrentlyShownText == selection )
        {
            m_CurrentlyShownText--;
            if( m_CurrentlyShownText < 0 )
            {
                m_CurrentlyShownText = 0;
            }
        }

        UpdateStringList();
    }
}

void CMultiTextPropDlg::OnKeydownMultiTextStrings(NMHDR* pNMHDR, LRESULT* pResult) 
{
    LV_KEYDOWN* pLVKeyDow = (LV_KEYDOWN*)pNMHDR;

    //determine if it was the delete key
    WORD key = pLVKeyDow->wVKey ;

    if( key == VK_DELETE )
    {
        OnDeleteMultitextItem();
    }

    *pResult = 0;
}

void CMultiTextPropDlg::OnShadowEnabled()
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

void CMultiTextPropDlg::OnShadowColour()
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

