//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ScriptObject.cpp: implementation of the CScriptObject class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "radtuner.h"
#include "ScriptObject.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

#include "ScriptMethod.h"
#include "ScriptDoc.h"
#include "MainFrm.h"
#include "ChildFrm.h"
#include "ScriptObjectView.h"

//===========================================================================
// CScriptObject::CScriptObject
//===========================================================================
// Description: Construction to create an script object from type info
// 
// Constraints: 
// 
// Parameter:
//             IRadTypeInfo *pTypeInfo
//             const CString& strObjName
//             CScriptObject::RT_CREATION_TYPE eCreationType
//             CScriptDoc* pParentDoc
// 
// Return: 
//===========================================================================
CScriptObject::CScriptObject(IRadTypeInfo *pTypeInfo, const CString& strObjName, CScriptObject::RT_CREATION_TYPE eCreationType, CScriptDoc* pParentDoc) :
    CScriptBaseClass(),
    m_eCreationType(eCreationType),
    m_pRTIObject(pTypeInfo),
    m_pParentDoc(pParentDoc),
    m_pObjectView(NULL)
{
    SetName(strObjName);

    // when we create, we set the thing to be modified
    SetModified(true);

    // typeinfo, name, and parent doc must be provided to be a valid object
    if ((pTypeInfo == NULL) || (strObjName.GetLength() == 0) || (pParentDoc == NULL))
    {
        SetValid(false);
    }
    else
    {
        SetValid(true);
    }

}


//===========================================================================
// CScriptObject::~CScriptObject
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CScriptObject::~CScriptObject()
{
    _Delete();
}

void CScriptObject::_Delete()
{
    int nSize = m_vecMehthodPtr.size();

    for (int i = 0; i < nSize; i++)
    {
        delete m_vecMehthodPtr[i];
    }
    m_vecMehthodPtr.clear();
    if (m_pObjectView != NULL)
    {
        m_pObjectView->DestroyWindow();
        delete m_pObjectView;
        m_pObjectView = NULL;
    }
}

void CScriptObject::_Copy(const CScriptObject &oObject)
{
#ifdef _DEBUG
    // its ok RTIObject pointer is null, it just mean, it is a invalid object
    // we can still copy them
    if (oObject.m_pRTIObject != NULL)
    {
        ASSERT(dynamic_cast<IRadTypeInfo *>(oObject.m_pRTIObject));
    }
#endif

    m_pObjectView = NULL;
    m_eCreationType = oObject.m_eCreationType;
    m_pRTIObject = oObject.m_pRTIObject;
    m_pParentDoc = oObject.m_pParentDoc;

    int nSize = oObject.m_vecMehthodPtr.size();
    m_vecMehthodPtr.resize(nSize);

    for (int i = 0; i < nSize; i++)
    {
        // Create a new copy and set parent to itself
        CScriptMethod *pMethod = new CScriptMethod(*(oObject.m_vecMehthodPtr[i]));
        ASSERT(pMethod);
        pMethod->SetParentObject(this);

        m_vecMehthodPtr[i] = pMethod;
    }
}


//===========================================================================
// CScriptObject::CScriptObject
//===========================================================================
// Description: Copy constrcutor
// 
// Constraints: 
// 
// Parameter:
//             const CScriptObject &oObject
// 
// Return: 
//===========================================================================
CScriptObject::CScriptObject(const CScriptObject &oObject) :
    CScriptBaseClass(oObject),
    m_eCreationType(RT_CREATE),
    m_pRTIObject(NULL),
    m_pParentDoc(NULL),
    m_pObjectView(NULL)
{
    _Copy(oObject);

    SetModified(true);
    m_pObjectView = NULL;   // never copy view around.
}


//===========================================================================
// CScriptObject::operator=
//===========================================================================
// Description: assignment operator
// 
// Constraints: 
// 
// Parameter:
//             const CScriptObject &oObject
// 
// Return: CScriptObject& 
//===========================================================================
CScriptObject& CScriptObject::operator=(const CScriptObject &oObject)
{
    CScriptBaseClass::operator=(oObject);

    _Delete();
    _Copy(oObject);

    SetModified(true);
    m_pObjectView = NULL;   // never copy view around.

    return(*this);
}

CScriptObject::RT_CREATION_TYPE CScriptObject::GetCreationType() const
{
    return(m_eCreationType);
}

void CScriptObject::SetCreationType(CScriptObject::RT_CREATION_TYPE eType)
{
    SetModified(true);
    m_eCreationType = eType;
}

