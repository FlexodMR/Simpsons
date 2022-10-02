// LayerPropDlg.cpp : implementation file
//

#include "..\..\stdafx.h"
#include "..\..\xcon.h"
#include "..\..\FeData\NamedElements\Layer.h"
#include "..\..\FeData\Helpers\NameManager.h"
#include "..\..\FeData\NamedElements\Page.h"

#include "LayerPropDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// CLayerPropDlg dialog


CLayerPropDlg::CLayerPropDlg(FeData::Layer* layer, FeData::Page* page, CWnd* pParent /*=NULL*/)
    : CDialog(CLayerPropDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CLayerPropDlg)
    m_Alpha = 0;
    m_strName = _T("");
    //}}AFX_DATA_INIT

    m_Layer = layer;
    m_Page = page;

    m_strName = layer->GetName();
    m_OldName = m_strName;

    m_Alpha = layer->GetAlpha();
    m_OldAlpha = m_Alpha;
}



void CLayerPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CLayerPropDlg)
    DDX_Text(pDX, IDC_ALPHA, m_Alpha);
    DDV_MinMaxUInt(pDX, m_Alpha, 0, 255);
    DDX_Text(pDX, IDC_NAME, m_strName);
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CLayerPropDlg, CDialog)
    //{{AFX_MSG_MAP(CLayerPropDlg)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CLayerPropDlg message handlers

void CLayerPropDlg::OnOK() 
{
    using namespace FeData;

    UpdateData();

    if( m_OldName != m_strName )
    {
        NameManager nameManager;

        PascalCString newName( m_strName );

        if( !nameManager.IsNameValid( newName ) )
        {
            MessageBox( "This name is not valid. Names can only use the characters: a-z, A-Z, 0-9, _ and SPACE." );
            return;
        }

        if( nameManager.IsLayerNameUnique( (PascalCString)m_strName, m_Page ) )
        {
            m_Layer->SetName( (PascalCString)m_strName );
        }
        else
        {
            g_OutputMessage.Add( "The chosen name is already being used by another object of the same type.",
                                 WarningOutputMessage );
            return;
        }

    }

    if( m_OldAlpha != m_Alpha )
    {
        m_Layer->SetAlpha( m_Alpha );
    }

    CDialog::OnOK();
}
