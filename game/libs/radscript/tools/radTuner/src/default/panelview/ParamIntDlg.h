#if !defined(AFX_PARAMINTDLG_H__425DB69E_E446_4362_8670_D1CA31C2A46E__INCLUDED_)
#define AFX_PARAMINTDLG_H__425DB69E_E446_4362_8670_D1CA31C2A46E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ParamIntDlg.h : header file
//
#include "ParamDlg.h"
/////////////////////////////////////////////////////////////////////////////
// CParamIntDlg dialog

class CParamIntDlg : public CParamDlg
{
    // Construction
    public:
    CParamIntDlg(CWnd* pParent = NULL);   // standard constructor
    virtual int GetIDD() const;

    // Dialog Data
    //{{AFX_DATA(CParamIntDlg)
    enum { IDD = IDD_FORMVIEW_PARAM_INT };
    int        m_nValue;
    //}}AFX_DATA


    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CParamIntDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

    // Implementation
    protected:

    // Generated message map functions
    //{{AFX_MSG(CParamIntDlg)
    // NOTE: the ClassWizard will add member functions here
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PARAMINTDLG_H__425DB69E_E446_4362_8670_D1CA31C2A46E__INCLUDED_)
