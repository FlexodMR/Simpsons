#include "XCondoc.h"
#include "xClipReg.h"
#include "xconview.h"        //needed for CRectEx
#include "dlgprop.h"
#include "xcon.h"

/////////////////////////////////////////////////////////////////////////////
// CXClipReg

void CXClipReg::Copy(CXObject* pObject)
{
    CXContext::Copy(pObject);

    CXClipReg* p = (CXClipReg*)pObject;
    m_bReset = p->m_bReset;
}

void CXClipReg::Draw(CDC* pDC, const CRect& rect, int nZoomFactor)
{
    if (!m_bReset &&
        (rect.left == m_rect.left || rect.top == m_rect.top ||
         rect.right == m_rect.right || rect.bottom == m_rect.bottom) )
    {
        CRectEx rect = m_rect;
        rect *= nZoomFactor;

        CPen pen(PS_SOLID, 0, RGB(255,255,255));
        CPen* pOldPen = pDC->SelectObject(&pen);
        CGdiObject* pOldBrush = pDC->SelectStockObject(HOLLOW_BRUSH);
        pDC->SetROP2(R2_COPYPEN);
        pDC->Rectangle(rect);
        pDC->SelectObject(pOldPen);
        pDC->SelectObject(pOldBrush);
    }
}

BOOL CXClipReg::IsObjSelected(CPoint& point)
{
    if (m_bReset)
        return FALSE;

    CRect rect = m_rect;
    rect.InflateRect(-4,-4);
    return m_rect.PtInRect(point) && !rect.PtInRect(point);
}

void CXClipReg::OnProperties()
{
    CClipPropDlg dlg;
    dlg.m_strName = m_strName;
    dlg.m_nLeft = m_rect.left;
    dlg.m_nTop = m_rect.top;
    dlg.m_nWidth = m_rect.Width();
    dlg.m_nHeight = m_rect.Height();
    dlg.m_bReset = m_bReset;
    dlg.m_sizeMax = m_pDocument->GetResolution();
    if (dlg.DoModal() != IDOK)
        return;

    if (dlg.m_bReset)
    {
        dlg.m_nLeft = dlg.m_nTop = 0;
        dlg.m_nWidth = dlg.m_sizeMax.cx;
        dlg.m_nHeight = dlg.m_sizeMax.cy;
    }

    CRect rect = CRect(CPoint(dlg.m_nLeft, dlg.m_nTop), CSize(dlg.m_nWidth, dlg.m_nHeight));
    if (dlg.m_strName == m_strName && dlg.m_bReset == m_bReset && rect == m_rect)
        return;

    m_pDocument->AddUndoObject(new CUndoContext(this, UNDO_MODIFY));

    SetNewName(dlg.m_strName);

    m_bReset = dlg.m_bReset;
    m_rect = rect;

    m_pDocument->GetXConView()->UpdateTracker(this);
}

int CXClipReg::GetImage() 
{ 
    return TREE_CLIP; 
}
