// PropertyBar.h: interface for the CPropertyBar class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PROPERTYBAR_H__58C107C0_F096_411F_B8D0_279EFE1F4B2D__INCLUDED_)
#define AFX_PROPERTYBAR_H__58C107C0_F096_411F_B8D0_279EFE1F4B2D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MemPropertyView.h"

class CPropertyBar : public CBCGSizingControlBar  
{
public:

    CPropertyBar();

    CMemPropertyView * GetPropertyView( )
    {
        return m_pMemPropertyView;
    }

    const CMemPropertyView * GetPropertyView( ) const
    {
        return m_pMemPropertyView;
    }

protected:

    CBCGTabWnd          m_wndTabs;

    CMemPropertyView *  m_pMemPropertyView;

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(COutputBar)
    //}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CPropertyBar();

// Generated message map functions
protected:
    //{{AFX_MSG(COutputBar)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnSize(UINT nType, int cx, int cy);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()

};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROPERTYBAR_H__58C107C0_F096_411F_B8D0_279EFE1F4B2D__INCLUDED_)
