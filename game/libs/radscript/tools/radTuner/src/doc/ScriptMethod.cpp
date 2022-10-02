//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ScriptMethod.cpp: implementation of the CScriptMethod class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "radtuner.h"
#include "ScriptMethod.h"
#include "paramsliderdlg.h"
#include "WorkSpaceDoc.h"
#include "MainFrm.h"


#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif


//===========================================================================
// CScriptParam::_Copy
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptParam &oParam
// 
// Return: void 
//===========================================================================
void CScriptParam::_Copy(const CScriptParam &oParam)
{
    // when copying destory display window and set to NULL
    // because the type of parameter can be diferent
    if ( m_pParamWnd != NULL )
    {
        m_pParamWnd->DestroyWindow( );
        m_pParamWnd = NULL;
    }

    m_pTypeInfoParam = oParam.m_pTypeInfoParam;

    CopyValue( oParam );

    m_pParentMethod = oParam.m_pParentMethod;
}


//===========================================================================
// CScriptParam::_Delete
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CScriptParam::_Delete()
{
    if ( m_pParamWnd != NULL )
    {
        m_pParamWnd->DestroyWindow( );
        m_pParamWnd = NULL;
    }
    if (m_pTypeInfoParam->GetHashedType( ) == PAR_UNKNOWN)
    {
        delete m_pUnknown;
    }
    else if (m_pTypeInfoParam->GetIndLvl( ) > 0)
    {
        switch(m_pTypeInfoParam->GetHashedType( ))
        {
        case PAR_CHAR:
        case PAR_UNSIGNED_CHAR:
            {
                delete m_pString;
            }
            break;

        case PAR_VOID:
            {
                delete m_pUnknown;
            }
            break;

        default:
            {
                delete m_pUnknown;
            }
        };
    }
    m_pUnknown = NULL;
}


//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam():
    m_pParentMethod(NULL),
    m_pUnknown(NULL),
    m_pParamWnd( NULL )
{
    SetModified(true);
}


//===========================================================================
// CScriptParam::~CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CScriptParam::~CScriptParam()
{
    _Delete();
}


//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptParam &oParam
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam(const CScriptParam &oParam):
    m_pParentMethod(NULL),
    m_pUnknown(NULL),
    m_pParamWnd( NULL )
{
    _Copy(oParam);
    SetModified(true);
}


//===========================================================================
// CScriptParam::operator=
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptParam &oParam
// 
// Return: CScriptParam& 
//===========================================================================
CScriptParam& CScriptParam::operator=(const CScriptParam &oParam)
{
    _Delete();
    _Copy(oParam);
    SetModified(true);
    return(*this);
}


//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             bool bValue
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam(bool bValue):
    m_pParentMethod(NULL),
    m_pParamWnd( NULL )
{
    m_bBoolean = bValue;
    SetModified(true);
}


//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             unsigned int uValue
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam(unsigned int uValue):
    m_pParentMethod(NULL),
    m_pParamWnd( NULL )
{
    m_uUInt = uValue;
    SetModified(true);
}


//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             int nValue
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam(int nValue):
    m_pParentMethod(NULL),
    m_pParamWnd( NULL )
{
    m_nInt = nValue;
    SetModified(true);
}


//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             float fValue
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam(float fValue):
    m_pParentMethod(NULL),
    m_pParamWnd( NULL )
{
    m_fFloat = fValue;
    SetModified(true);
}


//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             char cValue
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam(char cValue):
    m_pParentMethod(NULL),
    m_pParamWnd( NULL )
{
    m_cChar = cValue;
    SetModified(true);
}


//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             unsigned char uValue
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam(unsigned char uValue):
    m_pParentMethod(NULL),
    m_pParamWnd( NULL )
{
    m_cChar = uValue;
    SetModified(true);
}


//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             short nValue
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam(short nValue):
    m_pParentMethod(NULL),
    m_pParamWnd( NULL )
{
    m_cChar = nValue;
    SetModified(true);
}


//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char *szValue
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam(const char *szValue):
    m_pParentMethod(NULL),
    m_pParamWnd( NULL )
{
    if (szValue != NULL)
    {
        m_pString = new char[strlen(szValue)+1];
        strcpy(m_pString, szValue);
        SetModified(true);
    }
    else
    {
        m_pString = NULL;
        SetModified(true);
    }
}

// Create a default parameter

//===========================================================================
// CScriptParam::CScriptParam
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             IRadTypeInfoParam & pParamType
// 
// Return: 
//===========================================================================
CScriptParam::CScriptParam(IRadTypeInfoParam * pParamType) :
    m_pParentMethod(NULL),
    m_pParamWnd( NULL )
{
    m_pTypeInfoParam = pParamType;
    m_pUnknown = NULL;
    SetModified(true);
}


//===========================================================================
// IsFloat
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char * p
// 
// Return: static bool 
//===========================================================================
static bool IsFloat( const char * p )
{
    bool foundDot = false;

    for( unsigned int i = 0; i < strlen( p ); i ++ )
    {
        if( !( p[i] >= '0' && p [i] <= '9' ) && p[i] != '-' && p[i] != '.')
        {
            return false;
        }

        if ( p[i] == '.' )
        {
            foundDot = true;
        }
    }

    return foundDot;
}


