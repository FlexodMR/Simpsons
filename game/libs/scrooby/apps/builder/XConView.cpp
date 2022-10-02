/////////////////////////////////////////////////////////////////////////////
// XConView.cpp : implementation of the CXConView class

#include "StdAfx.h"
#include "XCon.h"
#include "XConDoc.h"
#include "XConView.h"
#include "TabView.h"
#include "PageDlg.h"
//#include "ScreenDlg.h"
#include "ResourceDlg.h"
//#include "xClipReg.h"
//#include "xPrimitive.h"
#include "MainFrm.h"
//#include "xContext.h"

#include "GUI\SelectionList.h"

#include "GUI\Undo\ActionMove.h"
#include "GUI\Undo\ActionSelectionChange.h"

#include "FeData\DrawingContexts\GDIDrawingContext.h"
#include "FeData\NamedElements\Page.h"
#include "FeData\NamedElements\Screen.h"
#include "FeData\NamedElements\DrawingElement.h"



#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif



const float g_MaxZoomIn  = 16.0f;
const float g_MaxZoomOut = 0.25f;
const float g_ZoomAmount = 2.0f;
const float g_BaseZoom   = 1.0f;




/////////////////////////////////////////////////////////////////////////////
// CRectEx

void CRectEx::operator *= (int nFactor)
{
    if (nFactor > 1)
    {
        left *= nFactor;
        top *= nFactor;
        right *= nFactor;
        bottom *= nFactor;
    }
}

void CRectEx::operator /= (int nFactor)
{
    if (nFactor > 1)
    {
        left /= nFactor;
        top /= nFactor;
        right = (right+nFactor+1)/nFactor;
        bottom = (bottom+nFactor+1)/nFactor;
    }
}

/////////////////////////////////////////////////////////////////////////////
// CDrawInfo

CDrawInfo::CDrawInfo(CScrollView* pView)
{
    m_pDC = new CClientDC(pView);
    pView->OnPrepareDC(m_pDC);
    m_pPen = new CPen(PS_SOLID, 0, RGB(255,255,255));
    m_pOldPen = m_pDC->SelectObject(m_pPen);
    m_pOldBrush = m_pDC->SelectStockObject(HOLLOW_BRUSH);
    m_pDC->SetROP2(R2_XORPEN);
}

CDrawInfo::~CDrawInfo()
{
    m_pDC->SelectObject(m_pOldPen);
    m_pDC->SelectObject(m_pOldBrush);
    delete m_pPen;
    delete m_pDC;
}

void CDrawInfo::Draw(const CRect& rect)
{
    m_pDC->Rectangle(rect);
}

/////////////////////////////////////////////////////////////////////////////
// CRectTrackerEx

void CRectTrackerEx::Draw(CDC* pDC) const
{
    // set initial DC state
    VERIFY(pDC->SaveDC() != 0);
    pDC->SetMapMode(MM_TEXT);
    pDC->SetViewportOrg(0, 0);
    pDC->SetWindowOrg(0, 0);

    // get normalized rectangle
    CRect rect = m_rect;
    rect.NormalizeRect();

    // draw lines
    CPen* pOldPen = (CPen*)pDC->SelectStockObject(WHITE_PEN);
    CBrush* pOldBrush = (CBrush*)pDC->SelectStockObject(NULL_BRUSH);
    pDC->SetROP2(R2_COPYPEN);
    rect.InflateRect(+1, +1);   // borders are one pixel outside
    pDC->Rectangle(rect.left, rect.top, rect.right, rect.bottom);

    // draw resize handles
    UINT mask = GetHandleMask();
    for (int i = 0; i < 8; ++i)
    {
        if (mask & (1<<i))
        {
            GetHandleRect((TrackerHit)i, &rect);
            pDC->FillSolidRect(rect, RGB(255,255,255));
        }
    }

    // cleanup pDC state
    if (pOldPen != NULL)
        pDC->SelectObject(pOldPen);
    if (pOldBrush != NULL)
        pDC->SelectObject(pOldBrush);
    VERIFY(pDC->RestoreDC(-1));
}

void CRectTrackerEx::AdjustRect(int nHandle, LPRECT lpRect)
{
    int nZoomFactor = m_pView->GetZoomFactor();
    lpRect->left = (lpRect->left/nZoomFactor)*nZoomFactor + nZoomFactor-1;
    lpRect->top = (lpRect->top/nZoomFactor)*nZoomFactor + nZoomFactor-1;
    lpRect->right = (lpRect->right/nZoomFactor)*nZoomFactor + nZoomFactor-1;
    lpRect->bottom = (lpRect->bottom/nZoomFactor)*nZoomFactor + nZoomFactor-1;

    CRect rectRes = m_rectRes;
    rectRes.OffsetRect(-m_pView->GetScrollPosition());

    if (nHandle == hitMiddle)
    {
        if (lpRect->left < rectRes.left)
            ::OffsetRect(lpRect, rectRes.left-lpRect->left, 0);
        else if (lpRect->right > rectRes.right)
            ::OffsetRect(lpRect, rectRes.right-lpRect->right, 0);
        if (lpRect->top < rectRes.top)
            ::OffsetRect(lpRect, 0, rectRes.top-lpRect->top);
        else if (lpRect->bottom > rectRes.bottom)
            ::OffsetRect(lpRect, 0, rectRes.bottom-lpRect->bottom);
    }
    else
    {
        // keep rect to within screen size
        if (lpRect->left < rectRes.left) lpRect->left = rectRes.left;
        if (lpRect->left > rectRes.right) lpRect->left = rectRes.right;
        if (lpRect->right < rectRes.left) lpRect->right = rectRes.left;
        if (lpRect->right > rectRes.right) lpRect->right = rectRes.right;
        if (lpRect->top < rectRes.top) lpRect->top = rectRes.top;
        if (lpRect->top > rectRes.bottom) lpRect->top = rectRes.bottom;
        if (lpRect->bottom < rectRes.top) lpRect->bottom = rectRes.top;
        if (lpRect->bottom > rectRes.bottom) lpRect->bottom = rectRes.bottom;
    }

    CRectTracker::AdjustRect(nHandle, lpRect);
}

/////////////////////////////////////////////////////////////////////////////
// CXConView

IMPLEMENT_DYNCREATE(CXConView, CScrollView)

