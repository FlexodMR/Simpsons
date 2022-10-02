//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ScriptBaseClass.cpp: implementation of the CScriptBaseClass class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "radtuner.h"
#include "ScriptBaseClass.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//===========================================================================
// CScriptBaseClass::CScriptBaseClass
//===========================================================================
// Description: default constructor
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CScriptBaseClass::CScriptBaseClass() :
    m_bValid(false),
    m_bModified(true),
    m_strName(""),
    m_ePlatForm( ParserConst::PT_DEFAULT )
{

}


//===========================================================================
// CScriptBaseClass::~CScriptBaseClass
//===========================================================================
// Description: Destructor
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CScriptBaseClass::~CScriptBaseClass()
{

}


//===========================================================================
// CScriptBaseClass::_Copy
//===========================================================================
// Description: Help function to copy instance from one to another
// 
// Constraints: 
// 
// Parameter:
//             const CScriptBaseClass &oObject
// 
// Return: void 
//===========================================================================
void CScriptBaseClass::_Copy(const CScriptBaseClass &oObject)
{
    m_bValid = oObject.m_bValid;
    m_bModified = oObject.m_bModified;
    m_strName = oObject.m_strName;
    m_ePlatForm = oObject.m_ePlatForm;
}


//===========================================================================
// CScriptBaseClass::CScriptBaseClass
//===========================================================================
// Description: Copy constructor
// 
// Constraints: 
// 
// Parameter:
//             const CScriptBaseClass &oBaseClass
// 
// Return: 
//===========================================================================
CScriptBaseClass::CScriptBaseClass(const CScriptBaseClass &oBaseClass)
{
    _Copy(oBaseClass);
}


//===========================================================================
// CScriptBaseClass::operator=
//===========================================================================
// Description: Assignment operator
// 
// Constraints: 
// 
// Parameter:
//             const CScriptBaseClass &oObject
// 
// Return: CScriptBaseClass& 
//===========================================================================
CScriptBaseClass& CScriptBaseClass::operator=(const CScriptBaseClass &oObject)
{
    _Copy(oObject);
    SetModified(true);
    return(*this);
}


//===========================================================================
// CScriptBaseClass::GetValid
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CScriptBaseClass::GetValid() const
{
    return(m_bValid);
}


//===========================================================================
// CScriptBaseClass::SetValid
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             bool bValid
// 
// Return: void 
//===========================================================================
void CScriptBaseClass::SetValid(bool bValid)
{
    m_bValid = bValid;
    SetModified(true);
}


//===========================================================================
// CScriptBaseClass::GetModified
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CScriptBaseClass::GetModified() const
{
    return(m_bModified);
}


//===========================================================================
// CScriptBaseClass::SetModified
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             bool bModified
// 
// Return: void 
//===========================================================================
void CScriptBaseClass::SetModified(bool bModified)
{
    m_bModified = bModified;
}


//===========================================================================
// CScriptBaseClass::GetName
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: const CString
//===========================================================================
const CString CScriptBaseClass::GetName() const
{
    return(m_strName);
}


//===========================================================================
// CScriptBaseClass::SetName
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CString &strName
// 
// Return: void 
//===========================================================================
void CScriptBaseClass::SetName(const CString& strName)
{
    m_strName = strName;
    SetModified(true);
}
