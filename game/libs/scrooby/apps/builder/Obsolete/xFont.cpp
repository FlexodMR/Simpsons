#include "xFont.h"
#include "XConDoc.h"
#include "XConView.h"
#include "xUtil.h"
//#include "xText.h"
#include "DlgProp.h"
#include "xCon.h"


void CXFont::Export(CArchive& ar, BOOL bJapanese)
{
    CXObject::Export(ar);

    FontData* pFontData = &m_fontdata[bJapanese ? FONT_JAPANESE : FONT_ASCII];
    if (pFontData->pFileData)
    {
        ar.Write(pFontData->pFileData, pFontData->dwFileSize);

        // pad the data
        DWORD dw = 0;
        ar.Write(&dw, pFontData->dwFileSize&0x03);
    }
}


DWORD CXFont::GetSizeObject()
{
    return CXPathObject::GetSizeObject() + GetStringLengthBytes(m_strJapPathName);
}


void CXFont::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXPathObject::CopyEx(ppData, bCopyFrom);
    CopyString(ppData, m_strJapPathName, bCopyFrom);
}


void CXFont::SkipData(BYTE** ppData)
{
    *ppData += sizeof(int);
    *ppData += GetStringLengthBytes((LPCTSTR)*ppData);
    *ppData += GetStringLengthBytes((LPCTSTR)*ppData);
    *ppData += GetStringLengthBytes((LPCTSTR)*ppData);
}



/////////////////////////////////////////////////////////////////////////////
// CXFont

#pragma pack(1)
typedef struct
{
    char szID[4];
    DWORD dwSizeFile;
    DWORD dwSizeFilename;
} PHOHEADER;

typedef struct
{
    short x, y;
    short cx;
    WORD nAsciiNumber;
} PHOGLYPH;

typedef struct
{
    short x, y;
    WORD wPalette[16];
} PHOPALETTE16;
#pragma pack()

CXFont::CXFont()
{
    m_fontdata[FONT_ASCII].pDib = NULL;
    m_fontdata[FONT_ASCII].pFileData = NULL;
    m_fontdata[FONT_JAPANESE].pDib = NULL;
    m_fontdata[FONT_JAPANESE].pFileData = NULL;
}

CXFont::~CXFont()
{
    DeleteData(FONT_ASCII);
    DeleteData(FONT_JAPANESE);
}

void CXFont::Copy(CXObject* pObject)
{
    CXPathObject::Copy(pObject);

    CXFont* p = (CXFont*)pObject;
    m_strJapPathName = p->m_strJapPathName;
}

void CXFont::DeleteData(int nType)
{
    delete[] m_fontdata[nType].pFileData;
    m_fontdata[nType].pFileData = NULL;
    delete[] m_fontdata[nType].pDib;
    m_fontdata[nType].pDib = NULL;
    
    POSITION pos = m_fontdata[nType].mapLetters.GetStartPosition();
    while (pos)
    {
        WORD wAscii;
        void* pGlyph;
        m_fontdata[nType].mapLetters.GetNextAssoc(pos, wAscii, pGlyph);
        delete (GLYPH*)pGlyph;
    }
    m_fontdata[nType].mapLetters.RemoveAll();
}

inline BYTE ClampPalColor(BYTE c)
{
    return (c < 16 && c) ? 16 : c;
}

BOOL CXFont::ReloadJap()
{
    if (m_strJapPathName.IsEmpty())
        return TRUE;

    TCHAR szPath[_MAX_PATH];
    ::GetFullPathName(m_strJapPathName, _MAX_PATH, szPath, NULL);
    return Load(szPath, FONT_JAPANESE);
}

BOOL CXFont::Load(LPCTSTR pszPathName)
{
    return Load(pszPathName, FONT_ASCII);
}

