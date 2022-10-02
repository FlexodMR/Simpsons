/////////////////////////////////////////////////////////////////////////////
// CMoviePropDlg.h : header file

#pragma once

#include "..\..\XConDoc.h"
#include "..\..\resource.h"
#include "BoxDrawingElementPropDlg.h"
#include "Strings\PCString.h"


/////////////////////////////////////////////////////////////////////////////
// CPure3dObjectDlg dialog

class CMoviePropDlg : public CBoxDrawingElementPropDlg
{
// Construction
public:
    CMoviePropDlg();

// Dialog Data
    //{{AFX_DATA(CMoviePropDlg)
    enum { IDD = IDD_MOVIE_PROPERTIES };
    CListBox    m_MovieClipResourceListBox;
    //}}AFX_DATA

    void SetSelectedImageName( PascalCString& imageName );
    void GetSelectedImageName( PascalCString& imageName );

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMoviePropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    PascalCString m_SelectedName;

    // Generated message map functions
    //{{AFX_MSG(CMoviePropDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnSelchangeResourceListBox();
    virtual void OnOK();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

