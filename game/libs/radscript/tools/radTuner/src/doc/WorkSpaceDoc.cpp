//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// WorkSpaceDoc.cpp : implementation file
//

#include "stdafx.h"
#include "radTuner.h"
#include "WorkSpaceDoc.h"
#include "ScriptDoc.h"
#include "MainFrm.h"
#include "OutputBar.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

const int  CWorkSpaceDoc::n_VERSION = 100;

const char CWorkSpaceDoc::sz_ELEMENT_WORKSPACE[]            = "WORKSPACE";
const char CWorkSpaceDoc::sz_ELEMENT_WORKSPACE_VERSION[]    = "version";
const char CWorkSpaceDoc::sz_ELEMENT_FILELIST[]             = "FILELIST";
const char CWorkSpaceDoc::sz_ELEMENT_FILELIST_NAME[]        = "name";
const char CWorkSpaceDoc::sz_ELEMENT_PROFILE[]              = "PROFILE";
const char CWorkSpaceDoc::sz_ELEMENT_PROFILE_KEY[]          = "key";
const char CWorkSpaceDoc::sz_ELEMENT_PROFILE_VALUE[]        = "value";

const char CWorkSpaceDoc::sz_ELEMENT_VIEW[]                 = "VIEW";
const char CWorkSpaceDoc::sz_ELEMENT_VIEW_PARAM[]           = "param";
const char CWorkSpaceDoc::sz_ELEMENT_VIEW_METHOD[]          = "method";
const char CWorkSpaceDoc::sz_ELEMENT_VIEW_METHOD_IDX[]      = "methodIdx";
const char CWorkSpaceDoc::sz_ELEMENT_VIEW_OBJECT[]          = "object";
const char CWorkSpaceDoc::sz_ELEMENT_VIEW_DOC[]             = "doc";
const char CWorkSpaceDoc::sz_ELEMENT_VIEW_TITLE[]           = "title"; 
const char CWorkSpaceDoc::sz_ELEMENT_VIEW_XPOS[]            = "xpos";
const char CWorkSpaceDoc::sz_ELEMENT_VIEW_YPOS[]            = "ypos";

//===========================================================================
// CWorkSpaceDoc::CWorkSpaceDoc
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CWorkSpaceDoc::CWorkSpaceDoc() :
    m_bModified(true),
    m_bAutoCallRCC(false)
{
}


//===========================================================================
// CWorkSpaceDoc::~CWorkSpaceDoc
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CWorkSpaceDoc::~CWorkSpaceDoc()
{
    UnloadTypeInfo();
    UnloadDataFile();
    _Delete();
}

/////////////////////////////////////////////////////////////////////////////
// CWorkSpaceDoc serialization