BOOL CXFont::Load(LPCTSTR pszPathName, int nType)
{
    CFile file;
    if (!file.Open(pszPathName, CFile::modeRead))
    {
        DisplayErrorMsg(IDP_FAILED_OPEN_FONT, pszPathName);
        return FALSE;
    }

    DeleteData(nType);

    FontData* pFontData = &m_fontdata[nType];

    pFontData->dwFileSize = file.GetLength();
    pFontData->pFileData = new BYTE[pFontData->dwFileSize];
    file.Read(pFontData->pFileData, pFontData->dwFileSize);

    PHOHEADER* phdr = (PHOHEADER*)pFontData->pFileData;
    if (lstrcmp(phdr->szID, "PHO"))
    {
        DisplayErrorMsg(IDP_FAILED_OPEN_FONT, pszPathName);
        return FALSE;
    }

    DWORD* pFile = (DWORD*)((BYTE*)(phdr+1) + phdr->dwSizeFilename);
    pFontData->cyFont = *pFile++;

    pFontData->dwBlocks = *pFile++;
    pFontData->pDib = new CDib[pFontData->dwBlocks];

    PHORECT16** pprcBlocks = new PHORECT16*[pFontData->dwBlocks];
    BYTE** ppPhoBits = new BYTE*[pFontData->dwBlocks];
    for (DWORD i = 0; i < pFontData->dwBlocks; i++)
    {
        pprcBlocks[i] = (PHORECT16*)pFile;
        pFile = (DWORD*)(pprcBlocks[i]+1);
        ppPhoBits[i] = (BYTE*)pFile;
        pFile = (DWORD*)((BYTE*)pFile+xcROUND_UP(pprcBlocks[i]->cx*sizeof(short)*pprcBlocks[i]->cy,4));
    }

    pFontData->dwPalettes = *pFile++;
    RGBQUAD* prgbPals = new RGBQUAD[pFontData->dwPalettes*16];

    PHOPALETTE16* pPhoPals = (PHOPALETTE16*)pFile;
    pFile = (DWORD*)(pPhoPals + pFontData->dwPalettes);

    RGBQUAD* prgb = prgbPals;
    for (i = 0; i < pFontData->dwPalettes; i++)
    {
        WORD* pPal = pPhoPals[i].wPalette;
        for (DWORD j = 0; j < 16; j++, prgb++)
        {
            WORD wCol = *pPal++;
            prgb->rgbRed = ClampPalColor((wCol&0x001f)<<3);
            prgb->rgbGreen = ClampPalColor((wCol&0x03e0)>>2);
            prgb->rgbBlue = ClampPalColor((wCol&0x7c00)>>7);
        }
    }

    for (i = 0; i < pFontData->dwBlocks; i++)
    {
        pFontData->pDib[i].Init(0);

        BITMAPINFOHEADER* pbmih = (BITMAPINFOHEADER*)pFontData->pDib[i].m_pData;
        memset(pbmih, 0, sizeof(BITMAPINFOHEADER));
        pbmih->biSize = sizeof(BITMAPINFOHEADER);
        pbmih->biPlanes = 1;
        pbmih->biBitCount = 16;

        pFontData->pDib[i].m_size = CSize(pprcBlocks[i]->cx*4, pprcBlocks[i]->cy*pFontData->dwPalettes);
        pFontData->pDib[i].AllocateBits((pFontData->pDib[i].m_size.cx*2+3)&~0x03, pFontData->pDib[i].m_size.cy);

        int nSize = pFontData->pDib[i].m_size.cx/2;
        for (DWORD j = 0; j < pFontData->dwPalettes; j++)
        {
            for (int k = 0; k < pprcBlocks[i]->cy; k++)
            {
                WORD* pd = (WORD*)&pFontData->pDib[i].m_pBits[(k+j*pprcBlocks[i]->cy)*pFontData->pDib[i].m_nPitch];
                BYTE* ps = &ppPhoBits[i][k*nSize];
                for (int l = 0; l < nSize; l++, ps++)
                {
                    prgb = &prgbPals[j*16 + (*ps&0x0f)];
                    *pd++ = RGB16(prgb->rgbRed, prgb->rgbGreen, prgb->rgbBlue);
                    prgb = &prgbPals[j*16 + (*ps>>4)];
                    *pd++ = RGB16(prgb->rgbRed, prgb->rgbGreen, prgb->rgbBlue);
                }
            }
        }
    }

    DWORD dwGlyphTypes = pFontData->dwBlocks*pFontData->dwPalettes;
    DWORD* pdwGlyphPerTypes = pFile;
    pFile += dwGlyphTypes;

    PHOGLYPH* pPhoGlyph = (PHOGLYPH*)pFile;
    pFontData->nDefault = pPhoGlyph->nAsciiNumber;

    pFontData->dwGlyphs = 0;
    for (i = 0; i < dwGlyphTypes; i++)
        pFontData->dwGlyphs += pdwGlyphPerTypes[i];

    DWORD dwCurGlyphType = 0;

    for (i = 0; i < pFontData->dwBlocks; i++)
    {
        for (DWORD j = 0; j < pFontData->dwPalettes; j++, dwCurGlyphType++)
        {
            for (DWORD k = 0; k < pdwGlyphPerTypes[dwCurGlyphType]; k++, pPhoGlyph++)
            {
                GLYPH* pGlyph = new GLYPH;
                pGlyph->nBlock = (BYTE)i;
                pGlyph->nPalette = (BYTE)j;
                pGlyph->rect.x = pPhoGlyph->x;
                pGlyph->rect.y = pPhoGlyph->y+(short)j*pprcBlocks[i]->cy;
                pGlyph->rect.cx = pPhoGlyph->cx;
                pGlyph->rect.cy = (short)pFontData->cyFont;
                pFontData->mapLetters[pPhoGlyph->nAsciiNumber] = pGlyph;
                if (pPhoGlyph->nAsciiNumber == '?')
                    pFontData->nDefault = '?';
            }
        }
    }

    delete[] prgbPals;
    delete[] ppPhoBits;
    delete[] pprcBlocks;
    return TRUE;
}

