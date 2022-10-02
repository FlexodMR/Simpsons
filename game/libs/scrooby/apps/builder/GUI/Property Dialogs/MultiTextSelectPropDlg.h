/////////////////////////////////////////////////////////////////////////////
// TextPropDlg.h : header file

#pragma once

#include "..\..\resource.h"

#include "Strings\PCString.h"
#include "..\SortedListCtrl\GenericSortedListCtrl.h"

#include "..\..\FeData\Helpers\EnumConversion.h"

namespace FeData
{
    class Page;
}

/////////////////////////////////////////////////////////////////////////////
// CMultiTextSelectPropDlg dialog

class CMultiTextSelectPropDlg : public CDialog
{
// Construction
public:
    CMultiTextSelectPropDlg();

// Dialog Data
    //{{AFX_DATA(CMultiTextSelectPropDlg)
    enum { IDD = IDD_MULTITEXT_SELECT_PROPERTIES };
    CGenericSortedListCtrl    m_TextBibleStringList;
    CListBox    m_TextBibleList;
    CString    m_HardCodedString;
    int        m_CurrentTextType;
    //}}AFX_DATA

    FeData::Page* m_Page;

    FeData::TextTypeEnum m_TextType;
    CString m_SelectedBibleString;
    CString m_SelectedBible;


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMultiTextSelectPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:

    int m_LastTextBibleSelection;

    // Generated message map functions
    //{{AFX_MSG(CMultiTextSelectPropDlg)
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    afx_msg void OnSelchangeTextBibleList();
    afx_msg void OnFromTextBibleRadio();
    afx_msg void OnHardCodedStringRadio();
    afx_msg void OnClickTextBibleStringList(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnDblclkTextBibleStringList(NMHDR* pNMHDR, LRESULT* pResult);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};
