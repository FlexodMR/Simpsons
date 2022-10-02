/////////////////////////////////////////////////////////////////////////////
// TextPropDlg.h : header file

#pragma once

#include "..\..\resource.h"

#include "BoxDrawingElementPropDlg.h"
#include "Strings\PCString.h"
#include "..\SortedListCtrl\GenericSortedListCtrl.h"

#include "..\..\FeData\Helpers\EnumConversion.h"


/////////////////////////////////////////////////////////////////////////////
// CTextPropDlg dialog

class CTextPropDlg : public CBoxDrawingElementPropDlg
{
// Construction
public:
    CTextPropDlg();

// Dialog Data
    //{{AFX_DATA(CTextPropDlg)
    enum { IDD = IDD_TEXT_PROPERTIES };
    CListBox   m_TextStyleList;
    CGenericSortedListCtrl    m_TextBibleStringList;
    CListBox   m_TextBibleList;
    CString    m_HardCodedString;
    int        m_CurrentTextType;
    BOOL       m_ShadowEnabled;
    UINT       m_ShadowAlpha;
    int        m_xShadowOffset;
    int        m_yShadowOffset;
    //}}AFX_DATA

    FeData::TextTypeEnum m_TextType;
    CString m_SelectedStyle;
    CString m_SelectedBibleString;
    CString m_SelectedBible;

    CColorWnd m_wndShadowColor;
    COLORREF m_shadowColor;

    UINT m_ShadowRed;
    UINT m_ShadowGreen;
    UINT m_ShadowBlue;
    
// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CTextPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:

    bool GetMinSize( int& width, int& height );

    int m_LastTextBibleSelection;

    // Generated message map functions
    //{{AFX_MSG(CTextPropDlg)
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    afx_msg void OnSelchangeTextBibleList();
    afx_msg void OnFromTextBibleRadio();
    afx_msg void OnHardCodedStringRadio();
    afx_msg void OnResizeWidthAndHeightToLargestString();
    afx_msg void OnTextChange();
    afx_msg void OnClickTextBibleStringList(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnShadowEnabled();
    afx_msg void OnShadowColour();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};
