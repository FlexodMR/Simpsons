// ScriptDoc.h: interface for the CScriptDoc class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_SCRIPTDOC_H__EEC52B1F_7C7C_4AF0_A33E_211060F33320__INCLUDED_)
#define AFX_SCRIPTDOC_H__EEC52B1F_7C7C_4AF0_A33E_211060F33320__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <vector>
using std::vector;

#include "ScriptBaseClass.h"
class CScriptObject;
class CScriptView;

class CScriptDoc : public CScriptBaseClass
{
public:
    CScriptDoc();
    CScriptDoc(const CScriptDoc& oDoc);
    virtual ~CScriptDoc();

    CScriptDoc& operator=(const CScriptDoc& oDoc);

    virtual void SetModified(bool bModified);

    // File Operation
    virtual bool Open(const char* szFileName);
    virtual bool Close();
    virtual bool Save();
    virtual bool SaveAs(const char* szFileName);
    virtual bool IsFileReadOnly() const;
    virtual bool IsAnyInvalidItem() const;

    virtual void SetFileFullPath(const CString &strFullFilePath);
    virtual const CString &GetFilePath() const;

    virtual void ValidationCheck() {};

    virtual CString GetFileTitle() const;
    virtual CString GetShortFileName() const;

    virtual CScriptView* GetView() const;
    virtual void SetView(CScriptView* pView);

    virtual CScriptObject * FindObjectByName( const CString & strName );

    virtual int GetObjectCount() const;

    virtual CScriptObject* GetObjectAt(const int nIndex) const;

    virtual void RemoveAll();

    virtual void RemoveObjectAt(const int nIndex);
    virtual void RemoveObject(CScriptObject *pObject);
    virtual void RemoveInvalid();

    virtual void Insert(CScriptObject *pObject, const int nInsertAfter = -2);
    virtual void Insert(CScriptObject *pObject, const CScriptObject *pAfterThisObject);
private:

    int _SplitOption( char * pToken, int * pnOptionField );


    void _Delete();
    void _Copy(const CScriptDoc& oDoc);

    void _Next(char ** _p, char *_pFileMemory, int _nFileSize);
    bool _ParseData(char* _pData, int _nSize);
    bool _WriteData(CFile* pFile);

    CString                     m_strFullFilePath;
    CScriptView*                m_pvwScriptView;
    vector<CScriptObject *>     m_vecObjectPtr;
};

#endif // !defined(AFX_SCRIPTDOC_H__EEC52B1F_7C7C_4AF0_A33E_211060F33320__INCLUDED_)
