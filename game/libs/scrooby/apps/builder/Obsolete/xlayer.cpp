#pragma warning( disable : 4786 )
#include "xLayer.h"

#include "XConView.h"
#include "TabView.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"
#include "xUtil.h"

#include "xResource.h"
#include "xContext.h"
#include "xOverlay.h"
//#include "xGroup.h"
//#include "xSprite.h"
//#include "xText.h"
#include "xDisplay.h"
//#include "xClipReg.h"
#include "runtime.h"

/*
CXSprite *CXLayer::AddSprite(char *name)
{
    CString strName = name;
    CXSprite* pSprite = new CXSprite;
    pSprite->SetDocument(m_pDocument);
    pSprite->SetLayer(this); //WATCH

    m_pDocument->GetUniqueName(GetContextArray(), strName);
    pSprite->SetName(strName);

    InsertAt(pSprite, NULL);
    COverlayDlg* pDlg = (COverlayDlg*)m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE);
    pDlg->InsertNewEntry(pSprite);

    pSprite->InvalidateView();
    return pSprite;    
}
*/

void CXLayer::OnMove(BOOL bMoveUp)
{
    // WATCH
    MoveObject(m_pOverlay->GetLayerArray(), this, bMoveUp);
    //m_pDocument->UpdateScreenObjs(this, bMoveUp);
    m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->MoveObject(this, bMoveUp);
    m_pDocument->GetXConView()->InvalidateView();
}

void CXLayer::AddUndoObjectModify()
{
    m_pDocument->AddUndoObject(new CUndoLayer(this, UNDO_MODIFY));
}

void CXLayer::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXObjectName::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
        **ppData = m_bVisible;
    else
        m_bVisible = **ppData;
    (*ppData)++;

    if (!bCopyFrom)
    {
        int nSize = m_arContext.GetSize();
        *(DWORD*)*ppData = nSize;
        *ppData += sizeof(DWORD);
        for (int i = 0; i < nSize; i++)
        {
            /*
            if (m_arContext[i]->IsKindOf(RUNTIME_CLASS(CXGroup)))
                ((CXGroup*)m_arContext[i])->CopyEx(ppData, FALSE);
            else
                m_arContext[i]->CopyEx(ppData, FALSE);
                */
        }
    }
    else
    {
        int nSize = *(DWORD*)*ppData;
        *ppData += sizeof(DWORD);
        m_arContext.SetSize(nSize);
        for (int i = 0; i < nSize; i++)
        {
            int nType = *(int*)*ppData;
            CXContext* pNewObject = (CXContext*)s_pClipRuntimeClasses[nType]->CreateObject();
            pNewObject->SetDocument(m_pDocument);
            /*
            if (pNewObject->IsKindOf(RUNTIME_CLASS(CXGroup)))
                ((CXGroup*)pNewObject)->CopyEx(ppData, TRUE);
            else
                pNewObject->CopyEx(ppData, TRUE);
            pNewObject->SetLayer(this);
            m_arContext[i] = pNewObject;
            */
        }
    }
}


//////////////////////////////////////////////////////////////////////
// CXLayer Class
//////////////////////////////////////////////////////////////////////


CXLayer::~CXLayer()
{
    int nSize = m_arContext.GetSize();
    for (int i = 0; i < nSize; i++)
        delete m_arContext[i];
}

int CXLayer::FindIndex()
{
    return FindObjectInArray(m_pOverlay->GetLayerArray(), this);
}

void CXLayer::InsertAt(CXContext* pContext, CXContext* pInsertContext)
{
    int nIndex;
    if (pInsertContext)
        nIndex = FindObjectInArray(&m_arContext, pInsertContext)+1;
    else
        nIndex = m_arContext.GetSize();
    m_arContext.InsertAt(nIndex, pContext);
}

void CXLayer::EnableVisible(BOOL bVisible /*=TRUE*/)
{
    if (m_bVisible != bVisible)
    {
        m_bVisible = bVisible;
        m_pDocument->GetXConView()->InvalidateView();
    }
}

void CXLayer::OnStringChange(CXString* pString)
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

void CXLayer::OnLanguageChange()
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

BOOL CXLayer::Remove(CXContext* pContext, CXResource* pResource /*=NULL*/)
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

void CXLayer::OnDelete()
{
    int nIndex = CXLayer::FindIndex();

    m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->DeleteObj(this, m_pOverlay);
    m_pDocument->DeleteDocItem(this);
    if (IsVisible())
        m_pDocument->GetXConView()->InvalidateView();

    // delete the overlay from screen objects
    //WATCH m_pDocument->OnDeleteOverlay(this);

    CUndoLayer* pUndo = new CUndoLayer(this, UNDO_DELETE);
    pUndo->m_nIndex = nIndex;
    m_pDocument->AddUndoObject(pUndo);
}


CXContext* CXLayer::GetDisplayObj(CPoint point)
{
    /*
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
    */
    return NULL;
   
}

void CXLayer::Export(CArchive& ar)
{
    CXObject::Export(ar);

    ar << (DWORD)0;        // visible state
    ((CXConDoc*)ar.m_pDocument)->ExportArrayNameOffset(ar, &m_arContext);
}


DWORD CXLayer::GetSizeObject()
{
    DWORD dwSizeContext = 0;
    int nSize = m_arContext.GetSize();
    for (int i = 0; i < nSize; i++)
        dwSizeContext += m_arContext[i]->GetSizeObject();
    return CXObjectName::GetSizeObject() + sizeof(DWORD) + sizeof(BYTE) + dwSizeContext;
}

void CXLayer::OnPaste(int nIndex /*=-1*/)
{
    CXObjectArray* pArray = (CXObjectArray*)m_pOverlay->GetLayerArray();
    CString strName = m_strName;
    m_pDocument->GetUniqueName(pArray, strName);
    SetName(strName);

    if (nIndex == -1)
        nIndex = pArray->GetSize();

    pArray->InsertAt(nIndex, this);
    m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->InsertEntry(this, nIndex);
    m_pDocument->AddUndoObject(new CUndoLayer(this, UNDO_ADD));

    m_pDocument->GetXConView()->InvalidateView();
}


/////////////////////////////////////////////////////////////////////////////

IMPLEMENT_SERIAL(CXLayer, CXObjectName, 1|VERSIONABLE_SCHEMA)

void CXLayer::Serialize(CArchive& ar)
{
    CXObjectName::Serialize(ar);

    if (ar.IsStoring())
    {
        ar << m_bVisible;
        m_arContext.Serialize(ar);
    }
    else
    {
        ar >> m_bVisible;
        m_arContext.Serialize(ar);

        int nSize = m_arContext.GetSize();
        for (int i = 0; i < nSize; i++)
            m_arContext[i]->SetLayer(this);

        SetLayer(&m_arContext);
    }
}

void CXLayer::SetLayer(CXContextArray* pArray)
{
    int nSize = pArray->GetSize();
    CXContext* pContext;

    for (int i = 0; i < nSize; i++)
    {
        pContext = pArray->GetAt(i);
        /*
        if (pContext->IsKindOf(RUNTIME_CLASS(CXGroup)))
            SetLayer(((CXGroup*)pContext)->GetContextArray());
        else
            pContext->SetLayer(this);
            */
    }
}

int CXLayer::GetImage() 
{ 
    return TREE_LAYER; 
}

DOCARRAYTYPE CXLayer::GetType() 
{ 
    return DOC_OVERLAYS; 
}