//===========================================================================
// CWorkSpaceDoc::_CreateWorkSpaceNode
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             MSXML::IXMLDOMDocumentPtr &pXMLDoc
// 
// Return: MSXML::IXMLDOMNodePtr 
//===========================================================================
MSXML::IXMLDOMNodePtr CWorkSpaceDoc::_CreateWorkSpaceNode(MSXML::IXMLDOMDocumentPtr &pXMLDoc)
{
    MSXML::IXMLDOMNodePtr pWorkSpaceNode = pXMLDoc->createNode((long)MSXML::NODE_ELEMENT, sz_ELEMENT_WORKSPACE, "");

    MSXML::IXMLDOMNodePtr pVersionAttr = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_WORKSPACE_VERSION, "");
    pVersionAttr->PutnodeTypedValue(_variant_t((long)n_VERSION));

    pWorkSpaceNode->attributes->setNamedItem(pVersionAttr);

    {
    map<CString, CString>::iterator p;
    for (p = m_mapProfile.begin(); p != m_mapProfile.end(); p++)
    {
        MSXML::IXMLDOMNodePtr pProfileNode = NULL;
        MSXML::IXMLDOMNodePtr pKeyAttr = NULL;
        MSXML::IXMLDOMNodePtr pValueAttr = NULL;

        pProfileNode = pXMLDoc->createNode((long)MSXML::NODE_ELEMENT, sz_ELEMENT_PROFILE, "");
        pKeyAttr = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_PROFILE_KEY, "");
        pValueAttr = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_PROFILE_VALUE, "");

        pKeyAttr->PutnodeTypedValue((const char*)p->first);
        pValueAttr->PutnodeTypedValue((const char*)p->second);
        pProfileNode->attributes->setNamedItem(pKeyAttr);
        pProfileNode->attributes->setNamedItem(pValueAttr);

        pWorkSpaceNode->appendChild(pProfileNode);
    }
    }

    {
    // create list of windows to be saved
    CMainFrame * pMainFrame = (CMainFrame *)theApp.GetMainWnd( );
    set< CParamSliderDlg * >::iterator p = pMainFrame->m_aryParamSliderDlg.begin( );

    while ( p != pMainFrame->m_aryParamSliderDlg.end( ) )
    {
        CParamSliderDlg * pDlg = (*p); ASSERT( *p );

        CScriptParam * pParam = pDlg->GetScriptParam( ); ASSERT( pParam );
        CScriptMethod * pMethod = pParam->GetParentMethod( ); ASSERT( pMethod );
        CScriptObject * pObject = pMethod->GetParentObject( ); ASSERT( pMethod );
        CScriptDoc * pDoc = pObject->GetParentDoc( ); ASSERT( pDoc );

        CRect rect;
        pDlg->GetWindowRect( & rect );
        pDlg->GetParent( )->ScreenToClient( & rect );

        MSXML::IXMLDOMNodePtr pViewNode = NULL;
        MSXML::IXMLDOMNodePtr pParamAttr = NULL;
        MSXML::IXMLDOMNodePtr pMethodAttr = NULL;
        MSXML::IXMLDOMNodePtr pMethodIdx = NULL;
        MSXML::IXMLDOMNodePtr pObjectAttr = NULL;
        MSXML::IXMLDOMNodePtr pDocAttr = NULL;

        MSXML::IXMLDOMNodePtr pTitleAttr = NULL;
        MSXML::IXMLDOMNodePtr pXPosAttr = NULL;
        MSXML::IXMLDOMNodePtr pYPoseAttr = NULL;
        

        pViewNode = pXMLDoc->createNode((long)MSXML::NODE_ELEMENT, sz_ELEMENT_VIEW, "" );
        pParamAttr = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_VIEW_PARAM, "" );
        pMethodAttr = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_VIEW_METHOD, "" );
        pMethodIdx = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_VIEW_METHOD_IDX, "" );
        pObjectAttr = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_VIEW_OBJECT, "" );
        pDocAttr = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_VIEW_DOC, "" );
        pTitleAttr = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_VIEW_TITLE, "" );
        pXPosAttr = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_VIEW_XPOS, "" );
        pYPoseAttr = pXMLDoc->createNode((long)MSXML::NODE_ATTRIBUTE, sz_ELEMENT_VIEW_YPOS, "" );

        ASSERT( pParam->GetParamIndex( ) != -1 );

        pParamAttr->PutnodeTypedValue( (long)pParam->GetParamIndex( ) );
        pMethodAttr->PutnodeTypedValue( (const char*)pMethod->GetName( ) );
        pMethodIdx->PutnodeTypedValue( (long)pMethod->GetMethodIdx( ) );
        pObjectAttr->PutnodeTypedValue( (const char*)pObject->GetName( ) );
        pDocAttr->PutnodeTypedValue( (const char*)pDoc->GetShortFileName( ) );
        pTitleAttr->PutnodeTypedValue( (const char*)pDlg->GetTitleText( ) );
        pXPosAttr->PutnodeTypedValue( (long)rect.left );
        pYPoseAttr->PutnodeTypedValue( (long)rect.top );

        pViewNode->attributes->setNamedItem( pParamAttr );
        pViewNode->attributes->setNamedItem( pMethodAttr );
        pViewNode->attributes->setNamedItem( pMethodIdx );
        pViewNode->attributes->setNamedItem( pObjectAttr );
        pViewNode->attributes->setNamedItem( pDocAttr );
        pViewNode->attributes->setNamedItem( pTitleAttr );
        pViewNode->attributes->setNamedItem( pXPosAttr );
        pViewNode->attributes->setNamedItem( pYPoseAttr );
        pWorkSpaceNode->appendChild( pViewNode );
        p++;
    }
    }

    return(MSXML::IXMLDOMNodePtr(pWorkSpaceNode.Detach(), false));
}


