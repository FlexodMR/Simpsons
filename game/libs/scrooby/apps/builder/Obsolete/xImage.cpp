#include "xConDoc.h"
#include "XImage.h"
#include "XConView.h"
#include "DlgProp.h"
#include "XUtil.h"
#include "xcon.h"


void CXImage::Export(CArchive& ar)
{
    BYTE* pData;
    DWORD nSizeData;
    if (!Compress(&pData, &nSizeData))
        AfxThrowUserException();
    
    CXObject::Export(ar);

    ar.Write(pData, nSizeData);
    delete[] pData;

    // pad the data
    DWORD dw = 0;
    ar.Write(&dw, nSizeData&0x03);
}


BOOL CXImage::Compress(BYTE** ppData, DWORD* pSizeOfXDC)
{
    BOOL bSuccess = TRUE;
#ifndef JSFILE
    xcPalette32Image* pxcImage;

    BITMAPINFOHEADER* pbmih = (BITMAPINFOHEADER*)m_dib.m_pData;
    switch (pbmih->biBitCount)
    {
    case 4:
        pxcImage = new xcImage4;
        break;

    case 8:
        pxcImage = new xcImage8;
        break;
    }

    // switch the red and the blue
    xcColour32* pPalette = pxcImage->GetPalette();
    RGBQUAD* prgb = m_prgbOrig;
    for (int i = 0; i < (int)m_nNumColors; i++, prgb++)
        *pPalette++ = xcColour32(prgb->rgbRed, prgb->rgbGreen, prgb->rgbBlue);
    pxcImage->SetSize(m_dib.m_size.cx, m_dib.m_size.cy);

    Sint32 nDestPitch = pxcImage->GetPitch();
    Uint8* pDestImage = pxcImage->GetRawImage();

    /*
    BYTE* pSrc = new BYTE[pbmih->biSizeImage];
    for(unsigned int j = 0; j < pbmih->biSizeImage; j++)
    {
        pSrc[j] = m_dib.m_pBits[pbmih->biSizeImage - 1 - j];
    }
    memcpy(pDestImage, pSrc, pbmih->biSizeImage);
    delete [] pSrc;
    */

/*
    BYTE* pSrc = m_dib.m_pBits + (m_dib.m_size.cy-1)*m_dib.m_nPitch;
    for (i = 0; i < m_dib.m_size.cy; i++, pDestImage += nDestPitch, pSrc -= m_dib.m_nPitch)
        memcpy(pDestImage, pSrc, m_dib.m_nPitch);
*/

    BYTE* pSrc = m_dib.m_pBits + (pbmih->biSizeImage - nDestPitch);
    for (i = 0; i < m_dib.m_size.cy; i++, pDestImage += nDestPitch, pSrc -= nDestPitch)
        memcpy(pDestImage, pSrc, nDestPitch);

    *ppData = NULL;
    *pSizeOfXDC = 0;

    bSuccess = xcXDCWrite(pxcImage, 8, 16, (void**)ppData, pSizeOfXDC);
    if (!bSuccess)
        AfxMessageBox(_T("Failed to compress image."));

    delete pxcImage;
#endif
    return bSuccess;
}



DWORD CXImage::GetSizeObject()
{
    return CXPathObject::GetSizeObject() + sizeof(m_d);
}



void CXImage::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXPathObject::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
        memcpy(*ppData, &m_d, sizeof(m_d));
    else
        memcpy(&m_d, *ppData, sizeof(m_d));
    *ppData += sizeof(m_d);
}



void CXImage::SkipData(BYTE** ppData)
{
    *ppData += sizeof(int);
    *ppData += GetStringLengthBytes((LPCTSTR)*ppData);
    *ppData += GetStringLengthBytes((LPCTSTR)*ppData);
    *ppData += sizeof(m_d);
}



/////////////////////////////////////////////////////////////////////////////
// CXImage