//===========================================================================
// IsInt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char * p
// 
// Return: static bool 
//===========================================================================
static bool IsInt( const char * p )
{
    for( unsigned int i = 0; i < strlen( p ); i ++ )
    {
        if( !( p[i] >= '0' && p [i] <= '9' ) && p[i] != '-' && p[i] != '.' )
        {
            return false;
        }
    }

    return true;
}


//===========================================================================
// IsStr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char * p
// 
// Return: static bool 
//===========================================================================
static bool IsStr( const char * p )
{
    if (p[0] == '"')
    {
        return true;
    }
    return false;
}


//===========================================================================
// IsBool
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char * p
// 
// Return: static bool 
//===========================================================================
static bool IsBool( const char * p )
{
    if ((stricmp(p, "true") == 0) || (stricmp(p, "false") == 0))
    {
        return(true);
    }
    return(false);
}


//===========================================================================
// CScriptParam::Parse
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* szString
//             IRadTypeInfoParam & pParamType
// 
// Return: bool 
//===========================================================================
bool CScriptParam::Parse(const char* szString, IRadTypeInfoParam * pParamType)
{
    if (pParamType->GetHashedType( ) == PAR_UNKNOWN)
    {
        SetValueUnknown(szString);
    }
    else if (pParamType->GetIndLvl( ) == 0)
    {
        switch(pParamType->GetHashedType( ))
        {
        case PAR_BOOL:
            {
                if (IsBool(szString))
                {
                    SetValueBool((strcmp(szString, "true") ==0) ? true : false);
                }
                else
                {
                    return(false);
                }
            }
            break;

        case PAR_ULONG:
        case PAR_UNSIGNED_INT:
            {
                if (IsInt(szString))
                {
                    SetValueUInt(atoi(szString));
                }
                else
                {
                    return(false);
                }
            }
            break;

        case PAR_LONG:
        case PAR_INT:
            {
                if (IsInt(szString))
                {
                    SetValueInt(atoi(szString));
                }
                else
                {
                    return(false);
                }
            }
            break;

        case PAR_FLOAT:
            {
                if (IsFloat(szString) || IsInt(szString))
                {
                    SetValueFloat((float)atof(szString));
                }
                else
                {
                    return(false);
                }
            }
            break;

        case PAR_CHAR:
            {
                if (IsInt(szString))
                {
                    SetValueChar(atoi(szString));
                }
                else
                {
                    return(false);
                }
            }
            break;

        case PAR_UNSIGNED_CHAR:
            {
                if (IsInt(szString))
                {
                    SetValueUChar(atoi(szString));
                }
                else
                {
                    return(false);
                }
            }
            break;

        case PAR_INT16:
            {
                if (IsInt(szString))
                {
                    SetValueInt16(atoi(szString));
                }
                else
                {
                    return(false);
                }
            }
            break;

        default:
            {
                SetValueText(szString);
            }
            break;
        }; // end switch
    }
    else if (pParamType->GetIndLvl( ) == 1)
    {
        switch(pParamType->GetHashedType( ))
        {
        case PAR_CHAR:
        case PAR_UNSIGNED_CHAR:
            {
                SetValueString(szString);
            }
            break;

        default:
            {
                SetValueText(szString);
            }
            break;
        }
    }
    else
    {
        SetValueText(szString);
    }

    m_pTypeInfoParam = pParamType;

    return(true);
}

//===========================================================================
// CScriptParam::GetValueBool
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CScriptParam::GetValueBool() const
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_BOOL); // must be approcate data type first
    return(m_bBoolean);
}


//===========================================================================
// CScriptParam::GetValueUInt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: unsigned int 
//===========================================================================
unsigned int CScriptParam::GetValueUInt() const
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_UNSIGNED_INT || m_pTypeInfoParam->GetHashedType( ) == PAR_ULONG); // must be approcate data type first
    return(m_uUInt);
}


//===========================================================================
// CScriptParam::GetValueInt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CScriptParam::GetValueInt() const
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_INT || m_pTypeInfoParam->GetHashedType( ) == PAR_LONG); // must be approcate data type first
    return(m_nInt);
}


//===========================================================================
// CScriptParam::GetValueFloat
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: float 
//===========================================================================
float CScriptParam::GetValueFloat() const
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_FLOAT); // must be approcate data type first
    return(m_fFloat);
}


//===========================================================================
// CScriptParam::GetValueChar
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: char 
//===========================================================================
char CScriptParam::GetValueChar() const
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_CHAR); // must be approcate data type first
    return(m_cChar);
}


//===========================================================================
// CScriptParam::GetValueUChar
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: unsigned char 
//===========================================================================
unsigned char CScriptParam::GetValueUChar() const
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_UNSIGNED_CHAR); // must be approcate data type first
    return(m_uUChar);
}


//===========================================================================
// CScriptParam::GetValueInt16
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: short 
//===========================================================================
short CScriptParam::GetValueInt16() const
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_INT16); // must be approcate data type first
    return(m_nInt16);
}


//===========================================================================
// CScriptParam::GetValueString
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: char* 
//===========================================================================
char* CScriptParam::GetValueString() const
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_CHAR && m_pTypeInfoParam->GetIndLvl( ) == 1); // must be approcate data type first
    return(m_pString);
}


