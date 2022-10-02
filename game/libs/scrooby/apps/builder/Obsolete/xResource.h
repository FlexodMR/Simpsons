#pragma once

#ifndef _XRESOURCE_H_
#define _XRESOURCE_H_

#include "xObjectName.h"

/////////////////////////////////////////////////////////////////////////////
// CXResource

class CXResource : public CXObjectName
{
    DECLARE_DYNAMIC(CXResource)
public:
    CXResource() {}
    virtual ~CXResource() {}

// Operations
protected:
    void DeleteResource();

// Overidables
public:
    virtual void AddUndoObjectModify();
    virtual void OnPaste(int nIndex = -1);
    virtual LPCTSTR GetClipText() { return NULL; }
    virtual void SkipData(BYTE** ppData) {}
};


#endif
