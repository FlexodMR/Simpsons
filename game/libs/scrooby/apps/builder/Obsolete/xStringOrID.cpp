#include "xstringorid.h"
#include "XConDoc.h"
#include "xUtil.h"
#include "xcon.h"

/////////////////////////////////////////////////////////////////////////////
// CXStringOrID

CXStringOrID::CXStringOrID(const CXStringOrID& obj)
{
    m_pString = obj.m_pString;
    m_strID = obj.m_strID;
    m_pDocument = obj.m_pDocument;
}

void CXStringOrID::Set(CXString* pString, const CString& strID)
{
    m_pString = pString;
    m_strID = strID;
}

LPCTSTR CXStringOrID::GetName() const
{
    return m_pString ? m_pString->GetName() : m_strID;
}

const CString& CXStringOrID::GetString()
{
    if (m_pString)
        return m_pString->GetString();

    // get string from currently viewed language
    return m_pDocument->GetString(m_strID);
}

void CXStringOrID::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXObject::CopyEx(ppData, bCopyFrom);

    if (!bCopyFrom)
    {
        *(DWORD*)*ppData = (DWORD)m_pString;
        *ppData += sizeof(CXString*);
        if (m_pString)
            m_pString->CopyEx(ppData, FALSE);
        CopyString(ppData, m_strID, FALSE);
    }
    else
    {
        m_pString = *(CXString**)*ppData;
        *ppData += sizeof(CXString*);
        if (m_pString)
            m_pString = (CXString*)m_pDocument->OnPasteResource(m_pString, RUNTIME_CLASS(CXString), ppData);
        CopyString(ppData, m_strID, TRUE);
    }
}

DWORD CXStringOrID::GetSizeObject()
{
    int nSize = 0;
    if (m_pString)
        nSize += m_pString->GetSizeObject();
    return sizeof(CXString*) + GetStringLengthBytes(m_strID) + nSize;
}

/////////////////////////////////////////////////////////////////////////////

IMPLEMENT_SERIAL(CXStringOrID, CXObject, 1|VERSIONABLE_SCHEMA)

void CXStringOrID::Serialize(CArchive& ar)
{
    CXObject::Serialize(ar);

    if (ar.IsStoring())
    {
        ar << (BYTE)(m_pString ? 0 : 1);
        ar << CString(GetName());
    }
    else
    {
        BYTE c;
        ar >> c;
        if (c == 0)
        {
            CString strName;
            App()->ReadStringFixSpaces(ar, strName);
            m_pString = (CXString*)m_pDocument->FindObject(DOC_STRINGS, strName);
        }
        else
            ar >> m_strID;
    }
}

int CXStringOrID::GetImage() 
{ 
    return m_pString ? TREE_STRING : TREE_LANGID;
}