BEGIN_MESSAGE_MAP(CXConView, CScrollView)
    //{{AFX_MSG_MAP(CXConView)
    ON_WM_KEYDOWN()
    ON_WM_LBUTTONUP()
    ON_WM_RBUTTONUP()
    ON_WM_MOUSEACTIVATE()
    ON_WM_LBUTTONDOWN()
    ON_WM_MOUSEMOVE()
    ON_WM_CAPTURECHANGED()
    ON_WM_LBUTTONDBLCLK()
    ON_WM_SETCURSOR()
    ON_WM_HSCROLL()
    ON_WM_VSCROLL()
    ON_WM_SIZE()
    ON_WM_KEYUP()
    ON_UPDATE_COMMAND_UI(ID_RENAME, OnUpdateRename)
    ON_COMMAND(ID_RENAME, OnRename)
    ON_WM_ERASEBKGND()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CXConView construction/destruction

CXConView::CXConView()
{
//_pSelection = NULL;
    m_bNewFocus = FALSE;
//    m_bDragging = FALSE;
    m_bMouseSel = FALSE;
    m_bKeyDown = FALSE;

    m_bZoomedIn = FALSE;
    m_nZoomFactor = 1;

    m_CurrentZoom = g_BaseZoom;
    m_LastZoom    = g_BaseZoom;

    m_bInsertingClip = FALSE;
    m_bInsertingPrim = FALSE;

    m_nPoints = 0;
    m_nPointIndex = 0;

    m_hCursorCross = AfxGetApp()->LoadStandardCursor(IDC_CROSS);
    m_pdi = NULL;
    m_bClipRegSelected = FALSE;
    m_pRectTracker = NULL;
    m_bScrollChange = FALSE;

}

CXConView::~CXConView()
{
    DeleteTracker();
}

/////////////////////////////////////////////////////////////////////////////
// CXConView drawing

void CXConView::OnDraw(CDC* pDC)
{
    CRectEx rectClip;
    pDC->GetClipBox(rectClip);
    DoDraw(pDC, rectClip);
  //  SetWindowTitle();
}

void CXConView::DoDraw(CDC* pDC, CRectEx& rectClip)
{
    if (!rectClip.IntersectRect(rectClip, m_rectRes))
    {
        return;
    }

    CXConDoc* pDoc = GetDocument();
 
    CRect clientRect;
    GetClientRect(&clientRect);

    CSize resolusion = pDoc->GetResolution();
    CRect projectRect( 0, 0, resolusion.cx, resolusion.cy );

    //
    // Create the offscreen buffer
    //
    CDC offScreenBuffer;
    offScreenBuffer.CreateCompatibleDC( pDC );

    CBitmap bmpTemp;
    bmpTemp.CreateCompatibleBitmap( pDC, projectRect.Width(), projectRect.Height() );
    CBitmap* pBmpOld = (CBitmap *)offScreenBuffer.SelectObject( &bmpTemp );

    //
    // You DON'T need to replace GDI objects if you select stock objects
    // in - they can be safely left in - but it does not do any harm, and
    // is good practice.
    //
    CPen*   pPenOld = (CPen *)offScreenBuffer.SelectStockObject(BLACK_PEN);
    CBrush* pBrOld  = (CBrush *)offScreenBuffer.SelectStockObject(WHITE_BRUSH);


    /////////////////////////////////////////////////////////////////////////////
    //
    // Start Off Screen Drawing
    //
    /////////////////////////////////////////////////////////////////////////////

    // Make the background rectangle
    offScreenBuffer.FillSolidRect( projectRect, m_clrBkgd );

    FeData::GDIDrawingContext theDrawingContext;
    theDrawingContext.SetCDC( &offScreenBuffer );
    
    // Draw the screen
    FeData::Screen* screen = pDoc->GetScreen();
    if( screen != NULL )
    {
        screen->Draw( &theDrawingContext );
    }

    /////////////////////////////////////////////////////////////////////////////
    //
    // End Off Screen Drawing
    //
    /////////////////////////////////////////////////////////////////////////////

    //
    // Copy the back buffer to the screen
    //

    if( m_CurrentZoom == g_BaseZoom )
    {
        pDC->BitBlt( 0, 
                     0,
                     projectRect.Width(), 
                     projectRect.Height(),
                     &offScreenBuffer, 
                     0, 
                     0,
                     SRCCOPY );
    }
    else
    {
        pDC->StretchBlt( 0, 
                         0,
                         projectRect.Width() * m_CurrentZoom, 
                         projectRect.Height() * m_CurrentZoom,
                         &offScreenBuffer, 
                         0, 
                         0,
                         projectRect.Width(),
                         projectRect.Height(),
                         SRCCOPY );
    }
    
    theDrawingContext.SetCDC( pDC );


    // Draw the selection
    SelectionList* selectionList = pDoc->GetSelectionList();
    if( selectionList != NULL )
    {
        selectionList->DrawSelection( pDC, m_CurrentZoom );
    }


    // Draw the insert poly lines
       if( m_bInsertingPrim )
    {
        CRect rectSave = rectClip;
        CPoint points[ g_MaxNumberOfPolygonPoints ];
        for( int i = 0; i < m_nPointIndex; i++ )
        {
            points[i] = m_ptVertex[i];
            points[i].x *= m_CurrentZoom;
            points[i].y *= m_CurrentZoom;
            CRect rect;
            GetVertexRect( points[i], rect );
            if( rect.IntersectRect( rect, rectSave ) )
            {
                pDC->FillSolidRect( rect, RGB(255,255,255) );
            }
        }
        if( m_nPointIndex > 1 )
        {
            CGdiObject* pOldPen = pDC->SelectStockObject( WHITE_PEN );
            pDC->Polyline( points, m_nPointIndex );
            pDC->SelectObject(pOldPen);
        }
    }

    // Draw the TV cut off
    if (pDoc->ShowTVCutoff())
    {
        CRect rect(rectClip);
        CRectEx rectCutoff = pDoc->GetTVCutoffRect();
        if (rect.IntersectRect(rect, rectCutoff) &&
            (rect.left == rectCutoff.left || rect.top == rectCutoff.top ||
             rect.right == rectCutoff.right || rect.bottom == rectCutoff.bottom))
        {
            CPen pen(PS_DASHDOTDOT, 0, RGB(128,0,128));
            CPen* pOldPen = pDC->SelectObject(&pen);
            CGdiObject* pOldBrush = pDC->SelectStockObject(HOLLOW_BRUSH);
            pDC->SetROP2(R2_COPYPEN);
            pDC->SetBkMode(TRANSPARENT);
            rectCutoff *= m_CurrentZoom;
            pDC->Rectangle(rectCutoff);
            pDC->SelectObject(pOldPen);
            pDC->SelectObject(pOldBrush);
        }
    }

    //
    // Tidy up resources.
    //
    offScreenBuffer.SelectObject(pBmpOld);
    bmpTemp.DeleteObject();
    offScreenBuffer.DeleteDC();





/*
    CRect rectSave = rectClip;
    rectClip /= m_nZoomFactor;
    pDoc->DrawOverlays(pDC, rectClip, m_nZoomFactor);

    if (m_pSelection && !m_bDragging)
    {
        if (m_bClipRegSelected)
        {
            if (m_pRectTracker)
            {
                if (m_bScrollChange)
                    m_pRectTracker->m_rect.OffsetRect(m_ptOldScroll - GetScrollPosition());
                rectSave.OffsetRect(-GetScrollPosition());
                if (rectSave.IntersectRect(rectSave, m_pRectTracker->m_rect))
                    m_pRectTracker->Draw(pDC);
            }
        }
        else if (!m_pSelection->IsKindOf(RUNTIME_CLASS(CXClipReg)))
        {
            const CRect& rectSel = m_pSelection->GetRect();
            CRect rect(rectClip);
            if (rect.IntersectRect(rect, rectSel) && 
                (rect.left == rectSel.left || rect.top == rectSel.top ||
                 rect.right == rectSel.right || rect.bottom == rectSel.bottom))
                DrawSelection(pDC, rectSel);
        }
    }

    if (m_bInsertingPrim)
    {
        CPoint points[4];
        for (int i = 0; i < m_nPointIndex; i++)
        {
            points[i] = m_ptVertex[i];
            points[i].x *= m_nZoomFactor;
            points[i].y *= m_nZoomFactor;
            CRect rect;
            GetVertexRect(points[i], rect);
            if (rect.IntersectRect(rect, rectSave))
                pDC->FillSolidRect(rect, RGB(255,255,255));
        }
        if (m_nPointIndex > 1)
        {
            CGdiObject* pOldPen = pDC->SelectStockObject(WHITE_PEN);
            pDC->Polyline(points, m_nPointIndex);
            pDC->SelectObject(pOldPen);
        }
    }

    if (pDoc->ShowTVCutoff())
    {
        CRect rect(rectClip);
        CRectEx rectCutoff = pDoc->GetTVCutoffRect();
        if (rect.IntersectRect(rect, rectCutoff) &&
            (rect.left == rectCutoff.left || rect.top == rectCutoff.top ||
             rect.right == rectCutoff.right || rect.bottom == rectCutoff.bottom))
        {
            CPen pen(PS_DASHDOTDOT, 0, RGB(128,0,128));
            CPen* pOldPen = pDC->SelectObject(&pen);
            CGdiObject* pOldBrush = pDC->SelectStockObject(HOLLOW_BRUSH);
            pDC->SetROP2(R2_COPYPEN);
            pDC->SetBkMode(TRANSPARENT);
            rectCutoff *= m_nZoomFactor;
            pDC->Rectangle(rectCutoff);
            pDC->SelectObject(pOldPen);
            pDC->SelectObject(pOldBrush);
        }
    }
    */
}

