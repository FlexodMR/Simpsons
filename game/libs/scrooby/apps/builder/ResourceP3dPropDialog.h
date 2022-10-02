#if !defined(AFX_RESOURCEP3DPROPDIALOG_H__B5BF6E38_C9EE_4F69_BB6A_83D2C8486883__INCLUDED_)
#define AFX_RESOURCEP3DPROPDIALOG_H__B5BF6E38_C9EE_4F69_BB6A_83D2C8486883__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ResourceP3dPropDialog.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CResourceP3dPropDialog dialog

class CResourceP3dPropDialog : public CDialog
{
// Construction
public:
    CResourceP3dPropDialog(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
    //{{AFX_DATA(CResourceP3dPropDialog)
    enum { IDD = IDD_RESOURCE_P3D_PROPERTIES };
        // NOTE: the ClassWizard will add data members here
    //}}AFX_DATA


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CResourceP3dPropDialog)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:

    // Generated message map functions
    //{{AFX_MSG(CResourceP3dPropDialog)
        // NOTE: the ClassWizard will add member functions here
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RESOURCEP3DPROPDIALOG_H__B5BF6E38_C9EE_4F69_BB6A_83D2C8486883__INCLUDED_)
