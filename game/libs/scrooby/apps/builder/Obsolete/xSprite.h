#pragma once

#ifndef _XSPRITE_H_
#define _XSPRITE_H_

#include "xDisplay.h"
#include "xImage.h"
/////////////////////////////////////////////////////////////////////////////
// CXSprite

class CXSprite : public CXDisplay
{
    DECLARE_SERIAL(CXSprite)
public:
    CXSprite();
    virtual ~CXSprite() {}

// Attributes
protected:
    CXImageArray m_arImage;
    struct SpriteData
    {
        COLOR_SCALE ClrScale;
    } m_ds;

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual void Export(CArchive& ar);
    virtual const CSize GetSize(CXObject* pObject) const { return STATIC_DOWNCAST(CXImage, pObject)->GetSize(); }
    virtual CObArray* GetArray() { return &m_arImage; }
    virtual CXImageArray* GetTypedArray() { return &m_arImage; }
    virtual int GetNumObjects() { return m_arImage.GetSize(); }
    virtual void Draw(CDC* pDC, const CRect& rect, int nZoomFactor);
    virtual BOOL IsResourceObjectUsed(CXResource* pResource);
    virtual void OnProperties();
    virtual int GetImage() ;
    virtual void CopyArray(CObArray* parDest, CObArray* parSrc);
    virtual DWORD GetSizeObject();
    virtual int GetClipID() const { return XOBJECT_SPRITE; }
};

#endif
