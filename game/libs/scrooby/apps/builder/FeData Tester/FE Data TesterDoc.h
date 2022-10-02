// FE Data TesterDoc.h : interface of the CFEDataTesterDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_FEDATATESTERDOC_H__B1D4CD65_20E5_11D4_8A57_0050DA803311__INCLUDED_)
#define AFX_FEDATATESTERDOC_H__B1D4CD65_20E5_11D4_8A57_0050DA803311__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


namespace FeData
{
    class ScreenFile;
    class Screen;
    class PageFile;
    class Page;
    class ProjectFile;
    class BaseFactory;
}



class CFEDataTesterDoc : public CDocument
{
protected: // create from serialization only
    CFEDataTesterDoc();
    DECLARE_DYNCREATE(CFEDataTesterDoc)


private:
    FeData::PageFile* m_PageFile;
    FeData::ScreenFile* m_ScreenFile;
    FeData::ProjectFile* m_ProjectFile;
    FeData::BaseFactory* m_ObjectFactory;


// Operations
public:

    FeData::Page* GetPage();
    FeData::Screen* GetScreen();


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CFEDataTesterDoc)
    public:
    virtual BOOL OnNewDocument();
    virtual void Serialize(CArchive& ar);
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CFEDataTesterDoc();
#ifdef _DEBUG
    virtual void AssertValid() const;
    virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
    //{{AFX_MSG(CFEDataTesterDoc)
    afx_msg void OnFileOpen();
    afx_msg void OnFileSave();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()

};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FEDATATESTERDOC_H__B1D4CD65_20E5_11D4_8A57_0050DA803311__INCLUDED_)
