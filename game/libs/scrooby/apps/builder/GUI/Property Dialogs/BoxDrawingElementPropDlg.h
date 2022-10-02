/////////////////////////////////////////////////////////////////////////////
// BoxDrawingElementPropDlg.h : header file

#pragma once

#include "..\..\DlgProp.h"
#include "..\..\resource.h"
#include "DrawingElementPropDlg.h"

#include "Strings\PCString.h"

#include "..\..\FeData\Helpers\EnumConversion.h"


/////////////////////////////////////////////////////////////////////////////
// CBoxDrawingElementPropDlg dialog

class CBoxDrawingElementPropDlg : public CDrawingElementPropDlg
{
// Construction
public:
    CBoxDrawingElementPropDlg( UINT nIDTemplate );

// Dialog Data
    //{{AFX_DATA(CBoxDrawingElementPropDlg)
    UINT    m_nHeight;
    UINT    m_nWidth;
    int        m_AlignValue;
    float    m_fPosX;
    float    m_fPosY;
    UINT     m_Red;
    UINT     m_Green;
    UINT     m_Blue;
    UINT     m_Alpha;
    //}}AFX_DATA

    CColorWnd m_wndColor;
    COLORREF m_color;

    void SetJustification( FeData::JustificationEnum horizontal,
                           FeData::JustificationEnum vertical );

    FeData::JustificationEnum GetJustificationHorizontal();
    FeData::JustificationEnum GetJustificationVertical();

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CBoxDrawingElementPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:

    // Generated message map functions
    //{{AFX_MSG(CBoxDrawingElementPropDlg)
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    //}}AFX_MSG
    afx_msg void OnColor();
    DECLARE_MESSAGE_MAP()
};