void CXConView::DrawSelection(CDC* pDC, const CRect& rect)
{
    CPen pen(PS_DOT, 0, RGB(64,64,64));
    CPen* pOldPen = pDC->SelectObject(&pen);
    CGdiObject* pOldBrush = pDC->SelectStockObject(HOLLOW_BRUSH);
    pDC->SetBkMode(TRANSPARENT);
    pDC->SetROP2(R2_NOTXORPEN);
    CRectEx rc = rect;
    rc *= m_CurrentZoom;
    pDC->Rectangle(rc);
    pDC->SelectObject(pOldPen);
    pDC->SelectObject(pOldBrush);
}

void CXConView::DrawSelection()
{/*
    if (!m_pSelection)
        return;

    CClientDC dc(this);
    OnPrepareDC(&dc);
    DrawSelection(&dc, m_pSelection->GetRect());*/
}

void CXConView::DrawVertexLDown(const CPoint& point)
{
    CClientDC dc(this);
    OnPrepareDC(&dc);
    dc.SetROP2(R2_NOTXORPEN);
    CRect rect;
    GetVertexRect(point, rect);
    dc.FillSolidRect(rect, RGB(255,255,255));

    if (m_nPointIndex > 0)
    {
        CPoint pt = m_ptVertex[m_nPointIndex-1];
        pt.x *= m_CurrentZoom;
        pt.y *= m_CurrentZoom;
        dc.MoveTo(pt);
        dc.LineTo(point);
    }
}

void CXConView::GetVertexRect(const CPoint& point, CRect& rect)
{
    rect = CRect(CPoint(point.x-2,point.y-2), CSize(4,4));
    if (rect.left < 0)
        rect.OffsetRect(-rect.left, 0);
    else if (rect.right > m_rectRes.right)
        rect.OffsetRect(m_rectRes.right-rect.right, 0);
    if (rect.top < 0)
        rect.OffsetRect(0, -rect.top);
    else if (rect.bottom > m_rectRes.bottom)
        rect.OffsetRect(m_rectRes.bottom-rect.bottom, 0);
}

void CXConView::InvalidateView()
{
    CRect rect = m_rectRes;
    rect.OffsetRect(-GetScrollPosition());
    InvalidateRect(rect, FALSE);
}

void CXConView::InvalidateViewRect(LPCRECT lpRect)
{
    CRectEx rect(lpRect);
    rect *= m_CurrentZoom;
    rect.OffsetRect(-GetScrollPosition());
    InvalidateRect(rect, FALSE);
}

void CXConView::OnInitialUpdate()
{
    CScrollView::OnInitialUpdate();
    SetResolution();
    m_clrBkgd = GetDocument()->GetBkgdColor();

    // The capture must be set then released to have the insertion of
    // polygons work correctly.
    SetCapture();
    ::ReleaseCapture();
}

void CXConView::SetResolution()
{
    // Get the scaled resolution
    CSize scaleResolution( GetDocument()->GetResolution() );
    scaleResolution.cx *= m_CurrentZoom;
    scaleResolution.cy *= m_CurrentZoom;

    // Set the new window size
    m_rectRes = CRect( CPoint(0,0), scaleResolution );
//    m_rectRes *= m_CurrentZoom; //m_nZoomFactor;
    SetScrollSizes(MM_TEXT, scaleResolution);

    // Find the new scroll position
/*    CRect clientRect;
    GetClientRect( clientRect );

    int width = clientRect.Width();
    if( width > scaleResolution.cx )
    {
        width = scaleResolution.cx;
    }
    
    int height = clientRect.Height();
    if( height > scaleResolution.cy )
    {
        height = scaleResolution.cy;
    }
*/
    CPoint scrollPosition = GetScrollPosition();

    scrollPosition.x *= (m_CurrentZoom / m_LastZoom);
/*    scrollPosition.x += (width / 2);
    if( scrollPosition.x > scaleResolution.cx )
    {
        scrollPosition.x = scaleResolution.cx - 1;
    }
*/
    scrollPosition.y *= (m_CurrentZoom / m_LastZoom);
/*    scrollPosition.y += (height / 2);
    if( scrollPosition.y > scaleResolution.cy )
    {
        scrollPosition.y = scaleResolution.cy - 1;
    }
*/
    ScrollToPosition( scrollPosition );
}

