#if !defined(AFX_LAYERPROPDLG_H__8B326EEB_8991_4189_9A42_928B86D35AC7__INCLUDED_)
#define AFX_LAYERPROPDLG_H__8B326EEB_8991_4189_9A42_928B86D35AC7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// LayerPropDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CLayerPropDlg dialog

class CLayerPropDlg : public CDialog
{
// Construction
public:
    CLayerPropDlg(FeData::Layer* layer, FeData::Page* page, CWnd* pParent = NULL);   // standard constructor

// Dialog Data
    //{{AFX_DATA(CLayerPropDlg)
    enum { IDD = IDD_LAYER_PROPERTIES };
    UINT    m_Alpha;
    CString    m_strName;
    //}}AFX_DATA


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CLayerPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    FeData::Layer* m_Layer;
    FeData::Page* m_Page;

    CString m_OldName;
    UINT m_OldAlpha;

    // Generated message map functions
    //{{AFX_MSG(CLayerPropDlg)
    virtual void OnOK();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_LAYERPROPDLG_H__8B326EEB_8991_4189_9A42_928B86D35AC7__INCLUDED_)
