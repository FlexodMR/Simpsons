#pragma once

#ifndef _XIMAGE_H_
#define _XIMAGE_H_

#include "StdAfx.h"
#include "xPathObject.h"
#include "dib.h"

/////////////////////////////////////////////////////////////////////////////
// CXImage

class CXImage : public CXPathObject
{
    DECLARE_SERIAL(CXImage)
public:
    CXImage();
    virtual ~CXImage();

// Attributes
protected:
    CDib m_dib;
    BYTE* m_pBitsTranslucent;
    UINT m_nNumColors;
    RGBQUAD* m_prgbOrig;
    RGBQUAD* m_prgbCurrent;

    struct ImageData
    {
        COLORREF clrTransparency;
        COLOR_SCALE ClrScaleCurrent;
        BOOL bTransparent;
    } m_d;

// Operations
public:
    void Draw(CDC* pDC, int x, int y, const CRect& rectClip, int nZoomFactor, int nTranslucent);
    void SetTransparency(COLORREF clr) { m_d.clrTransparency = clr; }
    const CSize& GetSize() const { return m_dib.m_size; }
    void ScalePalette(const COLOR_SCALE& clrScale);
    void CreateTranslucent(BOOL bRefresh = FALSE);
    int GetIsTransparent() {return m_d.bTransparent;};
    int GetTransparentColor() {return m_d.clrTransparency;};
    CDib* GetDib() { return &m_dib; }

protected:
    void InitColors(RGBQUAD* prgb);
    BOOL Compress(BYTE** ppData, DWORD* pSizeOfXDC);

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual void Export(CArchive& ar);
    virtual BOOL Load(LPCTSTR pszPathName);
    virtual void OnProperties();
    virtual void OnDelete();
    virtual int GetImage() ;
    virtual DOCARRAYTYPE GetType() ;
    virtual DWORD GetSizeObject();
    virtual void SkipData(BYTE** ppData);
};

typedef CTypedPtrArray<CObArray, CXImage*> CXImageArray;

#endif
