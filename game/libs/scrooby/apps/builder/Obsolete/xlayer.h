#pragma once

#ifndef __XLAYER_H
#define __XLAYER_H

#include "xcontext.h"
//#include "xcon.h"
//#include "xcondoc.h"

class CXSprite;
class CXString;
class CXConDoc;
class CXOverlay;

/////////////////////////////////////////////////////////////////////////////
// CXLayer

class CXLayer : public CXObjectName
{
    DECLARE_SERIAL(CXLayer)
public:
    CXLayer() { m_bVisible = FALSE; }
    virtual ~CXLayer();

// Attributes
protected:
    CXOverlay* m_pOverlay;
    CXContextArray m_arContext;
    BOOL m_bVisible;

// Operations
public:
    BOOL IsVisible() const { return m_bVisible; }
    void EnableVisible(BOOL bVisible = TRUE);
    void InsertAt(CXContext* pContext, CXContext* pInsertContext);
    BOOL Remove(CXContext* pContext, CXResource* pResouce = NULL);
    void OnStringChange(CXString* pString);
    void OnLanguageChange();
    CXContext* GetDisplayObj(CPoint point);
    void SetOverlay(CXOverlay* pOverlay) { m_pOverlay = pOverlay; }
    CXOverlay* GetOverlay() { return m_pOverlay; }
    CXContextArray* GetContextArray() { return &m_arContext; }
    void SetVisible(BOOL bVisible) {m_bVisible = bVisible; }
    void SetLayer(CXContextArray* pArray);

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
    virtual int GetClipID() const { return XOBJECT_LAYER; }
    virtual BOOL HasProperties() const { return FALSE; }
    //CXSprite *AddSprite(char *name);
    virtual int FindIndex();
};

typedef CTypedPtrArray<CObArray, CXLayer*> CXLayerArray;

#endif