//===========================================================================
// CScriptParam::GetValueUnknown
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: char* 
//===========================================================================
char* CScriptParam::GetValueUnknown() const
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_UNKNOWN); // must be approcate data type first
    return(m_pUnknown);
}


//===========================================================================
// CScriptParam::SetValueBool
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             bool bValue
// 
// Return: void 
//===========================================================================
void CScriptParam::SetValueBool(bool bValue)
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_BOOL); // must be approcate data type first
    if ( m_bBoolean != bValue )
    {
        m_bBoolean = bValue;
        SetModified(true);
    }
}


//===========================================================================
// CScriptParam::SetValueUInt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             unsigned int uValue
// 
// Return: void 
//===========================================================================
void CScriptParam::SetValueUInt(unsigned int uValue)
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_UNSIGNED_INT || m_pTypeInfoParam->GetHashedType( ) == PAR_ULONG ); // must be approcate data type first
    if ( m_uUInt != uValue )
    {
        m_uUInt = uValue;
        SetModified(true);
    }
}


//===========================================================================
// CScriptParam::SetValueInt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             int nValue
// 
// Return: void 
//===========================================================================
void CScriptParam::SetValueInt(int nValue)
{
    ASSERT( m_pTypeInfoParam->GetHashedType( ) == PAR_INT || m_pTypeInfoParam->GetHashedType( ) == PAR_LONG ); // must be approcate data type first
    if ( m_nInt != nValue )
    {
        m_nInt = nValue;
        SetModified(true);
    }
}


//===========================================================================
// CScriptParam::SetValueFloat
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             float fValue
// 
// Return: void 
//===========================================================================
void CScriptParam::SetValueFloat(float fValue)
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_FLOAT); // must be approcate data type first
    if ( m_fFloat != fValue )
    {
        m_fFloat = fValue;
        SetModified(true);
    }
}


//===========================================================================
// CScriptParam::SetValueChar
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             char cValue
// 
// Return: void 
//===========================================================================
void CScriptParam::SetValueChar(char cValue)
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_CHAR); // must be approcate data type first
    if ( m_cChar != cValue )
    {
        m_cChar = cValue;
        SetModified(true);
    }
}


//===========================================================================
// CScriptParam::SetValueUChar
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             unsigned char uValue
// 
// Return: void 
//===========================================================================
void CScriptParam::SetValueUChar(unsigned char uValue)
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_UNSIGNED_CHAR); // must be approcate data type first
    if ( m_uUChar != uValue )
    {
        m_uUChar = uValue;
        SetModified(true);
    }
}


//===========================================================================
// CScriptParam::SetValueInt16
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             short nValue
// 
// Return: void 
//===========================================================================
void CScriptParam::SetValueInt16(short nValue)
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_INT16); // must be approcate data type first
    if ( m_nInt16 != nValue )
    {
        m_nInt16 = nValue;
        SetModified(true);
    }
}


//===========================================================================
// CScriptParam::SetValueString
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* szValue
// 
// Return: void 
//===========================================================================
void CScriptParam::SetValueString(const char* szValue)
{
    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_CHAR && m_pTypeInfoParam->GetIndLvl( ) == 1); // must be approcate data type first

    if ( m_pString == NULL || strcmp( m_pString, szValue ) != 0 )
    {
        int nSize = strlen(szValue);
        delete m_pString;
        m_pString = new char[nSize + 1];

        strcpy(m_pString, szValue);
        SetModified(true);
    }
}


//===========================================================================
// CScriptParam::SetValueUnknown
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* szValue
// 
// Return: void 
//===========================================================================
void CScriptParam::SetValueUnknown(const char* szValue)
{
//    ASSERT(m_pTypeInfoParam->GetHashedType( ) == PAR_UNKNOWN); // must be approcate data type first

    if ( m_pString == NULL || strcmp( m_pUnknown, szValue ) != 0 )
    {
        int nSize = strlen(szValue);

        delete m_pUnknown;
        m_pUnknown = new char[nSize + 1];

        strcpy(m_pUnknown, szValue);
        SetModified(true);
    }
}


//===========================================================================
// CScriptParam::SetValueText
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* szValue
// 
// Return: void 
//===========================================================================
void CScriptParam::SetValueText(const char* szValue)
{
    if ( m_pUnknown == NULL || strcmp( m_pUnknown, szValue ) != 0 )
    {
        int nSize = strlen(szValue);

        delete m_pUnknown;
        m_pUnknown = new char[nSize + 1];

        strcpy(m_pUnknown, szValue);
        SetModified(true);
    }
}


//===========================================================================
// CScriptParam::GetValueText
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: char* 
//===========================================================================
char* CScriptParam::GetValueText() const
{
    return(m_pUnknown);
}



