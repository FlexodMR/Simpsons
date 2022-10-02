//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// ScriptDoc.cpp: implementation of the CScriptDoc class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "radtuner.h"
#include "ScriptDoc.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

#include "mainfrm.h"
#include "outputbar.h"
#include "ScriptObject.h"
#include "ScriptMethod.h"


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


//===========================================================================
// CScriptDoc::_Delete
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CScriptDoc::_Delete()
{
    RemoveAll();
    this->m_strFullFilePath = "";
}


//===========================================================================
// CScriptDoc::_Copy
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptDoc& oDoc
// 
// Return: void 
//===========================================================================
void CScriptDoc::_Copy(const CScriptDoc& oDoc)
{
    m_strFullFilePath = oDoc.m_strFullFilePath;
    // when we copy, we do not copy a view with it
    m_pvwScriptView = NULL;

    int nSize = oDoc.m_vecObjectPtr.size();
    m_vecObjectPtr.resize(nSize);

    for (int i = 0; i < nSize; i++)
    {
        CScriptObject* pObject = new CScriptObject(*(oDoc.m_vecObjectPtr[i]));
        ASSERT(pObject);
        m_vecObjectPtr[i] = pObject;
    }
}


//===========================================================================
// CScriptDoc::CScriptDoc
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CScriptDoc::CScriptDoc() :
    CScriptBaseClass(),
    m_pvwScriptView(NULL)
{
    SetValid(true);
}


//===========================================================================
// CScriptDoc::CScriptDoc
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptDoc& oDoc
// 
// Return: 
//===========================================================================
CScriptDoc::CScriptDoc(const CScriptDoc& oDoc) :
    CScriptBaseClass(oDoc)
{
    SetValid(true);
    _Copy(oDoc);
}


//===========================================================================
// CScriptDoc::~CScriptDoc
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CScriptDoc::~CScriptDoc()
{
    _Delete();
}


//===========================================================================
// CScriptDoc::operator=
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CScriptDoc& oDoc
// 
// Return: CScriptDoc& 
//===========================================================================
CScriptDoc& CScriptDoc::operator=(const CScriptDoc& oDoc)
{
    CScriptBaseClass::operator=(oDoc);
    _Copy(oDoc);
    SetModified(true);
    SetValid(true);
    return(*this);
}


//===========================================================================
// CScriptDoc::Open
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* szFileName
// 
// Return: bool 
//===========================================================================
bool CScriptDoc::Open(const char* szFileName)
{
    CFile oFile(szFileName, CFile::modeRead | CFile::shareDenyNone);

    unsigned int uFileSize = oFile.GetLength();

    char *pData = new char[uFileSize+1];

    oFile.Read(pData, uFileSize);
    pData[uFileSize] = '\0';
    SetFileFullPath(szFileName);

    if (!_ParseData(pData, uFileSize))
    {
        delete pData;
        return(false);
    }

    delete pData;

    SetModified(false);
    return(true);
}


//===========================================================================
// CScriptDoc::Close
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CScriptDoc::Close()
{
    _Delete();
    return(true);
}


//===========================================================================
// CScriptDoc::Save
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CScriptDoc::Save()
{
    if (!SaveAs(m_strFullFilePath))
    {
        return(false);
    }
    SetModified(false);
    return(true);
}


//===========================================================================
// CScriptDoc::SaveAs
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* szFileName
// 
// Return: bool 
//===========================================================================
bool CScriptDoc::SaveAs(const char* szFileName)
{
    RemoveInvalid();

    CFile oFile(szFileName, CFile::modeWrite | CFile::modeCreate);
    if (!_WriteData(&oFile))
    {
        return(false);
    }

    return(true);
}


//===========================================================================
// CScriptDoc::IsAnyInvalidItem
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CScriptDoc::IsAnyInvalidItem() const
{
    for (int i = 0; i < m_vecObjectPtr.size(); i++)
    {
        CScriptObject *pObj = m_vecObjectPtr[i];
        if (!pObj->GetValid())
        {
            return(true);
        }
        else
        {
            for (int j = 0; j < pObj->GetMethodCount(); j++)
            {
                CScriptMethod *pMet = pObj->GetMethodAt(j);
                if (!pMet->GetValid())
                {
                    return(true);
                }
            }
        }
    }
    return(false);
}


