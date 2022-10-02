//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Scrooby Builder 
//
// Description: The implementation for functions stemming from the MultiSprite
//                dialog box
//
// Authors:     Ian Gipson, Ryan Bedard
//
// Revisions        Date        Author    Revision
//                    00/06/28    IJG        Created
//                  00/06/29    RMB     Update
//
//===========================================================================

#include "../../stdafx.h"

#include <assert.h>
#include "../../FeData/NamedElements/page.h"
#include "../../FeData/Resources/Image.h"
#include "../../FeData/ResourceFiles/ImageFile.h"
#include "MultiSpritePropDlg.h"
#include "../../xcon.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMultiSpritePropDlg dialog


//===========================================================================
// CMultiSpritePropDlg::CMultiSpritePropDlg(CWnd* pParent )
//===========================================================================
// Description: Constructor for the dialog box
//
// Constraints:    ??
//
// Parameters:    ??
//
// Return:      ??
//
//===========================================================================
CMultiSpritePropDlg::CMultiSpritePropDlg(CWnd* pParent /*=NULL*/)
    : CBoxDrawingElementPropDlg( CMultiSpritePropDlg::IDD )
{
    //{{AFX_DATA_INIT(CMultiSpritePropDlg)
        // NOTE: the ClassWizard will add member initialization here
    //}}AFX_DATA_INIT

    m_Type = DRAWING_ELEMENT_MULTI_SPRITE;

    m_CurrentlyShownImage = 0;

    m_pDragImage = NULL; 
    //m_pDragImage = new CImageList;
    m_bDragging = FALSE;
}


CMultiSpritePropDlg::~CMultiSpritePropDlg()
{
    if( m_pDragImage != NULL )
    {
        delete m_pDragImage;
        m_pDragImage = NULL;
    }
}


//===========================================================================
// void CMultiSpritePropDlg::DoDataExchange(CDataExchange* pDX)
//===========================================================================
// Description: Does the data exchange for the dialog box
//
// Constraints:    ??
//
// Parameters:    ??
//
// Return:      ??
//
//===========================================================================
void CMultiSpritePropDlg::DoDataExchange(CDataExchange* pDX)
{
    CBoxDrawingElementPropDlg::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CMultiSpritePropDlg)
    DDX_Control(pDX, IDC_CHOSEN_IMAGE_LIST_BOX, m_ChosenImageListBox);
        DDX_Control(pDX, IDC_IMAGE_RESOURCE_LIST_BOX, m_ImageResourceListBox);
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CMultiSpritePropDlg, CBoxDrawingElementPropDlg)
    //{{AFX_MSG_MAP(CMultiSpritePropDlg)
    ON_LBN_SELCHANGE(IDC_IMAGE_RESOURCE_LIST_BOX, OnSelchangeImageResourceListBox)
    ON_BN_CLICKED(IDC_SET_TO_IMAGES_WIDTH_AND_HEIGHT, OnSetToImagesWidthAndHeight)
    ON_LBN_DBLCLK(IDC_IMAGE_RESOURCE_LIST_BOX, OnDblclkImageResourceListBox)
    ON_NOTIFY(LVN_KEYDOWN, IDC_CHOSEN_IMAGE_LIST_BOX, OnKeydownChosenImageListBox)
    ON_BN_CLICKED(IDC_DELETE_MULTISPRITE_ITEM, OnDeleteMultiSpriteItem)
    ON_NOTIFY(NM_DBLCLK, IDC_CHOSEN_IMAGE_LIST_BOX, OnDblclkChosenImageListBox)
    ON_NOTIFY(LVN_BEGINDRAG, IDC_CHOSEN_IMAGE_LIST_BOX, OnBegindragChosenImageListBox)
    ON_EN_KILLFOCUS(IDC_HEIGHT, OnSelchangeImageResourceListBox)
    ON_EN_KILLFOCUS(IDC_WIDTH, OnSelchangeImageResourceListBox)
    ON_WM_MOUSEMOVE()
    ON_WM_LBUTTONUP()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMultiSpritePropDlg message handlers

