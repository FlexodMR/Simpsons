/////////////////////////////////////////////////////////////////////////////
// DrawingElementPropDlg.h : header file

#pragma once

#include "..\..\XConDoc.h"
#include "..\..\resource.h"
#include "Strings\PCString.h"


namespace FeData
{
    class Page;
}


/////////////////////////////////////////////////////////////////////////////
// CDrawingElementPropDlg dialog

class CDrawingElementPropDlg : public CDialog
{
// Construction
public:
    CDrawingElementPropDlg( UINT nIDTemplate );

// Dialog Data
    //{{AFX_DATA(CDrawingElementPropDlg)
    CString    m_strName;
    //}}AFX_DATA

    void SetPage( FeData::Page* page );
    void SetName( PascalCString& name );


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CDrawingElementPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    FeData::Page* m_Page;
    DrawingElementsEnum m_Type;
    PascalCString m_OriginalName;

    // Generated message map functions
    //{{AFX_MSG(CDrawingElementPropDlg)
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

