/////////////////////////////////////////////////////////////////////////////
// DrawingElementPropDlg.cpp : implementation file

#pragma warning( disable : 4786 )

#include "..\..\StdAfx.h"
#include "..\..\XCon.h"
#include "DrawingElementPropDlg.h"

#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\Helpers\OutputMessage.h"
#include "..\..\FeData\NamedElements\Page.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// CDrawingElementPropDlg dialog

CDrawingElementPropDlg::CDrawingElementPropDlg( UINT nIDTemplate ) : 
CDialog( nIDTemplate ),
m_Page( NULL ),
m_Type( DRAWING_ELEMENT_INVALID ),
m_OriginalName( "" )
{
    //{{AFX_DATA_INIT(CDrawingElementPropDlg)
    m_strName = _T("");
    //}}AFX_DATA_INIT
}

void CDrawingElementPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CDrawingElementPropDlg)
    DDX_Text(pDX, IDC_NAME, m_strName);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDrawingElementPropDlg, CDialog)
    //{{AFX_MSG_MAP(CDrawingElementPropDlg)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDrawingElementPropDlg message handlers

BOOL CDrawingElementPropDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();

    if( m_Page == NULL )
    {
        return FALSE;
    }

    // Disable the OK button if the page is read only
    GetDlgItem(IDOK)->EnableWindow( !m_Page->IsReadOnly() );

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}


void CDrawingElementPropDlg::SetPage( FeData::Page* page )
{
    m_Page = page;
}


void CDrawingElementPropDlg::SetName( PascalCString& name )
{
    m_strName = name;
    m_OriginalName = name;
}


void CDrawingElementPropDlg::OnOK() 
{
    UpdateData( TRUE );

    if( m_Type == DRAWING_ELEMENT_INVALID )
    {
        FeData::g_OutputMessage.Add( "CDrawingElementPropDlg::OnOK: Invalid m_Type!",
                                     FeData::DebugOutputMessage );
    }
    else
    {
        if( m_Page == NULL )
        {
            FeData::g_OutputMessage.Add( "CDrawingElementPropDlg::OnOK: m_Page is NULL!",
                                          FeData::DebugOutputMessage );
        }
        else
        {
            FeData::NameManager nameManager;
            PascalCString newName( m_strName );
            
            if( !nameManager.IsNameValid( newName ) )
            {
                MessageBox( "This name is not valid. Names can only use the characters: a-z, A-Z, 0-9, _ and SPACE." );
                return;
            }

            if( (newName != m_OriginalName) &&
                (!nameManager.IsDrawingElementNameUniqueInPage( m_Type, newName, m_Page )) )
            {
                MessageBox( "This name is already in use within the page." );
                return;
            }
        }
    }

    CDialog::OnOK();
}
