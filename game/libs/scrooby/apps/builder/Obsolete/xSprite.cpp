#pragma warning( disable : 4786 )
#include "xSprite.h"
#include "DlgProp.h"
#include "SpritePropDlg.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"
#include "tabview.h"
#include "XconView.h"

/////////////////////////////////////////////////////////////////////////////
// CXSprite

CXSprite::CXSprite()
{
    m_ds.ClrScale.fRed = m_ds.ClrScale.fGreen = m_ds.ClrScale.fBlue = 1.0;
}

void CXSprite::CopyArray(CObArray* parDest, CObArray* parSrc)
{
    parDest->Copy(*(CXImageArray*)parSrc);
}

void CXSprite::Copy(CXObject* pObject)
{
    CXDisplay::Copy(pObject);
    memcpy(&m_ds, &((CXSprite*)pObject)->m_ds, sizeof(m_ds));
}

void CXSprite::OnProperties()
{
    /*
    CSpritePropDlg dlg;
    dlg.m_strName = m_strName;
    dlg.m_fPosX = m_d.x;
    dlg.m_fPosY = m_d.y;
    dlg.m_nVertAlign = (m_d.nAlignment&0x07) >> 1;
    dlg.m_nHorzAlign = m_d.nAlignment >> 5;
    dlg.m_cx = (float)m_d.size.cx;
    dlg.m_cy = (float)m_d.size.cy;
    dlg.m_pImageArray = &m_arImage;
    dlg.m_nImage = m_d.wShowIndex;
    dlg.m_fRed = m_ds.ClrScale.fRed;
    dlg.m_fGreen = m_ds.ClrScale.fGreen;
    dlg.m_fBlue = m_ds.ClrScale.fBlue;
    dlg.m_nTranslucent = m_d.nTranslucent;
    if (dlg.DoModal() != IDOK)
        return;

    char nAlignment = (1 << dlg.m_nVertAlign) | (1 << (dlg.m_nHorzAlign+4));
    BOOL bPosChange = m_d.nAlignment != nAlignment || m_d.x != dlg.m_fPosX || m_d.y != dlg.m_fPosY;
    BOOL bClrChange = dlg.m_fRed != m_ds.ClrScale.fRed || dlg.m_fGreen != m_ds.ClrScale.fGreen || dlg.m_fBlue != m_ds.ClrScale.fBlue;

    if (dlg.m_strName == m_strName && dlg.m_nImage == m_d.wShowIndex && !bPosChange &&
        !bClrChange && dlg.m_nTranslucent == m_d.nTranslucent)
        return;

    m_pDocument->AddUndoObject(new CUndoContext(this, UNDO_MODIFY));

    SetNewName(dlg.m_strName);

    CRect rect(m_rect);
    BOOL bUpdateView = FALSE;

    if (bPosChange)
    {
        m_d.nAlignment = nAlignment;
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

    if (m_d.wShowIndex != dlg.m_nImage)
    {
        m_d.wShowIndex = dlg.m_nImage;
        ((COverlayDlg*)m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE))->SetVisibleObject(m_d.wShowIndex);
        bUpdateView = TRUE;
    }

    if (bClrChange)
    {
        m_ds.ClrScale.fRed = dlg.m_fRed;
        m_ds.ClrScale.fGreen = dlg.m_fGreen;
        m_ds.ClrScale.fBlue = dlg.m_fBlue;
        bUpdateView = TRUE;
    }

    if (m_d.nTranslucent != dlg.m_nTranslucent)
    {
        if (m_d.nTranslucent == TRANSLUCENT_NONE)
        {
            int nSize = m_arImage.GetSize();
            for (int i = 0; i < nSize; i++)
                m_arImage[i]->CreateTranslucent();
        }
        bUpdateView = TRUE;
        m_d.nTranslucent = dlg.m_nTranslucent;
    }

    if (bUpdateView)
        m_pDocument->GetXConView()->InvalidateViewRect(rect);
        */
}

void CXSprite::Draw(CDC* pDC, const CRect& rect, int nZoomFactor)
{
    CXImage* pImage = m_arImage[m_d.wShowIndex];
    pImage->ScalePalette(m_ds.ClrScale);
    CPoint pt = m_rect.TopLeft();
    const CSize& sizeImage = pImage->GetSize();
    const CSize size = m_rect.Size();
    if (sizeImage != size)
    {
        if (m_d.nAlignment & ALIGN_HCENTER)
            pt.x += (m_rect.Width() - sizeImage.cx)/2;
        else if (m_d.nAlignment & ALIGN_RIGHT)
            pt.x = m_rect.right - sizeImage.cx;

        if (m_d.nAlignment & ALIGN_VCENTER)
            pt.y += (m_rect.Height() - sizeImage.cy)/2;
        else if (m_d.nAlignment & ALIGN_BOTTOM)
            pt.y = m_rect.bottom - sizeImage.cy;
    }
    pImage->Draw(pDC, pt.x, pt.y, rect, nZoomFactor, m_d.nTranslucent);
}

BOOL CXSprite::IsResourceObjectUsed(CXResource* pResource)
{
    int nSize = m_arImage.GetSize();
    for (int i = 0; i < nSize; i++)
    {
        if (m_arImage.GetAt(i) == pResource)
            return TRUE;
    }
    return FALSE;
}

int CXSprite::GetImage() 
{ 
    return GetNumObjects() > 1 ? TREE_MULTI_SPRITE : TREE_SPRITE; 
}
