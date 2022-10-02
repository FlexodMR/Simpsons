#pragma once

#ifndef _XGROUP_H_
#define _XGROUP_H_


/////////////////////////////////////////////////////////////////////////////
// CXGroup

#include "xContext.h"

class CXString;
class CXSprite;

class CXGroup : public CXContext
{
    DECLARE_SERIAL(CXGroup)
public:
    CXGroup() { m_bVisible = FALSE; }
    virtual ~CXGroup();

// Attributes
protected:
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
    CXContextArray* GetContextArray() { return &m_arContext; }
    void SetVisible(BOOL bVisible) {m_bVisible = bVisible; }
    CXContextArray* GetSiblingArray();
    

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
    virtual int GetClipID() const { return XOBJECT_GROUP; }
    virtual BOOL HasProperties() const { return FALSE; }
    CXSprite *AddSprite(char *name);
    virtual int FindIndex();
};

#endif
