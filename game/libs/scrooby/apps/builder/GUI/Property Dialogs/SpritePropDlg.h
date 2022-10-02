/////////////////////////////////////////////////////////////////////////////
// SpritePropDlg.h : header file

#pragma once

#include "..\..\XConDoc.h"
#include "..\..\resource.h"
#include "BoxDrawingElementPropDlg.h"
#include "Strings\PCString.h"


/////////////////////////////////////////////////////////////////////////////
// CSpritePropDlg dialog

class CSpritePropDlg : public CBoxDrawingElementPropDlg
{
// Construction
public:
    CSpritePropDlg();

// Dialog Data
    //{{AFX_DATA(CSpritePropDlg)
    enum { IDD = IDD_SPRITE_PROPERTIES };
    CListBox    m_ImageResourceListBox;
    //}}AFX_DATA


    void SetSelectedImageName( PascalCString& imageName );
    void GetSelectedImageName( PascalCString& imageName );


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CSpritePropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    PascalCString m_SelectedImageName;

 //   bool m_bNameManuallyChanged;

    // Generated message map functions
    //{{AFX_MSG(CSpritePropDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnSelchangeImageResourceListBox();
    afx_msg void OnSetToImagesWidthAndHeight();
    virtual void OnOK();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

