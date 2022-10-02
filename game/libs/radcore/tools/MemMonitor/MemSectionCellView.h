#if !defined(AFX_MEMSECTIONCELLVIEW_H__003767E6_E13E_4703_90C9_F1C666C34657__INCLUDED_)
#define AFX_MEMSECTIONCELLVIEW_H__003767E6_E13E_4703_90C9_F1C666C34657__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemSectionCellView.h : header file
//
class CMemoryBlock;
class CMemorySection;

//============================================================================
// class CMemSectionCellView
//============================================================================

//============================================================================
// CMemSectionCellView :
//
// Description:
//      - Cell view is a graphical memory block allocation view of section memory.
//
// Requirement:
//      - Zoom in/out
//      - Resize memory block to fit window screen
//
// Dependency:
//      - Global GroupID To Colour Lookup Table
//      - Section data
//
// Association
//      - Section list view, when user select an item in list view, cell view
//        cursor must focus on that memory block.
//============================================================================
class CMemSectionCellView :
    public CScrollView
{
protected:
	CMemSectionCellView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CMemSectionCellView)

public:

    void StartZoomMode( );

    void StopZoomMode( );

    bool IsFitToWnd( )
    {
        return m_bFitToWnd;
    }

    bool IsZoomMode( )
    {
        return m_bZoomMode;
    }

    void ShowOptionDialog( );

    void ShowMemoryLocationCursor( );

    void ShowMemoryLocationCursor( unsigned int uAddress );

    void ShowMemoryLocationCursor( CPoint & ptPointer );

    void ReSizeCellToFitWnd( );

    unsigned int GetBytesPerCell( );

    void SetBytesPerCell( unsigned int uBytesPerCell );

    unsigned int GetCellPerRow( );

    void SetCellPerRow( unsigned int uCellPerRow );

    unsigned int GetCellRectSizeX( );

    void SetCellRectSizeX( unsigned int uCellSizeX );

    unsigned int GetCellRectSizeY( );

    void SetCellRectSizeY( unsigned int uCellSizeY );

protected:

    unsigned int GetWndAllignmentOffset( )
    {
        return 5;
    }

    void ZoomIn( );

    void ZoomOut( );

    void OnLButtonClick( UINT nFlags, CPoint point );

    void OnRButtonClick( UINT nFlags, CPoint point );

    void ReSizeScrollBar( );

    CMemorySection * GetMemorySectionPtr( );
    const CMemorySection * GetMemorySectionPtr( ) const;

    void FocusAtMemoryCursor( );

    void CalculateDimensionToFitWnd( );

    void ReBuildCellMap( );

    void DrawCellMap( CDC * pDC );

    CSize GetDrawCellOffset( );

    int PointerToCellIndex( CPoint & pt );

    CRect CellIndexToCellRect( unsigned int uIndex );

    int AddressToCellIndex( unsigned int uAddress );

    void DrawBlinkingCursorAt( CRect & rect );

    void HideBlinkingCursor( );

    COLORREF GetGroupIDColour( const CString & strGroupID ) const;

private:

    CBitmap                         m_bmpDrawBuffer;

    CPoint                          m_ptLeftBClick;
    UINT                            m_nLeftBClickFlags;

    bool                            m_bZoomMode;
    bool                            m_bFitToWnd;
    bool                            m_bCursorOn;

    unsigned int                    m_uCellPerRow;
    unsigned int                    m_uBytesPerCell;
    unsigned int                    m_uCellRectSizeX;
    unsigned int                    m_uCellRectSizeY;
    
    UINT                            m_uBlinkingTimerID;
    UINT                            m_uRedrawDelayTimerID;

    CStatic	                        m_stcBlinkingCursor;

    CMemorySection::MemoryCellMap   m_aryCellMemoryBlockPtr;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemSectionCellView)
    public:
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	virtual void OnInitialUpdate();     // first time after construct
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CMemSectionCellView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
	//{{AFX_MSG(CMemSectionCellView)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg BOOL OnSetCursor(CWnd* pWnd, UINT nHitTest, UINT message);
	afx_msg void OnSize(UINT nType, int cx, int cy);
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnRButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg BOOL OnEraseBkgnd(CDC* pDC);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMSECTIONCELLVIEW_H__003767E6_E13E_4703_90C9_F1C666C34657__INCLUDED_)
