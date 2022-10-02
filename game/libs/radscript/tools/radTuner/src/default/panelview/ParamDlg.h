#if !defined(AFX_PARAMDLG_H__A365D5A6_D21C_42EF_A335_F8878F92E20A__INCLUDED_)
#define AFX_PARAMDLG_H__A365D5A6_D21C_42EF_A335_F8878F92E20A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "ScriptMethod.h"

// ParamDlg.h : header file
//
/////////////////////////////////////////////////////////////////////////////
// CParamDlg dialog

class CParamDlg : public CDialog
{
    // Construction
public:
    CParamDlg(UINT nIDTemplate, CWnd* pParentWnd = NULL);
    virtual ~CParamDlg();
    
    virtual CScriptParam &GetParam();
    virtual void SetParam(CScriptParam &oParam);

    virtual int GetIDD() const;

    virtual CRect GetWndSize() const;

    // Dialog Data
    //{{AFX_DATA(CParamDlg)
    enum { IDD = IDD_FORMVIEW_PARAM_BASE_CLASS };
    //}}AFX_DATA
    
    
    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CParamDlg)
public:
    //}}AFX_VIRTUAL
    
    // Implementation
protected:
    
    CScriptParam        m_oParam;
    
    // Generated message map functions
    //{{AFX_MSG(CParamDlg)
    // NOTE: the ClassWizard will add member functions here
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PARAMDLG_H__A365D5A6_D21C_42EF_A335_F8878F92E20A__INCLUDED_)
