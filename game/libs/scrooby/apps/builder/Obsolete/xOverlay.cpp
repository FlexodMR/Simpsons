#pragma warning( disable : 4786 )
#include "xOverlay.h"
#include "XConView.h"
#include "TabView.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"
#include "xUtil.h"

#include "xResource.h"
#include "xDisplay.h"
//#include "xText.h"
//#include "xClipReg.h"
//#include "xGroup.h"

/////////////////////////////////////////////////////////////////////////////
// CXOverlay

CXOverlay::~CXOverlay()
{
    int nSize = m_arLayer.GetSize(); // WATCH arContext
    for (int i = 0; i < nSize; i++)
        delete m_arLayer[i];
}

void CXOverlay::Draw(CDC* pDC, const CRect& rect, int nZoomFactor)
{

    int nLayerSize = m_arLayer.GetSize();
    for (int j = 0; j < nLayerSize; j++)
    {
        CXLayer* pLayer = m_arLayer[j]; // WATCH

        if (pLayer->IsVisible())
        {
            CXContextArray *parContext = pLayer->GetContextArray();
            DrawContextArray(parContext, pDC, rect, nZoomFactor);
        }
    }
}

void CXOverlay::DrawContextArray(CXContextArray* parContext, CDC* pDC, const CRect& rect, int nZoomFactor)
{
    CRect rectClip = rect;
    CRect rectSave = rect;
    BOOL bValidArea = TRUE;
    CXContext* pContext;

    int nContextSize = parContext->GetSize();

    for (int i = 0; i < nContextSize; i++)
    {
        pContext = parContext->GetAt(i);

        /*
        if (pContext->IsKindOf(RUNTIME_CLASS(CXGroup)))
        {
            CXContextArray* pArray = ((CXGroup*)pContext)->GetContextArray();
            DrawContextArray(pArray, pDC, rect, nZoomFactor);
        }
        else
        {
            
            if (pContext->IsKindOf(RUNTIME_CLASS(CXClipReg)))
            {
                rectClip = rectSave;
                bValidArea = TRUE;
                if (!((CXClipReg*)pContext)->IsReset())
                    bValidArea = rectClip.IntersectRect(rectClip, pContext->GetRect());
            }
            if (bValidArea)
            {
                CRect rc = rectClip;
                if (rc.IntersectRect(rc, pContext->GetRect()))
                    pContext->Draw(pDC, rc, nZoomFactor);
            }
            
        }
        */
    }
    
}

void CXOverlay::InsertAt(CXContext* pContext, CXContext* pInsertContext)
{
    int nIndex;
    if (pInsertContext)
        nIndex = FindObjectInArray(&m_arContext, pInsertContext)+1;
    else
        nIndex = m_arContext.GetSize();
    m_arContext.InsertAt(nIndex, pContext);
}

void CXOverlay::InsertAt(CXLayer* pLayer, CXLayer* pInsertLayer)
{
    int nIndex;
    if (pInsertLayer)
        nIndex = FindObjectInArray(&m_arLayer, pInsertLayer)+1;
    else
        nIndex = m_arLayer.GetSize();
    m_arLayer.InsertAt(nIndex, pLayer);
}

CXContext* CXOverlay::GetDisplayObj(CPoint point)
{
    for (int j = m_arLayer.GetUpperBound(); j >= 0; j--) // WATCH
    {
        CXLayer* pLayer =  m_arLayer[j];
        CXContextArray *parContext = pLayer->GetContextArray();
        for (int i = parContext->GetUpperBound(); i >= 0; i--)
        {
            CXContext* pContext = parContext->GetAt(i);
            if (pContext->IsObjSelected(point))
                return pContext;
        }
    }
    return NULL;
}

void CXOverlay::EnableVisible(BOOL bVisible /*=TRUE*/)
{
    /*if (m_bVisible != bVisible)
    {
        m_bVisible = bVisible;
        m_pDocument->GetXConView()->InvalidateView();
    }*/
    CXLayerArray* pArray = GetLayerArray();

    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CXLayer* pLayer = pArray->GetAt(i);
        pLayer->SetVisible(bVisible);
    }
    m_pDocument->GetXConView()->InvalidateView();

}

void CXOverlay::OnStringChange(CXString* pString)
{
    int nSize = m_arContext.GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CXContext* pContext = m_arContext[i];
        /*
        if (pContext->IsKindOf(RUNTIME_CLASS(CXText)))
        {
            CRect rect = pContext->GetRect();
            if (((CXText*)pContext)->OnStringChange(pString) && IsVisible())
            {
                rect.UnionRect(rect, pContext->GetRect());
                m_pDocument->GetXConView()->InvalidateViewRect(rect);
            }
        }
        */
    }
}

void CXOverlay::OnLanguageChange()
{
    CXConView* pView = m_pDocument->GetXConView();
    int nSize = m_arContext.GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CXContext* pContext = m_arContext[i];
        /*
        if (pContext->IsKindOf(RUNTIME_CLASS(CXText)))
        {
            CRect rect = pContext->GetRect();
            if (((CXText*)pContext)->OnLanguageChange() && IsVisible())
            {
                rect.UnionRect(rect, pContext->GetRect());
                pView->InvalidateViewRect(rect);
            }
        }
        */
    }
}

BOOL CXOverlay::Remove(CXContext* pContext, CXResource* pResource /*=NULL*/)
{
    // find index of context object
    int nIndex = FindObjectInArray(&m_arContext, pContext);

    BOOL bContextDeleted = TRUE;

    if (!pResource || !pContext->IsKindOf(RUNTIME_CLASS(CXDisplay)))
        m_arContext.RemoveAt(nIndex);
    else
    {
        CXDisplay* pDisplay = STATIC_DOWNCAST(CXDisplay, pContext);
        CObArray* pArray = pDisplay->GetArray();
        if (pArray->GetSize() == 1)
            m_arContext.RemoveAt(nIndex);
        else
        {
            for (int i = 0; i < pArray->GetSize(); i++)
            {
                if (pArray->GetAt(i) == pResource)
                {
                    pArray->RemoveAt(i);
                    i--;
                }
            }
            
            if (!pArray->GetSize())
                m_arContext.RemoveAt(nIndex);
            else
            {
                pDisplay->Refresh();
                bContextDeleted = FALSE;
            }
        }
    }

    return bContextDeleted;
}

void CXOverlay::OnDelete()
{
    int nIndex = FindIndex();

    m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->DeleteObj(this);
    m_pDocument->DeleteDocItem(this);
    //if (IsVisible())
        m_pDocument->GetXConView()->InvalidateView();

    // delete the overlay from screen objects
    m_pDocument->OnDeleteOverlay(this);

    CUndoOverlay* pUndo = new CUndoOverlay(this, UNDO_DELETE);
    pUndo->m_nIndex = nIndex;
    m_pDocument->AddUndoObject(pUndo);
}

void CXOverlay::OnMove(BOOL bMoveUp)
{
    MoveObject(m_pDocument->GetObjectArray(GetType()), this, bMoveUp);
    m_pDocument->UpdateScreenObjs(this, bMoveUp);
    m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->MoveObject(this, bMoveUp);
    m_pDocument->GetXConView()->InvalidateView();
}

void CXOverlay::AddUndoObjectModify()
{
    m_pDocument->AddUndoObject(new CUndoOverlay(this, UNDO_MODIFY));
}


int CXOverlay::GetImage() 
{ 
    return TREE_OVERLAY; 
}

DOCARRAYTYPE CXOverlay::GetType() 
{ 
    return DOC_OVERLAYS; 
}
