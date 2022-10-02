#pragma once

#ifndef __XCONTEXT_H
#define __XCONTEXT_H

#include "xobjectname.h"

class CXResource;

/////////////////////////////////////////////////////////////////////////////
// CXContext

class CXContext : public CXObjectName
{
    DECLARE_DYNAMIC(CXContext)
public:
    CXContext() {/*m_pGroup = NULL;*/}
    virtual ~CXContext() {}

// Attributes
protected:
    CXOverlay* m_pOverlay;
    CXLayer* m_pLayer;
    //CXGroup* m_pGroup;
    CRect m_rect;

// Operations
public:
    void SetOverlay(CXOverlay* pOverlay) { m_pOverlay = pOverlay; }
    CXOverlay* GetOverlay() { return m_pOverlay; }
    void SetLayer(CXLayer* pLayer) { m_pLayer = pLayer; }
    CXLayer* GetLayer() { return m_pLayer; }
    const CRect& GetRect() const { return m_rect; }
    void DeleteItem();
    void InvalidateView(LPCRECT pRect = NULL);
//    void SetGroup(CXGroup* pGroup) { m_pGroup = pGroup; }
//    CXGroup* GetGroup() { return m_pGroup; }

protected:
    virtual void ValidateRect();

// Overidables
public:
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual void Draw(CDC* pDC, const CRect& rect, int nZoomFactor) {}
    virtual BOOL IsResourceObjectUsed(CXResource* pResource) { return FALSE; }
    virtual void OnMove(BOOL bMoveUp);
    virtual BOOL MoveOffset(int dx, int dy, CRect& rect, int nHitTest);
    virtual BOOL IsObjSelected(CPoint& point);
    virtual void OnDelete();
    virtual void AddUndoObjectModify();
    virtual int FindIndex();
    virtual void OnPaste(int nIndex = -1);
    virtual DWORD GetSizeObject();

};

typedef CTypedPtrArray<CObArray, CXContext*> CXContextArray;

#endif