//===========================================================================
// CScriptDoc::_WriteData
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CFile* pFile
// 
// Return: bool 
//===========================================================================
bool CScriptDoc::_WriteData(CFile* pFile)
{
    CString strObject;
    CString strMethod;
    const CString strBlockBeg("\r\n{\r\n");
    const CString strBlockEnd("}\r\n");

    RemoveInvalid();

    for (int nObjIndex = 0; nObjIndex < GetObjectCount(); nObjIndex++)
    {
        CScriptObject* pObj = GetObjectAt(nObjIndex);

        if (pObj->GetValid())
        {
            pObj->WriteFileString(strObject);

            pFile->Write((const char*)strObject, strObject.GetLength());
            pFile->Write((const char*)strBlockBeg, strBlockBeg.GetLength());

            for (int nMethodIndex = 0; nMethodIndex < pObj->GetMethodCount(); nMethodIndex++)
            {
                if (pObj->GetMethodAt(nMethodIndex)->GetValid())
                {
                    pObj->GetMethodAt(nMethodIndex)->WriteFileString(strMethod);
                    strMethod.Insert(0, "    ");
                    strMethod += "\r\n";
                    pFile->Write((const char*)strMethod, strMethod.GetLength());
                }
            }

            pFile->Write((const char*)strBlockEnd, strBlockEnd.GetLength());
        }
    }

    return(true);
}


//===========================================================================
// CScriptDoc::RemoveInvalid
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CScriptDoc::RemoveInvalid()
{
    for (vector<CScriptObject *>::iterator p = m_vecObjectPtr.begin(); p < m_vecObjectPtr.end(); p++)
    {
        if ((*p)->GetValid())
        {
            (*p)->RemoveInvalid();
        }
        else
        {
            delete (*p);
            m_vecObjectPtr.erase(p);
        }
    }
    SetModified(true);
}


//===========================================================================
// CScriptDoc::IsFileReadOnly
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CScriptDoc::IsFileReadOnly() const
{
    // if file doesn't even exist, cannot be read only
    if (!::PathFileExists(m_strFullFilePath))
    {
        return(false);
    }

    if (::GetFileAttributes(m_strFullFilePath) & FILE_ATTRIBUTE_READONLY)
    {
        return(true);
    }
    return(false);
}



//===========================================================================
// CScriptDoc::SetFileFullPath
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CString &strFullFilePath
// 
// Return: void 
//===========================================================================
void CScriptDoc::SetFileFullPath(const CString &strFullFilePath)
{
    m_strFullFilePath = strFullFilePath;
    SetModified(true);
}


//===========================================================================
// &CScriptDoc::GetFilePath
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: const CString 
//===========================================================================
const CString &CScriptDoc::GetFilePath() const
{
    return(m_strFullFilePath);
}


//===========================================================================
// CScriptDoc::GetFileTitle
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CString 
//===========================================================================
CString CScriptDoc::GetFileTitle() const
{
    char szDrive[_MAX_DRIVE];
    char szDir[_MAX_DIR];
    char szFileName[_MAX_FNAME + 16];
    char szExt[_MAX_EXT];
    ::_tsplitpath((const char*)m_strFullFilePath, szDrive, szDir, szFileName, szExt);

    // if file is been modified, add * to the end
    if (GetModified())
    {
        strcat(szFileName, " *");
    }

    if (IsFileReadOnly())
    {
        strcat(szFileName, " [ReadOnly]");
    }

    return(CString(szFileName));
}


//===========================================================================
// CScriptDoc::GetShortFileName
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CString 
//===========================================================================
CString CScriptDoc::GetShortFileName() const
{
    char szDrive[_MAX_DRIVE];
    char szDir[_MAX_DIR];
    char szFileName[_MAX_FNAME + _MAX_EXT];
    char szExt[_MAX_EXT];
    ::_tsplitpath((const char*)m_strFullFilePath, szDrive, szDir, szFileName, szExt);

    strcat(szFileName, szExt);

    return(CString(szFileName));
}




//===========================================================================
// CScriptDoc::GetView
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CScriptView* 
//===========================================================================
CScriptView* CScriptDoc::GetView() const
{
    return(m_pvwScriptView);
}


//===========================================================================
// CScriptDoc::SetView
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CScriptView* pView
// 
// Return: void 
//===========================================================================
void CScriptDoc::SetView(CScriptView* pView)
{
    m_pvwScriptView = pView;
}


