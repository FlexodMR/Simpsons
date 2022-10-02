#include "xcondoc.h"
#include "xPrimitive.h"
#include "xconview.h"
#include "PrimPropDlg.h"
#include "math.h"
#include "xCon.h"

/////////////////////////////////////////////////////////////////////////////
// CXPrimitive

CXPrimitive::CXPrimitive()
{
    m_d.nVertices = 0;
    m_d.nTranslucent = 0;
}

void CXPrimitive::Copy(CXObject* pObject)
{
    CXContext::Copy(pObject);
    memcpy(&m_d, &((CXPrimitive*)pObject)->m_d, sizeof(m_d));
}

void CXPrimitive::Init(CPoint* pVertex, int nVertices)
{
    m_d.nVertices = nVertices;
    memcpy(m_d.ptVertex, pVertex, nVertices*sizeof(CPoint));
    for (int i = 0; i < m_d.nVertices; i++)
        m_d.rgbVertex[i] = RGB(0,0,192);

    SetRect();
}

void CXPrimitive::SetRect()
{
    if (m_d.nVertices == 2)
    {
        m_rect.left = m_d.ptVertex[0].x;
        m_rect.top = m_d.ptVertex[0].y;
        m_rect.right = m_d.ptVertex[1].x;
        m_rect.bottom = m_d.ptVertex[1].y;
        m_rect.NormalizeRect();
    }
    else
    {
        CRgn rgn;
        rgn.CreatePolygonRgn(m_d.ptVertex, m_d.nVertices, WINDING);
        rgn.GetRgnBox(m_rect);
    }

    m_rect.right++;
    m_rect.bottom++;
}

void CXPrimitive::Draw(CDC* pDC, const CRect& rect, int nZoomFactor)
{
    CPen pen(PS_SOLID, 0, m_d.rgbVertex[0]);
    CBrush brush(m_d.rgbVertex[0]);

    pDC->SetPolyFillMode(WINDING);
    CPen* pOldPen = pDC->SelectObject(&pen);
    CBrush* pOldBrush = pDC->SelectObject(&brush);
    CPoint ptVertex[4];
    CPoint* pPoints;
    if (nZoomFactor > 1)
    {
        memcpy(ptVertex, m_d.ptVertex, sizeof(CPoint)*m_d.nVertices);
        for (int i = 0; i < m_d.nVertices; i++)
        {
            ptVertex[i].x *= nZoomFactor;
            ptVertex[i].y *= nZoomFactor;
        }
        pPoints = ptVertex;
    }
    else
        pPoints = m_d.ptVertex;

    CRectEx rc = rect;
    rc *= nZoomFactor;
    rc.OffsetRect(-m_pDocument->GetXConView()->GetScrollPosition());

    CRgn rgn;
    rgn.CreateRectRgnIndirect(rc);
    pDC->SelectClipRgn(&rgn);

    pDC->Polygon(pPoints, m_d.nVertices);
    pDC->SelectObject(pOldPen);
    pDC->SelectObject(pOldBrush);

    pDC->SelectClipRgn(NULL);
}

void CXPrimitive::OnProperties()
{
    CPrimPropDlg dlg;
    dlg.m_strName = m_strName;
    dlg.m_nTranslucent = m_d.nTranslucent;
    dlg.m_size = m_pDocument->GetResolution();
    for (int i = 0; i < 4; i++)
    {
        if (i < m_d.nVertices)
        {
            dlg.m_nPosX[i] = m_d.ptVertex[i].x;
            dlg.m_nPosY[i] = m_d.ptVertex[i].y;
            dlg.m_clr[i] = m_d.rgbVertex[i];
        }
        else
        {
            dlg.m_nPosX[i] = dlg.m_nPosY[i] = -1;
            dlg.m_clr[i] = 0;
        }
    }

    if (dlg.DoModal() != IDOK)
        return;

    for (i = 0; i < 4; i++)
    {
        if (dlg.m_nPosX[i] == -1 || dlg.m_nPosY[i] == -1)
            break;
    }

    if (i < 2)
    {
        AfxMessageBox(IDP_NOT_ENOUGH_VERTECES);
        return;
    }

    BOOL bChange = FALSE;
    int nVertices = i;
    if (nVertices != m_d.nVertices)
        bChange = TRUE;
    else
    {
        for (i = 0; i < nVertices; i++)
        {
            if (m_d.ptVertex[i].x != dlg.m_nPosX[i] ||
                m_d.ptVertex[i].y != dlg.m_nPosY[i] ||
                m_d.rgbVertex[i] != dlg.m_clr[i])
            {
                bChange = TRUE;
                break;
            }
        }
    }

    if (!bChange && dlg.m_strName == m_strName && dlg.m_nTranslucent == m_d.nTranslucent)
        return;

    m_pDocument->AddUndoObject(new CUndoContext(this, UNDO_MODIFY));

    SetNewName(dlg.m_strName);

    m_d.nTranslucent = dlg.m_nTranslucent;

    if (bChange)
    {
        CRect rect = m_rect;
        m_d.nVertices = nVertices;
        for (i = 0; i < m_d.nVertices; i++)
        {
            m_d.ptVertex[i].x = dlg.m_nPosX[i];
            m_d.ptVertex[i].y = dlg.m_nPosY[i];
            m_d.rgbVertex[i] = dlg.m_clr[i];
        }
        SetRect();

        rect.UnionRect(rect, m_rect);
        m_pDocument->GetXConView()->InvalidateViewRect(rect);
    }
}