void CXFont::OnProperties()
{
    CFontPropDlg dlg;
    dlg.m_strFileName = m_strPathName;
    dlg.m_strName = m_strName;
    dlg.m_pFont = this;
    dlg.m_strFileNameJap = m_strJapPathName;
    int nRet = dlg.DoModal();

    BOOL bChangeFile = dlg.m_strFileName != m_strPathName;
    BOOL bChangeJap = dlg.m_strFileNameJap != m_strJapPathName;

    if (nRet != IDOK)
    {
        if (bChangeFile || bChangeJap)
        {
            CDirectoryMgr dmg(m_pDocument->GetResourcePath());
            if (bChangeFile)
                Reload();
            if (bChangeJap)
                ReloadJap();
            m_pDocument->RefreshOverlays(this);
        }
        return;
    }

    if (dlg.m_strName == m_strName && !bChangeFile && !bChangeJap)
        return;

    AddUndoObjectModify();
    SetNewName(dlg.m_strName);

    if (bChangeJap)
    {
        m_strJapPathName = dlg.m_strFileNameJap;
        if (m_pDocument->IsJapanese())
            m_pDocument->RefreshOverlays(this);
    }

    if (bChangeFile)
    {
        m_strPathName = dlg.m_strFileName;
        if (!m_pDocument->IsJapanese())
            m_pDocument->RefreshOverlays(this);
    }
}

void CXFont::OnDelete()
{
    if (!s_bForceDelete && !m_pDocument->DeleteResourceObject(this))
        return;

    m_pDocument->DeleteResourceObject(this, TRUE);
    DeleteResource();
}

int CXFont::GetNextChar(int nType, LPCSTR& psz) const
{
    BYTE b1 = *psz;
    if (b1 == '\r' || b1 == '\n')
    {
        psz++;
        return b1;
    }

    int nIndex;
    if (nType == FONT_ASCII)
    {
        nIndex = b1;
        psz++;
    }
    else
    {
        // get next SJIS character
        BYTE b2 = *(psz+1);

        if (b1 < 0x81 || b2 < 0x40)
        {
            nIndex = b1;
            psz++;
        }
        else if (b1 <= 0x9f && b2 <= 0xfc && b2 != 0x7f)
        {
            nIndex = (b1<<8)|b2;    // reverse the bytes
            psz += 2;
        }
        else if ((b1 >= 0xe0 && b1 <= 0xef) &&
             ((b2 <= 0x9e && b2 != 0x7f) || (b2 >= 0x9f && b2 <= 0xfc)))
        {
            nIndex = (b1<<8)|b2;    // reverse the bytes
            psz += 2;
        }
        else
        {
            nIndex = b1;
            psz++;
        }
    }

    void* p;
    if (!m_fontdata[nType].mapLetters.Lookup(nIndex, p))
        nIndex = m_fontdata[nType].nDefault;
    return nIndex;
}