//===========================================================================
// BOOL CMultiSpritePropDlg::OnInitDialog() 
//===========================================================================
// Description: Called to set up the dialog when first displayed
//
// Constraints:    ??
//
// Parameters:    NONE
//
// Return:      TRUE/FALSE was everything OK?
//
//===========================================================================
BOOL CMultiSpritePropDlg::OnInitDialog() 
{
    CBoxDrawingElementPropDlg::OnInitDialog();

    //if we're on a bad page, then quit
    if( m_Page == NULL )
    {
        return false;
    }

    //if there's no resource manager then quit
    FeData::ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return false;
    }

    //get all the images out of the resource manager, and put them into the resource list box
    int i;
    for( i = 0; i < resMan->GetNumberOfImages(); i++ )
    {
        FeData::Image* image = resMan->GetImageWithoutCounting( i );
        if( image != NULL )
        {
            m_ImageResourceListBox.AddString( image->GetName() );
        }
    }

    //
    // Set up the chosen image list box list
    //

    // Set the list style
    m_ChosenImageListBox.SetExtendedStyle
    ( 
        LVS_EX_FULLROWSELECT | 
        LVS_EX_ONECLICKACTIVATE | 
        LVS_EX_GRIDLINES 
    );

    m_ImageList.Create( 16, 16, ILC_COLOR4 | ILC_MASK, 1, 1 );
    
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_MULTISPIRTE_IMAGE ) );
    m_ImageList.Add( AfxGetApp()->LoadIcon( IDI_MULTISPRITE_IMAGE_SELECTED ) );

    CRect listRect;
    m_ChosenImageListBox.GetWindowRect( listRect );
    int cx = ( listRect.Width() - 4 );

    m_ChosenImageListBox.SetImageList( &m_ImageList, LVSIL_SMALL );
    m_ChosenImageListBox.InsertColumn(0, "Resource Name", LVCFMT_LEFT, cx );

    //the selection has changed, update appropriately
    OnSelchangeImageResourceListBox();
    this->RefreshDialog();

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

//===========================================================================
// void CMultiSpritePropDlg::OnOK() 
//===========================================================================
// Description: user selected OK, put the dialog's selections into effect
//
// Constraints:    ??
//
// Parameters:    ??
//
// Return:      ??
//
//===========================================================================
void CMultiSpritePropDlg::OnOK() 
{
    UpdateData( TRUE );

    int selection = m_ImageResourceListBox.GetCurSel();
    if( selection != LB_ERR )
    {
        CString tempString;
        m_ImageResourceListBox.GetText( selection, tempString );
//        m_SelectedImageName = tempString;
    }

    CBoxDrawingElementPropDlg::OnOK();
}

//===========================================================================
// void CMultiSpritePropDlg::OnSelchangeImageResourceListBox() 
//===========================================================================
// Description: called if the selection changes in the window
//
// Constraints:    ??
//
// Parameters:    ??
//
// Return:      ??
//
//===========================================================================
void CMultiSpritePropDlg::OnSelchangeImageResourceListBox() 
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


//===========================================================================
// void CMultiSpritePropDlg::OnSetToImagesWidthAndHeight
//===========================================================================
// Description: parses the Continue record
//
// Constraints:    ??
//
// Parameters:    ??
//
// Return:      ??
//
//===========================================================================
void CMultiSpritePropDlg::OnSetToImagesWidthAndHeight() 
{
    using namespace FeData;

    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return;
    }

    int maxWidth = 0;
    int maxHeight = 0;

    int i = 0;
    int size = this->m_SelectedImageNames.size();
    for( i = 0; i < size; i++ )
    {
        PascalCString imageName = this->m_SelectedImageNames[ i ];
        Image* image = resMan->GetImageWithoutCounting( imageName );
        if( image != NULL )
        {
            ImageFile* imageFile = dynamic_cast<ImageFile*>( image->GetResourceFile() );
            if( imageFile != NULL )
            {
                int width = imageFile->GetWidth();
                int height = imageFile->GetHeight();
                if( width > maxWidth )
                {
                    maxWidth = width;
                }
                if( height > maxHeight )
                {
                    maxHeight = height;
                }
            }
        }
    }
    UpdateData( TRUE );
    this->m_nWidth = maxWidth;
    this->m_nHeight = maxHeight;
    UpdateData( FALSE );
}

