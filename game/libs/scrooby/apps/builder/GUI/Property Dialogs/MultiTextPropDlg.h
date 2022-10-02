/////////////////////////////////////////////////////////////////////////////
// MultiTextPropDlg.h : header file

#pragma once

#include "..\..\resource.h"

#include "BoxDrawingElementPropDlg.h"
#include "Strings\PCString.h"

#include "..\..\FeData\Helpers\EnumConversion.h"
#include "..\..\FeData\Helpers\TextList.h"


/////////////////////////////////////////////////////////////////////////////
// CMultiTextPropDlg dialog

class CMultiTextPropDlg : public CBoxDrawingElementPropDlg
{
// Construction
public:
    CMultiTextPropDlg();
    virtual ~CMultiTextPropDlg();

// Dialog Data
    //{{AFX_DATA(CMultiTextPropDlg)
    enum { IDD = IDD_MULTITEXT_PROPERTIES };
    CListCtrl    m_StringsList;
    CListBox    m_TextStyleList;
    BOOL       m_ShadowEnabled;
    UINT       m_ShadowAlpha;
    int        m_xShadowOffset;
    int        m_yShadowOffset;
    //}}AFX_DATA

    CString m_SelectedStyle;
    int m_CurrentlyShownText;

    CColorWnd m_wndShadowColor;
    COLORREF m_shadowColor;

    UINT m_ShadowRed;
    UINT m_ShadowGreen;
    UINT m_ShadowBlue;

    void SetTextList( FeData::TextList* textList );

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMultiTextPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    afx_msg void OnShadowEnabled();
    afx_msg void OnShadowColour();
    //}}AFX_VIRTUAL

// Implementation
protected:

    void UpdateStringList();

    bool GetMinSize( int& width, int& height );

    FeData::TextList* m_TextList;
    CImageList m_ImageList;


    void DropItemOnList();

    CImageList* m_pDragImage;
    BOOL m_bDragging;
    int m_nDragIndex, m_nDropIndex;
    CWnd* m_pDropWnd;
    CPoint m_ptDropPoint;

    // Generated message map functions
    //{{AFX_MSG(CMultiTextPropDlg)
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    afx_msg void OnResizeWidthAndHeightToLargestString();
    afx_msg void OnTextChange();
    afx_msg void OnBegindragMultiTextStrings(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnMouseMove(UINT nFlags, CPoint point);
    afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
    afx_msg void OnDblclkMultiTextStrings(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnAddMultitextItem();
    afx_msg void OnEditMultitextItem();
    afx_msg void OnDeleteMultitextItem();
    afx_msg void OnKeydownMultiTextStrings(NMHDR* pNMHDR, LRESULT* pResult);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};
