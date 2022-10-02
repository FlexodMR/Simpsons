#if !defined(AFX_MEMOVERALLVIEW_H__3A192466_A991_49A7_A58A_1FDAD738ACC6__INCLUDED_)
#define AFX_MEMOVERALLVIEW_H__3A192466_A991_49A7_A58A_1FDAD738ACC6__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemOverallView.h : header file
//
class CMemoryImage;
class CMemorySpace;
class CMemorySection;
/////////////////////////////////////////////////////////////////////////////
// CMemOverallView view

class CMemOverallView :
    public CTreeView,
    public CSubject
{
protected:

    CMemOverallView();           // protected constructor used by dynamic creation

    DECLARE_DYNCREATE(CMemOverallView)

public:

    bool Initialize( const CMemoryImage * pImage, CWnd * pParentWnd );

    void Terminate( );

    void ClearView( );

protected:

    enum SectionIcon
    {
        SectionTextIcon = 4,
        SectionHeapIcon = 5,
        SectionOtherIcon = 6,
    };

    void DeleteItemNotExisted( );
    void DeleteChildItemNotExisted( HTREEITEM hRootNode );

    void InsertItemNewlyAdded( );

    void InsertChildItemNewlyAdded( HTREEITEM hRootNode );

    bool IsMemorySpaceInImage( const CMemoryImage * pImage, const CMemorySpace * pSpace );

    bool IsMemorySectionInSection( const CMemorySection * pParentSection, const CMemorySection * pChildSection );

    bool IsMemorySpaceInTreeCtrl( const CMemorySpace * pSpace, HTREEITEM hImageNode );

    bool IsMemorySectionInTreeCtrl( const CMemorySection * pSection, HTREEITEM hSpaceNode );

    bool IsPointerToAnyMemoryImageOrSpaceOrSection( const void * pItem );

    void CleanNodeItemMarkedWithNull( CTreeCtrl & ctlTree, HTREEITEM hNode );

    HTREEITEM InsertMemoryImageNode( const CMemoryImage * pImage, HTREEITEM hParentNode );

    HTREEITEM InsertMemorySectionNode( const CMemorySection * pSection, HTREEITEM hParentNode );

private:

    CImageList              m_imgSectionImageList;
    CGUIItem *              m_pLastSelectedItem;

    TRef< CMemoryImage >    m_pMemoryImage;

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMemOverallView)
	public:
    virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	virtual void OnInitialUpdate();
	protected:
    virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CMemOverallView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

    // Generated message map functions
protected:
    //{{AFX_MSG(CMemOverallView)
	afx_msg void OnDestroy();
	afx_msg void OnGetdispinfo(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnRclick(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnSectionsummaryViewsectiondetail();
	afx_msg void OnUpdateSectionsummaryViewsectiondetail(CCmdUI* pCmdUI);
	afx_msg void OnSectionsummaryViewsectionmemory();
	afx_msg void OnUpdateSectionsummaryViewsectionmemory(CCmdUI* pCmdUI);
	afx_msg void OnLButtonDblClk(UINT nFlags, CPoint point);
	afx_msg void OnSectionsummaryExportdata();
	afx_msg void OnUpdateSectionsummaryExportdata(CCmdUI* pCmdUI);
	afx_msg void OnClick(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG
    DECLARE_MESSAGE_MAP()
public:
    afx_msg void OnTvnSelchanged(NMHDR *pNMHDR, LRESULT *pResult);
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMOVERALLVIEW_H__3A192466_A991_49A7_A58A_1FDAD738ACC6__INCLUDED_)