//===========================================================================
// void CMultiSpritePropDlg::OnDblclkImageResourceListBox() 
//===========================================================================
// Description: handles a double click on the name of an image resource
//
// Constraints:    ??
//
// Parameters:    ??
//
// Return:      ??
//
//===========================================================================
void CMultiSpritePropDlg::OnDblclkImageResourceListBox() 
{
    //figure out which item in the list box was double clicked on
    int selectionNumber = this->m_ImageResourceListBox.GetCurSel();

    //figure out the name of this item
    CString tempString;
    m_ImageResourceListBox.GetText( selectionNumber, tempString );
    PascalCString imageName( tempString );

    //add the new name to the bottom of the list of names
    this->m_SelectedImageNames.push_back( imageName );

    //cause the dialog to be updated
    RefreshDialog();
}

//===========================================================================
// void CMultiSpritePropDlg::RefreshDialog();
//===========================================================================
// Description: Refreshes the dialog box with all the up to date data
//
// Constraints:    NONE
//
// Parameters:    NONE
//
// Return:      NONE
//
//===========================================================================
void CMultiSpritePropDlg::RefreshDialog()
{
    // Make sure we have the correct number of rows
    while( m_SelectedImageNames.size() < m_ChosenImageListBox.GetItemCount() )
    {
        m_ChosenImageListBox.DeleteItem( 0 );
    }

    while( m_SelectedImageNames.size() > m_ChosenImageListBox.GetItemCount() )
    {
        m_ChosenImageListBox.InsertItem( 0, "", 0 );
    }


    // Update the list of names
    int i = 0;
    for( i = 0; i < this->m_SelectedImageNames.size(); i++ )
    {
        // Update the image
        if( i == m_CurrentlyShownImage )
        {
            m_ChosenImageListBox.SetItem( i, 0, LVIF_IMAGE, NULL, 1, 0, 0, 0 );
        }
        else
        {
            m_ChosenImageListBox.SetItem( i, 0, LVIF_IMAGE, NULL, 0, 0, 0, 0 );
        }

        PascalCString imageName = this->m_SelectedImageNames[ i ];
        m_ChosenImageListBox.SetItemText( i, 0, imageName );
    }

    this->UpdateData( FALSE );
}


void CMultiSpritePropDlg::OnKeydownChosenImageListBox(NMHDR* pNMHDR, LRESULT* pResult) 
{
    LV_KEYDOWN* pLVKeyDow = (LV_KEYDOWN*)pNMHDR;

    //determine if it was the delete key
    WORD key = pLVKeyDow->wVKey ;

    if( key == VK_DELETE )
    {
        OnDeleteMultiSpriteItem();
    }
    *pResult = 0;
}


void CMultiSpritePropDlg::OnDeleteMultiSpriteItem() 
{
    //determine the current selection
    POSITION pos = this->m_ChosenImageListBox.GetFirstSelectedItemPosition();
    if( pos != NULL )
    {
        int selectionNumber = this->m_ChosenImageListBox.GetNextSelectedItem( pos );
        std::vector< PascalCString >::iterator it = this->m_SelectedImageNames.begin() ;
        it += selectionNumber ;
        this->m_SelectedImageNames.erase( it ) ;

        if( m_CurrentlyShownImage == selectionNumber )
        {
            m_CurrentlyShownImage--;
            if( m_CurrentlyShownImage < 0 )
            {
                m_CurrentlyShownImage = 0;
            }
        }

        RefreshDialog();
    }
}


void CMultiSpritePropDlg::OnDblclkChosenImageListBox(NMHDR* pNMHDR, LRESULT* pResult) 
{
    POSITION pos = m_ChosenImageListBox.GetFirstSelectedItemPosition();
    if( pos != NULL )
    {
        m_CurrentlyShownImage = m_ChosenImageListBox.GetNextSelectedItem( pos );
        RefreshDialog();
    }

    *pResult = 0;
}