//===========================================================================
// CWorkSpaceDoc::_ReadWorkSpaceNode
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             MSXML::IXMLDOMDocumentPtr &pXMLDoc
// 
// Return: bool 
//===========================================================================
bool CWorkSpaceDoc::_ReadWorkSpaceNode(MSXML::IXMLDOMDocumentPtr &pXMLDoc)
{
    char szXPath[128];

    sprintf(szXPath, "/%s/%s", sz_ELEMENT_WORKSPACE, sz_ELEMENT_PROFILE);
    MSXML::IXMLDOMNodeListPtr pProfileNodeList = pXMLDoc->selectNodes(szXPath);

    if (!_ReadProfileNode(pProfileNodeList))
    {
        return(false);
    }

    sprintf( szXPath, "/%s/%s", sz_ELEMENT_WORKSPACE, sz_ELEMENT_VIEW );

    MSXML::IXMLDOMNodeListPtr pViewNodeList = pXMLDoc->selectNodes( szXPath );

    if ( !_ReadViewNode( pViewNodeList ) )
    {
        return false;
    }

    return(true);
}


//===========================================================================
// CWorkSpaceDoc::_ReadProfileNode
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             MSXML::IXMLDOMNodeListPtr &pXMLProfileNodeList
// 
// Return: bool 
//===========================================================================
bool CWorkSpaceDoc::_ReadProfileNode(MSXML::IXMLDOMNodeListPtr &pXMLProfileNodeList)
{
    for (int i = 0; i < pXMLProfileNodeList->Getlength(); i++)
    {
        MSXML::IXMLDOMNodePtr pProfileNode = pXMLProfileNodeList->Getitem(i);
        _bstr_t bstrKeyName = pProfileNode->attributes->getNamedItem(sz_ELEMENT_PROFILE_KEY)->GetnodeTypedValue();
        _bstr_t bstrValueName = pProfileNode->attributes->getNamedItem(sz_ELEMENT_PROFILE_VALUE)->GetnodeTypedValue();

        m_mapProfile.insert(pair<CString, CString>(CString((const char*)bstrKeyName), CString((const char*)bstrValueName)));
    }

    return(true);
}

bool CWorkSpaceDoc::_ReadViewNode( MSXML::IXMLDOMNodeListPtr &pXMLViewNodeList )
{
    for ( int i = 0; i < pXMLViewNodeList->Getlength( ); i ++ )
    {
        _VIEW_DATA data;
        data.nParamIndex = (long)pXMLViewNodeList->Getitem( i )->Getattributes()->getNamedItem( sz_ELEMENT_VIEW_PARAM )->GetnodeTypedValue( );
        data.strMethod = (const char *)_bstr_t(pXMLViewNodeList->Getitem( i )->Getattributes()->getNamedItem( sz_ELEMENT_VIEW_METHOD )->GetnodeTypedValue( ));
        data.nMethodIdx = (long)pXMLViewNodeList->Getitem( i )->Getattributes()->getNamedItem( sz_ELEMENT_VIEW_METHOD_IDX )->GetnodeTypedValue( );
        data.strObject = (const char *)_bstr_t(pXMLViewNodeList->Getitem( i )->Getattributes()->getNamedItem( sz_ELEMENT_VIEW_OBJECT )->GetnodeTypedValue( ));
        data.strDoc = (const char *)_bstr_t(pXMLViewNodeList->Getitem( i )->Getattributes()->getNamedItem( sz_ELEMENT_VIEW_DOC )->GetnodeTypedValue( ));
        data.strTitle = (const char *)_bstr_t(pXMLViewNodeList->Getitem( i )->Getattributes()->getNamedItem( sz_ELEMENT_VIEW_TITLE )->GetnodeTypedValue( ));
        data.nXPos = (long)pXMLViewNodeList->Getitem( i )->Getattributes()->getNamedItem( sz_ELEMENT_VIEW_XPOS )->GetnodeTypedValue( );
        data.nYPos = (long)pXMLViewNodeList->Getitem( i )->Getattributes()->getNamedItem( sz_ELEMENT_VIEW_YPOS )->GetnodeTypedValue( );
        m_vecViewData.push_back( data );
    }
    return true;
}

void CWorkSpaceDoc::ClearScriptView( )
{
    m_vecViewData.clear( );
}

void CWorkSpaceDoc::AddScriptViewData( CWorkSpaceDoc::_VIEW_DATA & oViewData )
{
    m_vecViewData.push_back( oViewData );
}

int CWorkSpaceDoc::GetScriptViewDataCount( ) const
{
    return m_vecViewData.size( );
}

CWorkSpaceDoc::_VIEW_DATA & CWorkSpaceDoc::GetScriptViewDataAt( const int nIndex )
{
    return m_vecViewData.at( nIndex );
}

