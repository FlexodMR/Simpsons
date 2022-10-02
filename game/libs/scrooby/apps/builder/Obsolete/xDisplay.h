#pragma once

#ifndef _XDISPLAY_H_
#define _XDISPLAY_H_

#include "xContext.h"

/////////////////////////////////////////////////////////////////////////////
// CXDisplay

class CXDisplay : public CXContext
{
    DECLARE_DYNAMIC(CXDisplay)
public:
    CXDisplay();
    virtual ~CXDisplay() {}

// Attributes
protected:
    struct DisplayData
    {
        float x;
        float y;
        CSize size;
        WORD wShowIndex;
        char nAlignment;
        int nTranslucent;
    } m_d;

// Operations
public:
    void Add(CXObject* pObject);
    WORD GetShowIndex() const { return m_d.wShowIndex; }
    void RecalcSize();
    void Refresh();
    void DeleteMultiObject(CXObject* pObject);
    void MoveMulti(CXObject* pObject, BOOL bMoveUp);

protected:
    void CalcRect();
    BYTE GetExpJustification();
    virtual void ValidateRect();

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual const CSize GetSize(CXObject* pObject) const { return CSize(0,0); }
    virtual CObArray* GetArray() { return NULL; }
    virtual void SetShowIndex(int nIndex);
    virtual void UpdateImage() {}
    virtual BOOL MoveOffset(int dx, int dy, CRect& rect, int nHitTest);
    virtual void CopyArray(CObArray* parDest, CObArray* parSrc) {}
    virtual void DeleteArray(CObArray* par) {}
    virtual DWORD GetSizeObject();
    void SetTopLeft(int top, int left);

    int GetTop();

    int GetLeft();

};


#endif
