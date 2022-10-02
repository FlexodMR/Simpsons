#if !defined(AFX_MODIFYOBJECTDLG_H__4DC76F33_1BC2_4A49_979C_23ADB041F575__INCLUDED_)
#define AFX_MODIFYOBJECTDLG_H__4DC76F33_1BC2_4A49_979C_23ADB041F575__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ModifyObjectDlg.h : header file
//

class CScriptObject;

#include "ScriptObject.h"

/////////////////////////////////////////////////////////////////////////////
// CModifyObjectDlg dialog

class CModifyObjectDlg : public CDialog
{
    // Construction
    public:
    CModifyObjectDlg(CWnd* pParent = NULL);   // standard constructor

    virtual CScriptObject::RT_CREATION_TYPE GetScriptObjectCreationType() const;
    virtual void SetScriptObject(CScriptObject* pScriptObject);

    ParserConst::PlatformType GetPlatform( ) const;

    // Dialog Data
    //{{AFX_DATA(CModifyObjectDlg)
    enum { IDD = IDD_DIALOG_MODIFY_OBJECT };
    CButton	m_chkXBox;
    CButton	m_chkPS2;
    CButton	m_chkPC;
    CButton	m_chkGCN;
    CButton	m_chkDefault;
    CButton	m_chkAll;
    CString    m_strClassName;
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
    //{{AFX_VIRTUAL(CModifyObjectDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

    // Implementation
    protected:

    // Generated message map functions
    //{{AFX_MSG(CModifyObjectDlg)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    afx_msg void OnKillfocusEditObjectName();
    afx_msg void OnCheckDefault();
    afx_msg void OnCheckAll();
    afx_msg void OnCheckGcn();
    afx_msg void OnCheckPc();
    afx_msg void OnCheckPs2();
    afx_msg void OnCheckXbox();
    afx_msg void OnButtonHelp();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
    protected:

    CScriptObject::RT_CREATION_TYPE m_eCreationType;
    CScriptObject*                  m_pScriptObject;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MODIFYOBJECTDLG_H__4DC76F33_1BC2_4A49_979C_23ADB041F575__INCLUDED_)
