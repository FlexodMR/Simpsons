#if !defined(AFX_LAYERORGANIZERDLG_H__ECDEF703_413E_11D4_8A57_0050DA803311__INCLUDED_)
#define AFX_LAYERORGANIZERDLG_H__ECDEF703_413E_11D4_8A57_0050DA803311__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// LayerOrganizerDlg.h : header file
//

#include "XConDoc.h"
#include "XCon.h"
#include "FeData\Helpers\ElementList.h"

/////////////////////////////////////////////////////////////////////////////
// CLayerOrganizerDlg dialog

typedef struct RowDataStruct
{
    int m_nPage;
    int m_nLayer;
} RowData;

enum
{
    EXPORTABLE_COL = 0,
    VISIBLE_COL,
    EDITABLE_COL,
    OUTSIDE
};

class CLayerOrganizerDlg : public CDialog
{
// Construction
public:
    CLayerOrganizerDlg();   // standard constructor
    //CLayerOrganizerDlg(CWnd* pParent = NULL);   // standard constructor
    virtual void OnInitialUpdate(CXConDoc* pDoc);
    void Rebuild();
    BOOL IsXInButtonColumn( int x, int& buttonColumn, int& left, int& right );
    BOOL IsYInButtonRow( int y, int& nPage, int& nLayer, int &top, int& bottom );

// Dialog Data
    //{{AFX_DATA(CLayerOrganizerDlg)
    enum { IDD = IDD_LAYER_ORGANIZER };
    //}}AFX_DATA


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CLayerOrganizerDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:

    // Generated message map functions
    //{{AFX_MSG(CLayerOrganizerDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnPaint();
    afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
    afx_msg void OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
    afx_msg void OnDestroy();
    afx_msg void OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()

private:
    CXConDoc* m_pDoc;
    int m_SelectedLine;
    int m_RowHeight;
    int m_BufferSize;
    int m_MaxWidth;
    int m_HeaderHeight;
    int m_TextHeight;
    int m_ButtonSize;
    int m_HorizDisp;
    int m_LineWidth;

    int m_HorizontalScrollSize;
    int m_VerticalScrollSize;

    FeData::ElementList< RowDataStruct > m_RowDataList;


};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_LAYERORGANIZERDLG_H__ECDEF703_413E_11D4_8A57_0050DA803311__INCLUDED_)
