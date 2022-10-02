#if !defined(AFX_MEMHEXVIEW_H__F198120C_0834_4D9D_A578_684D3E765A5B__INCLUDED_)
#define AFX_MEMHEXVIEW_H__F198120C_0834_4D9D_A578_684D3E765A5B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemHexView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMemHexView view

class CMemHexView :
    public CView
{
protected:
	CMemHexView();  // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CMemHexView)

public:

    //
    // view option modification
    //
    void SetDigitsInData( int nDigits );
    int GetDigitsInData( ) const;

    void SetColumns( int nColumns );
    int GetColumns( ) const;

    void SetMemSpace( MM_ClientMemorySpace eSpace, unsigned int uStartAddress, unsigned int uSize, unsigned int uInitalAddr );
    MM_ClientMemorySpace GetMemSpace( ) const;
    unsigned int GetMemSpaceStartAddress( ) const;
    unsigned int GetMemSpaceDataSize( ) const;

    bool SetViewMemAddr( unsigned int uAddr );

    void SetReadOnly( bool bReadOnly );
    bool GetReadOnly( ) const;

    unsigned int GetCurrentViewAddress( ) const;
    unsigned int GetCurrentViewDataSize( ) const;

    void RequestViewData( );

protected:

    unsigned int CalculateViewDataSizeInBytes( ) const;

    unsigned int CalculateDataColumnSize( ) const;

    unsigned int CalculateDataRowSize( ) const;

    unsigned int GetAddrFromScrollPos( ) const;

    void StartAddrToScrollPos( );
    void ScrollPosToStartAddr( );

    void CalculateScrollSize( );

    void PopulateMemAddr( );

    void PopulateMemData( );

    void PopulateMemDataWithDummy( );

    void ScrollToMemAddr( unsigned int uAddr );

    void RePositionAddrEditCtrl( );

    void RePositionDataEditCtrl( );

    void UpdateAddrEditCtrl( );

    void UpdateDataEditCtrl( );

    int GetFontHeight( ) const;

    int GetFontWidth( ) const;

    int GetBytePerRow( ) const;

private:

    int                     m_nDigitsInData;        // 2: BYTE view 4: WORD view 8: DWORD view
    int                     m_nColumns;
    unsigned int            m_uMemSpaceStartAddress;
    unsigned int            m_uMemSpaceDataSize;
    MM_ClientMemorySpace    m_eMemSpace;
    bool                    m_bReadOnly;

    unsigned int            m_uViewStartAddr;

    mutable CEdit           m_edtAddr;
    mutable CEdit           m_edtData;

    mutable CFont           m_fntViewFont;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemHexView)
	protected:
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	virtual void OnDraw(CDC* pDC);
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CMemHexView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CMemHexView)
	afx_msg void OnKillFocus(CWnd* pNewWnd);
	afx_msg void OnSetFocus(CWnd* pOldWnd);
	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnChar(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonDblClk(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg BOOL OnMouseWheel(UINT nFlags, short zDelta, CPoint pt);
	afx_msg void OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
	afx_msg void OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
	afx_msg void OnSize(UINT nType, int cx, int cy);
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg BOOL OnEraseBkgnd(CDC* pDC);
	afx_msg void OnDestroy();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMHEXVIEW_H__F198120C_0834_4D9D_A578_684D3E765A5B__INCLUDED_)