CXImage::CXImage()
{
    m_prgbOrig = NULL;
    m_prgbCurrent = NULL;
    m_pBitsTranslucent = NULL;

    m_d.ClrScaleCurrent.fRed = m_d.ClrScaleCurrent.fGreen = m_d.ClrScaleCurrent.fBlue = 1.0f;
    m_d.bTransparent = TRUE;
}

CXImage::~CXImage()
{
    delete[] m_prgbOrig;
    delete[] m_prgbCurrent;
    delete[] m_pBitsTranslucent;
}

void CXImage::Copy(CXObject* pObject)
{
    CXPathObject::Copy(pObject);
    memcpy(&m_d, &((CXImage*)pObject)->m_d, sizeof(m_d));
}

BOOL CXImage::Load(LPCTSTR pszPathName)
{
    HANDLE hDib = ::LoadImage(NULL, pszPathName, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE|LR_CREATEDIBSECTION);
    if (!hDib)
    {
        DisplayErrorMsg(IDP_ERROR_LOADING_IMAGE, pszPathName);
        return FALSE;
    }

    DIBSECTION ds;
    ::GetObject(hDib, sizeof(DIBSECTION), &ds);

    BITMAPINFOHEADER* pbmi = &ds.dsBmih;
    m_dib.m_size = CSize(pbmi->biWidth, pbmi->biHeight);
    const CSize& sizeDoc = m_pDocument->GetResolution();
    if (m_dib.m_size.cx > sizeDoc.cx || m_dib.m_size.cy > sizeDoc.cy)
    {
        DisplayErrorMsg(IDP_BITMAP_TOO_LARGE, pszPathName);
        ::DeleteObject(hDib);
        return FALSE;
    }

    if (pbmi->biBitCount == 1 || pbmi->biBitCount > 8)
    {
        DisplayErrorMsg(IDP_INVALID_BITDEPTH, pszPathName);
        ::DeleteObject(hDib);
        return FALSE;
    }
    
    CDC dcMem;
    dcMem.CreateCompatibleDC(NULL);
    HGDIOBJ hOldBm = ::SelectObject(dcMem, hDib);
    RGBQUAD rgbColors[256];
    m_nNumColors = ::GetDIBColorTable(dcMem, 0, 256, rgbColors);
    m_dib.Init(m_nNumColors);
    memcpy((RGBQUAD*)m_dib, &rgbColors, m_nNumColors*sizeof(RGBQUAD));

    InitColors(rgbColors);

    ::SelectObject(dcMem, hOldBm);

    memcpy(m_dib.m_pData, pbmi, sizeof(BITMAPINFOHEADER));


//(pFontData->pDib[i].m_size.cx*2+3)&~0x03

//    m_dib.AllocateBits(ds.dsBm.bmWidthBytes, m_dib.m_size.cy);

    int pitch = (m_dib.m_size.cx*2+3)&~0x03;

    if (m_dib.m_pBits)
    {
        delete[] m_dib.m_pBits;
        m_dib.m_pBits = NULL;
    }

    m_dib.m_nPitch = pitch;
    m_dib.m_pBits = new BYTE[pbmi->biSizeImage];

    m_dib.AllocateBits(pitch, m_dib.m_size.cy);


//    memcpy(m_dib.m_pBits, ds.dsBm.bmBits, ((m_dib.m_size.cx*2+3)&~0x03)*m_dib.m_size.cy);

    memcpy(m_dib.m_pBits, ds.dsBm.bmBits, pbmi->biSizeImage);

    ::DeleteObject(hDib);

    if (m_pBitsTranslucent)
        CreateTranslucent(TRUE);

    return TRUE;
}

void CXImage::InitColors(RGBQUAD* prgb)
{
    if (m_prgbOrig)
    {
        delete[] m_prgbOrig;
        m_prgbOrig = NULL;
    }
    m_prgbOrig = new RGBQUAD[m_nNumColors];

    if (m_prgbCurrent)
    {
        delete[] m_prgbCurrent;
        m_prgbCurrent = NULL;
    }
    m_prgbCurrent = new RGBQUAD[m_nNumColors];

    memcpy(m_prgbOrig, prgb, m_nNumColors*sizeof(RGBQUAD));
    memcpy(m_prgbCurrent, prgb, m_nNumColors*sizeof(RGBQUAD));
}

