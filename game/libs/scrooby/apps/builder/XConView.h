/////////////////////////////////////////////////////////////////////////////
// XConView.h : interface of the CXConView class

#pragma once

class CXConView;
//class CXContext;
//class CXClipReg;
//class CXOverlay;
class CXConDoc;
//class CXLayer;

const int g_MaxNumberOfPolygonPoints = 4;

/////////////////////////////////////////////////////////////////////////////
// CRectEx

class CRectEx : public CRect
{
public:
    CRectEx() {}
    CRectEx(const CRect& rc) : CRect(rc) {}

    void operator *= (int nFactor);
    void operator /= (int nFactor);
};

/////////////////////////////////////////////////////////////////////////////
// CRectTrackerEx

class CRectTrackerEx : public CRectTracker
{
public:
    CRectTrackerEx() {}
    void Draw(CDC* pDC) const;
    virtual void AdjustRect(int nHandle, LPRECT lpRect);

    CRectEx m_rectRes;
    CXConView* m_pView;
};

/////////////////////////////////////////////////////////////////////////////
// CDrawInfo

class CDrawInfo
{
public:
    CDrawInfo(CScrollView* pView);
    ~CDrawInfo();
    void Draw(const CRect& rect);
    CDC* GetDC() { return m_pDC; }

protected:
    CDC* m_pDC;
    CPen* m_pPen;
    CPen* m_pOldPen;
    CGdiObject* m_pOldBrush;
};

/////////////////////////////////////////////////////////////////////////////
// CXConView

class CXConView : public CScrollView
{
protected: // create from serialization only
    CXConView();
    DECLARE_DYNCREATE(CXConView)

// Attributes
protected:
//    CXContext* m_pSelection;
    BOOL m_bNewFocus;
    BOOL m_bDragging;

    bool   m_DraggingSelection;
    CPoint m_LastMouseLocation;
    CPoint m_StartingMouseLocation;

    CPoint m_ptStart;
    BOOL m_bMouseSel;
    BOOL m_bDoDrawSel;
    CRectEx m_rectRes;
    BOOL m_bZoomedIn;
    int m_nZoomFactor;

    float m_CurrentZoom;
    float m_LastZoom;

    BOOL m_bFirstMove;
    BOOL m_bKeyDown;
    COLORREF m_clrBkgd;

    BOOL m_bInsertingClip;
    BOOL m_bInsertingPrim;
    int m_nPoints;
    CPoint m_ptVertex[ g_MaxNumberOfPolygonPoints ];
    int m_nPointIndex;

    HCURSOR m_hCursorCross;
    CRectEx m_rectClip;
    CDrawInfo* m_pdi;
    BOOL m_bClipRegSelected;
    CRectTrackerEx* m_pRectTracker;
    CPoint m_ptOldScroll;
    BOOL m_bScrollChange;

// Operations
public:
    CXConDoc* GetDocument();
//    void SetSelection(CXContext* pContext);
//    CXContext* GetSelection() { return m_pSelection; }
    void SetBkgdColor(COLORREF clr);
    BOOL GetXYPosition(CPoint& point);
    void InvalidateView();
    void InvalidateViewRect(LPCRECT lpRect);
    void InsertClipRegion();
    void InsertPrimitive(int nPoints);
//    void UpdateTracker(CXClipReg* pClip);

    BOOL IsZoomedIn() const { return m_bZoomedIn; }
    int GetZoomFactor() const { return m_nZoomFactor; }
    void OnZoomToggle();

    void ZoomIn();
    bool CanZoomIn(); 
    void ZoomOut();
    bool CanZoomOut();
    void ZoomActualPixels();

    void DoOnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);

protected:
    void SetWindowTitle();
    void SetResolution();
    void DoDraw(CDC* pDC, CRectEx& rectClip);
    void DrawSelection();
    void DrawSelection(CDC* pDC, const CRect& rect);
    void DrawVertexLDown(const CPoint& point);
    void GetVertexRect(const CPoint& point, CRect& rect);
    void SelectObject(CPoint point);
//    void SelectObject(CXContext* pContext, CXLayer* pLayer = NULL);
    BOOL MakeRectVisible(const CRect& rect, int dx, int dy, BOOL bCenter = FALSE);
    void CreateTracker();
    void DeleteTracker();
    void SetTrackerRect();

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CXConView)
    public:
    virtual void OnDraw(CDC* pDC);  // overridden to draw this view
    protected:
    virtual void OnInitialUpdate(); // called first time after construct
    virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CXConView();

// Generated message map functions
protected:
    //{{AFX_MSG(CXConView)
    afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
    afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
    afx_msg void OnRButtonUp(UINT nFlags, CPoint point);
    afx_msg int OnMouseActivate(CWnd* pDesktopWnd, UINT nHitTest, UINT message);
    afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
    afx_msg void OnMouseMove(UINT nFlags, CPoint point);
    afx_msg void OnCaptureChanged(CWnd *pWnd);
    afx_msg void OnLButtonDblClk(UINT nFlags, CPoint point);
    afx_msg BOOL OnSetCursor(CWnd* pWnd, UINT nHitTest, UINT message);
    afx_msg void OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
    afx_msg void OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar);
    afx_msg void OnSize(UINT nType, int cx, int cy);
    afx_msg void OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags);
    afx_msg void OnUpdateRename(CCmdUI* pCmdUI);
    afx_msg void OnRename();
    afx_msg BOOL OnEraseBkgnd(CDC* pDC);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in XConView.cpp
inline CXConDoc* CXConView::GetDocument()
   { return (CXConDoc*)m_pDocument; }
#endif
