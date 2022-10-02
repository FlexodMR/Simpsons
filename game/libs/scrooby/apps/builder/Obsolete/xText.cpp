#pragma warning( disable : 4786 )
#include "xText.h"
#include "TextPropDlg.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"
#include "TabView.h"
#include "XConView.h"
#include "xFont.h"

/////////////////////////////////////////////////////////////////////////////
// CXText

CXText::CXText()
{
    m_dt.pFont = NULL;
    m_dt.clr = RGB(255,255,255);
    m_dt.nOrientation = ORIENTATION_NORMAL;
    m_dt.nSpacing = 0;
    m_dt.bCopyString = FALSE;

    m_pBits = NULL;
    m_sizeBits = CSize(0,0);

    m_nLangType = FONT_ASCII;
}

CXText::~CXText()
{
    DeleteArray(&m_arString);
    delete[] m_pBits;
}

void CXText::DeleteArray(CObArray* par)
{
    int nSize = par->GetSize();
    for (int i = 0; i < nSize; i++)
        delete par->GetAt(i);
}

void CXText::CopyArray(CObArray* parDest, CObArray* parSrc)
{
    DeleteArray(parDest);

    int nSize = parSrc->GetSize();
    parDest->SetSize(nSize);
    for (int i = 0; i < nSize; i++)
        parDest->SetAt(i, new CXStringOrID(*STATIC_DOWNCAST(CXStringOrID, parSrc->GetAt(i))));
}

void CXText::Copy(CXObject* pObject)
{
    CXDisplay::Copy(pObject);
    memcpy(&m_dt, &((CXText*)pObject)->m_dt, sizeof(m_dt));
}

void CXText::UpdateImage()
{
    int nPitch = (m_d.size.cx*2 + 3)&~0x03;
    int nSize = nPitch*m_d.size.cy*2;
    if (!nSize)
        return;

    if (m_d.size != m_sizeBits)
    {
        delete[] m_pBits;
        m_pBits = new BYTE[nSize];
        m_sizeBits = m_d.size;
    }

    memset(m_pBits, 0, nSize);

    CXStringOrID* pString = m_arString[m_d.wShowIndex];
    const CString& str = pString->GetString();

    int cyObj = m_rect.Height();
    int cyFont = m_dt.pFont->GetFontHeight(m_nLangType);

    CPoint pt(0, 0);
    if (m_arString.GetSize() > 1)
    {
        const CSize sizeString = m_dt.pFont->GetSize(str, m_nLangType, m_dt.nOrientation, m_dt.nSpacing, this);
        if (!(m_d.nAlignment & ALIGN_LEFT))
        {
            CSize sizeLine = m_dt.pFont->GetSizeLine(str, m_nLangType, 0, m_dt.nOrientation);
            pt.x = m_rect.Width() - sizeLine.cx;
            if (m_d.nAlignment & ALIGN_HCENTER)
                pt.x /= 2;
        }

        if (sizeString.cy < cyObj)
        {
            if (m_d.nAlignment & ALIGN_VCENTER)
                pt.y += (cyObj - sizeString.cy)/2;
            else if (m_d.nAlignment & ALIGN_BOTTOM)
                pt.y += cyObj - sizeString.cy;
            cyObj = sizeString.cy;
        }
    }

    if (m_dt.nOrientation == ORIENTATION_SIDEWAYS)
        pt.y += cyObj;

    BOOL bEndOfRect = FALSE;
    int nLine = 1;
    LPCSTR psz = str;
    while (*psz)
    {
        int nChar = m_dt.pFont->GetNextChar(m_nLangType, psz);
        if (nChar == '\n' || nChar == '\r')
        {
            if (m_dt.nOrientation != ORIENTATION_NORMAL)
                break;    // no multi-line

            bEndOfRect = FALSE;
            if (nChar == '\r')
                psz++;    // skip new line
            pt.y = max(pt.y + cyFont + m_dt.nSpacing, pt.y);
            if (m_d.nAlignment & ALIGN_LEFT)
                pt.x = 0;
            else
            {
                CSize sizeLine = m_dt.pFont->GetSizeLine(str, m_nLangType, nLine, m_dt.nOrientation);
                pt.x = m_rect.Width() - sizeLine.cx;
                if (m_d.nAlignment & ALIGN_HCENTER)
                    pt.x /= 2;
                if (pt.x < 0)
                    pt.x = 0;
            }
            nLine++;
        }
        else if (!bEndOfRect)
        {
            CSize sizeChar = m_dt.pFont->GetGlyphSize(m_nLangType, nChar);
            switch (m_dt.nOrientation)
            {
            case ORIENTATION_NORMAL:
                if (pt.x + sizeChar.cx > m_d.size.cx)
                    bEndOfRect = TRUE;
                else
                    pt.x += m_dt.pFont->GetGlyphBits(m_nLangType, nChar, pt, m_pBits, nPitch).cx;
                break;

            case ORIENTATION_SIDEWAYS:
                pt.y -= sizeChar.cx;
                if (pt.y < 0)
                    bEndOfRect = TRUE;
                else
                    m_dt.pFont->GetGlyphBits(m_nLangType, nChar, pt, m_pBits, nPitch, TRUE);
                break;
            }
        }
    }

    // create mask
    BYTE* pMaskBits = &m_pBits[nPitch*m_d.size.cy];
    for (int i = 0; i < m_d.size.cy; i++)
    {
        WORD* pd = (WORD*)&pMaskBits[nPitch*i];
        WORD* ps = (WORD*)&m_pBits[nPitch*i];
        for (int j = 0; j < m_d.size.cx; j++, ps++, pd++)
        {
            if (*ps)
            {
                if (m_d.nTranslucent == TRANSLUCENT_NONE)
                    *pd = 0;
                else
                {
                    if ((j+(i&0x01))&0x01)
                        *pd = 0;
                    else
                    {
                        *pd = 0xffff;
                        *ps = 0;
                    }
                }
            }
            else
                *pd = 0xffff;
        }
    }

    SetColor();
}

