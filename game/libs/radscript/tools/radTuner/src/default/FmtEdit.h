#if !defined(AFX_FMTEDIT_H__BE1CC21C_C2B8_4677_8852_1D9CC9BA103A__INCLUDED_)
#define AFX_FMTEDIT_H__BE1CC21C_C2B8_4677_8852_1D9CC9BA103A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// FmtEdit.h : header file
//
#include "ScriptMethod.h"
class CScriptParam;
/////////////////////////////////////////////////////////////////////////////
// CFmtEdit window

class CFmtEdit : public CEdit
{
    // Construction
    public:
    CFmtEdit();

    // Operations
    public:

    virtual void SetInput(const CScriptParam* pParam);

    // Operations
    public:

    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CFmtEdit)
    //}}AFX_VIRTUAL

    // Implementation
    public:
    virtual ~CFmtEdit();

    // Generated message map functions
    protected:
    //{{AFX_MSG(CFmtEdit)
    afx_msg void OnChar(UINT nChar, UINT nRepCnt, UINT nFlags);
    //}}AFX_MSG

    DECLARE_MESSAGE_MAP()

    // Attributes
    protected:

    bool _IsCharOneOf(const char cChar, const char* szText);
    bool _IsCharNotOneOf(const char cChar, const char* szText);
    ref< IRadTypeInfoParam >    m_pRTIParam;

};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FMTEDIT_H__BE1CC21C_C2B8_4677_8852_1D9CC9BA103A__INCLUDED_)
