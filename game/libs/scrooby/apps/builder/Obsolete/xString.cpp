#include "xstring.h"
#include "XConDoc.h"
#include "DlgProp.h"
#include "xUtil.h"
#include "xcon.h"


/////////////////////////////////////////////////////////////////////////////
// CXString

void CXString::Copy(CXObject* pObject)
{
    CXResource::Copy(pObject);

    CXString* p = (CXString*)pObject;
    m_str = p->m_str;
}

void CXString::OnProperties()
{
    CStringPropDlg dlg;
    dlg.m_strName = m_strName;
    dlg.m_str = m_str;
    if (dlg.DoModal() != IDOK)
        return;

    if (dlg.m_strName == m_strName && dlg.m_str == m_str)
        return;

    m_pDocument->AddUndoObject(new CUndoResource(this, UNDO_MODIFY));

    SetNewName(dlg.m_strName);
    if (SetString(dlg.m_str))
        m_pDocument->OnStringChange(this);
}

void CXString::OnDelete()
{
    if (!m_pDocument->DeleteResourceObject(this))
        return;

    m_pDocument->DeleteResourceObject(this, TRUE);
    DeleteResource();
}

BOOL CXString::SetString(CString& str)
{
    // subtract any trailing new lines
    int nLen = str.GetLength();
    LPTSTR pBuf = str.GetBuffer(nLen);
    while (nLen)
    {
        if (pBuf[nLen-1] != _T('\n'))
            break;
        pBuf[nLen-2] = _T('\0');
        nLen -= 2;
    }
    str.ReleaseBuffer();

    if (str.IsEmpty())
    {
        AfxMessageBox(IDP_INVALID_STRING);
        return FALSE;
    }

    if (str == m_str)
        return FALSE;

    m_str = str;
    return TRUE;
}

void CXString::CopyEx(BYTE** ppData, BOOL bCopyFrom)
{
    CXResource::CopyEx(ppData, bCopyFrom);
    CopyString(ppData, m_str, bCopyFrom);
}

void CXString::SkipData(BYTE** ppData)
{
    *ppData += sizeof(int);
    *ppData += GetStringLengthBytes((LPCTSTR)*ppData);
    *ppData += GetStringLengthBytes((LPCTSTR)*ppData);
}

DWORD CXString::GetSizeObject()
{
    return CXResource::GetSizeObject() + GetStringLengthBytes(m_str);
}

/////////////////////////////////////////////////////////////////////////////

IMPLEMENT_SERIAL(CXString, CXResource, 1|VERSIONABLE_SCHEMA)

void CXString::Serialize(CArchive& ar)
{
    CXResource::Serialize(ar);

    if (ar.IsStoring())
        ar << m_str;
    else
        ar >> m_str;
}

int CXString::GetImage() 
{ 
    return TREE_STRING; 
}
