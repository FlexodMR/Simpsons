#pragma warning( disable : 4786 )

#include "xContext.h"
#include "XConDoc.h"
#include "XConView.h"
#include "TabView.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"
#include "xUtil.h"

#include "xLayer.h"
//#include "xGroup.h"
//#include "xClipReg.h"

void CXContext::AddUndoObjectModify()
{
    m_pDocument->AddUndoObject(new CUndoContext(this, UNDO_MODIFY));
}

/////////////////////////////////////////////////////////////////////////////
// CXContext

IMPLEMENT_DYNAMIC(CXContext, CXObjectName)

int CXContext::FindIndex()
{
    /*
    if (m_pGroup != NULL)
        return FindObjectInArray(m_pGroup->GetContextArray(), this);
    else
        return FindObjectInArray(m_pLayer->GetContextArray(), this);
        */
    return 0;
}

void CXContext::Copy(CXObject* pObject)
{
    CXObjectName::Copy(pObject);

    CXContext* p = (CXContext*)pObject;
    m_pOverlay = p->m_pOverlay;
    m_pLayer = p->m_pLayer;
    m_rect = p->m_rect;
}

void CXContext::OnMove(BOOL bMoveUp)
{
    /*
    if (m_pGroup == NULL)
        MoveObject(m_pLayer->GetContextArray(), this, bMoveUp);
    else
        MoveObject(m_pGroup->GetContextArray(), this, bMoveUp);
    m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->MoveObject(this, bMoveUp);
    InvalidateView();
    */
}

void CXContext::ValidateRect()
{
    const CSize& sizeDoc = m_pDocument->GetResolution();
    if (m_rect.left < 0)
        m_rect.OffsetRect(-m_rect.left, 0);
    else if (m_rect.right > sizeDoc.cx)
        m_rect.OffsetRect(sizeDoc.cx - m_rect.right, 0);
    if (m_rect.top < 0)
        m_rect.OffsetRect(0, -m_rect.top);
    else if (m_rect.bottom > sizeDoc.cy)
        m_rect.OffsetRect(0, sizeDoc.cy - m_rect.bottom);
}

BOOL CXContext::MoveOffset(int dx, int dy, CRect& rect, int nHitTest)
{
    rect = m_rect;
    m_rect.OffsetRect(dx, dy);
    ValidateRect();
    if (rect == m_rect)
        return FALSE;
    rect.UnionRect(rect, m_rect);
    return TRUE;
}

BOOL CXContext::IsObjSelected(CPoint& point)
{
    return m_rect.PtInRect(point);
}

void CXContext::OnDelete()
{
    int nIndex = FindIndex();
    DeleteItem();
    InvalidateView();

    CUndoContext* pUndo = new CUndoContext(this, UNDO_DELETE);
    pUndo->m_nIndex = nIndex;
    m_pDocument->AddUndoObject(pUndo);
}

void CXContext::DeleteItem()
{
    /*
    if (m_pGroup != NULL)
    {
        m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->DeleteObj(this, m_pLayer->GetOverlay()); // WATCH
        m_pDocument->DeleteDocItem(m_pGroup, this);
    }
    else
    {
        m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->DeleteObj(this, m_pLayer->GetOverlay()); // WATCH
        m_pDocument->DeleteDocItem(m_pLayer, this);
    }

    CXConView* pXConView = m_pDocument->GetXConView();
    if (pXConView->GetSelection() == this)
        pXConView->SetSelection(NULL);
        */
}

void CXContext::InvalidateView(LPCRECT pRect /*=NULL*/)
{
    //if (!m_pOverlay->IsVisible())
    if (!m_pLayer->IsVisible())
        return;

    CXConView* pXConView = m_pDocument->GetXConView();
    /*
    if (!IsKindOf(RUNTIME_CLASS(CXClipReg)))
    {
        CRect rect;
        if (pRect)
            rect = pRect;
        else
            rect = m_rect;
        pXConView->InvalidateViewRect(rect);
    }
    else
        pXConView->InvalidateView();
        */
}

void CXContext::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXObjectName::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
        *(CRect*)*ppData = m_rect;
    else
        m_rect = *(RECT*)*ppData;
    *ppData += sizeof(RECT);
}

DWORD CXContext::GetSizeObject()
{
    return CXObjectName::GetSizeObject() + sizeof(RECT);
}

void CXContext::OnPaste(int nIndex /*=-1*/)
{
    CXContextArray* pArray = m_pLayer->GetContextArray();
    CString strName = m_strName;
    m_pDocument->GetUniqueName(pArray, strName);
    SetName(strName);

    if (nIndex == -1)
        nIndex = pArray->GetSize();

    pArray->InsertAt(nIndex, this);
    m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->InsertEntry(this, nIndex);
    m_pDocument->AddUndoObject(new CUndoContext(this, UNDO_ADD));

    InvalidateView();
}

