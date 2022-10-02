#include "xutil.h"
#include "xObject.h"
//#include "xImage.h"
#include "xStringOrID.h"

/////////////////////////////////////////////////////////////////////////////
// Helpers

BOOL IsMultiResourceObject(CXObject* pObject)
{
    return FALSE;
//    return pObject->IsKindOf(RUNTIME_CLASS(CXImage)) || pObject->IsKindOf(RUNTIME_CLASS(CXStringOrID));
}

int FindObjectInArray(CObArray* pArray, CXObject* pObject)
{
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        if (pArray->GetAt(i) == pObject)
            break;
    }
    ASSERT(i != nSize);
    return i;
}

void MoveObject(CObArray* pArray, CXObject* pObject, BOOL bMoveUp)
{
    int nIndex = FindObjectInArray(pArray, pObject);

    if (bMoveUp)
    {
        CObject* pSave = pArray->GetAt(nIndex-1);
        pArray->SetAt(nIndex-1, pObject);
        pArray->SetAt(nIndex, pSave);
    }
    else
    {
        CObject* pSave = pArray->GetAt(nIndex+1);
        pArray->SetAt(nIndex+1, pObject);
        pArray->SetAt(nIndex, pSave);
    }
}


DWORD GetStringLengthBytes(LPCTSTR pszString)
{
    return (lstrlen(pszString)+1)*sizeof(TCHAR);
}


void CopyString(BYTE** ppData, CString& str, BOOL bCopyFrom)
{
    if (!bCopyFrom)
    {
        int nSize = GetStringLengthBytes(str);
        memcpy(*ppData, (LPCTSTR)str, nSize);
        *ppData += nSize;
    }
    else
    {
        str = (LPCTSTR)*ppData;
        *ppData += GetStringLengthBytes(str);
    }
}