//===========================================================================
// CScriptParam::GetDisplayText
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CString 
//===========================================================================
CString CScriptParam::GetDisplayText() const
{
    char szText[256] = {0};

    if ((m_pTypeInfoParam->GetHashedType( ) == PAR_CHAR || m_pTypeInfoParam->GetHashedType( ) == PAR_UNSIGNED_CHAR) && (m_pTypeInfoParam->GetIndLvl( ) == 1))
    {
        sprintf(szText, "String(\"%s\")", m_pString);
    }
    else if (m_pTypeInfoParam->GetIndLvl( ) == 0)
    {
        switch(m_pTypeInfoParam->GetHashedType( ))
        {
        case PAR_BOOL:
            {
                sprintf(szText, "Bool(%s)", m_bBoolean ? "true" : "false");
            }
            break;

        case PAR_ULONG:
        case PAR_UNSIGNED_INT:
            {
                sprintf(szText, "UInt(%u)", m_uUInt);
            }
            break;

        case PAR_LONG:
        case PAR_INT:
            {
                sprintf(szText, "Int(%i)", m_uUInt);
            }
            break;

        case PAR_FLOAT:
            {
                sprintf(szText, "Float(%#.6f)", m_fFloat);
            }
            break;

        case PAR_VOID:
            {
                if (m_pUnknown != NULL)
                {
                    sprintf(szText, "Void(%s)", m_pUnknown);
                }
                else
                {
                    sprintf(szText, "Void()");
                }
            }
            break;

        case PAR_CHAR:
            {
                sprintf(szText, "Char(%i)", m_cChar);
            }
            break;

        case PAR_UNSIGNED_CHAR:
            {
                sprintf(szText, "UChar(%u)", m_uUChar);
            }
            break;

        case PAR_INT16:
            {
                sprintf(szText, "Int16(%i)", m_nInt16);
            }
            break;

        case PAR_UNKNOWN:
            {
                sprintf(szText, "Unknown(%s)", m_pUnknown);
            }
            break;

        default:
            {
                sprintf(szText, "%s(%s)", (LPCTSTR)m_pTypeInfoParam->GetType( ), m_pUnknown);
            }
            break;
        }
    }
    else
    {
        char szPtrs[64] = {0};
        for (int i = 0; i < m_pTypeInfoParam->GetIndLvl( ); i++)
        {
            strcat(szPtrs, "*");
        }

        switch(m_pTypeInfoParam->GetHashedType( ))
        {
        case PAR_BOOL:
            {
                sprintf(szText, "Bool%s(%s)", szPtrs, m_pUnknown);
            }
            break;

        case PAR_ULONG:
        case PAR_UNSIGNED_INT:
            {
                sprintf(szText, "UInt%s(%s)", szPtrs, m_pUnknown);
            }
            break;

        case PAR_LONG:
        case PAR_INT:
            {
                sprintf(szText, "Int%s(%s)", szPtrs, m_pUnknown);
            }
            break;

        case PAR_FLOAT:
            {
                sprintf(szText, "Float%s(%s)", szPtrs, m_pUnknown);
            }
            break;

        case PAR_VOID:
            {
                sprintf(szText, "Void%s(%s)", szPtrs, m_pUnknown);
            }
            break;

        case PAR_CHAR:
            {
                sprintf(szText, "Char%s(%s)", szPtrs, m_pUnknown);
            }
            break;

        case PAR_UNSIGNED_CHAR:
            {
                sprintf(szText, "UChar%s(%s)", szPtrs, m_pUnknown);
            }
            break;

        case PAR_INT16:
            {
                sprintf(szText, "Int16%s(%s)", szPtrs, m_pUnknown);
            }
            break;

        case PAR_UNKNOWN:
            {
                sprintf(szText, "Unknown%s(%s)", szPtrs, m_pUnknown);
            }
            break;

        default:
            {
                sprintf(szText, "%s%s(%s)", (LPCTSTR)m_pTypeInfoParam->GetType( ), szPtrs, m_pUnknown);
            }
            break;
        }

    }

    return(CString(szText));
}


//===========================================================================
// CScriptParam::GetType
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CScriptParam::GetType() const
{
    return(m_pTypeInfoParam->GetHashedType( ));
}


//===========================================================================
// CScriptParam::GetLevelOfIndirection
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CScriptParam::GetLevelOfIndirection() const
{
    return(m_pTypeInfoParam->GetIndLvl( ));
}



//===========================================================================
// CScriptParam::SetModified
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
void CScriptParam::SetModified(bool bModified)
{
    if (bModified == true)
    {
        if (this->m_pParentMethod != NULL)
        {
            m_pParentMethod->SetModified(true);
        }
        m_bModified = true;
    }
    else
    {
        m_bModified = false;
    }
}


//===========================================================================
// CScriptParam::GetModified
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CScriptParam::GetModified() const
{
    return(m_bModified);
}


//===========================================================================
// CScriptParam::SetParentMethod
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CScriptMethod* pParentMethod
// 
// Return: void 
//===========================================================================
void CScriptParam::SetParentMethod(CScriptMethod* pParentMethod)
{
    m_pParentMethod = pParentMethod;
}