void CXConView::SetBkgdColor(COLORREF clr)
{
    m_clrBkgd = clr;
    InvalidateView();
}

BOOL CXConView::GetXYPosition(CPoint& point)
{
    ::GetCursorPos(&point);
    ScreenToClient(&point);
    point.Offset(GetScrollPosition());    

    CRect rect;
    GetClientRect(rect);
    rect.OffsetRect(GetScrollPosition());
    BOOL inClientRect = rect.PtInRect(point);

    CXConDoc* pDoc = GetDocument();
    ASSERT(pDoc);

    // flip y so 0,0 is at the bottom, going up
    CSize resolution = pDoc->GetResolution();
    point.x /= m_CurrentZoom;
    point.y /= m_CurrentZoom;
    point.y = resolution.cy - point.y;

    return inClientRect;
}

/////////////////////////////////////////////////////////////////////////////
// CXConView diagnostics

#ifdef _DEBUG
CXConDoc* CXConView::GetDocument() // non-debug version is inline
{
    ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CXConDoc)));
    return (CXConDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CXConView message handlers

/*

void CXConView::SetSelection(CXContext* pContext)
{
    if (m_pSelection == pContext)
        return;

    CClientDC dc(this);
    OnPrepareDC(&dc);
    if (m_pSelection)
    {
        if (m_bClipRegSelected)
        {
            DeleteTracker();

            CRectEx rect = m_pSelection->GetRect();
            rect.InflateRect(1, 1);
            DoDraw(&dc, rect);
            m_bClipRegSelected = FALSE;
        }
        else if (!m_pSelection->IsKindOf(RUNTIME_CLASS(CXClipReg)))
            DrawSelection(&dc, m_pSelection->GetRect());
    }
    m_pSelection = pContext;
    if (m_pSelection)
    {
        if (!m_bMouseSel)
        {
            CRectEx rectClient;
            GetClientRect(rectClient);
            rectClient.OffsetRect(GetScrollPosition());
            rectClient /= m_nZoomFactor;
            if (!rectClient.IntersectRect(rectClient, m_pSelection->GetRect()) && MakeRectVisible(m_pSelection->GetRect(), 0, 0, TRUE))
                OnPrepareDC(&dc);
        }

        if (m_pSelection->IsKindOf(RUNTIME_CLASS(CXClipReg)))
        {
            if (!((CXClipReg*)m_pSelection)->IsReset())
            {
                CreateTracker();
                m_pRectTracker->Draw(&dc);
            }
        }
        else
        {
            if (!m_bMouseSel)
                DrawSelection(&dc, m_pSelection->GetRect());
            else
                m_bDoDrawSel = TRUE;
        }
    }
    
}*/

void CXConView::SelectObject(CPoint point)
{
/*    CXConDoc* pDoc = GetDocument();
    CXOverlay* pOverlay = NULL;
    CXLayer* pLayer = NULL;
    
    CXContext* pContext = pDoc->GetDisplayObj(point, &pOverlay, &pLayer);
    if (m_pSelection != pContext)
        SelectObject(pContext, pLayer);*/
}

//void CXConView::SelectObject(CXContext* pContext, CXLayer* pLayer /*=NULL*/) // WATCH
//{
//    ((CPageDlg*)GetDocument()->GetTabView()->GetPage(PAGES_PAGE, FALSE))->SelectObject(pContext, pLayer);
//    SetSelection(pContext);
//}


void CXConView::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    if( nChar == VK_ESCAPE )
    {
        if( m_bInsertingPrim )
        {
            if( m_nPointIndex != 0 )
            {
                ::ReleaseCapture();
            }
            else
            {
                m_bInsertingPrim = FALSE;
            }
        }
    }


/*    if (nChar == VK_ESCAPE)
    {
        if (m_bInsertingClip)
        {
            if (m_pdi)
            {
                m_pdi->Draw(m_rectClip);
                ::ReleaseCapture();
            }
            else
                m_bInsertingClip = FALSE;
        }
        else if (m_bInsertingPrim)
        {
            if (m_nPointIndex)
                ::ReleaseCapture();
            else
                m_bInsertingPrim = FALSE;
        }
        else
            SelectObject(NULL);
        return;
    }

    if (nChar == VK_TAB)
    {
        CXLayer* pLayer; // WATCH
        CXOverlay *pOverlay;
        CXContext* pContext = GetDocument()->GetVisibleObject(m_pSelection, &pOverlay, &pLayer, ::GetKeyState(VK_SHIFT) & 0x8000);
        SelectObject(pContext, pLayer);
        return;
    }

    if (!m_pSelection)
    {
        CScrollView::OnKeyDown(nChar, nRepCnt, nFlags);
        return;
    }*/

    int dx = 0;
    int dy = 0;
    switch( nChar )
    {
        case VK_LEFT:
        {
            dx = -(int)nRepCnt;
            break;
        }

        case VK_RIGHT:
        {
            dx = nRepCnt;
            break;
        }

        case VK_UP:
        {
            dy = nRepCnt;
            break;
        }

        case VK_DOWN:
        {
            dy = -(int)nRepCnt;
            break;
        }

        default:
        {
            CScrollView::OnKeyDown(nChar, nRepCnt, nFlags);
            return;
        }
    }

    // check if control key is pressed
    if( ::GetKeyState(VK_CONTROL) & 0x8000 )
    {
        dx *= 4;
        dy *= 4;
    }

    if( (dx == 0) && (dy == 0))
    {
        return;
    }

    // Move the selection
    SelectionList* selectionList = GetDocument()->GetSelectionList();
    if( selectionList != NULL )
    {
        GetDocument()->AddAction( new ActionMove( GetDocument()->GetScreen(),
                                          selectionList, 
                                          dx, dy ) );

        // selectionList->MoveSelection( dx, dy );
        // Invalidate();
    }

    

    

    /*if( !m_bKeyDown )
    {
        GetDocument()->AddUndoObject(new CUndoContext(m_pSelection, UNDO_MODIFY));
        m_bKeyDown = TRUE;
    }

    CRect rect;
    if (m_pSelection->MoveOffset(dx, dy, rect, -1))
    {
        MakeRectVisible(rect, dx, dy);
        InvalidateViewRect(rect);
    }*/
}