CSize CXFont::GetGlyphBits(int nType, int nIndex, const CPoint& pt, BYTE* pBits, int nPitch, BOOL bRotate /*=FALSE*/)
{
    FontData* pFontData = &m_fontdata[nType];
    GLYPH* pGlyph = (GLYPH*)pFontData->mapLetters[nIndex];
    if (!pGlyph)
    {
        // letter not available in font - use space for now
        pGlyph = (GLYPH*)pFontData->mapLetters[_T(' ')];
    }

    CDib* pDib = &pFontData->pDib[pGlyph->nBlock];
    WORD* ps = (WORD*)&pDib->m_pBits[pDib->m_nPitch*pGlyph->rect.y] + pGlyph->rect.x;
    int nPitchFont = pDib->m_nPitch/2;    // convert to WORD offset

    WORD* pd = (WORD*)&pBits[nPitch*pt.y] + pt.x;
    nPitch /= 2;    // convert to WORD offset

    if (!bRotate)
    {
        int nCopyBytes = pGlyph->rect.cx*2;
        for (int i = 0; i < pGlyph->rect.cy; i++, pd += nPitch, ps += nPitchFont)
            memcpy(pd, ps, nCopyBytes);
    }
    else
    {
        ps += pGlyph->rect.cx - 1;
        for (int i = 0; i < pGlyph->rect.cx; i++, ps--, pd += nPitch)
        {
            WORD* ps2 = ps;
            WORD* pd2 = pd;
            for (int j = 0; j < pGlyph->rect.cy; j++, ps2 += nPitchFont)
                *pd2++ = *ps2;
        }
    }

    return CSize(pGlyph->rect.cx, pGlyph->rect.cy);
}

CSize CXFont::GetGlyphSize(int nType, int nIndex) const
{
    void* p;
    m_fontdata[nType].mapLetters.Lookup(nIndex, p);
    GLYPH* pGlyph = (GLYPH*)p;
    return CSize(pGlyph->rect.cx, pGlyph->rect.cy);
}

void CXFont::Draw(CDC* pDC, int x, int y, int nType, int nIndex)
{
    GLYPH* pGlyph = (GLYPH*)m_fontdata[nType].mapLetters[nIndex];
    CDib* pDib = &m_fontdata[nType].pDib[pGlyph->nBlock];
    BITMAPINFOHEADER* pbmih = (BITMAPINFOHEADER*)pDib->m_pData;

    pbmih->biWidth = pGlyph->rect.cx;
    pbmih->biHeight = pGlyph->rect.cy;

    // create and draw mask
    int nPitch = (pGlyph->rect.cx*2+3)&~0x03;
    BYTE* pMaskBits = new BYTE[nPitch*pGlyph->rect.cy];
    for (int i = 0; i < pGlyph->rect.cy; i++)
    {
        WORD* pd = (WORD*)&pMaskBits[nPitch*i];
        WORD* ps = (WORD*)&pDib->m_pBits[pDib->m_nPitch*(pGlyph->rect.y+i)] + pGlyph->rect.x;
        for (int j = 0; j < pGlyph->rect.cx; j++, ps++)
            *pd++ = *ps ? 0 : 0xffff;
    }

    ::StretchDIBits(*pDC,
        x, y+pGlyph->rect.cy-1, pGlyph->rect.cx, -pGlyph->rect.cy,
        0, 0, pGlyph->rect.cx, pGlyph->rect.cy,
        pMaskBits, *pDib,
        DIB_RGB_COLORS, SRCAND);

    delete[] pMaskBits;

    pbmih->biWidth = pDib->m_size.cx;
    pbmih->biHeight = pDib->m_size.cy;
    ::StretchDIBits(*pDC,
        x, y+pGlyph->rect.cy-1, pGlyph->rect.cx, -pGlyph->rect.cy,
        pGlyph->rect.x, pGlyph->rect.y, pGlyph->rect.cx, pGlyph->rect.cy,
        pDib->m_pBits, *pDib,
        DIB_RGB_COLORS, SRCPAINT);
}

