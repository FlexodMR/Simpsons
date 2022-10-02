#if !defined(AFX_PARAMREFDLG_H__B3AC2487_F176_49D0_A5C4_3E53C61A884E__INCLUDED_)
#define AFX_PARAMREFDLG_H__B3AC2487_F176_49D0_A5C4_3E53C61A884E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
#include "ParamDlg.h"


// ParamRefDlg.h : header file
//
/////////////////////////////////////////////////////////////////////////////
// CParamRefDlg dialog

class CParamRefDlg : public CParamDlg
{
    // Construction
    public:
    CParamRefDlg(CWnd* pParent = NULL);   // standard constructor
    virtual int GetIDD() const;

    // Dialog Data
    //{{AFX_DATA(CParamRefDlg)
    enum { IDD = IDD_FORMVIEW_PARAM_REF };
    CComboBox    m_cbxRef;
    //}}AFX_DATA


    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CParamRefDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

    // Implementation
    protected:

    // Generated message map functions
    //{{AFX_MSG(CParamRefDlg)
    // NOTE: the ClassWizard will add member functions here
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PARAMREFDLG_H__B3AC2487_F176_49D0_A5C4_3E53C61A884E__INCLUDED_)
