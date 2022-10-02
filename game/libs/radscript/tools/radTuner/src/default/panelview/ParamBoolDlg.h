#if !defined(AFX_PARAMBOOLDLG_H__CA9D7EE1_8B36_4D43_99F4_89A534E14AC7__INCLUDED_)
#define AFX_PARAMBOOLDLG_H__CA9D7EE1_8B36_4D43_99F4_89A534E14AC7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ParamBoolDlg.h : header file
//
#include "ParamDlg.h"
/////////////////////////////////////////////////////////////////////////////
// CParamBoolDlg dialog

class CParamBoolDlg : public CParamDlg
{
    // Construction
public:
    CParamBoolDlg(CWnd* pParent = NULL);   // standard constructor

    virtual int GetIDD() const;
    // Dialog Data
    //{{AFX_DATA(CParamBoolDlg)
    enum { IDD = IDD_FORMVIEW_PARAM_BOOL };
    int        m_bValue;
    //}}AFX_DATA
    
    
    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CParamBoolDlg)
protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL
    
    // Implementation
protected:
    
    // Generated message map functions
    //{{AFX_MSG(CParamBoolDlg)
    // NOTE: the ClassWizard will add member functions here
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PARAMBOOLDLG_H__CA9D7EE1_8B36_4D43_99F4_89A534E14AC7__INCLUDED_)
