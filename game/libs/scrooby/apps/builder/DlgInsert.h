/////////////////////////////////////////////////////////////////////////////
// DlgInsert.h : header file

#pragma once

class CXObject;
//class CXFont;
class CXString;

#include "Strings\PCString.h"
#include "GUI\SortedListCtrl\GenericSortedListCtrl.h"

namespace FeData
{
    class ResourceManager;
}

/////////////////////////////////////////////////////////////////////////////
// CInsertSpriteDlg dialog

class CInsertSpriteDlg : public CDialog
{
// Construction
public:
    CInsertSpriteDlg();

// Dialog Data
    //{{AFX_DATA(CInsertSpriteDlg)
    enum { IDD = IDD_INSERT_SPRITE };
    CListBox    m_ImageResourceListBox;
    CString    m_SpriteName;
    //}}AFX_DATA


    void SetResourceManager( FeData::ResourceManager* resourceManager );
    void SetSpriteName( PascalCString& spriteName );
    
    bool GetSelectedImageName( PascalCString& imageName );
    bool GetSpriteName( PascalCString& spriteName );

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CInsertSpriteDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    FeData::ResourceManager* m_ResourceManager;
    PascalCString m_SelectedImageName;
    bool m_NameManuallyChanged;

    // Generated message map functions
    //{{AFX_MSG(CInsertSpriteDlg)
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    afx_msg void OnSelchangeImageResourceListBox();
    afx_msg void OnChangeImageName();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CInsertStringDlg dialog

class CInsertStringDlg : public CDialog
{
// Construction
public:
    CInsertStringDlg();

// Dialog Data
    //{{AFX_DATA(CInsertStringDlg)
    enum { IDD = IDD_INSERT_STRING };
    CString    m_str;
    //}}AFX_DATA

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CInsertStringDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CInsertStringDlg)
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CInsertTextDlg dialog

class CInsertTextDlg : public CDialog
{
// Construction
public:
    CInsertTextDlg();

// Dialog Data
    //{{AFX_DATA(CInsertTextDlg)
    enum { IDD = IDD_INSERT_TEXT };
    CListBox    m_TextStyleList;
    CGenericSortedListCtrl    m_TextBibleStringList;
    CListBox    m_TextBibleList;
    CString    m_TextName;
    CString    m_HardCodedString;
    //}}AFX_DATA

    void SetResourceManager( FeData::ResourceManager* resourceManager );

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CInsertTextDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    FeData::ResourceManager* m_ResourceManager;

    // Generated message map functions
    //{{AFX_MSG(CInsertTextDlg)
    virtual BOOL OnInitDialog();
    virtual void OnOK();
    afx_msg void OnSelchangeTextBibleList();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};