//===========================================================================
// CScriptParam::ConvertValueToText
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CString 
//===========================================================================
CString CScriptParam::ConvertValueToText() const
{
    char szText[256];

    if (m_pTypeInfoParam->GetHashedType( ) == PAR_UNKNOWN)
    {
        if(m_pString != NULL)
        {
            sprintf(szText, "%s", m_pUnknown);
        }
        else
        {
            szText[0] = '\0';
        }
    }
    else if (m_pTypeInfoParam->GetIndLvl( ) == 0)
    {
        switch(m_pTypeInfoParam->GetHashedType( ))
        {
        case PAR_BOOL:
            {
                sprintf(szText, "%s", m_bBoolean ? "true" : "false");
            }
            break;

        case PAR_ULONG:
        case PAR_UNSIGNED_INT:
            {
                sprintf(szText, "%u", m_uUInt);
            }
            break;

        case PAR_LONG:
        case PAR_INT:
            {
                sprintf(szText, "%i", m_uUInt);
            }
            break;

        case PAR_FLOAT:
            {
                sprintf(szText, "%#.6f", m_fFloat);
            }
            break;

        case PAR_CHAR:
            {
                sprintf(szText, "%i", m_cChar);
            }
            break;

        case PAR_UNSIGNED_CHAR:
            {
                sprintf(szText, "%u", m_uUChar);
            }
            break;

        case PAR_INT16:
            {
                sprintf(szText, "%i", m_nInt16);
            }
            break;
        default:
            {
                sprintf(szText, "%s", m_pUnknown);
            }
            break;
        }
    }
    else if (m_pTypeInfoParam->GetIndLvl( ) == 1)
    {
        switch(m_pTypeInfoParam->GetHashedType( ))
        {
        case PAR_CHAR:
        case PAR_UNSIGNED_CHAR:
            {
                if(m_pString != NULL)
                {
                    sprintf(szText, "%s", m_pString);
                }
                else
                {
                    szText[0] = '\0';
                }
            }
            break;
        default:
            {
                sprintf(szText, "%s", m_pUnknown);
            }
            break;
        }
    }
    else
    {
        sprintf(szText, "%s", m_pUnknown);
    }

    return(CString(szText));
}


//===========================================================================
// CScriptParam::GetRTIParamPtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: IRadTypeInfoParam* 
//===========================================================================
IRadTypeInfoParam* CScriptParam::GetRTIParamPtr() const
{
    return(m_pTypeInfoParam.m_pInterface);
}


//===========================================================================
// CScriptParam::WriteFileString
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CString &strText
// 
// Return: void 
//===========================================================================
void CScriptParam::WriteFileString(CString &strText)
{
    if (m_pTypeInfoParam->GetIndLvl( ) == 0)
    {
        switch(m_pTypeInfoParam->GetHashedType( ))
        {
        case PAR_BOOL:
            {
                strText.Format("%s", m_bBoolean ? "true" : "false");
            }
            break;

        case PAR_ULONG:
        case PAR_UNSIGNED_INT:
            {
                strText.Format("%u", m_uUInt);
            }
            break;

        case PAR_LONG:
        case PAR_INT:
            {
                strText.Format("%i", m_uUInt);
            }
            break;

        case PAR_FLOAT:
            {
                strText.Format("%#.6f", m_fFloat);
            }
            break;

        case PAR_CHAR:
            {
                strText.Format("%i", m_cChar);
            }
            break;

        case PAR_UNSIGNED_CHAR:
            {
                strText.Format("%u", m_uUChar);
            }
            break;

        case PAR_INT16:
            {
                strText.Format("%i", m_nInt16);
            }
            break;
        default:
            {
                strText.Format("%s", m_pUnknown);
            }
            break;
        }
    }
    else if (m_pTypeInfoParam->GetIndLvl( ) == 1)
    {
        switch(m_pTypeInfoParam->GetHashedType( ))
        {
        case PAR_CHAR:
        case PAR_UNSIGNED_CHAR:
            {
                if(m_pString != NULL)
                {
                    strText.Format("\"%s\"", m_pString);
                }
                else
                {
                    strText = "";
                }
            }
            break;
        default:
            {
                strText.Format("%s", m_pUnknown);
            }
            break;
        }
    }
    else
    {
        if(m_pUnknown != NULL)
        {
            strText.Format("%s", m_pUnknown);
        }
        else
        {
            strText = "";
        }
    }
}

