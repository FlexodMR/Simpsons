#if !defined(AFX_SCRIPTOBJECTVIEW_H__7F80EFE9_BCE5_4E8D_888E_2FD824A1ED8B__INCLUDED_)
#define AFX_SCRIPTOBJECTVIEW_H__7F80EFE9_BCE5_4E8D_888E_2FD824A1ED8B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ScriptObjectView.h : header file
//
class CScriptObject;
class CMethodDlg;
#include "MethodDlg.h"

#include <vector>
using std::vector;

/////////////////////////////////////////////////////////////////////////////
// CScriptObjectView view

class CScriptObjectView : public CView
{

    friend class CScriptObject;
    protected:

    CScriptObjectView();           // protected constructor used by dynamic creation
    DECLARE_DYNCREATE(CScriptObjectView)
    void _SetRectangle();
    /*
    void _CreateTitleDisplay();

    void _CreateMethodDisplay();

    void _CreateMethodDisplay(CScriptMethod *pMethod);

    void _CreateParamDisplay(CScriptParam *pParam);
    */


    // Attributes
    protected:
    CScriptObject       *m_pScriptObject;
    CFont               m_fontSansSerif_8;

    CStatic             m_stcObjectName;
    vector<CMethodDlg *> m_vecMethodDlg;

    // Operations
    public:
    void SetObjectPtr(CScriptObject *pObject);
    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CScriptObjectView)
    public:
    virtual void OnInitialUpdate();
    protected:
    virtual void OnDraw(CDC* pDC);      // overridden to draw this view
    virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
    //}}AFX_VIRTUAL

    // Implementation
    protected:
    virtual ~CScriptObjectView();
#ifdef _DEBUG
    virtual void AssertValid() const;
    virtual void Dump(CDumpContext& dc) const;
#endif

    // Generated message map functions
    protected:
    //{{AFX_MSG(CScriptObjectView)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnDestroy();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SCRIPTOBJECTVIEW_H__7F80EFE9_BCE5_4E8D_888E_2FD824A1ED8B__INCLUDED_)
