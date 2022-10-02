#if !defined(AFX_PARAMSTRINGDLG_H__393749FA_2213_4A01_A0E2_08B8A6A8044F__INCLUDED_)
#define AFX_PARAMSTRINGDLG_H__393749FA_2213_4A01_A0E2_08B8A6A8044F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
#include "ParamDlg.h"

// ParamStringDlg.h : header file
//
/////////////////////////////////////////////////////////////////////////////
// CParamStringDlg dialog

class CParamStringDlg : public CParamDlg
{
    // Construction
    public:
    CParamStringDlg(CWnd* pParent = NULL);   // standard constructor

    virtual int GetIDD() const;

    // Dialog Data
    //{{AFX_DATA(CParamStringDlg)
    enum { IDD = IDD_FORMVIEW_PARAM_STRING };
    CString    m_strValue;
    //}}AFX_DATA


    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CParamStringDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

    // Implementation
    protected:

    // Generated message map functions
    //{{AFX_MSG(CParamStringDlg)
    // NOTE: the ClassWizard will add member functions here
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PARAMSTRINGDLG_H__393749FA_2213_4A01_A0E2_08B8A6A8044F__INCLUDED_)
