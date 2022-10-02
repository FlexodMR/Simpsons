/////////////////////////////////////////////////////////////////////////////
// PrimPropDlg.h : header file

#pragma once

#include "..\..\resource.h"
#include "Strings\PCString.h"
#include "..\..\DlgProp.h"

#include "DrawingElementPropDlg.h"


/////////////////////////////////////////////////////////////////////////////
// CPrimPropDlg dialog

class CPrimPropDlg : public CDrawingElementPropDlg
{
// Construction
public:
    CPrimPropDlg();

// Dialog Data
    //{{AFX_DATA(CPrimPropDlg)
    enum { IDD = IDD_PRIM_PROPERTIES };
    int        m_nTranslucent;
    //}}AFX_DATA

    CColorWnd    m_wndColor[4];
    int    m_nPosX[4];
    int    m_nPosY[4];
    COLORREF m_clr[4];
    int m_nAlpha[4];

    CSize m_size;

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CPrimPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CPrimPropDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnSetFlat();
    //}}AFX_MSG
    afx_msg void OnColor(UINT nID);
    DECLARE_MESSAGE_MAP()
};
