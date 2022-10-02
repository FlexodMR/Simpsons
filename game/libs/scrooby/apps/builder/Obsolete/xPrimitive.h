#pragma once

#ifndef _XPRIMITIVE_H_
#define _XPRIMITIVE_H_

#include "xContext.h"
//#include "XCon.h"

/////////////////////////////////////////////////////////////////////////////
// CXPrimitive

class CXPrimitive : public CXContext
{
    DECLARE_SERIAL(CXPrimitive)
public:
    CXPrimitive();
    virtual ~CXPrimitive() {}

// Attributes
protected:
    struct PrimitiveData
    {
        int nVertices;
        CPoint ptVertex[4];
        COLORREF rgbVertex[4];
        int nTranslucent;
    } m_d;

// Operations
public:
    void Init(CPoint* pVertex, int nVertices);
    int HitTest(const CPoint& point);

protected:
    void SetRect();

    void ExportF2(CArchive& ar);
    void ExportG2(CArchive& ar);
    void ExportF3(CArchive& ar);
    void ExportG3(CArchive& ar);
    void ExportF4(CArchive& ar);
    void ExportG4(CArchive& ar);

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual void Export(CArchive& ar);
    virtual void Draw(CDC* pDC, const CRect& rect, int nZoomFactor);
    virtual void OnProperties();
    virtual BOOL IsObjSelected(CPoint& point);
    virtual BOOL MoveOffset(int dx, int dy, CRect& rect, int nHitTest);
    virtual int GetImage() ;
    virtual DWORD GetSizeObject();
    virtual int GetClipID() const { return XOBJECT_PRIMITIVE; }
};

#endif
