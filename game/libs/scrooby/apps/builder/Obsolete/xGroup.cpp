#pragma warning( disable : 4786 )

#include "xGroup.h"
#include "XConView.h"
#include "TabView.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"
#include "xUtil.h"

#include "xResource.h"
#include "xDisplay.h"
#include "xLayer.h"
//#include "xClipReg.h"
//#include "xText.h"


//////////////////////////////////////////////////////////////////////
// CXGroup Class
//////////////////////////////////////////////////////////////////////


CXGroup::~CXGroup()
{
    int nSize = m_arContext.GetSize();
    for (int i = 0; i < nSize; i++)
        delete m_arContext[i];
}

int CXGroup::FindIndex()
{
    return FindObjectInArray(GetSiblingArray(), this);
}


void CXGroup::InsertAt(CXContext* pContext, CXContext* pInsertContext)
{
    int nIndex;
    if (pInsertContext)
        nIndex = FindObjectInArray(&m_arContext, pInsertContext)+1;
    else
        nIndex = m_arContext.GetSize();
    m_arContext.InsertAt(nIndex, pContext);
}

CXContext* CXGroup::GetDisplayObj(CPoint point)
{
    for (int i = m_arContext.GetUpperBound(); i >= 0; i--)
    {
        CXContext* pContext = m_arContext[i];
        if (pContext->IsKindOf(RUNTIME_CLASS(CXGroup)))
        {
            CXContext* pContextReturn;
            pContextReturn = ((CXGroup*)pContext)->GetDisplayObj(point);
            if (pContextReturn != NULL)
                return pContextReturn;
        }
        else if (pContext->IsObjSelected(point))
            return pContext;
    }
    return NULL;
}

void CXGroup::EnableVisible(BOOL bVisible /*=TRUE*/)
{
    if (m_bVisible != bVisible)
    {
        m_bVisible = bVisible;
        m_pDocument->GetXConView()->InvalidateView();
    }
}

void CXGroup::OnStringChange(CXString* pString)
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

void CXGroup::OnLanguageChange()
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

BOOL CXGroup::Remove(CXContext* pContext, CXResource* pResource /*=NULL*/)
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

void CXGroup::OnDelete()
{
    int nIndex = CXGroup::FindIndex();

    m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->DeleteObj(this, m_pOverlay);
    m_pDocument->DeleteDocItem(this);
    if (m_pLayer->IsVisible())
        m_pDocument->GetXConView()->InvalidateView();

    // delete the overlay from screen objects
    //WATCH m_pDocument->OnDeleteOverlay(this);

    CUndoContext* pUndo = new CUndoContext(this, UNDO_DELETE);
    pUndo->m_nIndex = nIndex;
    m_pDocument->AddUndoObject(pUndo);
}

void CXGroup::OnMove(BOOL bMoveUp)
{
    MoveObject(GetSiblingArray(), this, bMoveUp);
    //m_pDocument->UpdateScreenObjs(this, bMoveUp);
    m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->MoveObject(this, bMoveUp);
    m_pDocument->GetXConView()->InvalidateView();
}

void CXGroup::AddUndoObjectModify()
{
    m_pDocument->AddUndoObject(new CUndoContext(this, UNDO_MODIFY));
}

CXContextArray* CXGroup::GetSiblingArray()
{
    if (m_pGroup == NULL)
        return (m_pLayer->GetContextArray());
    else
        return (m_pGroup->GetContextArray());
}

int CXGroup::GetImage() 
{ 
    return TREE_GROUP; 
}

DOCARRAYTYPE CXGroup::GetType() 
{ 
    return DOC_OVERLAYS; 
}
