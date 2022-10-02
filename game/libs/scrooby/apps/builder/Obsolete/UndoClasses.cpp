#pragma warning( disable : 4786 )

#include "UndoClasses.h"

#include "XConView.h"
#include "xUtil.h"
#include "TabView.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"

#include "xObject.h"
#include "xResource.h"
#include "xPathObject.h"
#include "xString.h"
//#include "xClipReg.h"
#include "xDisplay.h"
#include "xScreen.h"
#include "xOverlay.h"
//#include "xGroup.h"





/////////////////////////////////////////////////////////////////////////////
// CUndoObject

CUndoObject::CUndoObject(CXObject* pObject, int nAction)
{
    m_nAction = nAction;

    if (m_nAction == UNDO_MODIFY)
    {
        m_pObject = (CXObject*)pObject->GetRuntimeClass()->CreateObject();
        m_pObject->Copy(pObject);
    }
    else
        m_pObject = pObject;
}

CUndoObject::~CUndoObject()
{
    if (m_nAction == UNDO_MODIFY || m_nAction == UNDO_DELETE)
        delete m_pObject;
}



/////////////////////////////////////////////////////////////////////////////
// CUndoMove

CUndoMove::CUndoMove(CXObject* pObject, BOOL bMoveUp)
: CUndoObject(pObject, UNDO_MOVE)
{
    m_bMoveUp = bMoveUp;
}

void CUndoMove::Reset(CXConDoc* pDoc)
{
    m_bMoveUp = m_bMoveUp ? FALSE : TRUE;
    m_pObject->OnMove(m_bMoveUp);
}


/////////////////////////////////////////////////////////////////////////////
// CUndoMulti

CUndoMulti::CUndoMulti(CXDisplay* pDisplay)
: CUndoObject(pDisplay, UNDO_MULTI)
{
    pDisplay->CopyArray(&m_arObject, pDisplay->GetArray());
}

CUndoMulti::~CUndoMulti()
{
    STATIC_DOWNCAST(CXDisplay, m_pObject)->DeleteArray(&m_arObject);
}

void CUndoMulti::Reset(CXConDoc* pDoc)
{
    CXDisplay* pDisplay = STATIC_DOWNCAST(CXDisplay, m_pObject);
    CObArray* parDisplay = pDisplay->GetArray();

    CObArray arTemp;
    pDisplay->CopyArray(&arTemp, parDisplay);
    pDisplay->CopyArray(parDisplay, &m_arObject);
    pDisplay->CopyArray(&m_arObject, &arTemp);

    ((COverlayDlg*)pDoc->GetTabView()->GetPage(OVERLAY_PAGE))->SetMultiObject(pDisplay);

    pDisplay->DeleteArray(&arTemp);
}


/////////////////////////////////////////////////////////////////////////////
// CUndoResource

CUndoResource::CUndoResource(CXResource* pResource, int nAction, int nIndex /*=0*/)
: CUndoObject(pResource, nAction)
{
    if (nAction == UNDO_DELETE)
        m_nIndex = nIndex;
    else
    {
        CXConDoc* pDoc = pResource->GetDocument();
        m_nIndex = FindObjectInArray(pDoc->GetObjectArray(pResource->GetType()), pResource);
    }
}

void CUndoResource::Reset(CXConDoc* pDoc)
{
    switch (m_nAction)
    {
    case UNDO_MODIFY:        // resource property changed
        {
            CXObject* pObject = pDoc->GetObjectArray(m_pObject->GetType())->GetAt(m_nIndex);

            CXObject* pNewObject = (CXObject*)pObject->GetRuntimeClass()->CreateObject();
            pNewObject->Copy(pObject);

            BOOL bChangeFile = FALSE;
            if (m_pObject->IsKindOf(RUNTIME_CLASS(CXPathObject)))
                bChangeFile = lstrcmpi(((CXPathObject*)m_pObject)->GetPathName(), ((CXPathObject*)pObject)->GetPathName()) != 0;

            pObject->Copy(m_pObject);

            pDoc->GetTabView()->InvalidatePage();

            if (bChangeFile)
            {
                CDirectoryMgr dmg(pDoc->GetResourcePath());
                ((CXPathObject*)pObject)->Reload();
            }

            if (pObject->IsKindOf(RUNTIME_CLASS(CXString)))
                pDoc->OnStringChange((CXString*)pObject);
            else
                pDoc->RefreshOverlays(STATIC_DOWNCAST(CXResource, pObject));

            delete m_pObject;
            m_pObject = pNewObject;
            break;
        }

    case UNDO_ADD:            // resource was added - remove it
        {
            pDoc->GetTabView()->GetPage(RESOURCE_PAGE)->DeleteObj(m_pObject);
            pDoc->DeleteDocItem(m_pObject);
            m_nAction = UNDO_DELETE;
            break;
        }

    case UNDO_DELETE:        // resource was removed - add it back
        {
            pDoc->GetObjectArray(m_pObject->GetType())->InsertAt(m_nIndex, m_pObject);
            pDoc->GetTabView()->GetPage(RESOURCE_PAGE)->InsertNewEntry(m_pObject);
            m_nAction = UNDO_ADD;
            break;
        }
    }
}