void CXConView::DoOnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)
{
    OnKeyDown(nChar, nRepCnt, nFlags);
}


void CXConView::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    m_bKeyDown = FALSE;
    CScrollView::OnKeyUp(nChar, nRepCnt, nFlags);
}

BOOL CXConView::MakeRectVisible(const CRect& rect, int dx, int dy, BOOL bCenter /*=FALSE*/)
{
    /*
    CRectEx rc = rect;
    rc *= m_nZoomFactor;

    CPoint ptScroll = GetScrollPosition();

    if (bCenter)
    {
        CenterOnPoint(rc.CenterPoint());
        CPoint pt = GetScrollPosition();
        if (pt != ptScroll)
        {
            ScrollWindow(ptScroll.x - pt.x, ptScroll.y - pt.y);
            return TRUE;
        }
        return FALSE;
    }

    CRect rcClient;
    GetClientRect(rcClient);
    rcClient.OffsetRect(ptScroll);

    CPoint pt = ptScroll;

    if (dx > 0)
    {
        if (rc.right > rcClient.right)
            pt.x += rc.right-rcClient.right;
        else if (rc.right < rcClient.left)
            pt.x = rc.right-2;
    }
    else
    {
        if (rc.left < rcClient.left)
            pt.x = rc.left;
        else if (rc.left > rcClient.right)
            pt.x += rc.left-rcClient.right+2;
    }

    if (dy > 0)
    {
        if (rc.bottom > rcClient.bottom)
            pt.y += rc.bottom-rcClient.bottom;
        else if (rc.bottom < rcClient.top)
            pt.y = rc.bottom-2;
    }
    else
    {
        if (rc.top < rcClient.top)
            pt.y = rc.top;
        else if (rc.top > rcClient.bottom)
            pt.y += rc.top-rcClient.bottom+2;
    }

    if (pt != ptScroll)
    {
        ScrollToPosition(pt);
        return ptScroll != GetScrollPosition();
    }
*/
    return FALSE;
}

void CXConView::OnRButtonUp(UINT nFlags, CPoint point) 
{
    /*
    CPoint ptView = point;
    ptView.Offset(GetScrollPosition());

    if (m_bNewFocus)
    {
        m_bNewFocus = FALSE;
        if (!m_rectRes.PtInRect(ptView))
            return;
    }

    ptView.x /= m_nZoomFactor;
    ptView.y /= m_nZoomFactor;
    SelectObject(ptView);

    if (m_pSelection)
    {
        CMenu menu;
        if (menu.LoadMenu(IDR_XCONVIEW))
        {
            CMenu* pPopup = menu.GetSubMenu(0);
            ClientToScreen(&point);
            pPopup->TrackPopupMenu(TPM_LEFTALIGN|TPM_RIGHTBUTTON, point.x, point.y, AfxGetMainWnd());
        }
    }*/
}

int CXConView::OnMouseActivate(CWnd* pDesktopWnd, UINT nHitTest, UINT message) 
{
    if (GetFocus() != this)
        m_bNewFocus = TRUE;
    return CScrollView::OnMouseActivate(pDesktopWnd, nHitTest, message);
}

/////////////////////////////////////////////////////////////////////////////

