#pragma once

#ifndef _XCLIPREG_H_
#define _XCLIPREG_H_


#include "xContext.h"
//#include "XCon.h"

/////////////////////////////////////////////////////////////////////////////
// CXClipReg

class CXClipReg : public CXContext
{
    DECLARE_SERIAL(CXClipReg)
public:
    CXClipReg() { m_bReset = FALSE; }
    virtual ~CXClipReg() {}

// Attributes
protected:
    BOOL m_bReset;

// Operations
public:
    void SetRect(const CRect& rect) { m_rect = rect; }
    BOOL IsReset() const { return m_bReset; }
    void SetReset(BOOL bReset) { m_bReset = bReset; }

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual void Export(CArchive& ar);
    virtual void Draw(CDC* pDC, const CRect& rect, int nZoomFactor);
    virtual void OnProperties();
    virtual BOOL IsObjSelected(CPoint& point);
    virtual int GetImage() ;
    virtual DWORD GetSizeObject();
    virtual int GetClipID() const{ return XOBJECT_CLIPREG; }
};


#endif
