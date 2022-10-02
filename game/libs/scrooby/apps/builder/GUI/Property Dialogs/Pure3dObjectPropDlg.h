/////////////////////////////////////////////////////////////////////////////
// CPure3dObjectPropDlg.h : header file

#pragma once

#include "..\..\XConDoc.h"
#include "..\..\resource.h"
#include "BoxDrawingElementPropDlg.h"
#include "Strings\PCString.h"


/////////////////////////////////////////////////////////////////////////////
// CPure3dObjectDlg dialog

class CPure3dObjectPropDlg : public CBoxDrawingElementPropDlg
{
// Construction
public:
    CPure3dObjectPropDlg();

// Dialog Data
    //{{AFX_DATA(CPure3dObjectPropDlg)
    enum { IDD = IDD_PURE3DOBJECT_PROPERTIES };
    CListBox    m_Pure3dFileResourceListBox;
    //}}AFX_DATA

    void SetSelectedImageName( PascalCString& imageName );
    void GetSelectedImageName( PascalCString& imageName );

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CPure3dObjectPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    PascalCString m_SelectedName;

    // Generated message map functions
    //{{AFX_MSG(CPure3dObjectPropDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnSelchangeResourceListBox();
    virtual void OnOK();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

