#pragma once

#ifndef _XPATHOBJECT_H_
#define _XPATHOBJECT_H_

#include "xResource.h"

/////////////////////////////////////////////////////////////////////////////
// CXPathObject

class CXPathObject : public CXResource
{
    DECLARE_DYNAMIC(CXPathObject)
public:
    CXPathObject() {}
    virtual ~CXPathObject() {}

// Attributes
public:
    static BOOL s_bForceDelete;

protected:
    CString m_strPathName;

// Operations
public:
    LPCTSTR GetPathName() const { return m_strPathName; }
    void SetPathName(const CString& strPath) { m_strPathName = strPath; }
    void AddToPath(const CString& strAdd);
    BOOL Reload();

protected:
    void DisplayErrorMsg(UINT nIDMessage, LPCTSTR pszPathName);

// Overidables
public:
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual BOOL Load(LPCTSTR pszPathName) { return FALSE; }
    DWORD GetSizeObject();
    virtual LPCTSTR GetClipText() { return m_strPathName; }
};

typedef CTypedPtrArray<CObArray, CXPathObject*> CXPathObjectArray;

#endif
