/////////////////////////////////////////////////////////////////////////////
// XConDocClip.cpp : implementation of the Clipboard functionality

#pragma warning( disable : 4786 )
//#include "StdAfx.h"
//#include "XCon.h"
//#include "XConDoc.h"
//#include "XConView.h"
//#include "TabView.h"
//#include "OverlayDlg.h"
//#include "ScreenDlg.h"
//#include "ResourceDlg.h"
//#include "xUtil.h"
//#include "runtime.h"

//#include "xScreen.h"
//#include "xOverlay.h"
//#include "xGroup.h"
//#include "xDisplay.h"
//#include "xSprite.h"
//#include "xText.h"
//#include "xClipReg.h"
//#include "xPrimitive.h"
//#include "xFont.h"
//#include "xResource.h"




#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif
/*
typedef struct
{
    GUID guid;
    SIZE sizeRes;
} CLIPDATAHEADER;



/////////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////////////

BOOL CXConDoc::IsClipboardObject()
{
    CXObject* pObject = GetSelection();
    return pObject &&
        (pObject->IsKindOf(RUNTIME_CLASS(CXScreen)) ||
         pObject->IsKindOf(RUNTIME_CLASS(CXOverlay)) ||
         pObject->IsKindOf(RUNTIME_CLASS(CXContext)) ||
         pObject->IsKindOf(RUNTIME_CLASS(CXLayer))); // WATCH
}

/////////////////////////////////////////////////////////////////////////////
// Cut

void CXConDoc::OnUpdateEditCut(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable(IsClipboardObject());
}

void CXConDoc::OnEditCut() 
{
    OnEditCopy();
    OnDelete();
}

/////////////////////////////////////////////////////////////////////////////
// Copy

void CXConDoc::OnUpdateEditCopy(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable(IsClipboardObject());
}

void CXConDoc::OnEditCopy() 
{
    if (!::OpenClipboard(NULL))
    {
        AfxMessageBox(IDP_FAILED_OPEN_CLIPBOARD);
        return;
    }

    ::EmptyClipboard();

    CXObject* pObject = GetSelection();
    DWORD dwBytes = sizeof(CLIPDATAHEADER) + GetStringLengthBytes(m_strResourcePath);
    dwBytes += GetStringLengthBytes(m_strLanguagePath);
    dwBytes += pObject->GetSizeObject();
    HGLOBAL hData = ::GlobalAlloc(GMEM_MOVEABLE|GMEM_DDESHARE, dwBytes);
    if (hData)
    {
        CLIPDATAHEADER cdh;
        cdh.sizeRes = m_sizeRes;
        cdh.guid = m_guid;

        BYTE* pData = (BYTE*)::GlobalLock(hData);
        memcpy(pData, &cdh, sizeof(cdh));
        pData = (BYTE*)((CLIPDATAHEADER*)pData+1);

        CopyString(&pData, m_strResourcePath, FALSE);
        CopyString(&pData, m_strLanguagePath, FALSE);

        pObject->CopyEx(&pData, FALSE);

        ::GlobalUnlock(hData);
        ::SetClipboardData(m_nClipboardFormat, hData);
    }

    ::CloseClipboard();
}

/////////////////////////////////////////////////////////////////////////////
// Paste

void CXConDoc::OnUpdateEditPaste(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable(::IsClipboardFormatAvailable(m_nClipboardFormat));
}

void CXConDoc::OnEditPaste() 
{
    if (!::OpenClipboard(NULL))
    {
        AfxMessageBox(IDP_FAILED_OPEN_CLIPBOARD);
        return;
    }

    CXObject* pNewObject = NULL;
    HGLOBAL hData = ::GetClipboardData(m_nClipboardFormat);
    CLIPDATAHEADER* pcdh = (CLIPDATAHEADER*)::GlobalLock(hData);
    TRY
    {
        m_bPasteSameDoc = IsEqualGUID(pcdh->guid, m_guid);
        if (!m_bPasteSameDoc && m_sizeRes != pcdh->sizeRes)
        {
            AfxMessageBox(IDP_CLIP_INVALID_RESOLUTION);
            AfxThrowUserException();
        }

        BYTE* pData = (BYTE*)(pcdh+1);

        CString strTemp;
        CopyString(&pData, strTemp, TRUE);
        if (!m_bPasteSameDoc)
        {
            if (m_strResourcePath.IsEmpty())
                m_strResourcePath = strTemp;
            else if (m_strResourcePath.CompareNoCase(strTemp))
            {
                AfxMessageBox(IDP_CLIP_INVALID_RES_PATH);
                AfxThrowUserException();
            }
        }

        CopyString(&pData, strTemp, TRUE);
        if (!m_bPasteSameDoc && !strTemp.IsEmpty() && m_strLanguagePath.CompareNoCase(strTemp))
        {
            AfxMessageBox(IDP_CLIP_INVALID_LANG_PATH);
            AfxThrowUserException();
        }

        int nType = *(int*)pData;
        if (nType != XOBJECT_OVERLAY && nType != XOBJECT_SCREEN && !CheckIfOverlaySelected())
        {
            // context object - overlay not selected
            AfxMessageBox(IDP_CLIP_SELECT_OVERLAY);
            AfxThrowUserException();
        }
        else if (nType == XOBJECT_SCREEN && !m_bPasteSameDoc)
        {
            AfxMessageBox(IDP_CLIP_INVALID_DOCUMENT);
            AfxThrowUserException();
        }

        pNewObject = (CXObject*)s_pClipRuntimeClasses[nType]->CreateObject();
        pNewObject->SetDocument(this);
        pNewObject->CopyEx(&pData, TRUE);
    }
    CATCH_ALL(e)
    {
        e->Delete();
    }
    END_CATCH_ALL

    ::GlobalUnlock(hData);
    ::CloseClipboard();

    if (!pNewObject)
        return;
    
    int nIndex = -1;
    if (pNewObject->IsKindOf(RUNTIME_CLASS(CXScreen)))
    {
    //    CXObject* pObject = GetTabView()->GetPage(SCREEN_PAGE, FALSE)->GetSelection();
    //    if (pObject)
    //        nIndex = FindObjectInArray(m_arDocItems[DOC_SCREENS], pObject)+1;
    }
    else
    {
        COverlayDlg* pDlg = (COverlayDlg*)GetTabView()->GetPage(OVERLAY_PAGE, FALSE);
        CXOverlay* pOverlay = pDlg->GetOverlaySelected();
        
        if (pNewObject->IsKindOf(RUNTIME_CLASS(CXOverlay)))
        {
            if (pOverlay)
                nIndex = FindObjectInArray(m_arDocItems[DOC_OVERLAYS], pOverlay)+1;
        }
        else if (pNewObject->IsKindOf(RUNTIME_CLASS(CXLayer)))
        {
            //CXOverlay* pOverlay = pDlg->GetOverlaySelected();
            ((CXLayer*)pNewObject)->SetOverlay(pOverlay);
            CXObject* pObject = pDlg->GetSelection();

            if (pObject->IsKindOf(RUNTIME_CLASS(CXLayer)))
                nIndex = FindObjectInArray(pOverlay->GetLayerArray(), pObject)+1;
            else if (pObject->IsKindOf(RUNTIME_CLASS(CXOverlay)))
                nIndex = pOverlay->GetLayerArray()->GetSize();
            else
            {
                pOverlay = ((CXContext*)pObject)->GetLayer()->GetOverlay();
                nIndex = pOverlay->GetLayerArray()->GetSize();
                ((CXLayer*)pNewObject)->SetOverlay(pOverlay);
            }

        }
        else
        {
            CXLayer* pLayer = pDlg->GetLayerSelected();

            ((CXContext*)pNewObject)->SetOverlay(pOverlay);
            ((CXContext*)pNewObject)->SetLayer(pLayer);

            CXObject* pObject = pDlg->GetSelection();
            if (pObject)
            {
                if (IsMultiResourceObject(pObject))
                    pObject = pDlg->GetDisplayObject();
                if (pObject->IsKindOf(RUNTIME_CLASS(CXContext)))
                    nIndex = FindObjectInArray(pLayer->GetContextArray(), pObject)+1;
            }
        }
    }

    pNewObject->OnPaste(nIndex);
}

CXResource* CXConDoc::OnPasteResource(CXResource* pResource, CRuntimeClass* pObjectClass, BYTE** ppData)
{
    CObArray* pArray = m_arDocItems[pResource->GetType()];
    int nSize = pArray->GetSize();

    BOOL bCreate = TRUE;
    if (m_bPasteSameDoc)
    {
        // check if pointer is valid
        for (int i = 0; i < nSize; i++)
        {
            if (pArray->GetAt(i) == pResource)
                break;
        }

        if (i != nSize)
        {
            *ppData += pResource->GetSizeObject();
            bCreate = FALSE;
        }
    }

    if (bCreate)
    {
        // check if object with similar string or filename exists
        LPCTSTR pszDataText = (LPCTSTR)(*ppData + sizeof(int));
        pszDataText += GetStringLengthBytes(pszDataText);
        for (int i = 0; i < nSize; i++)
        {
            CXResource* pDocRes = (CXResource*)pArray->GetAt(i);
            if (!lstrcmpi(pDocRes->GetClipText(), pszDataText))
            {
                pResource = pDocRes;
                pResource->SkipData(ppData);
                break;
            }
        }

        if (i == nSize)
        {
            // create new resource
            pResource = (CXResource*)pObjectClass->CreateObject();
            pResource->SetDocument(this);
            pResource->CopyEx(ppData, TRUE);
            pResource->OnPaste();


    //        if (pResource->IsKindOf(RUNTIME_CLASS(CXPathObject)))
    //        {
    //            CDirectoryMgr dmg(m_strResourcePath);
    //            ((CXPathObject*)pResource)->Reload();
    //            if (pResource->IsKindOf(RUNTIME_CLASS(CXFont)))
    //                ((CXFont*)pResource)->ReloadJap();
    //        }
            
        }
    }

    return pResource;
}

/////////////////////////////////////////////////////////////////////////////

DWORD CXObject::GetSizeObject()
{
    // add int for the type of object
    return sizeof(int);
}

DWORD CXObjectName::GetSizeObject()
{
    return CXObject::GetSizeObject() + GetStringLengthBytes(m_strName);
}


DWORD CXClipReg::GetSizeObject()
{
    return CXContext::GetSizeObject() + sizeof(BYTE);
}


DWORD CXDisplay::GetSizeObject()
{
    return CXContext::GetSizeObject() + sizeof(m_d);
}
void CXDisplay::SetTopLeft(int top, int left)
{
    m_rect.OffsetRect( left - static_cast< int >( m_d.x ), top - static_cast< int >( m_d.y ) );
    m_d.x = (float)left;
    m_d.y = (float)top;
    ValidateRect();
}


int CXDisplay::GetTop()
{
    return (int)m_d.y;
}


int CXDisplay::GetLeft()
{
    return (int)m_d.x;
}


DWORD CXSprite::GetSizeObject()
{
    int nSizeArray = 0;
    int nSize = m_arImage.GetSize();
    for (int i = 0; i < nSize; i++)
        nSizeArray += m_arImage[i]->GetSizeObject() + sizeof(CXObject*);
    return CXDisplay::GetSizeObject() + sizeof(m_ds) + nSizeArray + sizeof(DWORD);
}

DWORD CXText::GetSizeObject()
{
    int nSizeArray = 0;
    int nSize = m_arString.GetSize();
    for (int i = 0; i < nSize; i++)
        nSizeArray += m_arString[i]->GetSizeObject();
    return CXDisplay::GetSizeObject() + sizeof(m_dt) + nSizeArray + sizeof(DWORD) + m_dt.pFont->GetSizeObject();
}

DWORD CXPrimitive::GetSizeObject()
{
    return CXContext::GetSizeObject() + sizeof(m_d);
}

DWORD CXGroup::GetSizeObject()
{
    DWORD dwSizeContext = 0;
    int nSize = m_arContext.GetSize();
    for (int i = 0; i < nSize; i++)
        dwSizeContext += m_arContext[i]->GetSizeObject();
    return CXContext::GetSizeObject() + sizeof(DWORD) + sizeof(BYTE) + dwSizeContext;
}

DWORD CXOverlay::GetSizeObject()
{
    DWORD dwSizeLayer = 0;
    int nSize = m_arLayer.GetSize(); // WATCH
    for (int i = 0; i < nSize; i++)
        dwSizeLayer += m_arLayer[i]->GetSizeObject();
    return CXObjectName::GetSizeObject() + sizeof(DWORD) + sizeof(BYTE) + dwSizeLayer;
}


CXSprite *CXOverlay::AddSprite(char *name)
{
    CString strName = name;
    CXSprite* pSprite = new CXSprite;
    pSprite->SetDocument(m_pDocument);
    pSprite->SetOverlay(this);

    m_pDocument->GetUniqueName(GetContextArray(), strName);
    pSprite->SetName(strName);

    InsertAt(pSprite, NULL);
    COverlayDlg* pDlg = (COverlayDlg*)m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE);
    pDlg->InsertNewEntry(pSprite);

    pSprite->InvalidateView();
    return pSprite;    
}


DWORD CXScreen::GetSizeObject()
{
    return CXObjectName::GetSizeObject() + m_arOverlay.GetSize()*sizeof(CXObject*) + sizeof(DWORD);
}
void CXScreen::AddOverlay(char *name)
{
    CXOverlay *ovl = (CXOverlay*)m_pDocument->FindObject(DOC_OVERLAYS, name);
    if (ovl==NULL)
        return;
    int nSize = m_arOverlay.GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CXOverlay *pObject = m_arOverlay.GetAt(i);
        if (pObject == ovl)
            return;    // already added
    }        
    m_arOverlay.Add(ovl);
    // update the ui
    //((CScreenDlg*)m_pDocument->GetTabView()->GetPage(SCREEN_PAGE))->SetOverlays(this);
}


/////////////////////////////////////////////////////////////////////////////

void CXObjectName::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXObject::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
    {
        *(int*)*ppData = GetClipID();
        *ppData += sizeof(int);
    }
    else
    {
        // skip type
        *ppData += sizeof(int);
    }

    CopyString(ppData, m_strName, bCopyFrom);
}


void CXClipReg::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXContext::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
        **ppData = m_bReset;
    else
        m_bReset = **ppData;
    (*ppData)++;
}


void CXDisplay::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXContext::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
        memcpy(*ppData, &m_d, sizeof(m_d));
    else
        memcpy(&m_d, *ppData, sizeof(m_d));
    *ppData += sizeof(m_d);
}


void CXSprite::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXDisplay::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
    {
        int nSize = m_arImage.GetSize();
        *(DWORD*)*ppData = nSize;
        *ppData += sizeof(DWORD);
        for (int i = 0; i < nSize; i++)
        {
            CXImage* pImage = m_arImage[i];
            *(DWORD*)*ppData = (DWORD)pImage;
            *ppData += sizeof(DWORD);
            pImage->CopyEx(ppData, FALSE);
        }
        memcpy(*ppData, &m_ds, sizeof(m_ds));
    }
    else
    {
        int nSize = *(DWORD*)*ppData;
        *ppData += sizeof(DWORD);
        m_arImage.SetSize(nSize);
        for (int i = 0; i < nSize; i++)
        {
            CXImage* pImage = *(CXImage**)*ppData;
            *ppData += sizeof(DWORD);
            pImage = (CXImage*)m_pDocument->OnPasteResource(pImage, RUNTIME_CLASS(CXImage), ppData);
            m_arImage.SetAt(i, pImage);
        }

        memcpy(&m_ds, *ppData, sizeof(m_ds));
    }
    *ppData += sizeof(m_ds);
}

void CXText::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXDisplay::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
    {
        int nSize = m_arString.GetSize();
        *(DWORD*)*ppData = nSize;
        *ppData += sizeof(DWORD);
        for (int i = 0; i < nSize; i++)
            m_arString[i]->CopyEx(ppData, FALSE);
        memcpy(*ppData, &m_dt, sizeof(m_dt));
        *ppData += sizeof(m_dt);
        m_dt.pFont->CopyEx(ppData, FALSE);
    }
    else
    {
        int nSize = *(DWORD*)*ppData;
        *ppData += sizeof(DWORD);
        m_arString.SetSize(nSize);
        for (int i = 0; i < nSize; i++)
        {
            CXStringOrID* pStringID = new CXStringOrID;
            pStringID->SetDocument(m_pDocument);
            pStringID->CopyEx(ppData, TRUE);
            m_arString.SetAt(i, pStringID);
        }

        memcpy(&m_dt, *ppData, sizeof(m_dt));
        *ppData += sizeof(m_dt);
        m_dt.pFont = (CXFont*)m_pDocument->OnPasteResource(m_dt.pFont, RUNTIME_CLASS(CXFont), ppData);

        UpdateImage();
    }
}

void CXPrimitive::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXContext::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
        memcpy(*ppData, &m_d, sizeof(m_d));
    else
        memcpy(&m_d, *ppData, sizeof(m_d));
    *ppData += sizeof(m_d);
}


void CXGroup::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXContext::CopyEx(ppData, bCopyFrom);

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
            if (m_arContext[i]->IsKindOf(RUNTIME_CLASS(CXGroup)))
                ((CXGroup*)m_arContext[i])->CopyEx(ppData, FALSE);
            else
                m_arContext[i]->CopyEx(ppData, FALSE);
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
            if (pNewObject->IsKindOf(RUNTIME_CLASS(CXGroup)))
                ((CXGroup*)pNewObject)->CopyEx(ppData, TRUE);
            else
                pNewObject->CopyEx(ppData, TRUE);
            pNewObject->SetGroup(this);
            m_arContext[i] = pNewObject;
        }
    }
}


void CXOverlay::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXObjectName::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
        **ppData = m_bVisible;
    else
        m_bVisible = **ppData;
    (*ppData)++;

    if (!bCopyFrom)
    {
        int nSize = m_arLayer.GetSize();
        *(DWORD*)*ppData = nSize;
        *ppData += sizeof(DWORD);
        for (int i = 0; i < nSize; i++)
            m_arLayer[i]->CopyEx(ppData, FALSE);
    }
    else
    {
        int nSize = *(DWORD*)*ppData;
        *ppData += sizeof(DWORD);
        m_arLayer.SetSize(nSize);
        for (int i = 0; i < nSize; i++)
        {
            int nType = *(int*)*ppData;
            CXLayer* pNewObject = (CXLayer*)s_pClipRuntimeClasses[nType]->CreateObject();
            pNewObject->SetDocument(m_pDocument);
            pNewObject->CopyEx(ppData, TRUE);
            pNewObject->SetOverlay(this);
            m_arLayer[i] = pNewObject;
        }
    }
}


void CXScreen::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXObjectName::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
    {
        int nSize = m_arOverlay.GetSize();
        *(DWORD*)*ppData = nSize;
        *ppData += sizeof(DWORD);
        if (nSize)
        {
            int nCopy = nSize*sizeof(CXObject*);
            memcpy(*ppData, m_arOverlay.GetData(), nCopy);
            *ppData += nCopy;
        }
    }
    else
    {
        int nSize = *(DWORD*)*ppData;
        *ppData += sizeof(DWORD);
        if (nSize)
        {
            m_arOverlay.SetSize(nSize);
            int nCopy = nSize*sizeof(CXObject*);
            memcpy(m_arOverlay.GetData(), *ppData, nCopy);
            *ppData += nCopy;
        }

        CObArray* parDoc = m_pDocument->GetObjectArray(DOC_OVERLAYS);
        int nSizeDoc = parDoc->GetSize();

        for (int i = 0; i < m_arOverlay.GetSize(); i++)
        {
            CXOverlay* pOverlay = m_arOverlay[i];
            for (int j = 0; j < nSizeDoc; j++)
            {
                if (parDoc->GetAt(j) == pOverlay)
                    break;
            }

            if (j == nSizeDoc)
                m_arOverlay.RemoveAt(i);
        }
    }
}

/////////////////////////////////////////////////////////////////////////////

void CXResource::OnPaste(int nIndex )
{
    CXObjectArray* pArray = m_pDocument->GetObjectArray(GetType());
    CString strName = m_strName;
    m_pDocument->GetUniqueName(pArray, strName);
    SetName(strName);

    pArray->Add(this);
    m_pDocument->GetTabView()->GetPage(RESOURCE_PAGE, FALSE)->InsertNewEntry(this);
    m_pDocument->AddUndoObject(new CUndoResource(this, UNDO_ADD));
}


void CXGroup::OnPaste(int nIndex )
{
    CXContextArray* pArray = GetSiblingArray();
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

void CXOverlay::OnPaste(int nIndex )
{
    CXObjectArray* pArray = m_pDocument->GetObjectArray(GetType());
    CString strName = m_strName;
    m_pDocument->GetUniqueName(pArray, strName);
    SetName(strName);

    if (nIndex == -1)
        nIndex = pArray->GetSize();

    pArray->InsertAt(nIndex, this);
    m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE)->InsertEntry(this, nIndex);
    m_pDocument->AddUndoObject(new CUndoOverlay(this, UNDO_ADD));

    m_pDocument->GetXConView()->InvalidateView();
}

void CXScreen::OnPaste(int nIndex )
{
    CXObjectArray* pArray = m_pDocument->GetObjectArray(GetType());
    CString strName = m_strName;
    m_pDocument->GetUniqueName(pArray, strName);
    SetName(strName);

    if (nIndex == -1)
        nIndex = pArray->GetSize();

    pArray->InsertAt(nIndex, this);
//    m_pDocument->GetTabView()->GetPage(SCREEN_PAGE)->InsertEntry(this, nIndex);
    m_pDocument->AddUndoObject(new CUndoScreen(this, UNDO_ADD));
}
*/
