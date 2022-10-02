#pragma once

#ifndef __XSTRING_H
#define __XSTRING_H

#include "xresource.h"
#include "XConEnum.h"

/////////////////////////////////////////////////////////////////////////////
// CXString

class CXString : public CXResource
{
    DECLARE_SERIAL(CXString)
public:
    CXString() {}
    virtual ~CXString() {}

// Attributes
protected:
    CString m_str;

// Operations
public:
    BOOL SetString(CString& str);
    const CString& GetString() { return m_str; }

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual void OnProperties();
    virtual void OnDelete();
    virtual int GetImage() ;
    virtual DOCARRAYTYPE GetType() { return DOC_STRINGS; }
    virtual DWORD GetSizeObject();
    virtual LPCTSTR GetClipText() { return m_str; }
    virtual void SkipData(BYTE** ppData);
};

#endif
