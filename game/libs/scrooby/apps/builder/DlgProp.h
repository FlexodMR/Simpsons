/////////////////////////////////////////////////////////////////////////////
// DlgProp.h : header file

#pragma once

#include "StdAfx.h"
#include "resource.h"
//#include "xImage.h"
//#include "xStringOrID.h"
//#include "xOverlay.h"
#include "Strings\PCString.h"

class CFontPropDlg;
class CDib;
class CXConDoc;

//class CXCursor;
//class CXFont;

namespace FeData
{
    class Page;
}


//BOOL OnColorHelper(COLORREF* pClr);

/////////////////////////////////////////////////////////////////////////////
// CColorWnd

class CColorWnd : public CStatic
{
public:
    CColorWnd() {}
    virtual ~CColorWnd() {}

    COLORREF* m_pClr;

    afx_msg void OnPaint();
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CDocPropDlg dialog

class CDocPropDlg : public CDialog
{
// Construction
public:
    CDocPropDlg();

// Dialog Data
    //{{AFX_DATA(CDocPropDlg)
    enum { IDD = IDD_DOC_PROPERTIES };
    CColorWnd m_wndBkgd;
    CColorWnd m_wndColor;
    CString    m_strRootPath;
    CString    m_strLanguagePath;
    BOOL    m_bFonts;
    CString    m_strExportPath;
    //}}AFX_DATA

    COLORREF m_clrDefTrans;
    COLORREF m_clrBkgd;

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CDocPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CDocPropDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnColor();
    afx_msg void OnBrowse();
    afx_msg void OnColorBkgd();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CCursorPropDlg dialog

class CCursorPropDlg : public CDialog
{
// Construction
public:
    CCursorPropDlg();

// Dialog Data
    //{{AFX_DATA(CCursorPropDlg)
    enum { IDD = IDD_CURSOR_PROPERTIES };
    CString    m_strFileName;
    CString    m_strName;
    //}}AFX_DATA

//    CXCursor* m_pCursor;

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CCursorPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CCursorPropDlg)
    afx_msg void OnRefresh();
    afx_msg void OnBrowse();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CFontPropDlg dialog

class CFontWnd : public CStatic
{
public:
    CFontWnd();
    virtual ~CFontWnd() {}

    void SetParentDlg(CFontPropDlg* pDlg) { m_pDlg = pDlg; }
    void SetDisplayChar(int nIndex);
    void SetLangType(int nType) { m_nLangType = nType; }

protected:
    int m_nIndex;
    CFontPropDlg* m_pDlg;
    int m_nLangType;

// Implementation
protected:
    afx_msg void OnPaint();
    DECLARE_MESSAGE_MAP()
};

class CFontPropDlg : public CDialog
{
// Construction
public:
    CFontPropDlg();

// Dialog Data
    //{{AFX_DATA(CFontPropDlg)
    enum { IDD = IDD_FONT_PROPERTIES };
    CFontWnd    m_wndPreview;
    CString    m_strFileName;
    CString    m_strName;
    CString    m_strHeight;
    CString    m_strSpace;
    CString    m_strNoChars;
    CString    m_strBlocks;
    CString    m_strPalettes;
    CString    m_strFileNameJap;
    BOOL    m_bJapanese;
    //}}AFX_DATA

    //CXFont* m_pFont;
    int m_nLangType;

protected:
    void InitData(int nType);
    void ResetData();

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CFontPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CFontPropDlg)
    afx_msg void OnSelchangeCharList();
    virtual BOOL OnInitDialog();
    afx_msg void OnRefresh();
    afx_msg void OnJapanese();
    afx_msg void OnBrowse();
    afx_msg void OnBrowseJap();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CImagePropDlg dialog

class CImagePropDlg : public CDialog
{
// Construction
public:
    CImagePropDlg();

// Dialog Data
    //{{AFX_DATA(CImagePropDlg)
    enum { IDD = IDD_IMAGE_PROPERTIES };
    CColorWnd m_wndColor;
    CString    m_strFileName;
    CString    m_strName;
    BOOL    m_bTransparent;
    CString    m_strSize;
    //}}AFX_DATA