/////////////////////////////////////////////////////////////////////////////
// CUndoOverlay

CUndoOverlay::CUndoOverlay(CXOverlay* pOverlay, int nAction)
: CUndoObject(pOverlay, nAction)
{
    if (m_nAction != UNDO_DELETE)
        m_nIndex = pOverlay->FindIndex();
}

void CUndoOverlay::Reset(CXConDoc* pDoc)
{
    DOCARRAYTYPE nType = m_pObject->GetType();
    switch (m_nAction)
    {
    case UNDO_MODIFY:        // overlay property changed
        {
            CXObject* pOverlay = pDoc->GetObjectArray(nType)->GetAt(m_nIndex);

            CXObject* pNewOverlay = (CXObject*)m_pObject->GetRuntimeClass()->CreateObject();
            pNewOverlay->Copy(pOverlay);

            pOverlay->Copy(m_pObject);

            pDoc->GetTabView()->InvalidatePage();

            delete m_pObject;
            m_pObject = pNewOverlay;
            break;
        }

    case UNDO_ADD:            // overlay was added - remove it
        {
            pDoc->GetTabView()->GetPage(OVERLAY_PAGE)->DeleteObj(m_pObject);
            pDoc->DeleteDocItem(m_pObject);
            m_nAction = UNDO_DELETE;
            break;
        }

    case UNDO_DELETE:        // overlay was removed - add it back
        {
            pDoc->GetObjectArray(nType)->InsertAt(m_nIndex, m_pObject);
            pDoc->GetTabView()->GetPage(OVERLAY_PAGE)->InsertEntry(m_pObject, m_nIndex);
            m_nAction = UNDO_ADD;
            break;
        }
    }

    if (m_nAction != UNDO_MODIFY && STATIC_DOWNCAST(CXOverlay, m_pObject)->IsVisible())
        pDoc->GetXConView()->InvalidateView();
}

/////////////////////////////////////////////////////////////////////////////
// CUndoScreen

CUndoScreen::CUndoScreen(CXScreen* pScreen, int nAction)
: CUndoObject(pScreen, nAction)
{
    if (m_nAction != UNDO_DELETE)
        m_nIndex = pScreen->FindIndex();
    m_bOverlayChange = FALSE;
}

void CUndoScreen::Reset(CXConDoc* pDoc)
{
    CTabView* pTabView = pDoc->GetTabView();
    DOCARRAYTYPE nType = m_pObject->GetType();

    switch (m_nAction)
    {
    case UNDO_MODIFY:        // screen property changed
        {
            CXObject* pScreen = pDoc->GetObjectArray(nType)->GetAt(m_nIndex);

            CXObject* pNewScreen = (CXObject*)m_pObject->GetRuntimeClass()->CreateObject();
            pNewScreen->Copy(pScreen);

            pScreen->Copy(m_pObject);

            pTabView->InvalidatePage();
        //    if (m_bOverlayChange)
        //        ((CScreenDlg*)pTabView->GetPage(SCREEN_PAGE))->SetOverlays(STATIC_DOWNCAST(CXScreen, pScreen), FALSE);

            delete m_pObject;
            m_pObject = pNewScreen;
            break;
        }

    case UNDO_ADD:            // screen was added - remove it
        {
//            pTabView->GetPage(SCREEN_PAGE)->DeleteObj(m_pObject);
            pDoc->DeleteDocItem(m_pObject);
            m_nAction = UNDO_DELETE;
            break;
        }

    case UNDO_DELETE:        // screen was removed - add it back
        {
            pDoc->GetObjectArray(nType)->InsertAt(m_nIndex, m_pObject);
//            pTabView->GetPage(SCREEN_PAGE)->InsertEntry(m_pObject, m_nIndex);
            m_nAction = UNDO_ADD;
            break;
        }
    }
}


