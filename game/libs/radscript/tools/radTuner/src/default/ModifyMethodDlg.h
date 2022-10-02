#if !defined(AFX_MODIFYMETHODDLG_H__FB303805_1F13_4D69_92A3_CC0BF3B68482__INCLUDED_)
#define AFX_MODIFYMETHODDLG_H__FB303805_1F13_4D69_92A3_CC0BF3B68482__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ModifyMethodDlg.h : header file
//
class CScriptParam;
class CScriptMethod;

#include "FmtEdit.h"
#include "FmtComboBox.h"

/////////////////////////////////////////////////////////////////////////////
// CModifyMethodDlg dialog

class CModifyMethodDlg : public CDialog
{
    // Construction
public:
    CModifyMethodDlg(CWnd* pParent = NULL);   // standard constructor
    virtual ~CModifyMethodDlg();
    
    void Initalize( CScriptMethod* pMethod, CFileTreeCtrl * pTree2Update, HTREEITEM hMet, HTREEITEM hObj, HTREEITEM hDoc )
    {
        ASSERT( pMethod && pTree2Update && hMet && hObj && hDoc );

        SetScriptMethodPtr( pMethod );
        m_pTree2Update = pTree2Update;
        m_hMet = hMet;
        m_hObj = hObj;
        m_hDoc = hDoc;
    }

    void SetScriptMethodPtr(CScriptMethod* pMethod);
    CScriptMethod* GetRTIMethodPtr() const;
    
    int GetScriptParamCount() const;
    CScriptParam* GetParamPtr(const int nIdx);
    
    ParserConst::PlatformType GetPlatform( ) const;
    
    // Dialog Data
    //{{AFX_DATA(CModifyMethodDlg)
	enum { IDD = IDD_DIALOG_MODIFIY_METHOD };
	CButton	m_cmdSliderSetting;
	CButton	m_cmdAddView;
	CEdit	m_txtMaxValue;
	CEdit	m_txtMinValue;
	CSliderCtrl	m_sldValue;
    CButton	m_chkXBox;
    CButton	m_chkPS2;
    CButton	m_chkPC;
    CButton	m_chkGCN;
    CButton	m_chkDefault;
    CButton	m_chkAll;
    CListBox    m_lbxParamList;
    CFmtEdit    m_txtValue;
    CFmtComboBox    m_cbxValue;
    CString m_strClassName;
    CString m_strMethodName;
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
    //{{AFX_VIRTUAL(CModifyMethodDlg)
protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL
    
    // Implementation
protected:
    
    // Generated message map functions
    //{{AFX_MSG(CModifyMethodDlg)
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    afx_msg void OnSelchangeListParameterList();
    afx_msg void OnKillfocusEditValue();
    afx_msg void OnKillfocusComboValue();
    afx_msg void OnDropFiles(HDROP hDropInfo);
    afx_msg void OnButtonInvoke();
    afx_msg void OnCheckDefault();
    afx_msg void OnCheckAll();
    afx_msg void OnCheckGcn();
    afx_msg void OnCheckPc();
    afx_msg void OnCheckPs2();
    afx_msg void OnCheckXbox();
    afx_msg void OnButtonHelp();
	afx_msg void OnReleasedcaptureSliderValue(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnCmdSliderSetting();
	afx_msg void OnButtonAddView();
	//}}AFX_MSG
    DECLARE_MESSAGE_MAP()
        
protected:
    void _DisplayParamList();
    void _PopulateParamList(IRadTypeInfoMethod* pRTIMethod);
    void _DisplayParamValue();
    void _SaveParamValue();
    

    CFileTreeCtrl *             m_pTree2Update;

    HTREEITEM                   m_hMet;
    HTREEITEM                   m_hObj;
    HTREEITEM                   m_hDoc;

    CScriptMethod*              m_pScriptMethod;    // The pointer to the method we are going to modify
    vector<CScriptParam*>       m_vecParamPtr;      // the parameter list we are going to modify
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MODIFYMETHODDLG_H__FB303805_1F13_4D69_92A3_CC0BF3B68482__INCLUDED_)
