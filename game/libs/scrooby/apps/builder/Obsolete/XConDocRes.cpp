/////////////////////////////////////////////////////////////////////////////
// XConDocRes.cpp : implementation of the resource usage functionality

#pragma warning( disable : 4786 )
#include "StdAfx.h"
#include "XCon.h"
#include "XConDoc.h"
#include "MainFrm.h"

#include "xScreen.h"
#include "xOverlay.h"
//#include "xSprite.h"
//#include "xText.h"
//#include "xFont.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

static const TCHAR szNoneFound[] = _T("None found.\r\n");
static const TCHAR szSep[] = _T("****************************************\r\n");
static const TCHAR szNewLine[] = _T("\r\n");

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::DoInfoArray(CByteArray& arInfo, CXObjectArray* pArray, CString& strText)
{
    int nSize = arInfo.GetSize();
    int nCount = 0;
    for (int i = 0; i < nSize; i++)
    {
        if (arInfo[i])
            nCount++;
    }

    if (nCount == nSize)
        strText += szNoneFound;
    else
    {
        for (i = 0; i < nSize; i++)
        {
            if (!arInfo[i])
            {
                strText += pArray->GetAt(i)->GetName();
                strText += szNewLine;
            }
        }
    }

    arInfo.RemoveAll();
}

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnResourceUsage() 
{
    CWaitCursor wait;

    CString strText;

    // check unused overlays
    strText += szSep;
    strText += _T("Pages\r\n");
    strText += szSep;

    CXObjectArray* pArrayOvr = m_arDocItems[DOC_OVERLAYS];
    int nSizeOvr = pArrayOvr->GetSize();

    CByteArray arInfo;

    arInfo.SetSize(nSizeOvr);

    CXObjectArray* pArray = m_arDocItems[DOC_SCREENS];
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CXOverlayArray* par = ((CXScreen*)pArray->GetAt(i))->GetOverlayArray();
        int n = par->GetSize();
        for (int j = 0; j < n; j++)
        {
            CXOverlay* pOverlay = par->GetAt(j);
            for (int k = 0; k < nSizeOvr; k++)
            {
                if (pArrayOvr->GetAt(k) == pOverlay)
                {
                    arInfo[k] = 1;
                    break;
                }
            }
        }
    }

    DoInfoArray(arInfo, pArrayOvr, strText);

    // check unused fonts
    strText += szNewLine;
    strText += szSep;
    strText += _T("Fonts\r\n");
    strText += szSep;

    pArray = m_arDocItems[DOC_FONTS];
    nSize = pArray->GetSize();
    arInfo.SetSize(nSize);

    for (i = 0; i < nSizeOvr; i++)
    {
        CXContextArray* par = ((CXOverlay*)pArrayOvr->GetAt(i))->GetContextArray();
        int n = par->GetSize();
        for (int j = 0; j < n; j++)
        {
            CXContext* pContext = par->GetAt(j);
            /*
            if (pContext->IsKindOf(RUNTIME_CLASS(CXText)))
            {
                CXFont* pFont = ((CXText*)pContext)->GetFont();
                for (int k = 0; k < nSize; k++)
                {
                    if (pArray->GetAt(k) == pFont)
                    {
                        arInfo[k] = 1;
                        break;
                    }
                }
            }
            */
        }
    }

    DoInfoArray(arInfo, pArray, strText);

    // check unused images
    strText += szNewLine;
    strText += szSep;
    strText += _T("Images\r\n");
    strText += szSep;

    pArray = m_arDocItems[DOC_IMAGES];
    nSize = pArray->GetSize();
    arInfo.SetSize(nSize);

    for (i = 0; i < nSizeOvr; i++)
    {
        CXContextArray* par = ((CXOverlay*)pArrayOvr->GetAt(i))->GetContextArray();
        int n = par->GetSize();
        for (int j = 0; j < n; j++)
        {
            /*
            CXContext* pContext = par->GetAt(j);
            if (pContext->IsKindOf(RUNTIME_CLASS(CXSprite)))
            {
                CXImageArray* parImage = (CXImageArray*)((CXSprite*)pContext)->GetArray();
                int nSizeImage = parImage->GetSize();
                for (int k = 0; k < nSizeImage; k++)
                {
                    CXImage* pImage = parImage->GetAt(k);
                    for (int l = 0; l < nSize; l++)
                    {
                        if (pArray->GetAt(l) == pImage)
                        {
                            arInfo[l] = 1;
                            break;
                        }
                    }
                }
            }*/
        }
    }

    DoInfoArray(arInfo, pArray, strText);

    // check unused strings
    strText += szNewLine;
    strText += szSep;
    strText += _T("Strings\r\n");
    strText += szSep;

    pArray = m_arDocItems[DOC_STRINGS];
    nSize = pArray->GetSize();
    arInfo.SetSize(nSize);

    for (i = 0; i < nSizeOvr; i++)
    {
        CXContextArray* par = ((CXOverlay*)pArrayOvr->GetAt(i))->GetContextArray();
        int n = par->GetSize();
        for (int j = 0; j < n; j++)
        {
            CXContext* pContext = par->GetAt(j);
            /*
            if (pContext->IsKindOf(RUNTIME_CLASS(CXText)))
            {
                CXStringArray* parString = (CXStringArray*)((CXText*)pContext)->GetArray();
                int nSizeString = parString->GetSize();
                for (int k = 0; k < nSizeString; k++)
                {
                    CXString* pString = parString->GetAt(k)->GetXString();
                    if (pString)
                    {
                        for (int l = 0; l < nSize; l++)
                        {
                            if (pArray->GetAt(l) == pString)
                            {
                                arInfo[l] = 1;
                                break;
                            }
                        }
                    }
                }
            }*/
        }
    }

    DoInfoArray(arInfo, pArray, strText);

    // check unused Excel strings
    strText += szNewLine;
    strText += szSep;
    strText += _T("Excel Strings\r\n");
    strText += szSep;

    arInfo.SetSize(m_mapLangIDs.GetCount());

    for (i = 0; i < nSizeOvr; i++)
    {
        CXContextArray* par = ((CXOverlay*)pArrayOvr->GetAt(i))->GetContextArray();
        int n = par->GetSize();
        for (int j = 0; j < n; j++)
        {
            CXContext* pContext = par->GetAt(j);
            /*
            if (pContext->IsKindOf(RUNTIME_CLASS(CXText)))
            {
                CXStringArray* parString = (CXStringArray*)((CXText*)pContext)->GetArray();
                int nSizeString = parString->GetSize();
                for (int k = 0; k < nSizeString; k++)
                {
                    CXStringOrID* pID = parString->GetAt(k);
                    if (!pID->GetXString())
                    {
                        void* p;
                        if (m_mapLangIDs.Lookup(pID->GetStringID(), p))
                        {
                            arInfo[(int)p] = 1;
                        }
                    }
                }
            }
            */
        }
    }

    nSize = arInfo.GetSize();
    int nCount = 0;
    for (i = 0; i < nSize; i++)
    {
        if (arInfo[i])
            nCount++;
    }

    if (nCount == nSize)
        strText += szNoneFound;
    else
    {
        CString str;
        void* p;
        for (i = 0; i < nSize; i++)
        {
            if (!arInfo[i])
            {
                POSITION pos = m_mapLangIDs.GetStartPosition();
                while (pos)
                {
                    m_mapLangIDs.GetNextAssoc(pos, str, p);
                    if ((int)p == i)
                        break;
                }
                strText += str;
                strText += szNewLine;
            }
        }
    }

    arInfo.RemoveAll();

    AppMainWnd()->SetResourceUsageText(strText);
}
