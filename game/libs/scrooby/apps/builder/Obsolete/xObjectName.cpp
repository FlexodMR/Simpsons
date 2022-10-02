#include "xconDoc.h"
#include "tabview.h"
#include "xObjectName.h"
#include "xcon.h"
#include "xOverlay.h"

/////////////////////////////////////////////////////////////////////////////
// CXObjectName

IMPLEMENT_DYNAMIC(CXObjectName, CXObject)

void CXObjectName::Copy(CXObject* pObject)
{
    CXObject::Copy(pObject);

    CXObjectName* p = (CXObjectName*)pObject;
    if (m_strName != p->m_strName)
        m_strName = p->m_strName;
}

void CXObjectName::SetNewName(CString& str)
{
    if (str == m_strName)
        return;

    App()->FixSpacesInName(str.GetBuffer(str.GetLength()));
    str.ReleaseBuffer();

    // check if name is unique
    CXObjectArray* pArray;
    if (IsKindOf(RUNTIME_CLASS(CXContext)))
        pArray = (CXObjectArray*)((CXContext*)this)->GetOverlay()->GetContextArray();
    else
        pArray = m_pDocument->GetObjectArray(GetType());

    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        if (pArray->GetAt(i)->GetName() == str)
        {
            AfxMessageBox(IDP_INVALID_NAME);
            return;
        }
    }

    SetName(str);
    m_pDocument->GetTabView()->InvalidatePage();
}