void CXConView::OnLButtonDown(UINT nFlags, CPoint point) 
{
    using namespace FeData;

    //
    // Are we creating a polygon?
    //
    if( m_bInsertingPrim )
    {
        CPoint ptScroll = GetScrollPosition();
        CPoint ptReal = point;
        ptReal.Offset(ptScroll);

        if( !m_rectRes.PtInRect(ptReal) )
        {
            if( m_nPointIndex > 0 )
            {
                ::ReleaseCapture();
            }
            else
            {
                m_bInsertingPrim = FALSE;
            }
            return;
        }

        if( m_nPointIndex == 0 )
        {
        //    m_bDragging = TRUE;
            SetCapture();
        }

        CPoint ptView( ptReal.x / m_CurrentZoom, ptReal.y / m_CurrentZoom );

        // check if a point matches a previous point
        for (int i = 0; i < m_nPointIndex; i++)
        {
            if( m_ptVertex[i] == ptView )
            {
                // invalid point
                ::ReleaseCapture();
                return;
            }
        }

        DrawVertexLDown( ptReal );
        if( m_nPointIndex < g_MaxNumberOfPolygonPoints )
        {
            m_ptVertex[ m_nPointIndex++ ] = ptView;
        }
    }
    //
    // Not making a polygon, handle selections.
    //
    else
    {
        Screen* screen = GetDocument()->GetScreen();
        if( screen == NULL )
        {
            return;
        }

        CPoint scrollPosition = GetScrollPosition();
        int x = (point.x + scrollPosition.x) / m_CurrentZoom;
        int y = (point.y + scrollPosition.y) / m_CurrentZoom;
        y = GetDocument()->GetResolution().cy - y;

        SelectionList* selectionList = GetDocument()->GetSelectionList();

        DrawingElement* drawingElement = screen->GetDrawingElementUnderLocation( x, y );

        bool isShiftDown = (nFlags & MK_SHIFT) != 0;

        DrawingElement* selectedDrawingElement = selectionList->GetDrawingElementUnderLocation( x, y );
        if( selectedDrawingElement != NULL )
        {
            if( isShiftDown )
            {
                GetDocument()->AddAction( new ActionSelectionChange( GetDocument()->GetScreen(),
                                                             selectionList, 
                                                             selectedDrawingElement,
                                                             ACTION_SELECTION_CHANGE_REMOVE ) );
            }
            else
            {
                m_LastMouseLocation.x = x;
                m_LastMouseLocation.y = y;
                m_StartingMouseLocation = m_LastMouseLocation;
                m_DraggingSelection = true;
                SetCapture();
            }
        }
        else
        {
            DrawingElement* drawingElement = screen->GetDrawingElementUnderLocation( x, y ); //GetDocument()->GetResolution().cy - y );

            if( drawingElement == NULL )
            {
                if( !isShiftDown )
                {
                    GetDocument()->AddAction( new ActionSelectionChange( GetDocument()->GetScreen(),
                                                                 selectionList, 
                                                                 NULL,
                                                                 ACTION_SELECTION_CHANGE_CLEAR ) );
                }
            }
            else
            {
                if( isShiftDown )
                {
                    GetDocument()->AddAction( new ActionSelectionChange( GetDocument()->GetScreen(),
                                                                 selectionList, 
                                                                 drawingElement,
                                                                 ACTION_SELECTION_CHANGE_ADD ) );
                }
                else
                {
                    GetDocument()->AddAction( new ActionSelectionChange( GetDocument()->GetScreen(),
                                                                 selectionList, 
                                                                 drawingElement,
                                                                 ACTION_SELECTION_CHANGE_SET ) );
                }

                m_LastMouseLocation.x = x;
                m_LastMouseLocation.y = y;
                m_StartingMouseLocation = m_LastMouseLocation;
                m_DraggingSelection = true;
                Invalidate();
                SetCapture();
            }
        }
    }


    /*
    CPoint ptScroll = GetScrollPosition();
    CPoint ptReal = point;
    ptReal.Offset(ptScroll);

    if (m_bNewFocus)
    {
        m_bNewFocus = FALSE;
        if (!m_rectRes.PtInRect(ptReal))
            return;
    }

    if (m_bInsertingClip)
    {
        if (!m_rectRes.PtInRect(ptReal))
        {
            m_bInsertingClip = FALSE;
            return;
        }

        m_ptStart = ptReal;
        m_rectClip = CRect(ptReal, CSize(0,0));
        m_bDragging = TRUE;
        SetCapture();
        m_pdi = new CDrawInfo(this);
    }
    else if (m_bInsertingPrim)
    {
        if (!m_rectRes.PtInRect(ptReal))
        {
            if (m_nPointIndex)
                ::ReleaseCapture();
            else
                m_bInsertingPrim = FALSE;
            return;
        }

        if (!m_nPointIndex)
        {
            m_bDragging = TRUE;
            SetCapture();
        }

        CPoint ptView(ptReal.x/m_nZoomFactor, ptReal.y/m_nZoomFactor);

        // check if a point matches a previous point
        for (int i = 0; i < m_nPointIndex; i++)
        {
            if (m_ptVertex[i] == ptView)
            {
                // invalid point
                ::ReleaseCapture();
                return;
            }
        }

        DrawVertexLDown(ptReal);
        m_ptVertex[m_nPointIndex++] = ptView;
    }
    else if (m_pRectTracker && m_pRectTracker->HitTest(point) >= 0)
    {
        CRect rectSave = m_pRectTracker->m_rect;
        if (m_pRectTracker->Track(this, point, TRUE))
        {
            CRectEx rect = m_pRectTracker->m_rect;
            rect.NormalizeRect();
            rect.OffsetRect(ptScroll);
            rect.InflateRect(1, 1);
            rect.left /= m_nZoomFactor;
            rect.top /= m_nZoomFactor;
            rect.right /= m_nZoomFactor;
            rect.bottom /= m_nZoomFactor;
            GetDocument()->AddUndoObject(new CUndoContext(m_pSelection, UNDO_MODIFY));
            STATIC_DOWNCAST(CXClipReg, m_pSelection)->SetRect(rect);
            SetTrackerRect();

            rectSave.OffsetRect(ptScroll);
            rectSave.InflateRect(1, 1);
            rect = m_pRectTracker->m_rect;
            rect.OffsetRect(ptScroll);
            rect.InflateRect(1, 1);
            rect.UnionRect(rect, rectSave);
            InvalidateRect(rect, FALSE);
        }
    }
    else
    {
        CPoint ptView(ptReal.x/m_nZoomFactor, ptReal.y/m_nZoomFactor);
        m_bDoDrawSel = FALSE;
        if (!m_pSelection || !m_pSelection->IsObjSelected(ptView))
        {
            m_bMouseSel = TRUE;
            SelectObject(ptView);
            m_bMouseSel = FALSE;
        }
        if (m_pSelection && !m_pSelection->IsKindOf(RUNTIME_CLASS(CXClipReg)))
        {
            if (m_pSelection->IsKindOf(RUNTIME_CLASS(CXPrimitive)))
                m_nPointIndex = ((CXPrimitive*)m_pSelection)->HitTest(ptView);
            m_bDragging = TRUE;
            m_bFirstMove = TRUE;
            SetCapture();
            m_ptStart = ptReal;
            if (!m_bDoDrawSel)
                DrawSelection();
        }
        else
            m_bDragging = FALSE;
    }*/
}