void CMultiSpritePropDlg::OnBegindragChosenImageListBox(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_LISTVIEW* pNMListView = (NM_LISTVIEW*)pNMHDR;

    //RECORD THE INDEX OF THE ITEM BEIGN DRAGGED AS m_nDragIndex
    m_nDragIndex = pNMListView->iItem;

    //CREATE A DRAG IMAGE FROM THE CENTER POINT OF THE ITEM IMAGE
    POINT pt;
    pt.x = 8;
    pt.y = 8;
    m_pDragImage = m_ChosenImageListBox.CreateDragImage(m_nDragIndex, &pt);
    m_pDragImage->BeginDrag(0, CPoint (8, 8));
    m_pDragImage->DragEnter( GetDesktopWindow(), pNMListView->ptAction );

    //SET THE FLAGS INDICATING A DRAG IN PROGRESS
    m_bDragging = TRUE;
    m_pDropWnd = NULL;
    m_nDropIndex = -1;
    m_pDropWnd = &m_ChosenImageListBox;

    //CAPTURE ALL MOUSE MESSAGES IN CASE THE USER DRAGS OUTSIDE OF THE VIEW
    SetCapture();

    *pResult = 0;
}


void CMultiSpritePropDlg::OnMouseMove(UINT nFlags, CPoint point) 
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


void CMultiSpritePropDlg::OnLButtonUp(UINT nFlags, CPoint point) 
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
        if( m_pDropWnd == &m_ChosenImageListBox )
        {
            DropItemOnList();
        }
    }

    CBoxDrawingElementPropDlg::OnLButtonUp(nFlags, point);
}


void CMultiSpritePropDlg::DropItemOnList()
{
    //GET THE DROP INDEX
    m_ptDropPoint.y += 10;
    m_nDropIndex = m_ChosenImageListBox.HitTest(m_ptDropPoint);


    // Make sure our indexs are valid
    if( (m_nDragIndex < 0) || (m_nDragIndex >= m_SelectedImageNames.size()) ||
        (m_nDropIndex   < 0) || (m_nDropIndex >= m_SelectedImageNames.size()) )
    {
        return;
    }

    int fromIndex = m_nDragIndex;
    int toIndex = m_nDropIndex;

    // Make sure we really have to move the element
    if( fromIndex == toIndex )
    {
        return;
    }

    // Are we moving up or down
    if( fromIndex > toIndex )
    {
        // Going up
        while( fromIndex != toIndex )
        {
            PascalCString temp = m_SelectedImageNames[ fromIndex - 1];
            m_SelectedImageNames[ fromIndex - 1] = m_SelectedImageNames[ fromIndex ];
            m_SelectedImageNames[ fromIndex ] = temp;

            fromIndex--;
        }
    }
    else
    {
        // Going down
        while( fromIndex != toIndex )
        {
            PascalCString temp = m_SelectedImageNames[ fromIndex + 1];
            m_SelectedImageNames[ fromIndex + 1] = m_SelectedImageNames[ fromIndex ];
            m_SelectedImageNames[ fromIndex ] = temp;

            fromIndex++;
        }
    }  // if


    // Update the selection
    if( m_nDragIndex == m_CurrentlyShownImage )
    {
        m_CurrentlyShownImage = m_nDropIndex;
    }
    else if( (m_nDragIndex < m_CurrentlyShownImage) && 
             (m_nDropIndex < m_CurrentlyShownImage) )
    {
        // Do nothing
    }
    else if( (m_nDragIndex > m_CurrentlyShownImage) && 
             (m_nDropIndex > m_CurrentlyShownImage) )
    {
        // Do nothing
    }
    else if( m_nDragIndex < m_nDropIndex )
    {
        m_CurrentlyShownImage--;
    }
    else if( m_nDragIndex > m_nDropIndex )
    {
        m_CurrentlyShownImage++;
    }
        
    RefreshDialog();
}