const CString CScriptObject::GetClassName() const
{
    if (m_pRTIObject == NULL)
    {
        return(CString(""));
    }

    char szText[128];
    strcpy(szText, m_pRTIObject->GetName());

    if (szText[0] == 'I')
    {
        szText[1] = tolower(szText[1]);
        return(CString(&szText[1]));
    }
    else
    {
        return(CString(szText));
    }
}

const CString CScriptObject::GetUnMangoedClassName() const
{
    if (m_pRTIObject == NULL)
    {
        return(CString(""));
    }

    return(m_pRTIObject->GetName());
}

CScriptDoc* CScriptObject::GetParentDoc() const
{
    return(m_pParentDoc);
}

void CScriptObject::SetParentDoc(CScriptDoc* pParentDoc)
{
#ifdef _DEBUG
    if (pParentDoc == NULL) TRACE("Warning: Set script object's parent doc to NULL!");
#endif
    m_pParentDoc = pParentDoc;
    SetModified(true);
}

int CScriptObject::GetMethodCount()
{
    return(m_vecMehthodPtr.size());
}

CScriptMethod* CScriptObject::GetMethodAt(const int nIndex)
{
    ASSERT(m_vecMehthodPtr.size() > nIndex);
    return(m_vecMehthodPtr[nIndex]);
}

void CScriptObject::RemoveMethodAt(const int nIndex)
{
    ASSERT(m_vecMehthodPtr.size() > nIndex);
    delete m_vecMehthodPtr[nIndex];
    m_vecMehthodPtr.erase(&m_vecMehthodPtr[nIndex]);
    SetModified(true);
}

void CScriptObject::RemoveMethod(CScriptMethod* pMethod)
{
    if (pMethod == NULL)
    {
        return;
    }

    for (int i = 0; i < m_vecMehthodPtr.size(); i++)
    {
        if (m_vecMehthodPtr[i] == pMethod)
        {
            delete m_vecMehthodPtr[i];
            m_vecMehthodPtr.erase(&m_vecMehthodPtr[i]);
        }
    }
    SetModified(true);
}

void CScriptObject::RemoveAll()
{
    _Delete();
    SetModified(true);
}

void CScriptObject::Insert(CScriptMethod *pMethod, const int nInsertAfter)
{
    ASSERT(pMethod);
    pMethod->SetParentObject(this);
    // if insert at last position, just call push_back
    if (nInsertAfter == -2 || nInsertAfter >= (int)m_vecMehthodPtr.size()-1)
    {
        m_vecMehthodPtr.push_back(pMethod);
    }
    else if (nInsertAfter == -1)
    {
        m_vecMehthodPtr.insert(m_vecMehthodPtr.begin(), pMethod);
    }
    else
    {
        // vector uses insert before, but we must use the same method
        // as treeview control which is insert after.
        m_vecMehthodPtr.insert(&(m_vecMehthodPtr[nInsertAfter+1]), pMethod);
    }
    SetModified(true);
}

void CScriptObject::Insert(CScriptMethod *pMethod, const CScriptMethod *pAfterThisMethod)
{
    ASSERT(pMethod && pAfterThisMethod);
    ASSERT(pAfterThisMethod->GetParentObject() == this);

    for (int i = 0; i < m_vecMehthodPtr.size(); i++)
    {
        if (m_vecMehthodPtr[i] == pAfterThisMethod)
        {
            break;
        }
    }

    Insert(pMethod, i);
}

IRadTypeInfo* CScriptObject::GetRadTypeInfo() const
{
    return(m_pRTIObject);
}

void CScriptObject::SetModified(bool bModified)
{
    if (bModified == true)
    {
        if (this->m_pParentDoc != NULL)
        {
            m_pParentDoc->SetModified(true);
        }
        CScriptBaseClass::SetModified(true);
    }
    else
    {
        for (int i = 0; i < m_vecMehthodPtr.size(); i++)
        {
            m_vecMehthodPtr[i]->SetModified(false);
        }
        CScriptBaseClass::SetModified(false);
    }
}


