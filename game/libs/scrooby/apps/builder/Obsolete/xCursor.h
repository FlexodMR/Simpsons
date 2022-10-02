#pragma once

#ifndef _XCURSOR_H_
#define _XCURSOR_H_

#include "StdAfx.h"
//#include "XCon.h"
//#include "XConDoc.h"
#include "xPathObject.h"

/////////////////////////////////////////////////////////////////////////////
// CXCursor

class CXCursor : public CXPathObject
{
    DECLARE_SERIAL(CXCursor)
public:
    CXCursor() { m_hCursor = NULL; }
    virtual ~CXCursor() {}

// Attributes
protected:
    HCURSOR m_hCursor;
    CPoint m_ptHotspot;

// Overidables
public:
    virtual void OnProperties();
    virtual void OnDelete();
    virtual BOOL Load(LPCTSTR pszPathName);
    virtual int GetImage() ;
    virtual DOCARRAYTYPE GetType() ;
};

typedef CTypedPtrArray<CObArray, CXCursor*> CXCursorArray;

#endif