void CXFont::Draw(CDC* pDC, int nType, const CRect& rect, BYTE* pBits, const CRect& rectClip, int nZoomFactor)
{
    if (!m_fontdata[nType].pDib)
        return;

    CSize size = rect.Size();

    CRect rc = rect;
    rc.IntersectRect(rc, rectClip);
    rc.right = rc.Width();
    rc.bottom = rc.Height();

    CRectEx rcZoom = rc;
    rcZoom *= nZoomFactor;
    rcZoom.top += rcZoom.bottom-1;    // add height since we invert image (drawn above rcZoom.top)
    rcZoom.bottom *= -1;    // invert image

    rc.left -= rect.left;
    rc.top -= rect.top;

    // use the first dib object
    CDib* pDib = m_fontdata[nType].pDib;
    BITMAPINFOHEADER* pbmih = (BITMAPINFOHEADER*)pDib->m_pData;
    pbmih->biWidth = size.cx;
    pbmih->biHeight = size.cy;

    // draw mask
    ::StretchDIBits(*pDC,
        rcZoom.left, rcZoom.top, rcZoom.right, rcZoom.bottom,
        rc.left, rc.top, rc.right, rc.bottom,
        pBits + size.cy*((size.cx*2+3)&~0x03), *pDib,
        DIB_RGB_COLORS, SRCAND);

    // draw text image
    ::StretchDIBits(*pDC,
        rcZoom.left, rcZoom.top, rcZoom.right, rcZoom.bottom,
        rc.left, rc.top, rc.right, rc.bottom,
        pBits, *pDib,
        DIB_RGB_COLORS, SRCPAINT);
}

void CXFont::AdjustSizeLine(CSize& sizeLine, int nType, int nIndex, int nOrientation) const
{
    CSize sizeChar = GetGlyphSize(nType, nIndex);
    switch (nOrientation)
    {
    case ORIENTATION_NORMAL:
        sizeLine.cx += sizeChar.cx;
        if (!sizeLine.cy)
            sizeLine.cy = sizeChar.cy;
        break;

    case ORIENTATION_SIDEWAYS:
        if (!sizeLine.cx)
            sizeLine.cx = sizeChar.cy;
        sizeLine.cy += sizeChar.cx;
        break;
    }
}

/*
CSize CXFont::GetSize(const CString& str, int nType, int nOrientation, int nSpacing, const CXText* pText) const
{
    CSize size(0, 0);
    if (m_fontdata[nType].pDib)
    {
        LPCSTR psz = str;
        while (*psz)
        {
            CSize sizeLine(0, 0);
            while (*psz)
            {
                if (*psz == '\n')
                {
                    psz++;        // skip new line
                    break;
                }
                else if (*psz == '\r')
                {
                    psz += 2;    // skip carriage return (followed by new line)
                    break;
                }

                AdjustSizeLine(sizeLine, nType, GetNextChar(nType, psz), nOrientation);
            }

            switch (nOrientation)
            {
            case ORIENTATION_NORMAL:
                size.cx = max(size.cx, sizeLine.cx);
                size.cy += sizeLine.cy;
                if (*psz)
                    size.cy = max(size.cy+nSpacing, sizeLine.cy);
                break;

            case ORIENTATION_SIDEWAYS:
                size = sizeLine;
                break;    // no multi-line
            }
        }

        // check that size is within document resolution
        BOOL bWarn = FALSE;
        const CSize& sizeDoc = m_pDocument->GetResolution();
        if (size.cx > sizeDoc.cx)
        {
            size.cx = sizeDoc.cx;
            bWarn = TRUE;
        }
        if (size.cy > sizeDoc.cy)
        {
            size.cy = sizeDoc.cy;
            bWarn = TRUE;
        }
        if (bWarn && !App()->IsExportOnly())
        {
            CString strPrompt;
            strPrompt.Format(IDP_TEXT_TOO_WIDE, pText->GetName());
            AfxMessageBox(strPrompt);
        }
    }
    return size;
}
*/

CSize CXFont::GetSizeLine(const CString& str, int nType, int nLineIndex, int nOrientation) const
{
    LPCSTR psz = str;

    // find correct line
    int n = 0;
    while (*psz)
    {
        if (n == nLineIndex)
            break;
        int nChar = GetNextChar(nType, psz);
        if (nChar == '\n')
            n++;
        else if (nChar == '\r')
        {
            n++;
            psz++;    // ship '\n'
        }
    }

    // get size
    CSize sizeLine(0, 0);
    while (*psz)
    {
        if (*psz == '\n' || *psz == '\r')
            break;

        AdjustSizeLine(sizeLine, nType, GetNextChar(nType, psz), nOrientation);
    }

    return sizeLine;
}

int CXFont::GetImage() 
{ 
    return TREE_FONT; 
}

DOCARRAYTYPE CXFont::GetType() 
{ 
    return DOC_FONTS; 
}
