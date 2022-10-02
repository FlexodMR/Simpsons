#if !defined(AFX_GROUPPROPDLG_H__5DE6D2BF_5561_4A65_8824_1199C4E1E086__INCLUDED_)
#define AFX_GROUPPROPDLG_H__5DE6D2BF_5561_4A65_8824_1199C4E1E086__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// GroupPropDlg.h : header file
//

#include "DrawingElementPropDlg.h"

/////////////////////////////////////////////////////////////////////////////
// CGroupPropDlg dialog

class CGroupPropDlg : public CDrawingElementPropDlg
{
// Construction
public:
    CGroupPropDlg(FeData::Group* group, CWnd* pParent = NULL);   // standard constructor

// Dialog Data
    //{{AFX_DATA(CGroupPropDlg)
    enum { IDD = IDD_GROUP_PROPERTIES };
    UINT    m_Alpha;
    //}}AFX_DATA


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CGroupPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    
    FeData::Group* m_Group;
    CString m_OldName;
    UINT m_OldAlpha;

    // Generated message map functions
    //{{AFX_MSG(CGroupPropDlg)
    virtual void OnOK();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_GROUPPROPDLG_H__5DE6D2BF_5561_4A65_8824_1199C4E1E086__INCLUDED_)