//===========================================================================
// CWorkSpaceDoc::NewWorkSpace
//===========================================================================
// Description:
//
// Constraints:
//
// Parameter:
//             const char* _szFileName
//
// Return: bool
//===========================================================================
bool CWorkSpaceDoc::NewWorkSpace(const char* _szFileName)
{
    // file name must be full path file name
    ASSERT(::PathIsRelative(_szFileName) == FALSE);

    _Delete();

    SetFilePath(_szFileName);

    if (!SaveWorkSpace())
    {
        return(false);
    }

    OpenWorkSpace(_szFileName);

    return(true);
}

//===========================================================================
// CWorkSpaceDoc::OpenWorkSpace
//===========================================================================
// Description:
//
// Constraints:
//
// Parameter:
//             const char* _szFileName
//
// Return: bool
//===========================================================================
bool CWorkSpaceDoc::OpenWorkSpace(const char* _szFileName)
{
    // let's try to open the file
    try
    {
        MSXML::IXMLDOMDocumentPtr pWorkSpacePtr = MSXML::IXMLDOMDocumentPtr(__uuidof(MSXML::DOMDocument));
        pWorkSpacePtr->async = VARIANT_FALSE;
        pWorkSpacePtr->load(_bstr_t(_szFileName));
        SetFilePath(_szFileName);

        _ReadWorkSpaceNode(pWorkSpacePtr);
    }
    catch(_com_error &e)
    {
        e;
        TRACE("unable to load xml workspace file \"%s\".", _szFileName);
    }
    //
    // Load type info from file
    //
    if (!LoadTypeInfo())
    {
        OUPUTMSG("Type info file path is not defined. No type info file loaded! Goto file menu Project|Setting define type info path.\r\n");
    }

    if (!LoadDataFile())
    {
        OUPUTMSG("Script file path is not defined. No script file loaded! Goto file menu Project|Setting define script file path.\r\n");
    }

    SetModified(false); // file just opened, nothing got modified

    return(true);
}

//===========================================================================
// CWorkSpaceDoc::SaveWorkSpace
//===========================================================================
// Description:
//
// Constraints:
//
// Parameter:
//
// Return: bool
//===========================================================================
bool CWorkSpaceDoc::SaveWorkSpace()
{
    //
    // Save file back to disk
    //
    try
    {
        MSXML::IXMLDOMDocumentPtr pWorkSpacePtr = MSXML::IXMLDOMDocumentPtr(__uuidof(MSXML::DOMDocument));
        pWorkSpacePtr->async = VARIANT_FALSE;
        pWorkSpacePtr->appendChild(_CreateWorkSpaceNode(pWorkSpacePtr));
        pWorkSpacePtr->save((const char*)GetFilePath());
    }
    catch(_com_error &e)
    {
        e;
        TRACE("unable to save xml workspace file \"%s\".", (const char*)GetFilePath());
    }
    SetModified(false);

    return(true);
}


//===========================================================================
// CWorkSpaceDoc::CloseWorkSpace
//===========================================================================
// Description:
//
// Constraints:
//
// Parameter:
//
// Return: bool
//===========================================================================
bool CWorkSpaceDoc::CloseWorkSpace()
{
    UnloadTypeInfo();
    UnloadDataFile();
    _Delete();
    return(true);
}

//===========================================================================
// CWorkSpaceDoc::_NormalizeFileName
//===========================================================================
// Description: a normalized file name is a filename like
//              C:\test\test.cpp; \test\test.cpp; test\test.cpp;
//              .\test\test.cpp will be converted to test\test.cpp
//
// Constraints:
//
// Parameter:
//             const char* _szFileName
//
// Return: CString
//===========================================================================
CString CWorkSpaceDoc::_NormalizeFileName(const char* _szFileName)
{
    // normalize filename
    CString strFileName(_szFileName);
    strFileName.TrimLeft();
    strFileName.TrimRight();

    // if filename starts with ".\", then we remove it
    if (strFileName.GetAt(0) == '.' && strFileName.GetAt(1) == '\\' )
    {
        strFileName = strFileName.Mid(2);
    }
    return(CString((const char*)strFileName));
}


//===========================================================================
// CWorkSpaceDoc::IsAnyFileModifiedExternally
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CWorkSpaceDoc::IsAnyFileModifiedExternally() const
{

    return(false);
}


//===========================================================================
// CWorkSpaceDoc::RefreshWorkSpace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CWorkSpaceDoc::RefreshWorkSpace()
{

    return(true);
}


