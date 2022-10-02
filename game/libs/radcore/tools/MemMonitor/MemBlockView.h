#if !defined(AFX_MEMBLOCKVIEW_H__99CCBA87_C54D_461A_83E3_46ED765B90B9__INCLUDED_)
#define AFX_MEMBLOCKVIEW_H__99CCBA87_C54D_461A_83E3_46ED765B90B9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemBlockView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMemBlockView view

class CMemBlockView :
    public CListView
{
protected:

    CMemBlockView();           // protected constructor used by dynamic creation

    DECLARE_DYNCREATE(CMemBlockView)

public:

    enum ViewMode
    {
        ChildRefObjectView,
        ParentRefObjectView,
        StackTraceView,
    };

    void SetViewMode( const CMemBlockView::ViewMode eViewMode );

    CMemBlockView::ViewMode GetViewMode( ) const;

    void ShowMemoryBlockInfo( );

protected:

    const CMemoryBlock * GetMemoryBlockPtr( ) const;

    void PopulateList( );

    void RequestCallStackExternally( const unsigned int pAddr[ MM_MAX_CALLSTACK_DEPTH ] );

    void OnCallStackCompleted( );

private:

    vector< CString >   m_aryCallStackSymbolText;

    ViewMode            m_eViewMode;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemBlockView)
	public:
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	virtual void OnInitialUpdate();
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CMemBlockView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CMemBlockView)
	afx_msg void OnGetDispInfo(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
	afx_msg void OnBlockviewCallstackview();
	afx_msg void OnUpdateBlockviewCallstackview(CCmdUI* pCmdUI);
	afx_msg void OnBlockviewChildobjectlist();
	afx_msg void OnUpdateBlockviewChildobjectlist(CCmdUI* pCmdUI);
	afx_msg void OnBlockviewParentobjectlist();
	afx_msg void OnUpdateBlockviewParentobjectlist(CCmdUI* pCmdUI);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
public:
    afx_msg void OnBlockviewCopystacklist();
    afx_msg void OnUpdateBlockviewCopystacklist(CCmdUI *pCmdUI);
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMBLOCKVIEW_H__99CCBA87_C54D_461A_83E3_46ED765B90B9__INCLUDED_)
