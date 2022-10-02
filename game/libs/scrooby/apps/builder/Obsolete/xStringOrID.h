#pragma once

#ifndef __XSTRINGORID_H
#define __XSTRINGORID_H

#include "xresource.h"
#include "xstring.h"

/////////////////////////////////////////////////////////////////////////////
// CXStringOrID

class CXStringOrID : public CXObject
{
    DECLARE_SERIAL(CXStringOrID)
public:
    CXStringOrID() { m_pString = NULL; }
    CXStringOrID(const CXStringOrID& obj);
    virtual ~CXStringOrID() {}

// Attributes
protected:
    CXString* m_pString;
    CString m_strID;

// Operations
public:
    void Set(CXString* pString, const CString& strID);
    const CString& GetString();
    const CString& GetStringID() { return m_strID; }
    CXString* GetXString() { return m_pString; }
    int GetImage() ;
// Overidables
public:
    virtual LPCTSTR GetName() const;
    virtual void Serialize(CArchive& ar);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual DWORD GetSizeObject();
    virtual BOOL HasProperties() const { return m_pString != NULL; }
    virtual void OnProperties() { m_pString->OnProperties(); }
};

typedef CTypedPtrArray<CObArray, CXStringOrID*> CXStringArray;

#endif