void CScriptParam::SpawnWindow( CFileTreeCtrl * pTree2Update, HTREEITEM hMet, HTREEITEM hObj, HTREEITEM hDoc )
{
    // Cannot spawn another window
    if ( m_pParamWnd != NULL )
    {
        return;
    }

    // only spawn parameter slider bar if it is a numerical value type and not any pointer type as well.
    if (m_pTypeInfoParam->GetIndLvl( ) == 0)
    {
        switch(m_pTypeInfoParam->GetHashedType( ))
        {
            case PAR_UNSIGNED_INT:
            case PAR_INT:
            case PAR_FLOAT:
            case PAR_CHAR:
            case PAR_UNSIGNED_CHAR:
            case PAR_INT16:
            {
                CMainFrame * pFrm = (CMainFrame*)theApp.GetMainWnd( );
                ASSERT( pFrm );

                CWorkSpaceDoc * pWDoc = pFrm->GetWorkSpaceDocPtr( );
                ASSERT( pWDoc );

                // Get parameter index
                int nParamIndex  = 0;
                CScriptMethod * pMethod = GetParentMethod( );
                CScriptObject * pObject = pMethod->GetParentObject( );

                for ( int i = 0; i < pMethod->GetParamCount( ); i ++ )
                {
                    if ( pMethod->GetParamAt( i ) == this )
                    {
                        nParamIndex = i;
                        break;
                    }
                }

                CString strParamProfileKey;
                strParamProfileKey.Format( "Setting_%s_%s_%i", (LPCTSTR)pObject->GetRadTypeInfo( )->GetName( ),
                                                               (LPCTSTR)pMethod->GetName( ), nParamIndex );
                CString strValue;

                float fltMaxValue = atof( pWDoc->GetXMLProfileString( strParamProfileKey + "_MAX", "1.0" ) );
                float fltMinValue = atof( pWDoc->GetXMLProfileString( strParamProfileKey + "_MIN", "0.0" ) );
                float fltStepValue = atof( pWDoc->GetXMLProfileString( strParamProfileKey + "_STEP", "0.01" ) );

                m_pParamWnd = new CParamSliderDlg;
                ((CParamSliderDlg*)(m_pParamWnd))->Initalize( pMethod->GetParamAt( nParamIndex ), fltMaxValue, fltMinValue, fltStepValue, pTree2Update, hMet, hObj, hDoc, GetParentMethod( )->GetName( ) );
                ((CParamSliderDlg*)(m_pParamWnd))->Create( ((CMainFrame*)theApp.GetMainWnd( ))->GetClientArea( ) );
                ((CMainFrame*)theApp.GetMainWnd( ))->AddChildParamSliderWnd( (CParamSliderDlg*)m_pParamWnd );
                m_pParamWnd->ShowWindow( SW_SHOW );

                CString strTitle;
                strTitle.Format( "%s %s", (LPCTSTR)pObject->GetRadTypeInfo( )->GetName( ),
                                          (LPCTSTR)pMethod->GetName( ) );

                m_pParamWnd->SetWindowText( strTitle );

                ((CMainFrame*)theApp.GetMainWnd( ))->GetWorkSpaceDocPtr( )->SetModified( true );
            }
            break;
        default:
            {
            }
            break;
        }
    }

}

int CScriptParam::GetParamIndex( ) const
{
    ASSERT( m_pParentMethod );
    
    for ( int i = 0; i < m_pParentMethod->GetParamCount( ); i ++ )
    {
        if ( m_pParentMethod->GetParamAt( i ) == this )
        {
            return i;
        }
    }
    return -1;
}

void CScriptParam::CopyValue( const CScriptParam & oParam )
{
    ASSERT( m_pTypeInfoParam->GetHashedType( ) == oParam.m_pTypeInfoParam->GetHashedType( ) );

    if (m_pTypeInfoParam->GetHashedType( ) == PAR_UNKNOWN)
    {
        ASSERT(m_pUnknown == 0);    // local memory must be freed already
        
        if (oParam.m_pUnknown == NULL)
        {
            m_pUnknown = NULL;
        }
        else
        {
            m_pUnknown = new char[strlen(oParam.m_pUnknown) + 1];
            strcpy(m_pUnknown, oParam.m_pUnknown);
        }
    }
    else if (m_pTypeInfoParam->GetIndLvl( ) == 0)
    {
        switch( m_pTypeInfoParam->GetHashedType( ) )
        {
            case PAR_BOOL:              m_bBoolean = oParam.m_bBoolean; break;
            case PAR_ULONG:
            case PAR_UNSIGNED_INT:      m_uUInt = oParam.m_uUInt; break;
            case PAR_LONG:
            case PAR_INT:               m_nInt = oParam.m_nInt; break;
            case PAR_FLOAT:             m_fFloat = oParam.m_fFloat; break;
            case PAR_CHAR:              m_cChar = oParam.m_cChar; break;
            case PAR_UNSIGNED_CHAR:     m_uUChar = oParam.m_uUChar; break;
            case PAR_INT16:             m_nInt16 = oParam.m_nInt16; break;
        };
    }
    else if (m_pTypeInfoParam->GetIndLvl( ) == 1)
    {
        switch(m_pTypeInfoParam->GetHashedType( ))
        {
            case PAR_CHAR:
            case PAR_UNSIGNED_CHAR:
            {
                delete m_pString;
                m_pString = new char[strlen(oParam.m_pString) + 1];
                strcpy(m_pString, oParam.m_pString);
            }
            break;

            case PAR_VOID:
            {
                delete m_pString;
                m_pString = new char[strlen(oParam.m_pUnknown) + 1];
                strcpy(m_pUnknown, oParam.m_pUnknown);
            }
            break;
            default:
            {
                delete m_pString;
                m_pString = new char[strlen(oParam.m_pUnknown) + 1];
                strcpy(m_pUnknown, oParam.m_pUnknown);
            }
            break;
        };
    }
    else
    {
    }
}

//===========================================================================
// CScriptParam::GetParentMethod
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CScriptMethod* 
//===========================================================================
CScriptMethod* CScriptParam::GetParentMethod() const
{
    return(m_pParentMethod);
}


