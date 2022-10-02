#if !defined(AFX_PARAMUINTDLG_H__316CAD6D_7A48_47BD_B7A4_552713ACA2F8__INCLUDED_)
#define AFX_PARAMUINTDLG_H__316CAD6D_7A48_47BD_B7A4_552713ACA2F8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
#include "ParamDlg.h"

// ParamUIntDlg.h : header file
//
/////////////////////////////////////////////////////////////////////////////
// CParamUIntDlg dialog

class CParamUIntDlg : public CParamDlg
{
    // Construction
    public:
    CParamUIntDlg(CWnd* pParent = NULL);   // standard constructor
    virtual int GetIDD() const;

    // Dialog Data
    //{{AFX_DATA(CParamUIntDlg)
    enum { IDD = IDD_FORMVIEW_PARAM_UINT };
    UINT    m_uValue;
    //}}AFX_DATA


    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CParamUIntDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

    // Implementation
    protected:

    // Generated message map functions
    //{{AFX_MSG(CParamUIntDlg)
    // NOTE: the ClassWizard will add member functions here
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PARAMUINTDLG_H__316CAD6D_7A48_47BD_B7A4_552713ACA2F8__INCLUDED_)