void CXImage::ScalePalette(const COLOR_SCALE& clrScale)
{
    if (!memcmp(&clrScale, &m_d.ClrScaleCurrent, sizeof(COLOR_SCALE)))
        return;

    memcpy(&m_d.ClrScaleCurrent, &clrScale, sizeof(COLOR_SCALE));

    if (clrScale.fRed == 1.0f && clrScale.fGreen == 1.0f && clrScale.fBlue == 1.0f)
        memcpy(m_prgbCurrent, m_prgbOrig, m_nNumColors*sizeof(RGBQUAD));
    else
    {
        RGBQUAD* pSrc = m_prgbOrig;
        RGBQUAD* pDest = m_prgbCurrent;
        for (UINT i = 0; i < m_nNumColors; i++, pSrc++, pDest++)
        {
            if (*(DWORD*)pSrc != m_d.clrTransparency)
            {
                float f = (float)pSrc->rgbRed*clrScale.fRed;
                pDest->rgbRed = min(255, (BYTE)f);
                f = (float)pSrc->rgbGreen*clrScale.fGreen;
                pDest->rgbGreen = min(255, (BYTE)f);
                f = (float)pSrc->rgbBlue*clrScale.fBlue;
                pDest->rgbBlue = min(255, (BYTE)f);
            }
        }
    }
}

void CXImage::Draw(CDC* pDC, int x, int y, const CRect& rectClip, int nZoomFactor, int nTranslucent)
{
    CRect rc(0, 0, m_dib.m_size.cx, m_dib.m_size.cy);
    rc.OffsetRect(x, y);
    rc.IntersectRect(rc, rectClip);
    rc.right = rc.Width();
    rc.bottom = rc.Height();

    CRectEx rcZoom = rc;
    rcZoom *= nZoomFactor;

    rc.left -= x;
    rc.top = m_dib.m_size.cy - (rc.top - y + rc.bottom);    // bottom-up DIB

    BYTE* pBits = m_dib.m_pBits;
    if (nTranslucent != TRANSLUCENT_NONE && m_pBitsTranslucent)
        pBits = m_pBitsTranslucent;

    if (!m_d.bTransparent)
    {
        memcpy((RGBQUAD*)m_dib, m_prgbCurrent, m_nNumColors*sizeof(RGBQUAD));
        ::StretchDIBits(*pDC,
            rcZoom.left, rcZoom.top, rcZoom.right, rcZoom.bottom,
            rc.left, rc.top, rc.right, rc.bottom,
            pBits, m_dib,
            DIB_RGB_COLORS, SRCCOPY);
    }
    else
    {
        DWORD* pDest = (DWORD*)(RGBQUAD*)m_dib;
        DWORD* pSrc = (DWORD*)m_prgbCurrent;
        for (UINT i = 0; i < m_nNumColors; i++, pSrc++, pDest++)
            *pDest = *pSrc == m_d.clrTransparency ? RGB(255,255,255) : RGB(0,0,0);
        ::StretchDIBits(*pDC,
            rcZoom.left, rcZoom.top, rcZoom.right, rcZoom.bottom,
            rc.left, rc.top, rc.right, rc.bottom,
            pBits, m_dib,
            DIB_RGB_COLORS, SRCAND);

        pDest = (DWORD*)(RGBQUAD*)m_dib;
        pSrc = (DWORD*)m_prgbCurrent;
        for (i = 0; i < m_nNumColors; i++, pSrc++, pDest++)
            *pDest = *pSrc == m_d.clrTransparency ? RGB(0,0,0) : *pSrc;
        ::StretchDIBits(*pDC,
            rcZoom.left, rcZoom.top, rcZoom.right, rcZoom.bottom,
            rc.left, rc.top, rc.right, rc.bottom,
            pBits, m_dib,
            DIB_RGB_COLORS, SRCPAINT);
    }
}

