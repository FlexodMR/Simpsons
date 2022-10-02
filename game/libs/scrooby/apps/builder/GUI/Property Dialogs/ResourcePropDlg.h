#if !defined(AFX_RESOURCEPROPDLG_H__5F78225D_1B8D_426F_8422_C18D587BC86F__INCLUDED_)
#define AFX_RESOURCEPROPDLG_H__5F78225D_1B8D_426F_8422_C18D587BC86F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ResourcePropDlg.h : header file
//

namespace FeData
{
    class Resource;
};

/////////////////////////////////////////////////////////////////////////////
// CResourcePropDlg dialog

class CResourcePropDlg : public CDialog
{
// Construction
public:
    CResourcePropDlg
    (
        FeData::Resource* resource, 
        FeData::Page* page, 
        UINT nIDTemplate = CResourcePropDlg::IDD,
        CWnd* pParent = NULL
    );   // standard constructor

// Dialog Data
    //{{AFX_DATA(CResourcePropDlg)
    enum { IDD = IDD_RESOURCE_PROPERTIES };
    CString    m_ResourceName;
    CString    m_FileName;
    CString m_InventoryName;
    //}}AFX_DATA


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CResourcePropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:

    // Generated message map functions
    //{{AFX_MSG(CResourcePropDlg)
    afx_msg void OnBrowse();
    virtual void OnOK();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()

    FeData::Resource* m_Resource;
    FeData::Page* m_Page;
    FeData::ResourceFile* m_ResourceFile;
    CString m_OldFileName;
    CString m_OldResourceName;
    CString m_OldInventoryName;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RESOURCEPROPDLG_H__5F78225D_1B8D_426F_8422_C18D587BC86F__INCLUDED_)
