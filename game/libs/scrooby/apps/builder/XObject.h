/////////////////////////////////////////////////////////////////////////////
// XObject.h : interface of the object classes

#pragma once
#ifndef _XOBJECT_H_
#define _XOBJECT_H_


#include "stdafx.h"
#include "docArrayType.h"


class CXConDoc;

// Clipboard objects
enum
{
    XOBJECT_SPRITE,
    XOBJECT_TEXT,
    XOBJECT_PRIMITIVE,
    XOBJECT_CLIPREG,
    XOBJECT_OVERLAY,
    XOBJECT_SCREEN,
    XOBJECT_LAYER,
    XOBJECT_GROUP
};

// alignment
enum
{
    ALIGN_TOP        = 0x01,
    ALIGN_VCENTER    = 0x02,
    ALIGN_BOTTOM    = 0x04,
    ALIGN_LEFT        = 0x10,
    ALIGN_HCENTER    = 0x20,
    ALIGN_RIGHT        = 0x40,
};

typedef struct
{
    float fRed;
    float fGreen;
    float fBlue;
} COLOR_SCALE;

enum
{
    ORIENTATION_NORMAL,
    ORIENTATION_SIDEWAYS,
};

enum
{
    TRANSLUCENT_NONE,
    TRANSLUCENT_ADD,
    TRANSLUCENT_SUB,
    TRANSLUCENT_50_50,
    TRANSLUCENT_50_100,
};

#define RGB16(r,g,b) ((b>>3)|((g>>3)<<5)|((r>>3)<<10))

class CXOverlay;
class CXLayer;
//class CXGroup;
//class CXText;


/////////////////////////////////////////////////////////////////////////////
// CXObject

class CXObject : public CObject
{
    DECLARE_DYNAMIC(CXObject)
public:
    CXObject() {}
    virtual ~CXObject() {}

// Attributes
protected:
    DWORD m_dwExpOffset;
    CXConDoc* m_pDocument;

// Operations
public:
    void SetDocument(CXConDoc* pDoc) { m_pDocument = pDoc; }
    CXConDoc* GetDocument() { return m_pDocument; }

    DWORD GetExpOffset() const { return m_dwExpOffset; }

// Overidables
public:
    virtual LPCTSTR GetName() const { return NULL; }
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject) {}
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom) {}
    virtual void Export(CArchive& ar);
    virtual int GetNumObjects() { return 0; }
    virtual BOOL HasProperties() const { return TRUE; }
    virtual void OnProperties() {}
    virtual void OnDelete() {}
    virtual void OnMove(BOOL bMoveUp) {}
    virtual int GetImage() { return 0; }
    virtual DOCARRAYTYPE GetType() { return (DOCARRAYTYPE)0; }
    virtual void AddUndoObjectModify() {}
    virtual int FindIndex();
    virtual void OnPaste(int nIndex = -1) {}
    virtual DWORD GetSizeObject();
    virtual int GetClipID() const { return 0; }
};

#endif