void CXText::OnProperties()
{
    /*
    CTextPropDlg dlg;
    dlg.m_strName = m_strName;
    dlg.m_fPosX = m_d.x;
    dlg.m_fPosY = m_d.y;
    dlg.m_nVertAlign = (m_d.nAlignment&0x07) >> 1;
    dlg.m_nHorzAlign = m_d.nAlignment >> 5;
    dlg.m_cx = (float)m_d.size.cx;
    dlg.m_cy = (float)m_d.size.cy;
    dlg.m_nOrientation = m_dt.nOrientation;
    dlg.m_pStringArray = &m_arString;
    dlg.m_pFontArray = m_pDocument->GetObjectArray(DOC_FONTS);
    dlg.m_nString = m_d.wShowIndex;
    dlg.m_clr = m_dt.clr;
    dlg.m_pFont = m_dt.pFont;
    dlg.m_nTranslucent = m_d.nTranslucent;
    dlg.m_nSpacing = m_dt.nSpacing;
    dlg.m_bCopy = m_dt.bCopyString;
    if (dlg.DoModal() != IDOK)
        return;

    char nAlignment = (1 << dlg.m_nVertAlign) | (1 << (dlg.m_nHorzAlign+4));
    BOOL bFntChange = m_dt.pFont != dlg.m_pFont || m_dt.nOrientation != dlg.m_nOrientation || dlg.m_nSpacing != m_dt.nSpacing;
    BOOL bPosChange = m_d.nAlignment != nAlignment || m_d.x != dlg.m_fPosX || m_d.y != dlg.m_fPosY;

    if (dlg.m_strName != m_strName && dlg.m_nString == m_d.wShowIndex && dlg.m_clr == m_dt.clr &&
        dlg.m_nTranslucent == m_d.nTranslucent && !bPosChange && !bFntChange && dlg.m_bCopy == m_dt.bCopyString)
        return;

    m_pDocument->AddUndoObject(new CUndoContext(this, UNDO_MODIFY));

    SetNewName(dlg.m_strName);

    m_dt.bCopyString = dlg.m_bCopy;

    CRect rect = m_rect;
    BOOL bUpdateView = FALSE;
    BOOL bUpdateImage = FALSE;

    if (bFntChange)
    {
        m_dt.pFont = dlg.m_pFont;
        m_dt.nOrientation = dlg.m_nOrientation;
        m_dt.nSpacing = dlg.m_nSpacing;
        RecalcSize();
        ValidateRect();
        rect.UnionRect(rect, m_rect);
        bUpdateImage = TRUE;
    }

    if (bPosChange)
    {
        if (m_d.nAlignment != nAlignment)
        {
            m_d.nAlignment = nAlignment;
            bUpdateImage = TRUE;
        }
        m_d.x = dlg.m_fPosX;
        m_d.y = dlg.m_fPosY;
        CalcRect();
        ValidateRect();
        if (rect != m_rect)
        {
            rect.UnionRect(rect, m_rect);
            bUpdateView = TRUE;
        }
    }

    if (m_d.wShowIndex != dlg.m_nString)
    {
        m_d.wShowIndex = dlg.m_nString;
        ((COverlayDlg*)m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE))->SetVisibleObject(m_d.wShowIndex);
        bUpdateImage = TRUE;
    }

    if (m_dt.clr != dlg.m_clr)
    {
        m_dt.clr = dlg.m_clr;
        bUpdateImage = TRUE;
    }

    if (m_d.nTranslucent != dlg.m_nTranslucent)
    {
        if (m_d.nTranslucent == TRANSLUCENT_NONE || dlg.m_nTranslucent == TRANSLUCENT_NONE)
            bUpdateImage = TRUE;
        m_d.nTranslucent = dlg.m_nTranslucent;
        bUpdateView = TRUE;
    }

    if (bUpdateImage)
        UpdateImage();

    if (bUpdateImage || bUpdateView)
        m_pDocument->GetXConView()->InvalidateViewRect(rect);
    */
}

