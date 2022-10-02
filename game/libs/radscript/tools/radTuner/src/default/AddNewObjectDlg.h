#if !defined(AFX_ADDNEWOBJECTDLG_H__21CE84F4_EA54_40B8_BDEF_76B7C195603F__INCLUDED_)
#define AFX_ADDNEWOBJECTDLG_H__21CE84F4_EA54_40B8_BDEF_76B7C195603F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// AddNewObjectDlg.h : header file
//
#include "ScriptObject.h"
/////////////////////////////////////////////////////////////////////////////
// CAddNewObjectDlg dialog

class CAddNewObjectDlg : public CDialog
{
    // Construction
public:
    CAddNewObjectDlg(CWnd* pParent = NULL);   // standard constructor
    
    int                             m_nClassIndex;
    CScriptObject::RT_CREATION_TYPE m_eCreationMethod;
    
    ParserConst::PlatformType GetPlatform( ) const;
    
    // Dialog Data
    //{{AFX_DATA(CAddNewObjectDlg)
    enum { IDD = IDD_DIALOG_ADD_NEW_OBJECT };
    CButton	m_chkXBox;
    CButton	m_chkPS2;
    CButton	m_chkPC;
    CButton	m_chkGCN;
    CButton	m_chkDefault;
    CButton	m_chkAll;
    CComboBox    m_cbxClassList;
    CString    m_strObjectName;
    BOOL	m_bDefault;
    BOOL	m_bAll;
    BOOL	m_bGCN;
    BOOL	m_bPC;
    BOOL	m_bPS2;
    BOOL	m_bXBox;
    //}}AFX_DATA
    
    
    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CAddNewObjectDlg)
protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL
    
    // Implementation
protected:
    
    // Generated message map functions
    //{{AFX_MSG(CAddNewObjectDlg)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    virtual void OnOK();
    virtual BOOL OnInitDialog();
    afx_msg void OnCheckDefault();
    afx_msg void OnCheckAll();
    afx_msg void OnCheckGcn();
    afx_msg void OnCheckPc();
    afx_msg void OnCheckPs2();
    afx_msg void OnCheckXbox();
    afx_msg void OnButtonHelp();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ADDNEWOBJECTDLG_H__21CE84F4_EA54_40B8_BDEF_76B7C195603F__INCLUDED_)