//===========================================================================
// CScriptMethod::_PopulateParamFromTypeInfoMethod
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             IRadTypeInfoMethod* pRTIMethod
// 
// Return: void 
//===========================================================================
void CScriptMethod::_PopulateParamFromTypeInfoMethod(IRadTypeInfoMethod* pRTIMethod)
{
    if (pRTIMethod != NULL)
    {
        int nParamCount = m_pRTIMethod->GetNumberOfParams();
        m_vecScriptParamPtr.resize(nParamCount);

        for (int i = 0; i < nParamCount; i++)
        {
            ref< IRadTypeInfoParam > pRTIParam;

            CScriptParam *pScriptParam = NULL;

            pRTIParam = m_pRTIMethod->GetParamInfoAt( i );

            if (pRTIParam->GetIndLvl( ) == 0)
            {
                switch(pRTIParam->GetHashedType( ))
                {
                case PAR_BOOL:
                    {
                        pScriptParam = new CScriptParam(true);
                    }
                    break;

                case PAR_ULONG:
                case PAR_UNSIGNED_INT:
                    {
                        pScriptParam = new CScriptParam((unsigned int)0);
                    }
                    break;

                case PAR_LONG:
                case PAR_INT:
                    {
                        pScriptParam = new CScriptParam((int)0);
                    }
                    break;

                case PAR_FLOAT:
                    {
                        pScriptParam = new CScriptParam((float)0.0f);
                    }
                    break;

                case PAR_CHAR:
                    {
                        pScriptParam = new CScriptParam((char)0);
                    }
                    break;

                case PAR_UNSIGNED_CHAR:
                    {
                        pScriptParam = new CScriptParam((unsigned char)0);
                    }
                    break;

                case PAR_INT16:
                    {
                        pScriptParam = new CScriptParam((short)0);
                    }
                    break;

                default:
                    {
                        pScriptParam = new CScriptParam();
                    }
                    break;
                }

            }
            else if (pRTIParam->GetIndLvl( ) == 1)
            {
                switch(pRTIParam->GetHashedType( ))
                {
                case PAR_CHAR:
                case PAR_UNSIGNED_CHAR:
                    {
                        pScriptParam = new CScriptParam((const char*)NULL);
                    }
                    break;

                case PAR_UNKNOWN:
                    {
                        pScriptParam = new CScriptParam();
                    }
                    break;

                default:
                    {
                        pScriptParam = new CScriptParam();
                    }
                    break;
                }
            }
            else
            {
                pScriptParam = new CScriptParam();
            }

            pScriptParam->SetParentMethod(this);
            pScriptParam->m_pTypeInfoParam = pRTIParam;
            m_vecScriptParamPtr[i] = pScriptParam;
        }
    }
    SetModified(true);
}

//===========================================================================
// CScriptMethod::CScriptMethod
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             IRadTypeInfoMethod* pRTIMethod
//             CScriptObject *pParentObject
// 
// Return: 
//===========================================================================
CScriptMethod::CScriptMethod(IRadTypeInfoMethod* pRTIMethod, CScriptObject *pParentObject) :
    CScriptBaseClass(),
    m_pRTIMethod(pRTIMethod),
    m_pParentObject(pParentObject)
{
    ASSERT(pRTIMethod);
    ASSERT(pParentObject);

    _PopulateParamFromTypeInfoMethod(pRTIMethod);

    if (pRTIMethod != NULL)
    {
        SetValid(true);
    }
}


//===========================================================================
// CScriptMethod::CScriptMethod
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CString strName
//             CScriptObject *pParentObject
// 
// Return: 
//===========================================================================
CScriptMethod::CScriptMethod(CString strName, CScriptObject *pParentObject) :
    CScriptBaseClass(),
    m_pRTIMethod(NULL),
    m_pParentObject(pParentObject)
{
    SetName(strName);

    // Create a empty method
    if ((pParentObject == NULL) || (pParentObject->GetRadTypeInfo() == NULL))
    {
        SetValid(false);
        return;
    }

    // when pParentObject is supplied, we must have the name as well
    ASSERT(strName.GetLength() > 0);

    // now, let's try to create a valid method with given name and parent object
    IRadTypeInfo *pTypeInfo = pParentObject->GetRadTypeInfo();

    // try to find the name of the method in the typeinfo system
    m_pRTIMethod = pTypeInfo->GetMethodByName(strName);

    if (m_pRTIMethod == NULL)
    {
        SetValid(false);
    }
    else
    {
        SetValid(true);
        _PopulateParamFromTypeInfoMethod(m_pRTIMethod);
    }
}



//===========================================================================
// CScriptMethod::_Delete
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CScriptMethod::_Delete()
{
    for (int i = 0; i < m_vecScriptParamPtr.size(); i++)
    {
        delete m_vecScriptParamPtr[i];
    }
}


//===========================================================================
// CScriptMethod::_Copy
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptMethod &oMethod
// 
// Return: void 
//===========================================================================
void CScriptMethod::_Copy(const CScriptMethod &oMethod)
{
    ASSERT(m_vecScriptParamPtr.size() == 0);

    m_pParentObject = oMethod.m_pParentObject;
    m_pRTIMethod = oMethod.m_pRTIMethod;

    m_vecScriptParamPtr.resize(oMethod.m_vecScriptParamPtr.size());
    for (int i = 0; i < oMethod.m_vecScriptParamPtr.size(); i++)
    {
        CScriptParam* pParam = new CScriptParam(*(oMethod.m_vecScriptParamPtr[i]));
        ASSERT(pParam);
        m_vecScriptParamPtr[i] = pParam;
        pParam->SetParentMethod(this);
    }
}


