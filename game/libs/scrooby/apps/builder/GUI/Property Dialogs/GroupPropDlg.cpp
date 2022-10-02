// GroupPropDlg.cpp : implementation file
//

#include "..\..\stdafx.h"
#include "..\..\xcon.h"
#include "..\..\FeData\NamedElements\Group.h"

#include "GroupPropDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CGroupPropDlg dialog


CGroupPropDlg::CGroupPropDlg(FeData::Group* group, CWnd* pParent /*=NULL*/)
    : CDrawingElementPropDlg(CGroupPropDlg::IDD)
{
    //{{AFX_DATA_INIT(CGroupPropDlg)
    m_Alpha = 0;
    //}}AFX_DATA_INIT

    m_Type = DRAWING_ELEMENT_GROUP;
    m_Group = group;

    SetName( (PascalCString)group->GetName() );
    m_OldName = m_strName;

    m_Alpha = group->GetAlpha();
    m_OldAlpha = m_Alpha;
}


void CGroupPropDlg::DoDataExchange(CDataExchange* pDX)
{
    CDrawingElementPropDlg::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CGroupPropDlg)
    DDX_Text(pDX, IDC_ALPHA, m_Alpha);
    DDV_MinMaxUInt(pDX, m_Alpha, 0, 255);
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CGroupPropDlg, CDrawingElementPropDlg)
    //{{AFX_MSG_MAP(CGroupPropDlg)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CGroupPropDlg message handlers

void CGroupPropDlg::OnOK() 
{
    using namespace FeData;

    CDrawingElementPropDlg::OnOK();

    if( m_OldName != (CString)m_strName ) 
    {
        m_Group->SetName( (PascalCString)m_strName );
    }

    if( m_OldAlpha != m_Alpha )
    {
        m_Group->SetAlpha( m_Alpha );
    }
}