//===========================================================================
// CScriptDoc::GetObjectCount
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CScriptDoc::GetObjectCount() const
{
    return(m_vecObjectPtr.size());
}


//===========================================================================
// CScriptDoc::GetObjectAt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const int nIndex
// 
// Return: CScriptObject* 
//===========================================================================
CScriptObject* CScriptDoc::GetObjectAt(const int nIndex) const
{
    ASSERT(nIndex < m_vecObjectPtr.size());
    return(m_vecObjectPtr[nIndex]);
}


//===========================================================================
// CScriptDoc::RemoveAll
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CScriptDoc::RemoveAll()
{
    for (int i = 0; i < m_vecObjectPtr.size(); i++)
    {
        delete m_vecObjectPtr[i];
    }
    m_vecObjectPtr.clear();
    SetModified(true);
}


//===========================================================================
// CScriptDoc::RemoveObjectAt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const int nIndex
// 
// Return: void 
//===========================================================================
void CScriptDoc::RemoveObjectAt(const int nIndex)
{
    ASSERT(nIndex < m_vecObjectPtr.size());
    delete m_vecObjectPtr[nIndex];
    m_vecObjectPtr.erase(&(m_vecObjectPtr[nIndex]));
    SetModified(true);
}


//===========================================================================
// CScriptDoc::RemoveObject
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CScriptObject *pObject
// 
// Return: void 
//===========================================================================
void CScriptDoc::RemoveObject(CScriptObject *pObject)
{
    if (pObject == NULL)
    {
        return;
    }

    for (int i = 0; i < m_vecObjectPtr.size(); i++)
    {
        if (m_vecObjectPtr[i] == pObject)
        {
            delete m_vecObjectPtr[i];
            m_vecObjectPtr.erase(&m_vecObjectPtr[i]);
        }
    }
    SetModified(true);
}


//===========================================================================
// CScriptDoc::Insert
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CScriptObject *pObject
//             const int nInsertAfter
// 
// Return: void 
//===========================================================================
void CScriptDoc::Insert(CScriptObject *pObject, const int nInsertAfter)
{
    ASSERT(pObject);
    pObject->SetParentDoc(this);
    // if insert at last position, just call push_back
    if (nInsertAfter == -2 || nInsertAfter >= (int)m_vecObjectPtr.size()-1)
    {
        m_vecObjectPtr.push_back(pObject);
    }
    // insert first
    else if (nInsertAfter == -1)
    {
        m_vecObjectPtr.insert(m_vecObjectPtr.begin(), pObject);
    }
    else
    {
        // vector uses insert before, but we must use the same method
        // as treeview control which is insert after.
        m_vecObjectPtr.insert(&(m_vecObjectPtr[nInsertAfter+1]), pObject);
    }
    SetModified(true);
}


