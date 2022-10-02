#if !defined(AFX_MEMSECTIONLISTVIEW_H__67CB1EF4_D869_42B5_A192_7A3187EEF2BC__INCLUDED_)
#define AFX_MEMSECTIONLISTVIEW_H__67CB1EF4_D869_42B5_A192_7A3187EEF2BC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MemSectionCreateProgressDlg.h"

// MemSectionListView.h : header file
//
class CMemorySection;
class CMemoryBlock;
/////////////////////////////////////////////////////////////////////////////
// CMemSectionListView view
class CMemSectionListView :
    public CListView
{
protected:
	CMemSectionListView();           // protected constructor used by dynamic creation

    DECLARE_DYNCREATE(CMemSectionListView)

// Attributes
public:

// Operations
public:

    void SelectMemoryBlock( const CMemoryBlock * pBlock );

    const CMemoryBlock * GetSelectedMemoryBlock( ) const;

    int GetEndAllocationPadding( ) const;

    void SetEndAllocationPadding( const int nPadding );

    const CMemorySection * GetMemorySectionPtr( ) const;

    const unsigned int GetCurrentSortColumn( ) const
    {
        return m_nCurrentSortColumn;
    }

protected:

    COLORREF GetGroupIDColour( const CString & strGroupID ) const;

    void PopulateList( );

    BOOL InsertMemoryBlockItem( const CMemoryBlock * pBlock );

private:

    unsigned int m_nExtraPadding;

    int     m_nCurrentSortColumn;

    CMemSectionCreateProgressDlg m_dlgProgress;
// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemSectionListView)
	public:
	virtual void OnInitialUpdate();
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CMemSectionListView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
    afx_msg void OnCustomDraw( NMHDR * pNMHDR, LRESULT * pResult );
	//{{AFX_MSG(CMemSectionListView)
	afx_msg void OnColumnclick(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnGetDispInfo(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnClick(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnSectionlistMemorycontent();
	afx_msg void OnUpdateSectionlistMemorycontent(CCmdUI* pCmdUI);
	afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnSectionlistCopyaddress();
	afx_msg void OnUpdateSectionlistCopyaddress(CCmdUI* pCmdUI);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMSECTIONLISTVIEW_H__67CB1EF4_D869_42B5_A192_7A3187EEF2BC__INCLUDED_)
