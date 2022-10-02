/////////////////////////////////////////////////////////////////////////////
// CXObjectName

#ifndef _XCOBJECTNAME_H_
#define _XCOBJECTNAME_H_

#include "xObject.h"

class CXObjectName : public CXObject
{
    DECLARE_DYNAMIC(CXObjectName)
public:
    CXObjectName() {}
    virtual ~CXObjectName() {}

// Attributes
protected:
    CString m_strName;

// Operations
public:
    void SetName(LPCTSTR pszName) { m_strName = pszName; }
    void SetNewName(CString& str);

// Overidables
public:
    virtual LPCTSTR GetName() const { return m_strName; }
    virtual void Serialize(CArchive& ar);
    virtual void Copy(CXObject* pObject);
    virtual void CopyEx(BYTE** ppData, BOOL bCopyFrom);
    virtual DWORD GetSizeObject();
};


typedef CTypedPtrArray<CObArray, CXObject*> CXObjectArray;  //IMPROVE: this should be defined somewhere else
#endif