//===========================================================================
// CScriptDoc::Insert
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CScriptObject *pObject
//             const CScriptObject *pAfterThisObject
// 
// Return: void 
//===========================================================================
void CScriptDoc::Insert(CScriptObject *pObject, const CScriptObject *pAfterThisObject)
{
    ASSERT(pObject && pAfterThisObject);
    ASSERT(pAfterThisObject->GetParentDoc() == this);

    for (int i = 0; i < m_vecObjectPtr.size(); i++)
    {
        if (m_vecObjectPtr[i] == pAfterThisObject)
        {
            break;
        }
    }

    Insert(pObject, i);
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
// IsRef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char *p
// 
// Return: static bool 
//===========================================================================
static bool IsRef( const char *p )
{
    if (strnicmp(p, "ref:", 4) == 0)
    {
        return(true);
    }
    return(false);
}


//===========================================================================
// CScriptDoc::_Next
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             char ** _p
//             char *_pFileMemory
//             int _nFileSize
// 
// Return: void 
//===========================================================================
void CScriptDoc::_Next(char ** _p, char *_pFileMemory, int _nFileSize)
{
    *_p += ( strlen( *_p ) + 1 );

    while((*_p < (_pFileMemory + _nFileSize)) &&  (strlen( *_p ) == 0) )
    {
        (*_p)++;
    }
}


//===========================================================================
// *GetTypeInfoByName
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* szName
// 
// Return: static IRadTypeInfo 
//===========================================================================
static IRadTypeInfo *GetTypeInfoByName(const char* szName)
{
    IRadTypeInfoSystem *pTypeInfoSystem = ::radTypeInfoSystemGet();
    int nSize = pTypeInfoSystem->GetTypeInfoCount();

    if ((szName == NULL) || strlen(szName) == 0)
    {
        return(NULL);
    }

    char szClassName[128];
    for (int i = 0; i < nSize; i++)
    {
        strcpy(szClassName, pTypeInfoSystem->GetTypeInfoAt(i)->GetName());
        if (szClassName[0] == 'I')
        {
            szClassName[1] = tolower(szClassName[1]);
            if (strcmp(&szClassName[1], szName) == 0)
            {
                return(pTypeInfoSystem->GetTypeInfoAt(i));
            }
        }
        else if (strcmp(szClassName, szName) == 0)
        {
            return(pTypeInfoSystem->GetTypeInfoAt(i));
        }

    }
    return(NULL);
}

// split PC|XBOX|PS2 into separated option PC XBOX PS2
int CScriptDoc::_SplitOption( char * pToken, int * pnOptionField )
{
    *pnOptionField = ParserConst::PT_DEFAULT;
    // option looks like this
    // PC|PS2|XBOX|GCN
    // DEFAULT
    // PC|PS2
    //
    // DEFAULT is mutually exclusive with everything else.
    if ( strcmp ( pToken, "DEFAULT" ) == 0 )
    {
        *pnOptionField = ParserConst::PT_DEFAULT;

        return 1;
    }
    else
    {
        int nTokenLength = strlen( pToken );
        *pnOptionField = 0;

        // rule check : first or last character cannot be '|'
        if ( pToken [ 0 ] == '|' || pToken [ nTokenLength ] == '|' )
        {
            OUPUTMSG( "Syntax Error: after \'option\' keyword, \'|\' cannot be leading or trailing character.\n" );
            return -1;
        }

        // split the options to individual option
        int nOptionCount = 0;
        char *pszOption [ 8 ] = { 0 };

        nOptionCount ++;
        pszOption [ 0 ] = pToken;
        for ( int i = 0; i < nTokenLength; i++ )
        {
            if ( pToken [ i ] == '|' )
            {
                pszOption [ nOptionCount ] = & ( pToken[ i + 1 ] ); nOptionCount ++;
            }
        }

        for ( int j = 0; j < nOptionCount; j++ )
        {
            if ( strncmp ( pszOption [ j ], "PC", 2 ) == 0 )
            {
                *pnOptionField |= ParserConst::PT_PC;
            }
            else if ( strncmp ( pszOption [ j ], "PS2", 3 ) == 0 )
            {
                *pnOptionField |= ParserConst::PT_PS2;
            }
            else if ( strncmp ( pszOption [ j ], "XBOX", 4 ) == 0 )
            {
                *pnOptionField |= ParserConst::PT_XBOX;
            }
            else if ( strncmp ( pszOption [ j ], "GCN", 3 ) == 0 )
            {
                *pnOptionField |= ParserConst::PT_GCN;
            }
            else
            {
                OUPUTMSG( "Syntax Error: Invalide option \'" );
                OUPUTMSG( pszOption [ j ] );
                OUPUTMSG( "\', symbol cannot be used.\n" );
                return -1;
            }
        }

        return nOptionCount;
    }
}

//===========================================================================
// CScriptDoc::_ParseData
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             char *_pFileMemory
//             int _nFileSize
// 
// Return: bool 
//===========================================================================
bool CScriptDoc::_ParseData(char *_pFileMemory, int _nFileSize)
{
    bool bParseStateString = false;

    // Tokenize the file
    for (int i = 0; i < _nFileSize; i++)
    {
        if (_pFileMemory[i] == ' ' || _pFileMemory[i] == '\t')
        {
            if (!bParseStateString)
            {
				_pFileMemory[ i ] = '\0';
            }
        }
        else if (_pFileMemory[i] == '\n' || _pFileMemory[i] == '\r')
        {
            _pFileMemory[i] = '\0';
        }
        else if ( _pFileMemory[ i ] == '\"' )
        {
            // toggle string state
            if (bParseStateString)
            {
                bParseStateString = false;
            }
            else
            {
                bParseStateString = true;
            }
        }
            
    }

    unsigned int params[64]; // stack
    char *p = _pFileMemory;
    char *pClassName = NULL;
    char *pObjectName = NULL;
    bool IsWithMethod = false;
    CScriptObject* pScriptObject = NULL;

    unsigned int nOptionStackCount = 0;
    ParserConst::PlatformType    nOptionField = ParserConst::PT_DEFAULT;
    ParserConst::PlatformType nOptionFieldStack [ 64 ]; // stack of option

    while((unsigned int)p < (unsigned int)(_pFileMemory + _nFileSize))
    {

        //====================================================================
        // Searching for object
        //====================================================================
        pClassName          = NULL;
        pObjectName         = NULL;
        pScriptObject       = NULL;
        nOptionField        = ParserConst::PT_DEFAULT;

        if (p[0] == '\0')
        {
            _Next(&p, _pFileMemory, _nFileSize);
        }

        // check if it's a group
        if ( strcmp( p, "group" ) == 0 )
        {
            char *pGroupName = NULL;
            char *pOption = NULL;
            _Next( & p, _pFileMemory, _nFileSize );

            if ( ((char*)p)[0] == '"' )
            {
                p[ strlen( p ) - 1 ] = '\0';

                pGroupName = p + 1;
            }
            else
            {
                OUPUTMSG( "Sytax Error: near \'group\' keyword.\n" );
                return false;
            }
            _Next ( & p, _pFileMemory, _nFileSize );

            // option keyword is optional, may not be exisited
            if ( strcmp ( p, "option") == 0)
            {
                _Next ( & p, _pFileMemory, _nFileSize );

                int nOptionCount = _SplitOption ( p, ( int * ) & nOptionField );

                _Next ( & p, _pFileMemory, _nFileSize );

                if ( nOptionCount == -1 )
                {
                    return false;
                }
            }

            if ( strcmp ( p, "{" ) == 0)
            {
                _Next ( & p, _pFileMemory, _nFileSize );
            }
            else
            {
                OUPUTMSG( "radScript: Invalide syntax near \'group " );
                OUPUTMSG( pGroupName );
                OUPUTMSG( " option " );
                OUPUTMSG( pOption );
                OUPUTMSG( "\', missing \'{\'.\n" );
                return false;
            }
            nOptionFieldStack[nOptionStackCount] = nOptionField;
            nOptionStackCount ++;
        }
        else
        {
            if (strcmp(p, "create") == 0)
            {
                IsWithMethod = false;
                _Next(&p, _pFileMemory, _nFileSize);

                pClassName = p; _Next(&p, _pFileMemory, _nFileSize);

                if (strcmp(p, "named") != 0)
                {
                    OUPUTMSG("Sytax Error: Expected \"named\" at \"%s\", in file \"%s\".\r\n", p, (const char*)GetFilePath());
                    return(false);
                }
                _Next(&p, _pFileMemory, _nFileSize);

                pObjectName = p; _Next(&p, _pFileMemory, _nFileSize);
                TRACE("Found \"create %s named %s\".\n", pClassName, pObjectName);

                // option keyword is optional, may not be exisited
                if ( strcmp ( p, "option") == 0)
                {
                    _Next(&p, _pFileMemory, _nFileSize);

                    int nOptionCount = _SplitOption ( p, ( int * ) & nOptionField );

                    _Next(&p, _pFileMemory, _nFileSize);

                    if ( nOptionCount == -1 )
                    {
                        return false;
                    }
                }
                nOptionFieldStack[nOptionStackCount] = nOptionField;
                nOptionStackCount ++;
            }
            else if (strcmp(p, "with") == 0)
            {
                IsWithMethod = true;
                _Next(&p, _pFileMemory, _nFileSize);

                pClassName = p; _Next(&p, _pFileMemory, _nFileSize);

                if (strcmp(p, "named") != 0)
                {
                    OUPUTMSG("Sytax Error: Expected \"named\" with \"with\" keyword, but only found \"%s\", in file \"%s\".\r\n", p, (const char*)GetFilePath());
                    return(false);
                }
                _Next(&p, _pFileMemory, _nFileSize);

                pObjectName = p; _Next(&p, _pFileMemory, _nFileSize);
                TRACE("Found \"with %s named %s\".\n", pClassName, pObjectName);

                // option keyword is optional, may not be exisited
                if ( strcmp ( p, "option") == 0)
                {
                    _Next(&p, _pFileMemory, _nFileSize);

                    int nOptionCount = _SplitOption ( p, ( int * ) & nOptionField );

                    _Next(&p, _pFileMemory, _nFileSize);

                    if ( nOptionCount == -1 )
                    {
                        return false;
                    }
                }
                nOptionFieldStack[nOptionStackCount] = nOptionField;
                nOptionStackCount ++;
            }
            else if (p[0] == '\0')
            {
                // no script in file, exit
                return(true);
            }
            else
            {
                OUPUTMSG("Sytax Error: Unexpected keyword \"%s\" in file \"%s\".\r\n",
                    p, (const char*)GetFilePath());
                return(false);
            }
        }

        //====================================================================
        // Create a new object
        //====================================================================
        IRadTypeInfo *pRTIObject = GetTypeInfoByName(pClassName);
        pScriptObject = new CScriptObject(pRTIObject,
            pObjectName,
            IsWithMethod ? CScriptObject::RT_WITH : CScriptObject::RT_CREATE,
            this);

        pScriptObject->SetPlatForm( nOptionField );

        Insert(pScriptObject);

        // invalid object, no associated class found
        if (!pScriptObject->GetValid())
        {
            OUPUTMSG("Type Info Error: Cannot find object in database.\r\n"
            "                 name: \"%s\" class: \"%s\" in file: \"%s\".\r\n",
                pObjectName, pClassName, (const char*)GetFilePath());
            char szFullName[256];
            if (pClassName != NULL)
            {
                sprintf(szFullName, "%s (%s)", pObjectName, pClassName);
            }
            else
            {
                sprintf(szFullName, "%s (undefined)", pObjectName);
            }
            pScriptObject->SetName(szFullName);
        }

        //====================================================================
        // Searching methods in the object
        //====================================================================
        if (strcmp(p, "{") == 0)
        {
            _Next(&p, _pFileMemory, _nFileSize);

            while(strcmp(p, "}") != 0)
            {
                char *pParamName = NULL;
                char *pParamType = NULL;
                char *pParamValue = NULL;
                char *pFunctionName = NULL;
                unsigned int * pCurrentParam = params;
                CScriptMethod *pScriptMethod = NULL;
                int nParamCount = 0;

                pFunctionName = p; _Next(&p, _pFileMemory, _nFileSize);

                //====================================================================
                // Create a new method
                //====================================================================
                pScriptMethod = new CScriptMethod((const char*)pFunctionName, pScriptObject);
                pScriptObject->Insert(pScriptMethod);

                //====================================================================
                // Searching for method
                //====================================================================
                if (strcmp(p, "(") != 0)
                {
                    OUPUTMSG("Sytax Error: Expected \"(\" in function \"%s\", in file \"%s\".", pFunctionName, (const char*)this->GetFilePath());
                    return(false);
                }
                _Next(&p, _pFileMemory, _nFileSize);

                while(strcmp( p, ")") != 0)
                {
                    pParamValue = p;

                    if (pScriptMethod->GetValid() == true)
                    {
                        //====================================================================
                        // Copy parameter into the method
                        //====================================================================
                        CScriptParam *pParam = pScriptMethod->GetParamAt(nParamCount);

                        if (pParam->GetType() == PAR_UNKNOWN)
                        {
                            pParam->SetValueUnknown(pParamValue);
                        }
                        else if (pParam->GetLevelOfIndirection() == 0)
                        {
                            unsigned int nHashValue = pParam->GetType();
                            switch(pParam->GetType())
                            {
                            case PAR_BOOL:
                                {
                                    if (IsBool(pParamValue))
                                    {
                                        pParam->SetValueBool((strcmp(pParamValue, "true") ==0) ? true : false);
                                    }
                                    else
                                    {
                                        pScriptMethod->SetValid(false);
                                    }
                                }
                                break;

                            case PAR_ULONG:
                            case PAR_UNSIGNED_INT:
                                {
                                    if (IsInt(pParamValue))
                                    {
                                        pParam->SetValueUInt(atoi(pParamValue));
                                    }
                                    else
                                    {
                                        pScriptMethod->SetValid(false);
                                    }
                                }
                                break;

                            case PAR_LONG:
                            case PAR_INT:
                                {
                                    if (IsInt(pParamValue))
                                    {
                                        pParam->SetValueInt(atoi(pParamValue));
                                    }
                                    else
                                    {
                                        pScriptMethod->SetValid(false);
                                    }
                                }
                                break;

                            case PAR_FLOAT:
                                {
                                    if (IsFloat(pParamValue))
                                    {
                                        pParam->SetValueFloat((float)atof(pParamValue));
                                    }
                                    else
                                    {
                                        pScriptMethod->SetValid(false);
                                    }
                                }
                                break;

                            case PAR_CHAR:
                                {
                                    if (IsInt(pParamValue))
                                    {
                                        pParam->SetValueChar(atoi(pParamValue));
                                    }
                                    else
                                    {
                                        pScriptMethod->SetValid(false);
                                    }
                                }
                                break;

                            case PAR_UNSIGNED_CHAR:
                                {
                                    if (IsInt(pParamValue))
                                    {
                                        pParam->SetValueUChar(atoi(pParamValue));
                                    }
                                    else
                                    {
                                        pScriptMethod->SetValid(false);
                                    }
                                }
                                break;

                            case PAR_INT16:
                                {
                                    if (IsInt(pParamValue))
                                    {
                                        pParam->SetValueInt16(atoi(pParamValue));
                                    }
                                    else
                                    {
                                        pScriptMethod->SetValid(false);
                                    }
                                }
                                break;

                            default:
                                {
                                    pParam->SetValueText(pParamValue);
                                }
                                break;
                            }; // end switch
                        }
                        else if (pParam->GetLevelOfIndirection() == 1)
                        {
                            switch(pParam->GetType())
                            {
                            case PAR_CHAR:
                            case PAR_UNSIGNED_CHAR:
                                {
                                    if (IsStr(pParamValue))
                                    {
                                        p[ strlen( pParamValue ) - 1 ] = '\0';
                                        pParam->SetValueString(&pParamValue[1]);
                                    }
                                    else
                                    {
                                        pScriptMethod->SetValid(false);
                                    }
                                }
                                break;

                            default:
                                {
                                    pParam->SetValueText(pParamValue);
                                }
                                break;
                            }
                        }
                        else
                        {
                            pParam->SetValueText(pParamValue);
                        }
                    }
                    nParamCount++;
                    pCurrentParam++;
                    _Next(&p, _pFileMemory, _nFileSize);

                }
                _Next(&p, _pFileMemory, _nFileSize);
                
                nOptionField = ParserConst::PT_DEFAULT;
                // option keyword is optional, may not be exisited
                if ( strcmp ( p, "option") == 0)
                {
                    _Next(&p, _pFileMemory, _nFileSize);

                    int nOptionCount = _SplitOption ( p, ( int * ) & nOptionField );

                    _Next(&p, _pFileMemory, _nFileSize);

                    if ( nOptionCount == -1 )
                    {
                        return false;
                    }
                }

                nOptionFieldStack[nOptionStackCount] = nOptionField;
                nOptionStackCount++;

                nOptionField = ParserConst::PT_DEFAULT;
                for ( int nOptionIndex = 0; nOptionIndex < nOptionStackCount; nOptionIndex ++ )
                {
                    if ( nOptionFieldStack[nOptionStackCount] != ParserConst::PT_DEFAULT )
                    {
                        nOptionField = nOptionFieldStack[nOptionIndex];
                    }
                }

                if (nParamCount == pScriptMethod->GetParamCount())
                {
                    pScriptMethod->SetValid(true);
                }
                else
                {
                    pScriptMethod->SetValid(false);
                }

                nOptionStackCount--;
                pScriptMethod->SetPlatForm( nOptionField );
            }
            nOptionStackCount --;
            _Next(&p, _pFileMemory, _nFileSize);
        }
        // we could have multiple grouping, use while loop
        while ( strcmp ( p, "}" ) == 0 )
        {
            // pop stack after object is finished
            nOptionStackCount--;
            _Next(&p, _pFileMemory, _nFileSize);
        }
    };
    return(true);
}


//===========================================================================
// CScriptDoc::SetModified
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
void CScriptDoc::SetModified(bool bModified)
{
    if (bModified == true)
    {
        CScriptBaseClass::SetModified(true);
    }
    else
    {
        for (int i = 0; i < m_vecObjectPtr.size(); i++)
        {
            m_vecObjectPtr[i]->SetModified(false);
        }
        CScriptBaseClass::SetModified(false);
    }
}



CScriptObject * CScriptDoc::FindObjectByName( const CString & strName )
{
    vector<CScriptObject*>::iterator i = m_vecObjectPtr.begin( );
    while ( i != m_vecObjectPtr.end( ) )
    {
        if ( (*i)->GetName( ) == strName )
        {
            return (*i);
        }

        i ++;
    }
    return NULL;
}
