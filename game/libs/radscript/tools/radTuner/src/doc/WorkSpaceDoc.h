#if !defined(AFX_WORKSPACEDOC_H__7A6A0D61_42F1_4146_8D45_168B75BD52B4__INCLUDED_)
#define AFX_WORKSPACEDOC_H__7A6A0D61_42F1_4146_8D45_168B75BD52B4__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WorkSpaceDoc.h : header file
//
#include <vector>
#include <map>
#include <algorithm>
using namespace std;
class CScriptDoc;
class CScriptMethod;
class CScriptObject;
class CScriptParam;
/////////////////////////////////////////////////////////////////////////////
// CWorkSpaceDoc document

class CWorkSpaceDoc
{
public:
    CWorkSpaceDoc();
    virtual ~CWorkSpaceDoc();
    
    // Operations
public:
    struct _VIEW_DATA
    {
        long    nParamIndex;
        CString strMethod;
        long    nMethodIdx;
        CString strObject;
        CString strDoc;
        CString strTitle;
        long    nXPos;
        long    nYPos;
    };
    
    // Create a new workspace and save it to the full filename passed in.
    virtual bool NewWorkSpace(const char* _szFileName);
    // Open and read a workspace and populate all file and profile list
    virtual bool OpenWorkSpace(const char* _szFileName);
    // Save a workspace and write all file and profile list
    virtual bool SaveWorkSpace();
    // Delete all content of the workspace file
    virtual bool CloseWorkSpace();
    
    virtual bool LoadTypeInfo();
    virtual bool UnloadTypeInfo();
    
    virtual bool LoadDataFile();
    virtual bool UnloadDataFile();
    
    virtual void ClearScriptView( );
    virtual void AddScriptViewData( CWorkSpaceDoc::_VIEW_DATA & oViewData );
    virtual int GetScriptViewDataCount( ) const;
    virtual CWorkSpaceDoc::_VIEW_DATA & GetScriptViewDataAt( const int nIndex );

    virtual void SetFilePath(const CString& szPath);
    
    virtual const CString& GetFilePath();
    
    virtual CString GetWorkSpacePath() const;
    
    // return true, if any file is modified externally
    virtual bool IsAnyFileModifiedExternally() const;
    // Refresh entire workspace and data asscoicate with it after
    // some file is modified outside this program
    virtual bool RefreshWorkSpace();
    
    // Set a profile string, if key not found - add, if key found - modify
    virtual void SetXMLProfileString(const char* _szKeyName, const char* _szStringData);
    // Get a profile string by its key
    virtual const char* GetXMLProfileString(const char* _szKeyName, const char* _szDefaultString = NULL) const;
    
    virtual void SetModified(bool bModified);
    virtual bool GetModified() const;
    
    virtual CScriptDoc* FindScriptDocByName( const CString & strName );

    virtual CScriptObject* FindScriptObjectByName( const CString & strDocName, const CString & strObjName );

    virtual CScriptMethod * FindScriptMethodByName( const CString & strDocName, const CString & strObjName, const CString & strMetName, const long nMetIdx );

    virtual CScriptParam * FindScriptParamByName( const CString & strDocName, const CString & strObjName, const CString & strMetName, const long nMetIdx, const int nParamIndex );

    virtual int GetScriptDocCount() const
    {
        return(m_vecScriptDocPtr.size());
    }
    
    virtual CScriptDoc* GetScriptDocAt(int nIndex)
    {
        ASSERT(nIndex < m_vecScriptDocPtr.size());
        return(m_vecScriptDocPtr[nIndex]);
    }
    
    bool GetAutoCallRCC( ) const
    {
        return m_bAutoCallRCC;
    }

    void SetAutoCallRCC( bool bAutoCallRCC )
    {
        m_bAutoCallRCC = bAutoCallRCC;
    }

private:
    
    // Version number of the workspace file
    static const int  n_VERSION;
    
    static const char sz_ELEMENT_WORKSPACE[];
    static const char sz_ELEMENT_WORKSPACE_VERSION[];
    
    static const char sz_ELEMENT_FILELIST[];
    static const char sz_ELEMENT_FILELIST_NAME[];
    
    static const char sz_ELEMENT_PROFILE[];
    static const char sz_ELEMENT_PROFILE_KEY[];
    static const char sz_ELEMENT_PROFILE_VALUE[];
    
    static const char sz_ELEMENT_VIEW[];
    static const char sz_ELEMENT_VIEW_PARAM[];
    static const char sz_ELEMENT_VIEW_METHOD[];
    static const char sz_ELEMENT_VIEW_METHOD_IDX[];
    static const char sz_ELEMENT_VIEW_OBJECT[];
    static const char sz_ELEMENT_VIEW_DOC[];
    static const char sz_ELEMENT_VIEW_TITLE[];
    static const char sz_ELEMENT_VIEW_XPOS[];
    static const char sz_ELEMENT_VIEW_YPOS[];
    
    void _Delete();
    
    MSXML::IXMLDOMNodePtr _CreateWorkSpaceNode(MSXML::IXMLDOMDocumentPtr &pXMLDoc);

    bool _ReadWorkSpaceNode(MSXML::IXMLDOMDocumentPtr &pXMLDoc);
    
    bool _ReadProfileNode(MSXML::IXMLDOMNodeListPtr &pXMLProfileNodeList);

    bool _ReadViewNode(MSXML::IXMLDOMNodeListPtr &pXMLViewNodeList);
    
    CString _NormalizeFileName(const char* _szFileName);

    
    // Absolute directory of current workspace
    CString                     m_strFilePath;
    
    map<CString, CString>       m_mapProfile;
    vector<CScriptDoc*>         m_vecScriptDocPtr;
    vector< _VIEW_DATA >        m_vecViewData;
    bool                        m_bModified;
    bool                        m_bAutoCallRCC;
};

#endif // !defined(AFX_WORKSPACEDOC_H__7A6A0D61_42F1_4146_8D45_168B75BD52B4__INCLUDED_)