    COLORREF m_clr;
//    CXImage* m_pImage;

protected:
    void InitData();

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CImagePropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CImagePropDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnColor();
    afx_msg void OnRefresh();
    afx_msg void OnBrowse();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CStringPropDlg dialog

class CStringPropDlg : public CDialog
{
// Construction
public:
    CStringPropDlg();

// Dialog Data
    //{{AFX_DATA(CStringPropDlg)
    enum { IDD = IDD_STRING_PROPERTIES };
    CString    m_strName;
    CString    m_str;
    //}}AFX_DATA

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CStringPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CStringPropDlg)
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CDisplayPropDlg

class CDisplayPropDlg : public CDialog
{
// Construction
public:
    CDisplayPropDlg(UINT nID);

// Dialog Data
    float    m_fPosX;
    float    m_fPosY;
    int        m_nHorzAlign;
    int        m_nVertAlign;
    float m_cx;
    float m_cy;
    int    m_nTranslucent;

// Overrides
protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

// Implementation
protected:
/*    
    afx_msg void OnAlignBottom();
    afx_msg void OnAlignHcenter();
    afx_msg void OnAlignLeft();
    afx_msg void OnAlignRight();
    afx_msg void OnAlignTop();
    afx_msg void OnAlignVcenter();

    DECLARE_MESSAGE_MAP()
*/
};

/////////////////////////////////////////////////////////////////////////////
// CScreenPropDlg dialog

class CScreenPropDlg : public CDialog
{
// Construction
public:
    CScreenPropDlg();

// Dialog Data
    //{{AFX_DATA(CScreenPropDlg)
    enum { IDD = IDD_SCREEN_PROPERTIES };
    CCheckListBox    m_list;
    CString    m_strName;
    //}}AFX_DATA

//    CXObjectArray* m_pOverlayArray;
//    CXOverlayArray* m_pSelections;

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CScreenPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CScreenPropDlg)
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    afx_msg void OnSelect();
    afx_msg void OnUnselect();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CTVCutoffPropDlg dialog

class CTVCutoffPropDlg : public CDialog
{
// Construction
public:
    CTVCutoffPropDlg();

// Dialog Data
    //{{AFX_DATA(CTVCutoffPropDlg)
    enum { IDD = IDD_TV_CUTOFF };
    BOOL    m_bEnable;
    UINT    m_nVertInset;
    UINT    m_nHorzInset;
    //}}AFX_DATA

    CSize m_sizeMax;

protected:
    void EnableEdits();

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CTVCutoffPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CTVCutoffPropDlg)
    afx_msg void OnEnable();
    virtual BOOL OnInitDialog();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CMultiObjPropDlg dialog

class CMultiObjPropDlg : public CDialog
{
// Construction
public:
    CMultiObjPropDlg();

// Dialog Data
    //{{AFX_DATA(CMultiObjPropDlg)
    enum { IDD = IDD_MULTI_OBJECT_PROPERTIES };
    CListBox    m_listSelected;
    CListBox    m_listAvailable;
    //}}AFX_DATA

//    CXObjectArray* m_pObjectArray;
//    CObArray* m_pSelections;
//    CMapStringToPtr* m_pMapLangIDs;
    CXConDoc* m_pDocument;

protected:
    

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMultiObjPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CMultiObjPropDlg)
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    afx_msg void OnAdd();
    afx_msg void OnRemove();
    afx_msg void OnMoveUp();
    afx_msg void OnMoveDown();
    afx_msg void OnSetfocusListAvailable();
    afx_msg void OnSetfocusListSelected();
    afx_msg void OnSelchangeListAvailable();
    afx_msg void OnSelchangeListSelected();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CClipPropDlg dialog

class CClipPropDlg : public CDialog
{
// Construction
public:
    CClipPropDlg();

// Dialog Data
    //{{AFX_DATA(CClipPropDlg)
    enum { IDD = IDD_CLIP_PROPERTIES };
    CEdit    m_editHeight;
    CEdit    m_editWidth;
    CEdit    m_editTop;
    CEdit    m_editLeft;
    CSpinButtonCtrl    m_spinWidth;
    CSpinButtonCtrl    m_spinTop;
    CSpinButtonCtrl    m_spinLeft;
    CSpinButtonCtrl    m_spinHeight;
    BOOL    m_bReset;
    UINT    m_nLeft;
    UINT    m_nTop;
    UINT    m_nWidth;
    UINT    m_nHeight;
    CString    m_strName;
    //}}AFX_DATA

    CSize m_sizeMax;

protected:
    void EnableEditWindows();
    void SetLeftMinMax();
    void SetTopMinMax();
    void SetWidthMinMax();
    void SetHeightMinMax();

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CClipPropDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CClipPropDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnReset();
    afx_msg void OnChangeLeft();
    afx_msg void OnChangeTop();
    afx_msg void OnChangeWidth();
    afx_msg void OnChangeHeight();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};