BOOL CXPrimitive::IsObjSelected(CPoint& point)
{
    if (m_d.nVertices == 2)
    {
        if (m_d.ptVertex[0].x == m_d.ptVertex[1].x)
        {
            // vertical line
            if (point.x < m_d.ptVertex[0].x-1 || point.x > m_d.ptVertex[0].x+1)
                return FALSE;

            int y1, y2;
            if (m_d.ptVertex[0].y < m_d.ptVertex[1].y)
            {
                y1 = m_d.ptVertex[0].y;
                y2 = m_d.ptVertex[1].y;
            }
            else
            {
                y1 = m_d.ptVertex[1].y;
                y2 = m_d.ptVertex[0].y;
            }
            return point.y >= y1 && point.y <= y2;
        }

        if (m_d.ptVertex[0].y == m_d.ptVertex[1].y)
        {
            // horizontal line
            if (point.y < m_d.ptVertex[0].y-1 || point.y > m_d.ptVertex[0].y+1)
                return FALSE;

            int x1, x2;
            if (m_d.ptVertex[0].x < m_d.ptVertex[1].x)
            {
                x1 = m_d.ptVertex[0].x;
                x2 = m_d.ptVertex[1].x;
            }
            else
            {
                x1 = m_d.ptVertex[1].x;
                x2 = m_d.ptVertex[0].x;
            }
            return point.x >= x1 && point.x <= x2;
        }

        double v0[2] = { (double)(point.x - m_d.ptVertex[0].x), (double)(point.y - m_d.ptVertex[0].y) };
        double v1[2] = { (double)(m_d.ptVertex[1].x - m_d.ptVertex[0].x), (double)(m_d.ptVertex[1].y - m_d.ptVertex[0].y) };
        double proj1 = (v0[0]*v1[0] + v0[1]*v1[1])/(v1[0]*v1[0] + v1[1]*v1[1]);
        double a = v0[0] - v1[0]*proj1;
        double b = v0[1] - v1[1]*proj1;
        double len = sqrt(a*a + b*b);
        return len <= 5.0f;
    }

    return CXContext::IsObjSelected(point);
}

BOOL CXPrimitive::MoveOffset(int dx, int dy, CRect& rect, int nHitTest)
{
    BOOL bMoved;
    CRect rcOld = m_rect;
    if (nHitTest == -1)
    {
        bMoved = CXContext::MoveOffset(dx, dy, rect, nHitTest);
        if (bMoved)
        {
            // move all the vertices by same amount
            CSize size(m_rect.left - rcOld.left, m_rect.top - rcOld.top);
            for (int i = 0; i < m_d.nVertices; i++)
                m_d.ptVertex[i] += size;
        }
    }
    else
    {
        // move the hit point only
        CPoint& point = m_d.ptVertex[nHitTest]; 
        CPoint ptOld = point;
        point.x += dx;
        point.y += dy;

        const CSize& sizeDoc = m_pDocument->GetResolution();
        if (point.x < 0)
            point.x = 0;
        else if (point.x > sizeDoc.cx-1)
            point.x = sizeDoc.cx-1;
        if (point.y < 0)
            point.y = 0;
        else if (point.y > sizeDoc.cy-1)
            point.y = sizeDoc.cy-1;

        bMoved = ptOld != point;
        if (bMoved)
        {
            SetRect();
            rect.UnionRect(rcOld, m_rect);
        }
    }

    return bMoved;
}

int CXPrimitive::HitTest(const CPoint& point)
{
    for (int i = 0; i < m_d.nVertices; i++)
    {
        if (CRect(m_d.ptVertex[i].x-3, m_d.ptVertex[i].y-3, m_d.ptVertex[i].x+4, m_d.ptVertex[i].y+4).PtInRect(point))
            return i;
    }

    return -1;
}

int CXPrimitive::GetImage() 
{ 
    return TREE_POLY; 
}