//===========================================================================
// CScriptMethod::~CScriptMethod
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CScriptMethod::~CScriptMethod()
{
    _Delete();
}


//===========================================================================
// CScriptMethod::CScriptMethod
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptMethod &oMethod
// 
// Return: 
//===========================================================================
CScriptMethod::CScriptMethod(const CScriptMethod &oMethod) :
    CScriptBaseClass(oMethod)
{
    _Copy(oMethod);
    SetModified(true);
}


//===========================================================================
// CScriptMethod::operator=
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptMethod &oMethod
// 
// Return: CScriptMethod& 
//===========================================================================
CScriptMethod& CScriptMethod::operator=(const CScriptMethod &oMethod)
{
    _Delete();
    _Copy(oMethod);
    SetModified(true);
    return(*this);
}


//===========================================================================
// CScriptMethod::GetName
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: const CString 
//===========================================================================
const CString CScriptMethod::GetName() const
{
    // if method is valid, return from TypeInfo
    if (GetValid())
    {
        return(CString(m_pRTIMethod->GetName()));
    }
    else
    {
        return(CScriptBaseClass::GetName());
    }
}


//===========================================================================
// CScriptMethod::GetParentObject
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CScriptObject* 
//===========================================================================
CScriptObject* CScriptMethod::GetParentObject() const
{
    return(m_pParentObject);
}


//===========================================================================
// CScriptMethod::SetParentObject
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CScriptObject* pParentObject
// 
// Return: void 
//===========================================================================
void CScriptMethod::SetParentObject(CScriptObject* pParentObject)
{
    m_pParentObject = pParentObject;
    SetModified(true);
}


//===========================================================================
// CScriptMethod::GetParamCount
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CScriptMethod::GetParamCount() const
{
    if (m_pRTIMethod == NULL)
    {
        return(-1);
    }

    return(m_pRTIMethod->GetNumberOfParams());
}


//===========================================================================
// CScriptMethod::GetParamAt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const int nIndex
// 
// Return: CScriptParam* 
//===========================================================================
CScriptParam* CScriptMethod::GetParamAt(const int nIndex) const
{
    ASSERT(nIndex < m_vecScriptParamPtr.size());
    return(m_vecScriptParamPtr[nIndex]);
}


//===========================================================================
// CScriptMethod::GetDisplayText
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CString 
//===========================================================================
CString CScriptMethod::GetDisplayText() const
{
    CString strText;

    strText.Format("%s(", (const char*)GetName());

    for (int i = 0; i < GetParamCount(); i++)
    {
        CScriptParam *pParam = GetParamAt(i);

        strText += pParam->GetDisplayText();

        if (i < GetParamCount() - 1)
        {
            strText += " ";
        }
    }

    strText += ")";

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
    return(CString(strText));
}


//===========================================================================
// CScriptMethod::SetModified
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
void CScriptMethod::SetModified(bool bModified)
{
    if (bModified == true)
    {
        if (this->m_pParentObject != NULL)
        {
            m_pParentObject->SetModified(true);
        }
        CScriptBaseClass::SetModified(true);
    }
    else
    {
        for (int i = 0; i < m_vecScriptParamPtr.size(); i++)
        {
            m_vecScriptParamPtr[i]->SetModified(false);
        }
        CScriptBaseClass::SetModified(false);
    }
}


//===========================================================================
// CScriptMethod::GetRTIMethodPtr
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: IRadTypeInfoMethod* 
//===========================================================================
IRadTypeInfoMethod* CScriptMethod::GetRTIMethodPtr() const
{
    return(m_pRTIMethod);
}


//===========================================================================
// CScriptMethod::WriteFileString
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CString &strText
// 
// Return: void 
//===========================================================================
void CScriptMethod::WriteFileString(CString &strText)
{
    CString strParam;
    CString strTemp;
    for (int i = 0; i < GetParamCount(); i++)
    {
        CScriptParam *pParam = GetParamAt(i);

        pParam->WriteFileString(strTemp);
        strParam += strTemp;

        if (i < GetParamCount() - 1)
        {
            strParam += ' ';
        }
    }

    strText.Format("%s ( %s )", (const char*)GetName(), (const char*)strParam);

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


//===========================================================================
// CScriptMethod::IsTypeProperty
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CScriptMethod::IsTypeProperty() const
{
    if (m_pRTIMethod == NULL)
    {
        return(false);
    }

    const char *pName = m_pRTIMethod->GetName();

    if ((strncmp(pName, "Get", 3) == 0) || (strncmp(pName, "Set", 3) == 0))
    {
        return(true);
    }
    return(false);
}

int CScriptMethod::GetMethodIdx( ) const
{
    if  ( m_pParentObject == NULL )
    {
        return 0;
    }

    for ( int i = 0; i < m_pParentObject->GetMethodCount( ); i ++ )
    {
        if ( m_pParentObject->GetMethodAt( i ) == this )
        {
            return i;
        }
    }

    return 0;
}