void CXConView::OnMouseMove(UINT nFlags, CPoint point) 
{
    if( GetCapture() != this )
    {
        return;
    }

    //
    // Are we inserting a polygon?
    //
    if( m_bInsertingPrim )
    {
        CPoint ptScroll = GetScrollPosition();
        CPoint ptReal = point; 
        ptReal.Offset(ptScroll);

        CRect rcClient;
        GetClientRect( rcClient );
        if( !rcClient.PtInRect(point) )
        {
            int dx = 0;
            int dy = 0;

            if (point.x < 0)
            {
                dx = point.x;
            }
            else if (point.x > rcClient.right)
            {
                dx = point.x - rcClient.right;
            }
            if (point.y < 0)
            {
                dy = point.y;
            }
            else if (point.y > rcClient.bottom)
            {
                dy = point.y - rcClient.bottom;
            }

            ScrollToPosition(CPoint(ptScroll.x+dx, ptScroll.y+dy));
            if (ptScroll != GetScrollPosition())
            {
                UpdateWindow();
            }
        }
    }
    //
    // Are we dragging a selection
    //
    else if( m_DraggingSelection )
    {
        bool isShiftDown = (nFlags & MK_SHIFT) != 0;

        CPoint scrollPosition = GetScrollPosition();
        int x = point.x + scrollPosition.x;
        int y = point.y + scrollPosition.y;

        // Make sure the scroll is good for the new location
       // ScrollToPosition( CPoint(x, y) );

        // Fix the point for the scrale and upside down y
        x /= m_CurrentZoom;
        y /= m_CurrentZoom;
        y = GetDocument()->GetResolution().cy - y;

        if( (m_LastMouseLocation.x == x) && (m_LastMouseLocation.y == y) )
        {
            return;
        }

        int dx = x - m_LastMouseLocation.x;
        int dy = y - m_LastMouseLocation.y;

        // Move the selection
        SelectionList* selectionList = GetDocument()->GetSelectionList();
        if( selectionList != NULL )
        {
            if( isShiftDown )
            {
                int totalMoveX = abs(x - m_StartingMouseLocation.x );
                int totalMoveY = abs(y - m_StartingMouseLocation.y );

                if( totalMoveX > totalMoveY )
                {
                    int moveBackY = m_LastMouseLocation.y - m_StartingMouseLocation.y;
                
                    selectionList->MoveSelection( dx, -moveBackY );
                    m_LastMouseLocation.x = x;
                    m_LastMouseLocation.y = m_StartingMouseLocation.y;
                }
                else
                {
                    int moveBackX = m_LastMouseLocation.x - m_StartingMouseLocation.x;

                    selectionList->MoveSelection( -moveBackX, dy );
                    m_LastMouseLocation.x = m_StartingMouseLocation.x;
                    m_LastMouseLocation.y = y;
                }
            }
            else
            {
                selectionList->MoveSelection( dx, dy );
                m_LastMouseLocation.x = x;
                m_LastMouseLocation.y = y;
            }
            Invalidate();
        }
    }





    /*
    CPoint ptScroll = GetScrollPosition();
    CPoint ptReal = point; 
    ptReal.Offset(ptScroll);



    if (!m_bDragging || GetCapture() != this)
        return;

    if (m_bInsertingClip)
    {
        m_pdi->Draw(m_rectClip);
        m_rectClip.left = m_ptStart.x;
        m_rectClip.top = m_ptStart.y;
        m_rectClip.right = ptReal.x;
        m_rectClip.bottom = ptReal.y;
        m_rectClip.NormalizeRect();
        m_rectClip /= m_nZoomFactor;
        m_rectClip.right++;
        m_rectClip.bottom++;
        CRect rectSave = m_rectClip;
        m_rectClip *= m_nZoomFactor;
        m_rectClip.IntersectRect(m_rectClip, m_rectRes);
        if (MakeRectVisible(rectSave, ptReal.x-m_ptStart.x, ptReal.y-m_ptStart.y))
        {
            OnPrepareDC(m_pdi->GetDC());
            UpdateWindow();
        }
        m_pdi->Draw(m_rectClip);
    }
    else if (m_bInsertingPrim)
    {
        CRect rcClient;
        GetClientRect(rcClient);
        if (!rcClient.PtInRect(point))
        {
            int dx = 0, dy = 0;
            if (point.x < 0)
                dx = point.x;
            else if (point.x > rcClient.right)
                dx = point.x - rcClient.right;
            if (point.y < 0)
                dy = point.y;
            else if (point.y > rcClient.bottom)
                dy = point.y - rcClient.bottom;
            ScrollToPosition(CPoint(ptScroll.x+dx, ptScroll.y+dy));
            if (ptScroll != GetScrollPosition())
                UpdateWindow();
        }
    }
    else if (m_rectRes.PtInRect(ptReal))
    {
        int dx = (ptReal.x - m_ptStart.x)/m_nZoomFactor;
        int dy = (ptReal.y - m_ptStart.y)/m_nZoomFactor;
        if (!dx && !dy)
            return;

        if (m_bFirstMove)
        {
            GetDocument()->AddUndoObject(new CUndoContext(m_pSelection, UNDO_MODIFY));
            m_bFirstMove = FALSE;
        }

        CRect rect;
        if (m_pSelection->MoveOffset(dx, dy, rect, m_nPointIndex))
        {
            MakeRectVisible(rect, dx, dy);
            InvalidateViewRect(rect);
            m_ptStart.Offset(dx*m_nZoomFactor, dy*m_nZoomFactor);
        }
    }*/
}

void CXConView::OnLButtonUp(UINT nFlags, CPoint point) 
{
    if( m_DraggingSelection )
    {
        if( m_LastMouseLocation != m_StartingMouseLocation )
        {
            SelectionList* selectionList = GetDocument()->GetSelectionList();
            if( selectionList != NULL )
            {
                int totalMoveX = m_LastMouseLocation.x - m_StartingMouseLocation.x;
                int totalMoveY = m_LastMouseLocation.y - m_StartingMouseLocation.y;

                selectionList->MoveSelection( -totalMoveX, -totalMoveY );

                GetDocument()->AddAction( new ActionMove( GetDocument()->GetScreen(),
                                                  selectionList, 
                                                  totalMoveX, totalMoveY ) );
            }    
        }
        m_DraggingSelection = false;
        ::ReleaseCapture();
    }

    if( m_bInsertingPrim )
    {
        if( m_nPointIndex == m_nPoints )
        {
            GetDocument()->InsertPrimitive(m_ptVertex, m_nPoints);
            ::ReleaseCapture();
        }
    }

    /*
    if (m_bInsertingClip)
    {
        ::ReleaseCapture();

        if (m_rectClip.Width() < 8*m_nZoomFactor || m_rectClip.Height() < 8*m_nZoomFactor)
            InvalidateView();
        else
        {
            m_rectClip /= m_nZoomFactor;
            GetDocument()->InsertClipRegion(m_rectClip);
        }
    }
    else if (m_bInsertingPrim)
    {
        if (m_nPointIndex == m_nPoints)
        {
            GetDocument()->InsertPrimitive(m_ptVertex, m_nPoints);
            ::ReleaseCapture();
        }
    }
    else if (m_bDragging)
        ::ReleaseCapture();
        */
}

void CXConView::OnLButtonDblClk(UINT nFlags, CPoint point) 
{
    CPoint scrollPosition = GetScrollPosition();
    int x = (point.x + scrollPosition.x) / m_CurrentZoom;
    int y = (point.y + scrollPosition.y) / m_CurrentZoom;
    y = GetDocument()->GetResolution().cy - y;

    SelectionList* selectionList = GetDocument()->GetSelectionList();

    FeData::DrawingElement* selectedDrawingElement = selectionList->GetDrawingElementUnderLocation( x, y );
    if( selectedDrawingElement != NULL )
    {
        GetDocument()->HandleProperties( selectedDrawingElement );
    }
}

void CXConView::OnCaptureChanged(CWnd* pWnd) 
{
    m_DraggingSelection = false;

    if( m_bInsertingPrim )
    {
    //    m_bDragging = FALSE;
        m_bInsertingPrim = FALSE;
        InvalidateView();
    }


    /*
    if (m_bDragging)
    {
        if (m_bInsertingClip)
        {
            delete m_pdi;
            m_pdi = NULL;
        }
        else if (m_bInsertingPrim)
        {
            InvalidateView();
        }
        else
            DrawSelection();
        m_bDragging = FALSE;
        m_bInsertingClip = FALSE;
        m_bInsertingPrim = FALSE;
    }*/
}

/////////////////////////////////////////////////////////////////////////////

void CXConView::OnZoomToggle() 
{
    /*m_bZoomedIn = !m_bZoomedIn;
    m_nZoomFactor = m_bZoomedIn ? 2 : 1;
    SetResolution();

    if (m_pRectTracker)
        SetTrackerRect();

    Invalidate();*/
}

/////////////////////////////////////////////////////////////////////////////

