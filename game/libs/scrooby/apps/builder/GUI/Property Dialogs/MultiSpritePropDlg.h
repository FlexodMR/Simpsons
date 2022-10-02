#if !defined(AFX_MULTISPRITEPROPDLG_H__752872C2_4B7C_11D4_B917_006097B7AD3D__INCLUDED_)
#define AFX_MULTISPRITEPROPDLG_H__752872C2_4B7C_11D4_B917_006097B7AD3D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MultiSpritePropDlg.h : header file
//

#include "BoxDrawingElementPropDlg.h"
#include <vector>

/////////////////////////////////////////////////////////////////////////////
// CMultiSpritePropDlg dialog

class CMultiSpritePropDlg : public CBoxDrawingElementPropDlg
{
// Construction
public:
    CMultiSpritePropDlg(CWnd* pParent = NULL);   // standard constructor
    virtual ~CMultiSpritePropDlg();

    std::vector< PascalCString > m_SelectedImageNames;        //IMPROVE: is it bad style for this to be public?

// Dialog Data
    //{{AFX_DATA(CMultiSpritePropDlg)
    enum { IDD = IDD_MULTISPRITE_PROPERTIES };
    CListCtrl    m_ChosenImageListBox;
    CListBox    m_ImageResourceListBox;
    //}}AFX_DATA

    int m_CurrentlyShownImage;

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMultiSpritePropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    CImageList m_ImageList;

    void RefreshDialog() ;

    void DropItemOnList();

    CImageList* m_pDragImage;
    BOOL m_bDragging;
    int m_nDragIndex, m_nDropIndex;
    CWnd* m_pDropWnd;
    CPoint m_ptDropPoint;


    // Generated message map functions
    //{{AFX_MSG(CMultiSpritePropDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnSelchangeImageResourceListBox();
    afx_msg void OnSetToImagesWidthAndHeight();
    virtual void OnOK();
    afx_msg void OnDblclkImageResourceListBox();
    afx_msg void OnKeydownChosenImageListBox(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnDeleteMultiSpriteItem();
    afx_msg void OnDblclkChosenImageListBox(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnBegindragChosenImageListBox(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnMouseMove(UINT nFlags, CPoint point);
    afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MULTISPRITEPROPDLG_H__752872C2_4B7C_11D4_B917_006097B7AD3D__INCLUDED_)
