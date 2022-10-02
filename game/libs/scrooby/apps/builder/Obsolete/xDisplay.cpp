#include "xDisplay.h"
#include "XConView.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"
#include "TabView.h"
#include "xUtil.h"

//#include "xText.h"
#include "xLayer.h"

/////////////////////////////////////////////////////////////////////////////
// CXDisplay

IMPLEMENT_DYNAMIC(CXDisplay, CXContext)

CXDisplay::CXDisplay()
{
    m_d.x = m_d.y = 0.0f;
    m_rect.SetRectEmpty();
    m_d.size = CSize(0, 0);
    m_d.nAlignment = ALIGN_LEFT|ALIGN_TOP;
    m_d.wShowIndex = 0;
    m_d.nTranslucent = TRANSLUCENT_NONE;
}

void CXDisplay::Copy(CXObject* pObject)
{
    CXContext::Copy(pObject);
    memcpy(&m_d, &((CXDisplay*)pObject)->m_d, sizeof(m_d));
}

void CXDisplay::Add(CXObject* pObject)
{
    GetArray()->Add(pObject);
    const CSize sizeCur = m_d.size;
    const CSize size = GetSize(pObject);
    m_d.size.cx = max(m_d.size.cx, size.cx);
    m_d.size.cy = max(m_d.size.cy, size.cy);
    if (m_d.size != sizeCur)
        CalcRect();
}

void CXDisplay::RecalcSize()
{
    CObArray* pArray = GetArray();
    const CSize sizeCur = m_d.size;
    m_d.size = CSize(0, 0);
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CSize size = GetSize((CXObject*)pArray->GetAt(i));
        m_d.size.cx = max(m_d.size.cx, size.cx);
        m_d.size.cy = max(m_d.size.cy, size.cy);
    }
    if (m_d.size != sizeCur)
        CalcRect();
}

void CXDisplay::ValidateRect()
{
    CRect rect(m_rect);
    CXContext::ValidateRect();
    if (rect != m_rect)
    {
        m_d.x += (float)(m_rect.left - rect.left);
        m_d.y += (float)(m_rect.top - rect.top);
    }
}

BOOL CXDisplay::MoveOffset(int dx, int dy, CRect& rect, int nHitTest)
{
    rect = m_rect;
    m_rect.OffsetRect(dx, dy);
    m_d.x += (float)dx;
    m_d.y += (float)dy;
    ValidateRect();
    if (rect == m_rect)
        return FALSE;
    rect.UnionRect(rect, m_rect);
    return TRUE;
}

void CXDisplay::CalcRect()
{
    float x, y;
    if (m_d.nAlignment & ALIGN_LEFT)
        x = m_d.x;
    else if (m_d.nAlignment & ALIGN_HCENTER)
        x = m_d.x - (float)m_d.size.cx/2.0f;
    else
        x = m_d.x - (float)m_d.size.cx;

    if (m_d.nAlignment & ALIGN_TOP)
        y = m_d.y;
    else if (m_d.nAlignment & ALIGN_VCENTER)
        y = m_d.y - (float)m_d.size.cy/2.0f;
    else
        y = m_d.y - (float)m_d.size.cy;

    m_rect = CRect(CPoint((int)x, (int)y), m_d.size);
}

void CXDisplay::SetShowIndex(int nIndex)
{
    m_d.wShowIndex = (WORD)nIndex;
    m_pDocument->GetXConView()->InvalidateViewRect(m_rect);
}

void CXDisplay::Refresh()
{
    int nUpper = GetArray()->GetUpperBound();
    m_d.wShowIndex = min(m_d.wShowIndex, (WORD)nUpper);

    CRect rect = m_rect;
    RecalcSize();
    ValidateRect();
    UpdateImage();
    rect.UnionRect(rect, m_rect);
    if (m_pLayer->IsVisible())
        m_pDocument->GetXConView()->InvalidateViewRect(rect);
}

void CXDisplay::DeleteMultiObject(CXObject* pObject)
{
    CObArray* pArray = GetArray();
    int nIndex = FindObjectInArray(pArray, pObject);
    m_pDocument->AddUndoObject(new CUndoMulti(this));
    pArray->RemoveAt(nIndex);
    ((COverlayDlg*)m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE))->SetMultiObject(this);
    //if (IsKindOf(RUNTIME_CLASS(CXText)))
    //    delete pObject;
}

void CXDisplay::MoveMulti(CXObject* pObject, BOOL bMoveUp)
{
    MoveObject(GetArray(), pObject, bMoveUp);
    ((COverlayDlg*)m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE))->SetMultiObject(this);
}
