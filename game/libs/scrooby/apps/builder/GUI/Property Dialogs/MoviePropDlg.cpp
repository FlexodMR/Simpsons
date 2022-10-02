/////////////////////////////////////////////////////////////////////////////
// SpritePropDlg.cpp : implementation file

#pragma warning( disable : 4786 )

#include "..\..\StdAfx.h"
#include "MoviePropDlg.h"

#include "..\..\FeData\Helpers\ResourceManager.h"
#include "..\..\FeData\NamedElements\Page.h"
#include "..\..\FeData\Resources\MovieClip.h"
#include "..\..\FeData\ResourceFiles\ImageFile.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// CMoviePropDlg dialog

CMoviePropDlg::CMoviePropDlg() :
CBoxDrawingElementPropDlg(CMoviePropDlg::IDD)
{
    //{{AFX_DATA_INIT(CMoviePropDlg)
    //}}AFX_DATA_INIT

    m_Type = DRAWING_ELEMENT_SPRITE;
}

void CMoviePropDlg::DoDataExchange(CDataExchange* pDX)
{
    CBoxDrawingElementPropDlg::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CMoviePropDlg)
    DDX_Control(pDX, IDC_MOVIE_RESOURCE_LIST_BOX, m_MovieClipResourceListBox);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CMoviePropDlg, CBoxDrawingElementPropDlg)
    //{{AFX_MSG_MAP(CMoviePropDlg)
    ON_LBN_SELCHANGE(IDC_PURE3DFILE_RESOURCE_LIST_BOX, OnSelchangeResourceListBox)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMoviePropDlg message handlers

BOOL CMoviePropDlg::OnInitDialog() 
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
    for( i = 0; i < resMan->GetNumberOfMovieClips(); i++ )
    {
        FeData::MovieClip* movie = resMan->GetMovieClipWithoutCounting( i );
        if( movie != NULL )
        {
            m_MovieClipResourceListBox.AddString( movie->GetName() );
        }
    }

    bool foundItem = false;
    CString tempString;
    for( i = 0; (!foundItem) && (i < resMan->GetNumberOfMovieClips() ); i++ )
    {
        m_MovieClipResourceListBox.GetText( i, tempString );
        if( tempString == m_SelectedName )
        {
            m_MovieClipResourceListBox.SetCurSel( i );
            foundItem = true;
        }
    }

    if( !foundItem )
    {
        m_MovieClipResourceListBox.SetCurSel(0);
    }

    OnSelchangeResourceListBox();

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CMoviePropDlg::OnOK() 
{
    UpdateData( TRUE );

    int selection = m_MovieClipResourceListBox.GetCurSel();
    if( selection != LB_ERR )
    {
        CString tempString;
        m_MovieClipResourceListBox.GetText( selection, tempString );
        m_SelectedName = tempString;
    }

    CBoxDrawingElementPropDlg::OnOK();
}

void CMoviePropDlg::OnSelchangeResourceListBox() 
{
    UpdateData( TRUE );

    using namespace FeData;

    ResourceManager* resMan = m_Page->GetResourceManager();
    if( resMan == NULL )
    {
        return;
    }

    int selection = m_MovieClipResourceListBox.GetCurSel();
    if( selection == LB_ERR )
    {
        return;
    }

    CString tempName;
    m_MovieClipResourceListBox.GetText( selection, tempName );

    PascalCString selectionName( tempName );

    UpdateData( FALSE );
}

void CMoviePropDlg::SetSelectedImageName( PascalCString& imageName )
{
    m_SelectedName = imageName;
}

void CMoviePropDlg::GetSelectedImageName( PascalCString& imageName )
{
    imageName = m_SelectedName;
}
