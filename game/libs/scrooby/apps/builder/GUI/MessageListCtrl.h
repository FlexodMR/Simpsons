#if !defined(AFX_MESSAGELISTCTRL_H__D20328E5_30C5_11D4_8A57_0050DA80330A__INCLUDED_)
#define AFX_MESSAGELISTCTRL_H__D20328E5_30C5_11D4_8A57_0050DA80330A__INCLUDED_

#include "PCString.h"

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MessageListCtrl.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMessageListCtrl window

class CMessageListCtrl : public CListCtrl
{
// Construction
public:
    CMessageListCtrl();

// Attributes
public:

// Operations
public:
    PascalCString GetMessage( int index );
    void CopyToClipboard();
    void SaveLogsToFile( const char* filename );

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMessageListCtrl)
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CMessageListCtrl();

    // Generated message map functions
protected:
    //{{AFX_MSG(CMessageListCtrl)
    afx_msg void OnOutputWindowCopy();
    afx_msg void OnOutputWindowSaveFile();
    afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
    afx_msg void OnOutputWindowClean();
    //}}AFX_MSG

    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MESSAGELISTCTRL_H__D20328E5_30C5_11D4_8A57_0050DA80330A__INCLUDED_)
