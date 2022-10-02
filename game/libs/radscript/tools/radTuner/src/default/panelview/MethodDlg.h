#if !defined(AFX_METHODDLG_H__C0CD2851_0218_4786_95D6_3D7E61D5D983__INCLUDED_)
#define AFX_METHODDLG_H__C0CD2851_0218_4786_95D6_3D7E61D5D983__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <vector>
using std::vector;

class CScriptMethod;
class CParamDlg;
// MethodDlg.h : header file
//
/////////////////////////////////////////////////////////////////////////////
// CMethodDlg dialog

class CMethodDlg : public CDialog
{
    // Construction
    public:
    CMethodDlg(CWnd* pParent = NULL);   // standard constructor
    virtual ~CMethodDlg();

    virtual void SetMethodPtr(CScriptMethod* pMethod);
    virtual CScriptMethod* GetMethodPtr() const;

    virtual int GetIDD() const;

    virtual CRect GetWndSize() const;

    // Dialog Data
    //{{AFX_DATA(CMethodDlg)
    enum { IDD = IDD_FORMVIEW_METHOD };
    CString    m_strMethodName;
    //}}AFX_DATA


    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMethodDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

    // Implementation
    protected:
    vector<CParamDlg*>  m_vecParamDlg;

    CScriptMethod       *m_pMethod;
    // Generated message map functions
    //{{AFX_MSG(CMethodDlg)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    virtual BOOL OnInitDialog();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_METHODDLG_H__C0CD2851_0218_4786_95D6_3D7E61D5D983__INCLUDED_)