BOOL CXConView::OnSetCursor(CWnd* pWnd, UINT nHitTest, UINT message) 
{
    if (nHitTest == HTCLIENT)
    {
        if (m_bInsertingClip || m_bInsertingPrim)
        {
            ::SetCursor(m_hCursorCross);
            return TRUE;
        }
        else if (m_pRectTracker && m_pRectTracker->SetCursor(pWnd, nHitTest))
        {
            return TRUE;
        }
    }
    
    return CScrollView::OnSetCursor(pWnd, nHitTest, message);
}

/////////////////////////////////////////////////////////////////////////////

void CXConView::InsertClipRegion()
{
    m_bInsertingClip = TRUE;
}

void CXConView::CreateTracker()
{
    m_bClipRegSelected = TRUE;
    m_pRectTracker = new CRectTrackerEx;
    SetTrackerRect();
    m_pRectTracker->m_nStyle = CRectTracker::solidLine|CRectTracker::resizeInside;
    m_pRectTracker->m_pView = this;

    m_pRectTracker->m_rectRes = m_rectRes;
    m_pRectTracker->m_rectRes.InflateRect(-1, -1);
}

void CXConView::DeleteTracker()
{
    delete m_pRectTracker;
    m_pRectTracker = NULL;
}

void CXConView::SetTrackerRect()
{
/*    CRectEx rect = m_pSelection->GetRect();
    rect *= m_CurrentZoom;//m_nZoomFactor;
    rect.OffsetRect(-GetScrollPosition());
    rect.InflateRect(-1, -1);
    m_pRectTracker->m_rect = rect;*/
}

/*
void CXConView::UpdateTracker(CXClipReg* pClip)
{
    if (pClip->IsReset())
    {
        if (m_pRectTracker)
        {
            // remove the current tracker
            DeleteTracker();
            m_bClipRegSelected = FALSE;
        }
    }
    else if (!m_pRectTracker)
    {
        // create a tracker object
        m_pSelection = pClip;
        CreateTracker();
    }
    else
        SetTrackerRect();
    InvalidateView();
}
*/

void CXConView::OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) 
{
    if (m_pRectTracker)
    {
        m_ptOldScroll = GetScrollPosition();
        m_bScrollChange = TRUE;
    }
    
    CScrollView::OnHScroll(nSBCode, nPos, pScrollBar);
    m_bScrollChange = FALSE;
}

void CXConView::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) 
{
    if (m_pRectTracker)
    {
        m_ptOldScroll = GetScrollPosition();
        m_bScrollChange = TRUE;
    }
    
    CScrollView::OnVScroll(nSBCode, nPos, pScrollBar);
    m_bScrollChange = FALSE;
}

void CXConView::OnSize(UINT nType, int cx, int cy) 
{/*
    if (m_pRectTracker)
    {
        CPoint ptOld = GetScrollPosition();
        CScrollView::OnSize(nType, cx, cy);

        CPoint ptNew = GetScrollPosition();
        if (ptNew != ptOld)
        {
            CRect rect = m_pRectTracker->m_rect;
            rect.OffsetRect(ptOld);
            rect.InflateRect(1,1);

            CRectEx rectNew = m_pSelection->GetRect();
            rectNew *= m_CurrentZoom; // m_nZoomFactor;
            rectNew.OffsetRect(-ptNew);
            m_pRectTracker->m_rect = rectNew;
            m_pRectTracker->m_rect.InflateRect(-1,-1);

            rectNew.OffsetRect(ptNew);
            rect.UnionRect(rect, rectNew);
            InvalidateViewRect(rect);
        }
        return;
    }*/

    CScrollView::OnSize(nType, cx, cy);
}

/////////////////////////////////////////////////////////////////////////////

void CXConView::InsertPrimitive(int nPoints)
{
    m_nPoints = nPoints;
    m_nPointIndex = 0;
    m_bInsertingPrim = TRUE;
}

/////////////////////////////////////////////////////////////////////////////

void CXConView::OnUpdateRename(CCmdUI* pCmdUI)
{
    //pCmdUI->Enable(m_pSelection != NULL);
    pCmdUI->Enable( FALSE );
}

void CXConView::OnRename()
{
    GetDocument()->GetTabView()->GetPage(PAGES_PAGE)->RenameObject();
}

void CXConView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
}


/*
void CXConView::SetWindowTitle()
{
    CXConDoc* pDoc = GetDocument();
    
    FeData::Screen* screen = pDoc->GetScreen();

    CString strTitle( screen->GetName() );

    int iCutOff;
    while( (iCutOff = strTitle.Find( '\\' )) >= 0 )
    {
        strTitle = strTitle.Mid(iCutOff + 1);
    }

    pDoc->SetTitle( strTitle );
}
*/

BOOL CXConView::OnEraseBkgnd(CDC* pDC) 
{
    //
    // Erase the area around the drawing area
    // Don't erase the layout area, it will just make the screen flicker
    //
    CRect clientRect;
    GetClientRect(&clientRect);

    CSize resolusion = GetDocument()->GetResolution();
    CRect projectRect( 0, 0, resolusion.cx, resolusion.cy );

    COLORREF backgroundColor = GetSysColor( COLOR_APPWORKSPACE );

    CRect tempRect;
    if( (projectRect.Height() * m_CurrentZoom) < clientRect.Height() )
    {
        tempRect = clientRect;
        tempRect.top = (projectRect.Height() * m_CurrentZoom);
        pDC->FillSolidRect(tempRect, backgroundColor );
    }
    
    if( (projectRect.Width() * m_CurrentZoom) < clientRect.Width() )
    {
        tempRect = clientRect;
        tempRect.left = (projectRect.Width() * m_CurrentZoom);
        pDC->FillSolidRect(tempRect, backgroundColor );
    }
    return true;
}


void CXConView::ZoomIn() 
{
    m_LastZoom = m_CurrentZoom;
    m_CurrentZoom *= g_ZoomAmount; 
    SetResolution();
    if( m_pRectTracker )
    {
        SetTrackerRect();
    }
    Invalidate();
}

bool CXConView::CanZoomIn() 
{
    return( m_CurrentZoom < g_MaxZoomIn );
}

void CXConView::ZoomOut() 
{
    m_LastZoom = m_CurrentZoom;
    m_CurrentZoom /= g_ZoomAmount;
    SetResolution();
    if( m_pRectTracker )
    {
        SetTrackerRect();
    }
    Invalidate();
}

bool CXConView::CanZoomOut() 
{
    return( m_CurrentZoom > g_MaxZoomOut );
}

void CXConView::ZoomActualPixels() 
{
    m_LastZoom = m_CurrentZoom;
    m_CurrentZoom = g_BaseZoom;
    SetResolution();
    if( m_pRectTracker )
    {
        SetTrackerRect();
    }
    Invalidate();
}