const CString CScriptObject::GetDisplayText() const
{
    // myObject (with myClass) *
    CString strText;
    char szCreate[16];

    if (GetCreationType() == RT_WITH)
    {
        strcpy(szCreate, "with");
    }
    else
    {
        strcpy(szCreate, "create");
    }

    if (GetModified() == true)
    {
        strcat(szCreate, " *");
    }

    if (GetClassName().GetLength() > 0)
    {
        strText.Format("%s (%s) %s", GetName(), (const char*)GetClassName(), szCreate);
    }
    else
    {
        strText.Format("%s %s", (const char*)GetName(), szCreate);
    }

    ParserConst::PlatformType ePlatForm = GetPlatForm();

    if (ePlatForm != ParserConst::PT_DEFAULT)
    {

        if (ePlatForm & ParserConst::PT_PC)
        {
            strText += "[PC]";
        }

        if (ePlatForm & ParserConst::PT_XBOX)
        {
            strText += "[XBOX]";
        }

        if (ePlatForm & ParserConst::PT_PS2)
        {
            strText += "[PS2]";
        }

        if (ePlatForm & ParserConst::PT_GCN)
        {
            strText += "[GCN]";
        }

    }

    return(strText);
}


bool CScriptObject::ShowView()
{
    if (!GetValid())
    {
        return(false);
    }

    CMainFrame* pFrame = STATIC_DOWNCAST(CMainFrame, theApp.m_pMainWnd);
    // create a new MDI child window
    CChildFrame *pChildFrame = (CChildFrame *)pFrame->CreateNewChild(RUNTIME_CLASS(CChildFrame), IDR_RADTUNTYPE, theApp.GetMDIMenu(), theApp.GetMDIAccel());
    m_pObjectView = pChildFrame->m_pScriptView;
    pChildFrame->m_pScriptView->SetObjectPtr(this);
    pChildFrame->m_pScriptView->OnUpdate(NULL, NULL, NULL);

    return(true);
}


CScriptObjectView* CScriptObject::GetView() const
{
    return(m_pObjectView);
}

void CScriptObject::SetView(CScriptObjectView* pView)
{
    m_pObjectView = pView;
}

void CScriptObject::WriteFileString(CString &strText)
{
    strText.Empty();

    CString strCreateType;

    if (GetCreationType() == CScriptObject::RT_CREATE)
    {
        strCreateType = "create";
    }
    else if(GetCreationType() == CScriptObject::RT_WITH)
    {
        strCreateType = "with";
    }

    CString strClassName = GetClassName();

    if (strClassName.GetAt(0) == 'I')
    {
        strClassName = strClassName.Right(strClassName.GetLength() - 1);
        strClassName.SetAt(0, tolower(strClassName.GetAt(0)));
    }

    strText.Format("%s %s named %s",
        (LPCTSTR)strCreateType,
        (LPCTSTR)strClassName,
        (LPCTSTR)this->GetName());

    ParserConst::PlatformType ePlatForm = GetPlatForm();

    if ( ePlatForm != ParserConst::PT_DEFAULT && ePlatForm != NULL )
    {
        strText += " option ";
        bool bNeedOrSymbol = false;

        if (ePlatForm & ParserConst::PT_PC)
        {
            if (bNeedOrSymbol)
                strText += '|';

            strText += "PC";
            bNeedOrSymbol = true;
        }

        if (ePlatForm & ParserConst::PT_XBOX)
        {
            if (bNeedOrSymbol)
                strText += '|';

            strText += "XBOX";
            bNeedOrSymbol = true;
        }

        if (ePlatForm & ParserConst::PT_PS2)
        {
            if (bNeedOrSymbol)
                strText += '|';

            strText += "PS2";
            bNeedOrSymbol = true;
        }

        if (ePlatForm & ParserConst::PT_GCN)
        {
            if (bNeedOrSymbol)
                strText += '|';

            strText += "GCN";
            bNeedOrSymbol = true;
        }

    }


}

void CScriptObject::RemoveInvalid()
{
    for (vector<CScriptMethod *>::iterator p = m_vecMehthodPtr.begin(); p < m_vecMehthodPtr.end(); p++)
    {
        if (!(*p)->GetValid())
        {
            delete (*p);
            m_vecMehthodPtr.erase(p);
        }
    }
    SetModified(true);
}

CScriptMethod* CScriptObject::FindMethodByName( const CString & strMetName, const long nMetIdx )
{
    if ( nMetIdx < m_vecMehthodPtr.size( ) && m_vecMehthodPtr[ nMetIdx ]->GetName( ) == strMetName )
    {
        return m_vecMehthodPtr[ nMetIdx ];
    }
    
    vector<CScriptMethod*>::iterator i = m_vecMehthodPtr.begin( );
    while ( i != m_vecMehthodPtr.end( ) )
    {
        if ( (*i)->GetName( ) == strMetName )
        {
            return (*i);
        }

        i ++;
    }
    return NULL;
}
