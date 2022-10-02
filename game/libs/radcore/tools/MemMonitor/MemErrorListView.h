#if !defined(AFX_MEMERRORLISTVIEW_H__5D061D37_D64C_4E89_9D48_CC2B326B2D7B__INCLUDED_)
#define AFX_MEMERRORLISTVIEW_H__5D061D37_D64C_4E89_9D48_CC2B326B2D7B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

// MemErrorListView.h : header file
//

//============================================================================
// Error list view is a frame wnd, contain a list view and an read only
// edit view.
// List view contain all errors, and edit view contain additional description
// of the error user have selected.
//============================================================================
class CMemErrorListView :
    public CTreeView
{
protected:
	CMemErrorListView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CMemErrorListView)

// Attributes
public:

    void ClearView( );

// Operations
public:


private:

    enum ImageListItems
    {
        IconError = 1,
        IconEntry,
        IconMessage,
    };


    CImageList  m_imgIcons;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemErrorListView)
	public:
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	virtual void OnInitialUpdate();
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CMemErrorListView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CMemErrorListView)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMERRORLISTVIEW_H__5D061D37_D64C_4E89_9D48_CC2B326B2D7B__INCLUDED_)