void CXImage::OnProperties()
{
    CImagePropDlg dlg;
    dlg.m_strFileName = m_strPathName;
    dlg.m_strName = m_strName;
    dlg.m_clr = RGBINVERT(m_d.clrTransparency);
    dlg.m_pImage = this;
    dlg.m_bTransparent = m_d.bTransparent;
    if (dlg.DoModal() != IDOK)
    {
        if (dlg.m_strFileName != m_strPathName)
        {
            CDirectoryMgr dmg(m_pDocument->GetResourcePath());
            Reload();
            m_pDocument->RefreshOverlays(this);
        }
        return;
    }

    COLORREF clr = RGBINVERT(dlg.m_clr);

    BOOL bChangeImage = dlg.m_strFileName != m_strPathName || clr != m_d.clrTransparency || dlg.m_bTransparent != m_d.bTransparent;
    if (dlg.m_strName == m_strName && !bChangeImage)
        return;

    AddUndoObjectModify();
    SetNewName(dlg.m_strName);

    if (bChangeImage)
    {
        m_strPathName = dlg.m_strFileName;
        m_d.clrTransparency = clr;
        m_d.bTransparent = dlg.m_bTransparent;
        m_pDocument->RefreshOverlays(this);
    }
}

void CXImage::OnDelete()
{
    if (!s_bForceDelete && !m_pDocument->DeleteResourceObject(this))
        return;

    m_pDocument->DeleteResourceObject(this, TRUE);
    DeleteResource();
}

void CXImage::CreateTranslucent(BOOL bRefresh /*=FALSE*/)
{
    if (!bRefresh && m_pBitsTranslucent)
        return;

    // find transparent color index
    DWORD* prgb = (DWORD*)m_prgbOrig;
    for (UINT nIndex = 0; nIndex < m_nNumColors; nIndex++, prgb++)
    {
        if (*prgb == m_d.clrTransparency)
            break;
    }

    if (nIndex == m_nNumColors)
    {
        // transparency color not found - can't do it
        return;
    }

    delete[] m_pBitsTranslucent;

    int nSize = m_dib.m_nPitch*m_dib.m_size.cy;
    m_pBitsTranslucent = new BYTE[nSize];
    memcpy(m_pBitsTranslucent, m_dib.m_pBits, nSize);

    if (((BITMAPINFOHEADER*)m_dib.m_pData)->biBitCount == 4)
    {
        int nIndex2 = nIndex<<4;
        for (int i = 0; i < m_dib.m_size.cy; i++)
        {
            BYTE* pBits = &m_pBitsTranslucent[m_dib.m_nPitch*i];
            if (i&1)
            {
                for (int j = 1; j < m_dib.m_size.cx; j+=2, pBits++)
                    *pBits = (*pBits&0x0f)|nIndex2;
            }
            else
            {
                for (int j = 0; j < m_dib.m_size.cx; j+=2, pBits++)
                    *pBits = (*pBits&0xf0)|nIndex;
            }
        }
    }
    else
    {
        // 8-bit image
        for (int i = 0; i < m_dib.m_size.cy; i++)
        {
            int nStart = (i&1);
            BYTE* pBits = &m_pBitsTranslucent[m_dib.m_nPitch*i + nStart];
            for (int j = nStart; j < m_dib.m_size.cx; j += 2, pBits += 2)
                *pBits = nIndex;
        }
    }
}


/////////////////////////////////////////////////////////////////////////////

IMPLEMENT_SERIAL(CXImage, CXPathObject, 1|VERSIONABLE_SCHEMA)

void CXImage::Serialize(CArchive& ar)
{
    if (ar.IsStoring())
    {
        ar << m_d.clrTransparency;
        ar << m_d.bTransparent;
    }
    else
    {
        ar >> m_d.clrTransparency;
        ar >> m_d.bTransparent;
    }

    CXPathObject::Serialize(ar);
}


int CXImage::GetImage() 
{ 
    return TREE_IMAGE; 
}

DOCARRAYTYPE CXImage::GetType() 
{ 
    return DOC_IMAGES; 
}