//===========================================================================
// CWorkSpaceDoc::SetXMLProfileString
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* _szKeyName
//             const char* _szStringData
// 
// Return: void 
//===========================================================================
void CWorkSpaceDoc::SetXMLProfileString(const char* _szKeyName, const char* _szStringData)
{
    map<CString, CString>::iterator p;
    p = m_mapProfile.find(CString(_szKeyName));

    if (p == m_mapProfile.end())
    {
        m_mapProfile.insert(pair<CString, CString>(CString(_szKeyName), CString(_szStringData)));
    }
    else
    {
        p->second = CString(_szStringData);
    }
    SetModified(true);
}


//===========================================================================
// CWorkSpaceDoc::GetXMLProfileString
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const char* _szKeyName
//             const char* _szDefaultString
// 
// Return: const char* 
//===========================================================================
const char* CWorkSpaceDoc::GetXMLProfileString(const char* _szKeyName, const char* _szDefaultString) const
{
    map<CString, CString>::const_iterator p;

    p = m_mapProfile.find(CString(_szKeyName));

    if (p != m_mapProfile.end())
    {
        return((const char*)p->second);
    }

    return(_szDefaultString);
}


//===========================================================================
// CWorkSpaceDoc::_Delete
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CWorkSpaceDoc::_Delete()
{
    // clear all attributes
    m_strFilePath.Empty();

    for (int i = 0; i < m_vecScriptDocPtr.size(); i++)
    {
        delete m_vecScriptDocPtr[i];
    }
    m_bModified = true;
    m_vecScriptDocPtr.clear();
    m_mapProfile.clear();
    SetModified(true);
}


//===========================================================================
// CWorkSpaceDoc::LoadTypeInfo
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CWorkSpaceDoc::LoadTypeInfo()
{
    if (!::IsRadTypeInfoSystemInitialize())
    {
        ::radTypeInfoSystemInitialize(RADMEMORY_ALLOC_DEFAULT);
    }

    CFileInfoArray FileListArray;

    CString strRTIPath = GetXMLProfileString("Path_TypeInfoPath");

    if (strRTIPath.GetLength() == 0)
    {
        return(false);
    }

    if (::PathIsRelative(strRTIPath))
    {
        char szPath[256];
        strRTIPath = GetWorkSpacePath() + strRTIPath;
        ::PathCanonicalize(szPath, strRTIPath);
        strRTIPath = szPath;
    }

    // Append '\\' at end of the path needed by CFileInfoArray
    if ((strRTIPath.GetLength() > 0) && (strRTIPath.GetAt(strRTIPath.GetLength()-1) != '\\'))
    {
        strRTIPath += '\\';
    }

    if (!::PathIsDirectory(strRTIPath))
    {
        return(false);
    }

    FileListArray.AddDir(strRTIPath,
        "*.typ", TRUE,
        CFileInfoArray::AP_SORTBYNAME | CFileInfoArray::AP_SORTASCENDING,
        FALSE);

    char szRelPath[ MAX_PATH ];
    char szCurDir[ MAX_PATH ];
    ::GetCurrentDirectory( MAX_PATH, szCurDir );
    for (int i = 0; i < FileListArray.GetSize(); i++)
    {
        OUPUTMSG("Loading Type Info System file: \"%s\"\r\n", (const char*)FileListArray[i].GetFilePath());
        ::PathRelativePathTo( szRelPath, szCurDir, FILE_ATTRIBUTE_DIRECTORY, FileListArray[i].GetFilePath(), FILE_ATTRIBUTE_NORMAL );
        radTypeInfoLoadTypeInfoSync(szRelPath);
    }

    return(true);
}


//===========================================================================
// CWorkSpaceDoc::UnloadTypeInfo
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CWorkSpaceDoc::UnloadTypeInfo()
{
    if (::IsRadTypeInfoSystemInitialize())
    {
        ::radTypeInfoSystemTerminate();
    }
    return(true);
}