void CXText::SetColor()
{
    if (m_dt.clr == RGB(255,255,255))
        return;

    COLOR_SCALE clrScale;
    clrScale.fRed = (float)GetRValue(m_dt.clr)/255.0f;
    clrScale.fGreen = (float)GetGValue(m_dt.clr)/255.0f;
    clrScale.fBlue = (float)GetBValue(m_dt.clr)/255.0f;

    int nPitch = (m_d.size.cx*2+3)&~0x03;
    for (int i = 0; i < m_d.size.cy; i++)
    {
        WORD* pd = (WORD*)&m_pBits[nPitch*i];
        for (int j = 0; j < m_d.size.cx; j++)
        {
            float f = ((float)(BYTE)(*pd<<3))*clrScale.fBlue;
            BYTE b = min(255, (BYTE)f);
            f = ((float)(BYTE)((*pd>>5)<<3))*clrScale.fGreen;
            BYTE g = min(255, (BYTE)f);
            f = ((float)(BYTE)((*pd>>10)<<3))*clrScale.fRed;
            BYTE r = min(255, (BYTE)f);
            *pd++ = RGB16(r,g,b);
        }
    }
}

void CXText::SetShowIndex(int nIndex)
{
    CXDisplay::SetShowIndex(nIndex);
    UpdateImage();
}

void CXText::Draw(CDC* pDC, const CRect& rect, int nZoomFactor)
{
    m_dt.pFont->Draw(pDC, m_nLangType, m_rect, m_pBits, rect, nZoomFactor);
}

const CSize CXText::GetSize(CXObject* pObject) const
{
    return m_dt.pFont->GetSize(STATIC_DOWNCAST(CXStringOrID, pObject)->GetString(), m_nLangType, m_dt.nOrientation, m_dt.nSpacing, this);
}

void CXText::DoUpdateImage()
{
    RecalcSize();
    ValidateRect();
    UpdateImage();
}

BOOL CXText::OnStringChange(CXString* pString)
{
    BOOL bFound = FALSE;
    BOOL bVisible = FALSE;
    int nSize = m_arString.GetSize();
    for (int i = 0; i < nSize; i++)
    {
        if (m_arString[i]->GetXString() == pString)
        {
            if (!bFound)
            {
                DoUpdateImage();
                bFound = TRUE;
            }
            if (i == m_d.wShowIndex)
                bVisible = TRUE;
        }
    }
    return bVisible;
}

BOOL CXText::OnLanguageChange()
{
    BOOL bVisible;
    int nLangType = m_pDocument->IsJapanese() ? FONT_JAPANESE : FONT_ASCII;
    BOOL bNewLangType = nLangType != m_nLangType;
    m_nLangType = nLangType;
    if (bNewLangType)
    {
        bVisible = TRUE;
        DoUpdateImage();
    }
    else
    {
        BOOL bFound = FALSE;
        bVisible = FALSE;
        int nSize = m_arString.GetSize();
        for (int i = 0; i < nSize; i++)
        {
            if (m_arString[i]->GetXString() == NULL)
            {
                if (!bFound)
                {
                    DoUpdateImage();
                    bFound = TRUE;
                }
                if (i == m_d.wShowIndex)
                    bVisible = TRUE;
            }
        }
    }
    return bVisible;
}

BOOL CXText::IsResourceObjectUsed(CXResource* pResource)
{
    if (pResource->IsKindOf(RUNTIME_CLASS(CXFont)))
    {
        if (m_dt.pFont == pResource)
            return TRUE;
    }

    int nSize = m_arString.GetSize();
    for (int i = 0; i < nSize; i++)
    {
        if (m_arString[i]->GetXString() == pResource)
            return TRUE;
    }
    return FALSE;
}

int CXText::GetImage() 
{ 
    return GetNumObjects() > 1 ? TREE_MULTI_TEXT : TREE_TEXT; 
}
