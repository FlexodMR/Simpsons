/////////////////////////////////////////////////////////////////////////////
// PrimPropDlg.cpp : implementation file

#pragma warning( disable : 4786 )

#include "..\..\StdAfx.h"
#include "..\..\XCon.h"
#include "..\..\XConDoc.h"    //needed forCDirectoryMgr
#include "PrimPropDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

const int g_MaxSizeX = 10000;
const int g_MaxSizeY = 10000;
const int g_MinSizeX = -10000;
const int g_MinSizeY = -10000;

/////////////////////////////////////////////////////////////////////////////
// CPrimPropDlg dialog

CPrimPropDlg::CPrimPropDlg() : 
CDrawingElementPropDlg(CPrimPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CPrimPropDlg)
    m_nTranslucent = -1;
    //}}AFX_DATA_INIT

    m_Type = DRAWING_ELEMENT_POLYGON;
}

void CPrimPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDrawingElementPropDlg::DoDataExchange(pDX);

    //{{AFX_DATA_MAP(CPrimPropDlg)
    DDX_CBIndex(pDX, IDC_TRANSLUCENT, m_nTranslucent);
    //}}AFX_DATA_MAP

    for (int i = 0; i < 4; i++)
    {
        DDX_Control(pDX, IDC_COLOR_1+i, m_wndColor[i]);
        if (pDX->m_bSaveAndValidate)
        {
            CString str;
            GetDlgItem(IDC_POSX_1+i)->GetWindowText(str);
            if (str.GetLength())
            {
                DDX_Text(pDX, IDC_POSX_1+i, m_nPosX[i]);
                DDV_MinMaxInt(pDX, m_nPosX[i], g_MinSizeX, g_MaxSizeX);
            }
            else
            {
                m_nPosX[i] = -1;
            }

            GetDlgItem(IDC_POSY_1+i)->GetWindowText(str);
            if (str.GetLength())
            {
                DDX_Text(pDX, IDC_POSY_1+i, m_nPosY[i]);
                DDV_MinMaxInt(pDX, m_nPosY[i], g_MinSizeY, g_MaxSizeY);
            }
            else
            {
                m_nPosY[i] = -1;
            }

            GetDlgItem(IDC_ALPHA_1+i)->GetWindowText(str);
            if (str.GetLength())
            {
                DDX_Text(pDX, IDC_ALPHA_1+i, m_nAlpha[i]);
                DDV_MinMaxInt(pDX, m_nAlpha[i], 0, 255);
            }
            else
            {
                m_nAlpha[i] = 0;
            }
        }
        else
        {
            if (m_nPosX[i] != -1)
            {
                DDX_Text(pDX, IDC_POSX_1+i, m_nPosX[i]);
            }
            if (m_nPosY[i] != -1)
            {
                DDX_Text(pDX, IDC_POSY_1+i, m_nPosY[i]);
            }
            DDX_Text(pDX, IDC_ALPHA_1+i, m_nAlpha[i]);
        }
    }
}

BEGIN_MESSAGE_MAP(CPrimPropDlg, CDrawingElementPropDlg)
    //{{AFX_MSG_MAP(CPrimPropDlg)
    ON_BN_CLICKED(IDC_SETFLAT, OnSetFlat)
    //}}AFX_MSG_MAP
    ON_CONTROL_RANGE(BN_CLICKED, IDC_COLOR_1, IDC_COLOR_4, OnColor)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPrimPropDlg message handlers

BOOL CPrimPropDlg::OnInitDialog() 
{
    CDrawingElementPropDlg::OnInitDialog();
    
    for (int i = 0; i < 4; i++)
    {
        m_wndColor[i].m_pClr = &m_clr[i];
    }
    
    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CPrimPropDlg::OnColor(UINT nID) 
{
    int nIndex = nID - IDC_COLOR_1;
    CColorDialog dlg(m_clr[nIndex], CC_FULLOPEN);
    if (dlg.DoModal() != IDOK)
        return;

    m_clr[nIndex] = dlg.GetColor();
    m_wndColor[nIndex].Invalidate();
}

void CPrimPropDlg::OnSetFlat() 
{
    for (int i = 1; i < 4; i++)
    {
        m_clr[i] = m_clr[0];
        m_wndColor[i].Invalidate();
    }
}