//===========================================================================
// CWorkSpaceDoc::LoadDataFile
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CWorkSpaceDoc::LoadDataFile()
{
    CFileInfoArray FileListArray;

    CString strScriptPath = GetXMLProfileString("Path_ScriptPath");

    if (strScriptPath.GetLength() == 0)
    {
        return(false);
    }

    if (::PathIsRelative(strScriptPath))
    {
        char szPath[256];
        strScriptPath = GetWorkSpacePath() + strScriptPath;
        ::PathCanonicalize(szPath, strScriptPath);
        strScriptPath = szPath;
    }

    // Append '\\' at end of the path needed by CFileInfoArray
    if ((strScriptPath.GetLength() > 0) && (strScriptPath.GetAt(strScriptPath.GetLength()-1) != '\\'))
    {
        strScriptPath += '\\';
    }

    if (!::PathIsDirectory(strScriptPath))
    {
        return(false);
    }

    FileListArray.AddDir(strScriptPath,
        "*.scr", TRUE,
        CFileInfoArray::AP_SORTBYNAME | CFileInfoArray::AP_SORTASCENDING,
        FALSE);
    FileListArray.AddDir(strScriptPath,
        "*.spt", TRUE,
        CFileInfoArray::AP_SORTBYNAME | CFileInfoArray::AP_SORTASCENDING,
        FALSE);
    FileListArray.AddDir(strScriptPath,
        "*.txt", TRUE,
        CFileInfoArray::AP_SORTBYNAME | CFileInfoArray::AP_SORTASCENDING,
        FALSE);

    for (int i = 0; i < FileListArray.GetSize(); i++)
    {
        CScriptDoc* pTemp = new CScriptDoc;
        pTemp->Open((const char*)FileListArray[i].GetFilePath());
        m_vecScriptDocPtr.push_back(pTemp);
    }

    return(true);
}


//===========================================================================
// CWorkSpaceDoc::UnloadDataFile
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CWorkSpaceDoc::UnloadDataFile()
{
    for (int i = 0; i < m_vecScriptDocPtr.size(); i++)
    {
        delete m_vecScriptDocPtr[i];
    }
    m_vecScriptDocPtr.clear();
    return(true);
}


//===========================================================================
// CWorkSpaceDoc::SetModified
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
void CWorkSpaceDoc::SetModified(bool bModified)
{
    m_bModified = bModified;
}


//===========================================================================
// CWorkSpaceDoc::GetModified
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CWorkSpaceDoc::GetModified() const
{
    return(m_bModified);
}


//===========================================================================
// CWorkSpaceDoc::SetFilePath
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CString& szPath
// 
// Return: void 
//===========================================================================
void CWorkSpaceDoc::SetFilePath(const CString& szPath)
{
    m_strFilePath = szPath;
}


//===========================================================================
// CWorkSpaceDoc::GetFilePath
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: const CString& 
//===========================================================================
const CString& CWorkSpaceDoc::GetFilePath()
{
    return(m_strFilePath);
}


//===========================================================================
// CWorkSpaceDoc::GetWorkSpacePath
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CString 
//===========================================================================
CString CWorkSpaceDoc::GetWorkSpacePath() const
{
    char szDrive[_MAX_DRIVE];
    char szDir[_MAX_DIR];
    char szFileName[_MAX_FNAME];
    char szExt[_MAX_EXT];
    char szPath[_MAX_DIR + 16];
    ::_tsplitpath((const char*)m_strFilePath, szDrive, szDir, szFileName, szExt);
    ::_makepath(szPath, szDrive, szDir, NULL, NULL);

    return(CString(szPath));
}

CScriptDoc* CWorkSpaceDoc::FindScriptDocByName( const CString & strName )
{
    vector<CScriptDoc*>::iterator i = m_vecScriptDocPtr.begin( );
    while ( i != m_vecScriptDocPtr.end( ) )
    {
        if ( (*i)->GetShortFileName( ).CompareNoCase( strName ) == 0 )
        {
            return (*i);
        }

        i ++;
    }
    return NULL;
}

CScriptObject* CWorkSpaceDoc::FindScriptObjectByName( const CString & strDocName, const CString & strObjName )
{
    CScriptDoc * pDoc = FindScriptDocByName( strDocName );

    if ( pDoc == NULL )
    {
        return NULL;
    }
    return pDoc->FindObjectByName( strObjName );
}

CScriptMethod * CWorkSpaceDoc::FindScriptMethodByName( const CString & strDocName, const CString & strObjName, const CString & strMetName, const long nMetIdx )
{
    CScriptObject * pObj = FindScriptObjectByName( strDocName, strObjName );
    
    if ( pObj == NULL )
    {
        return NULL;
    }

    return pObj->FindMethodByName( strMetName, nMetIdx );
}

CScriptParam * CWorkSpaceDoc::FindScriptParamByName( const CString & strDocName, const CString & strObjName, const CString & strMetName, const long nMetIdx, const int nParamIndex )
{
    CScriptMethod * pMet = FindScriptMethodByName( strDocName, strObjName, strMetName, nMetIdx );

    if ( pMet == NULL )
    {
        return NULL;
    }

    if ( nParamIndex < pMet->GetParamCount( ) )
    {
        return pMet->GetParamAt( nParamIndex );
    }
    return NULL;
}
