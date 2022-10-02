// makefontguiDlg.h : header file
//

#if !defined(AFX_MAKEFONTGUIDLG_H__CB1B0591_E126_42E4_991B_633C461D1B54__INCLUDED_)
#define AFX_MAKEFONTGUIDLG_H__CB1B0591_E126_42E4_991B_633C461D1B54__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CMakefontguiDlg dialog

class CMakefontguiDlg : public CDialog
{
// Construction
public:
    CMakefontguiDlg(CWnd* pParent = NULL);    // standard constructor

// Dialog Data
    //{{AFX_DATA(CMakefontguiDlg)
    enum { IDD = IDD_MAKEFONTGUI_DIALOG };
    CString    m_fontName;
    CString    m_outputName;
    UINT    m_fontSize;
    UINT    m_fgColourR;
    UINT    m_fgColourA;
    UINT    m_fgColourG;
    UINT    m_fgColourB;
    UINT    m_bgColourA;
    UINT    m_bgColourB;
    UINT    m_bgColourG;
    UINT    m_bgColourR;
    //}}AFX_DATA

    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMakefontguiDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    HICON m_hIcon;
    CBrush m_fgBrush;
    CBrush m_bgBrush;

    void UpdateColour();

    // Generated message map functions
    //{{AFX_MSG(CMakefontguiDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnPaint();
    afx_msg HCURSOR OnQueryDragIcon();
    afx_msg void OnFontColourButton();
    afx_msg void OnFontBgcolourButton();
    afx_msg void OnFontBrowse();
    afx_msg void OnDeltaposFontColourSpinRed(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnDeltaposFontSizeSpin(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnDeltaposFontBgcolourSpinAlpha(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnDeltaposFontBgcolourSpinBlue(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnDeltaposFontBgcolourSpinGreen(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnDeltaposFontBgcolourSpinRed(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnDeltaposFontColourSpinAlpha(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnDeltaposFontColourSpinBlue(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnDeltaposFontColourSpinGreen(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnChangeFontColourRed();
    afx_msg void OnChangeFontColourGreen();
    afx_msg void OnChangeFontColourBlue();
    afx_msg void OnChangeFontColourAlpha();
    afx_msg void OnChangeFontBgcolourRed();
    afx_msg void OnChangeFontBgcolourGreen();
    afx_msg void OnChangeFontBgcolourBlue();
    afx_msg void OnChangeFontBgcolourAlpha();
    afx_msg void OnChangeFontSize();
    afx_msg void OnChangeFontName();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MAKEFONTGUIDLG_H__CB1B0591_E126_42E4_991B_633C461D1B54__INCLUDED_)