/////////////////////////////////////////////////////////////////////////////
// CUndoLayer

CUndoLayer::CUndoLayer(CXLayer* pLayer, int nAction)
: CUndoObject(pLayer, nAction)
{
    if (m_nAction != UNDO_DELETE)
        m_nIndex = pLayer->FindIndex();
}

void CUndoLayer::Reset(CXConDoc* pDoc)
{
    CXLayer* pLayer = STATIC_DOWNCAST(CXLayer, m_pObject);
    CXOverlay* pOverlay = pLayer->GetOverlay();
    CXLayerArray* pArray = pOverlay->GetLayerArray();

    switch (m_nAction)
    {
    case UNDO_MODIFY:        // overlay property changed
        {
            CXObject* pLayer = pArray->GetAt(m_nIndex);

            CXObject* pNewLayer = (CXObject*)m_pObject->GetRuntimeClass()->CreateObject();
            pNewLayer->Copy(pLayer);

            pLayer->Copy(m_pObject);

            pDoc->GetTabView()->InvalidatePage();

            delete m_pObject;
            m_pObject = pNewLayer;
            break;
        }

    case UNDO_ADD:            // overlay was added - remove it
        {
            pDoc->GetTabView()->GetPage(OVERLAY_PAGE)->DeleteObj(m_pObject, pLayer->GetOverlay());
            pDoc->DeleteDocItem(m_pObject);
            m_nAction = UNDO_DELETE;
            break;
        }

    case UNDO_DELETE:        // overlay was removed - add it back
        {
            pArray->InsertAt(m_nIndex, (CXLayer*)m_pObject);
            pDoc->GetTabView()->GetPage(OVERLAY_PAGE)->InsertEntry(m_pObject, m_nIndex);
            m_nAction = UNDO_ADD;
            break;
        }
    }

    if (m_nAction != UNDO_MODIFY && pLayer->IsVisible())
        pDoc->GetXConView()->InvalidateView();
}


/////////////////////////////////////////////////////////////////////////////
// CUndoContext

CUndoContext::CUndoContext(CXContext* pContext, int nAction)
: CUndoObject(pContext, nAction)
{
    if (m_nAction != UNDO_DELETE)
        m_nIndex = pContext->FindIndex();
}

void CUndoContext::Reset(CXConDoc* pDoc)
{
    CXContext* pContext = STATIC_DOWNCAST(CXContext, m_pObject);
    CXLayer* pLayer = pContext->GetLayer();
    /*
    CXGroup* pGroup = pContext->GetGroup();

    CRect rect;
    switch (m_nAction)
    {
    case UNDO_MODIFY:        // object property changed
        {
            if (pGroup != NULL)
                pContext = pGroup->GetContextArray()->GetAt(m_nIndex);
            else
                pContext = pLayer->GetContextArray()->GetAt(m_nIndex);
            rect = pContext->GetRect();

            CXContext* pNewContext = (CXContext*)pContext->GetRuntimeClass()->CreateObject();
            pNewContext->Copy(pContext);

            pContext->Copy(m_pObject);
            rect.UnionRect(rect, pContext->GetRect());

            pDoc->GetTabView()->InvalidatePage();
            
            if (pContext->IsKindOf(RUNTIME_CLASS(CXClipReg)))
            {
                CXConView* pXConView = pDoc->GetXConView();
                if (pXConView->GetSelection() == pContext)
                    pXConView->UpdateTracker((CXClipReg*)pContext);
            }
            
            delete m_pObject;
            m_pObject = pNewContext;
            break;
        }

    case UNDO_ADD:            // object was added - remove it
        {
            pContext->DeleteItem();
            rect = pContext->GetRect();
            m_nAction = UNDO_DELETE;
            break;
        }

    case UNDO_DELETE:        // object was removed - add it back
        {
            if (pGroup != NULL)
                pGroup->GetContextArray()->InsertAt(m_nIndex, pContext);
            else
                pLayer->GetContextArray()->InsertAt(m_nIndex, pContext);
            pDoc->GetTabView()->GetPage(OVERLAY_PAGE)->InsertEntry(m_pObject, m_nIndex);
            rect = pContext->GetRect();
            m_nAction = UNDO_ADD;
            break;
        }
    }

    pContext->InvalidateView(rect);
    */
}
