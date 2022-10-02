#pragma once 

#ifndef _XSCREEN_H_
#define _XSCREEN_H_

#include "xObjectName.h"
#include "xOverlay.h"
//#include "XCon.h"
//#include "XConEnum.h"






/////////////////////////////////////////////////////////////////////////////
// CXScreen

class CXScreen : public CXObjectName
{
    DECLARE_SERIAL(CXScreen)
public:
    CXScreen() {}
    virtual ~CXScreen() {}

// Attributes
protected:
    CXOverlayArray m_arOverlay;

// Operations
public:
    void Show();
    CXOverlayArray* GetOverlayArray() { return &m_arOverlay; }
    void OnDeleteOverlay(CXOverlay* pOverlay);

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual void Export(CArchive& ar);
    virtual int GetNumObjects() { return m_arOverlay.GetSize(); }
    virtual void OnProperties();
    virtual void OnDelete();
    virtual void OnMove(BOOL bMoveUp);
    virtual int GetImage() ;
    virtual DOCARRAYTYPE GetType() ;
    virtual void AddUndoObjectModify();
    virtual void OnPaste(int nIndex = -1);
    virtual DWORD GetSizeObject();
    virtual int GetClipID() const { return XOBJECT_SCREEN; }
    void AddOverlay(char *name);
};

typedef CTypedPtrArray<CObArray, CXScreen*> CXScreenArray;

#endif
