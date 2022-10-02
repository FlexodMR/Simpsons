#if !defined(AFX_ADDNEWMETHOD_H__9ADC4458_F0F1_48F4_BC8D_E941CFDBFD8E__INCLUDED_)
#define AFX_ADDNEWMETHOD_H__9ADC4458_F0F1_48F4_BC8D_E941CFDBFD8E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// AddNewMethod.h : header file
//
class CScriptParam;

#include "FmtEdit.h"
#include "FmtComboBox.h"
/////////////////////////////////////////////////////////////////////////////
// CAddNewMethodDlg dialog

class CAddNewMethodDlg : public CDialog
{
    // Construction
public:
    CAddNewMethodDlg(CWnd* pParent = NULL);   // standard constructor
    virtual ~CAddNewMethodDlg();
    
    void SetRTIObjectPtr(IRadTypeInfo *pTypeInfo);
    void SetObjectName(const CString &strObjectName);
    
    IRadTypeInfoMethod* GetRTIMethodPtr() const;
    
    CScriptParam* GetParamPtrAt(int nIndex);
    int GetParamCount();
    
    ParserConst::PlatformType GetPlatform( ) const;
    
protected:
    
    void _DisplayParamList();
    void _PopulateParamList(IRadTypeInfoMethod* pRTIMethod);
    void _DisplayParamValue();
    void _SaveParamValue();
    
    IRadTypeInfoMethod*     m_pRTIMethod;       // Type info method pointer for currently selected method
    IRadTypeInfo*           m_pRTIObject;       // Type info class pointer for currently selected class
    // List of parameter asscioated with currently selected method
    vector<CScriptParam*>    m_vecParamPtr;
    // Dialog Data
    //{{AFX_DATA(CAddNewMethodDlg)
    enum { IDD = IDD_DIALOG_ADD_NEW_METHOD };
    CButton	m_chkXBox;
    CButton	m_chkPS2;
    CButton	m_chkPC;
    CButton	m_chkGCN;
    CButton	m_chkDefault;
    CButton	m_chkAll;
    CFmtEdit    m_txtValue;
    CFmtComboBox   m_cbxValue;
    CListBox    m_lbxParamList;
    CComboBox   m_cbxMethodList;
    CString m_strClassName;
    CString m_strObjectName;
    BOOL	m_bDefault;
    BOOL	m_bAll;
    BOOL	m_bGCN;
    BOOL	m_bPC;
    BOOL	m_bPS2;
    BOOL	m_bXBox;
    //}}AFX_DATA
    
    
    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CAddNewMethodDlg)
public:
    virtual int DoModal();
protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL
    
    // Implementation
protected:
    
    // Generated message map functions
    //{{AFX_MSG(CAddNewMethodDlg)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    virtual BOOL OnInitDialog();
    afx_msg void OnSelchangeComboMethodList();
    virtual void OnOK();
    afx_msg void OnSelchangeListParameterList();
    afx_msg void OnKillfocusRicheditValue(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnKillfocusComboValue();
    afx_msg void OnKillfocusEditValue();
    afx_msg void OnDropFiles(HDROP hDropInfo);
    afx_msg void OnCheckDefault();
    afx_msg void OnCheckAll();
    afx_msg void OnCheckGcn();
    afx_msg void OnCheckPc();
    afx_msg void OnCheckPs2();
    afx_msg void OnCheckXbox();
    afx_msg void OnButtonHelp();
	afx_msg void OnCmdSliderSetting();
	//}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ADDNEWMETHOD_H__9ADC4458_F0F1_48F4_BC8D_E941CFDBFD8E__INCLUDED_)
