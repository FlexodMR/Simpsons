#pragma warning( disable : 4786 )
#include "xPathObject.h"
#include "xUtil.h"

//#include "xCursor.h"
#include "xConDoc.h"

DWORD CXPathObject::GetSizeObject()
{
    return CXResource::GetSizeObject() + GetStringLengthBytes(m_strPathName);
}


void CXPathObject::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXResource::CopyEx(ppData, bCopyFrom);
    CopyString(ppData, m_strPathName, bCopyFrom);
}


/////////////////////////////////////////////////////////////////////////////
// CXPathObject

IMPLEMENT_DYNAMIC(CXPathObject, CXResource)

void CXPathObject::Copy(CXObject* pObject)
{
    CXResource::Copy(pObject);

    m_strPathName = ((CXPathObject*)pObject)->m_strPathName;
}

BOOL CXPathObject::Reload()
{
    TCHAR szPath[_MAX_PATH];
    ::GetFullPathName(m_strPathName, _MAX_PATH, szPath, NULL);
    return Load(szPath);
}

void CXPathObject::DisplayErrorMsg(UINT nIDMessage, LPCTSTR pszPathName)
{
    CString strPrompt;
    AfxFormatString1(strPrompt, nIDMessage, pszPathName);
    AfxMessageBox(strPrompt);
}

void CXPathObject::AddToPath(const CString& strAdd)
{
    m_strPathName.Insert(2, strAdd);
}


/////////////////////////////////////////////////////////////////////////////

// DARWIN TODO:  Why was this using CXCursor?
//
//IMPLEMENT_SERIAL(CXCursor, CXPathObject, 1|VERSIONABLE_SCHEMA)

//IMPLEMENT_SERIAL(CXPathObject, CXResource, 1|VERSIONABLE_SCHEMA)

void CXPathObject::Serialize(CArchive& ar)
{
    CXObjectName::Serialize(ar);

    if (ar.IsStoring())
        ar << m_strPathName;
    else
    {
        ar >> m_strPathName;
        if (!Reload())
        {
            while (TRUE)
            {
                if (CXConDoc::s_bFirstPathObj && m_pDocument->FindNewRootPath())
                {
                    if (Reload())
                        break;
                }
                delete this;
                AfxThrowUserException();
            }
        }
        CXConDoc::s_bFirstPathObj = FALSE;
    }
}
