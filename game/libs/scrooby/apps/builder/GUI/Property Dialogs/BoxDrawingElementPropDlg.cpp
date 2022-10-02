/////////////////////////////////////////////////////////////////////////////
// BoxDrawingElementPropDlg.cpp : implementation file

#pragma warning( disable : 4786 )

#include "..\..\StdAfx.h"
#include "BoxDrawingElementPropDlg.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


enum AlignValuesEnum
{
    ALIGN_TOP_LEFT,
    ALIGN_TOP_CENTER,
    ALIGN_TOP_RIGHT,
    ALIGN_CENTER_LEFT,
    ALIGN_CENTER_CENTER,
    ALIGN_CENTER_RIGHT,
    ALIGN_BOTTOM_LEFT,
    ALIGN_BOTTOM_CENTER,
    ALIGN_BOTTOM_RIGHT
};


/////////////////////////////////////////////////////////////////////////////
// CBoxDrawingElementPropDlg dialog

CBoxDrawingElementPropDlg::CBoxDrawingElementPropDlg( UINT nIDTemplate ) :
CDrawingElementPropDlg(nIDTemplate)
{
    //{{AFX_DATA_INIT(CBoxDrawingElementPropDlg)
    m_nHeight = 0;
    m_nWidth = 0;
    m_fPosX = 0.0f;
    m_fPosY = 0.0f;
    m_AlignValue = -1;
    m_Red = 55;
    m_Green = 55;
    m_Blue = 55;
    m_Alpha = 55;
    //}}AFX_DATA_INIT
}


void CBoxDrawingElementPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDrawingElementPropDlg::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CBoxDrawingElementPropDlg)
    DDX_Text(pDX, IDC_HEIGHT, m_nHeight);
    DDV_MinMaxUInt(pDX, m_nHeight, 1, 10000);
    DDX_Text(pDX, IDC_WIDTH, m_nWidth);
    DDV_MinMaxUInt(pDX, m_nWidth, 1, 10000);
    DDX_Text(pDX, IDC_XPOS, m_fPosX);
    DDX_Text(pDX, IDC_YPOS, m_fPosY);
    DDX_Radio(pDX, IDC_ALIGN_TOP_LEFT, m_AlignValue);
    DDX_Text(pDX, IDC_ALPHA, m_Alpha);
    DDV_MinMaxUInt(pDX, m_Alpha, 0, 255);
    DDX_Control(pDX, IDC_COLOR, m_wndColor);
     //}}AFX_DATA_MAP

}


BEGIN_MESSAGE_MAP(CBoxDrawingElementPropDlg, CDrawingElementPropDlg)
    //{{AFX_MSG_MAP(CBoxDrawingElementPropDlg)
    //}}AFX_MSG_MAP
    ON_CONTROL(BN_CLICKED, IDC_COLOR, OnColor)
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CBoxDrawingElementPropDlg message handlers

BOOL CBoxDrawingElementPropDlg::OnInitDialog() 
{
    CDrawingElementPropDlg::OnInitDialog();

    m_color = RGB( m_Red, m_Green, m_Blue );
    m_wndColor.m_pClr = &m_color;

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}


void CBoxDrawingElementPropDlg::OnOK() 
{
    m_Red = (( m_color ) & 0xff);
    m_Green = ((( m_color ) >> 8) & 0xff); 
    m_Blue = ((( m_color ) >> 16) & 0xff);

    CDrawingElementPropDlg::OnOK();
}


void CBoxDrawingElementPropDlg::SetJustification( FeData::JustificationEnum horizontal,
                                       FeData::JustificationEnum vertical )
{
    if( vertical == FeData::Top )
    {
        if( horizontal == FeData::Left )
        {
            m_AlignValue = ALIGN_TOP_LEFT;
        }
        else if( horizontal == FeData::Center )
        {
            m_AlignValue = ALIGN_TOP_CENTER;
        }
        else
        {
            m_AlignValue = ALIGN_TOP_RIGHT;
        }
    }
    else if( vertical == FeData::Center )
    {
        if( horizontal == FeData::Left )
        {
            m_AlignValue = ALIGN_CENTER_LEFT;
        }
        else if( horizontal == FeData::Center )
        {
            m_AlignValue = ALIGN_CENTER_CENTER;
        }
        else
        {
            m_AlignValue = ALIGN_CENTER_RIGHT;
        }
    }
    else
    {
        if( horizontal == FeData::Left )
        {
            m_AlignValue = ALIGN_BOTTOM_LEFT;
        }
        else if( horizontal == FeData::Center )
        {
            m_AlignValue = ALIGN_BOTTOM_CENTER;
        }
        else
        {
            m_AlignValue = ALIGN_BOTTOM_RIGHT;
        }
    }
}


FeData::JustificationEnum CBoxDrawingElementPropDlg::GetJustificationHorizontal()
{
    switch( m_AlignValue )
    {
        case ALIGN_TOP_LEFT:
        case ALIGN_CENTER_LEFT:
        case ALIGN_BOTTOM_LEFT:
        {
            return FeData::Left;
        }

        case ALIGN_TOP_CENTER:
        case ALIGN_CENTER_CENTER:
        case ALIGN_BOTTOM_CENTER:
        {
            return FeData::Center;
        }

        case ALIGN_TOP_RIGHT:
        case ALIGN_CENTER_RIGHT:
        case ALIGN_BOTTOM_RIGHT:
        {
            return FeData::Right;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "CBoxDrawingElementPropDlg::GetJustificationHorizontal: Invalid alignment!",
                                         FeData::DebugOutputMessage );
            return FeData::Center;
        }
    }
}


FeData::JustificationEnum CBoxDrawingElementPropDlg::GetJustificationVertical()
{
    switch( m_AlignValue )
    {
        case ALIGN_TOP_LEFT:
        case ALIGN_TOP_CENTER:
        case ALIGN_TOP_RIGHT:
        {
            return FeData::Top;
        }

        case ALIGN_CENTER_LEFT:
        case ALIGN_CENTER_CENTER:
        case ALIGN_CENTER_RIGHT:
        {
            return FeData::Center;
        }

        case ALIGN_BOTTOM_LEFT:
        case ALIGN_BOTTOM_RIGHT:
        case ALIGN_BOTTOM_CENTER:
        {
            return FeData::Bottom;
        }

        default:
        {
            FeData::g_OutputMessage.Add( "CBoxDrawingElementPropDlg::GetJustificationHorizontal: Invalid alignment!",
                                         FeData::DebugOutputMessage );
            return FeData::Center;
        }
    }
}

void CBoxDrawingElementPropDlg::OnColor() 
{
    CColorDialog dlg(m_color, CC_FULLOPEN);
    if (dlg.DoModal() != IDOK)
        return;

    m_color = dlg.GetColor();
    m_wndColor.Invalidate();
}
