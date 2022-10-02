#pragma once

#ifndef _XOVERLAY_H_
#define _XOVERLAY_H_

#include "xObjectName.h"
#include "xLayer.h"

/////////////////////////////////////////////////////////////////////////////
// CXOverlay

class CXOverlay : public CXObjectName
{
    DECLARE_SERIAL(CXOverlay)
public:
    CXOverlay() { m_bVisible = FALSE; }
    virtual ~CXOverlay();

// Attributes
protected:
    CXContextArray m_arContext;
    CXLayerArray m_arLayer;
    BOOL m_bVisible;

// Operations
public:
    BOOL IsVisible() const { return m_bVisible; }
    void EnableVisible(BOOL bVisible = TRUE);
    void Draw(CDC* pDC, const CRect& rect, int nZoomFactor);
    void DrawContextArray(CXContextArray* parContext, CDC* pDC, const CRect& rect, int nZoomFactor);
    void InsertAt(CXContext* pContext, CXContext* pInsertContext);
    void InsertAt(CXLayer* pLayer, CXLayer* pInsertLayer);
    BOOL Remove(CXContext* pContext, CXResource* pResouce = NULL);
    void OnStringChange(CXString* pString);
    void OnLanguageChange();
    CXContext* GetDisplayObj(CPoint point);
    CXContextArray* GetContextArray() { return &m_arContext; }
    CXLayerArray* GetLayerArray() { return &m_arLayer; }

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual void Export(CArchive& ar);
    virtual int GetNumObjects() { return m_arContext.GetSize(); }
    virtual void OnDelete();
    virtual void OnMove(BOOL bMoveUp);
    virtual int GetImage() ;
    virtual DOCARRAYTYPE GetType() ;
    virtual void AddUndoObjectModify();
    virtual void OnPaste(int nIndex = -1);
    virtual DWORD GetSizeObject();
    virtual int GetClipID() const { return XOBJECT_OVERLAY; }
    virtual BOOL HasProperties() const { return FALSE; }
    CXSprite *AddSprite(char *name);
};


typedef CTypedPtrArray<CObArray, CXOverlay*> CXOverlayArray;

#endif
