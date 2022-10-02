#if !defined(AFX_MEMPROPERTYVIEW_H__02ACEE34_F10A_4170_9275_D1D4C51EAE58__INCLUDED_)
#define AFX_MEMPROPERTYVIEW_H__02ACEE34_F10A_4170_9275_D1D4C51EAE58__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemPropertyView.h : header file
//

#include "GUIItem.h"        // CGUIItem allow us to display object's property

/////////////////////////////////////////////////////////////////////////////
// CMemPropertyView view

class CMemPropertyView :
    public CListView
{
protected:
	CMemPropertyView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CMemPropertyView)

// Attributes
public:

    void SetCurrGUIItem( CGUIItem * pItem );

    CGUIItem * GetCurrGUIItem( );

// Operations
public:

protected:

    CGUIItem * m_pGUIItem;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemPropertyView)
	public:
	virtual void OnInitialUpdate();
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CMemPropertyView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CMemPropertyView)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMPROPERTYVIEW_H__02ACEE34_F10A_4170_9275_D1D4C51EAE58__INCLUDED_)
