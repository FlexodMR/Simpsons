// ScriptMethod.h: interface for the CScriptMethod class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_SCRIPTMETHOD_H__A711FE37_3242_4E1E_AE8C_13047F8C3087__INCLUDED_)
#define AFX_SCRIPTMETHOD_H__A711FE37_3242_4E1E_AE8C_13047F8C3087__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <vector>
using std::vector;

#include "ScriptBaseClass.h"
#include "ScriptObject.h"

class CScriptMethod;
class CFileTreeCtrl;
class CParamSliderDlg;
// Currently, if unknown data type, we assume it to be reference data type
// and reference parameter holds the string of a parameter.

// CScriptParam is a class simular to COleVariant class
class CScriptParam
{
    friend CScriptMethod;
    friend CParamSliderDlg;
public:
    CScriptParam();
    ~CScriptParam();
    CScriptParam(const CScriptParam & oParam);
    CScriptParam &operator=(const CScriptParam & oParam);
    explicit CScriptParam(bool bValue);
    explicit CScriptParam(unsigned int uValue);
    explicit CScriptParam(int nValue);
    explicit CScriptParam(float fValue);
    explicit CScriptParam(char cValue);
    explicit CScriptParam(unsigned char uValue);
    explicit CScriptParam(short nValue);
    // this only create a string type parameter
    explicit CScriptParam(const char* szValue);
    
    explicit CScriptParam(IRadTypeInfoParam * pParamType);
    
    // Parse a input string into typed Parameter value
    bool Parse(const char* szString, IRadTypeInfoParam * pParamType );
    
    bool GetValueBool() const;
    unsigned int GetValueUInt() const;
    int GetValueInt() const;
    float GetValueFloat() const;
    char GetValueChar() const;
    unsigned char GetValueUChar() const;
    short GetValueInt16() const;
    char* GetValueString() const;
    char* GetValueUnknown() const;
    char* GetValueText() const;     // None standard data type, store text
    
    void SetValueBool(bool bValue);
    void SetValueUInt(unsigned int uValue);
    void SetValueInt(int nValue);
    void SetValueFloat(float fValue);
    void SetValueChar(char cValue);
    void SetValueUChar(unsigned char uValue);
    void SetValueInt16(short nValue);
    void SetValueString(const char* szValue);
    void SetValueUnknown(const char* szValue);
    void SetValueText(const char* szValue);     // None standard data type, store text
    
    CString GetDisplayText() const;
    
    int GetType() const;
    int GetLevelOfIndirection() const;
    
    void SetModified(bool bModified);
    bool GetModified() const;
    
    void SetParentMethod(CScriptMethod* pParentMethod);
    CScriptMethod* GetParentMethod() const;
    
    IRadTypeInfoParam* GetRTIParamPtr() const;
    // Get the value in text format
    CString ConvertValueToText() const;
    
    virtual void WriteFileString(CString& strText);

    void SpawnWindow( CFileTreeCtrl * pTree2Update, HTREEITEM hMet, HTREEITEM hObj, HTREEITEM hDoc );

    void CopyValue( const CScriptParam & oParam );

    CWnd * GetParamWnd( )
    {
        return m_pParamWnd;
    }

    // return -1 if not found
    int GetParamIndex( ) const;

private:
    
    void _Copy(const CScriptParam &oParam);
    void _Delete();
    
    union
    {
        bool            m_bBoolean;         // PAR_BOOL
        unsigned int    m_uUInt;            // PAR_UNSIGNED_INT
        int             m_nInt;             // PAR_INT
        float           m_fFloat;           // PAR_FLOAT
        int             m_cChar;            // PAR_CHAR
        int             m_uUChar;           // PAR_UNSIGNED_CHAR
        int             m_nInt16;           // PAR_INT16
        char*           m_pString;          // PAR_CHAR and m_LevelOfIndirection = 1
        char*           m_pUnknown;         // PAR_UNKNOWN
    };
    
    bool                            m_bModified;
    ref< IRadTypeInfoParam >        m_pTypeInfoParam;
    CScriptMethod*                  m_pParentMethod;

    CWnd *                          m_pParamWnd;
};



//
// When a new method is created, parameters are filled with default value
//
class CScriptMethod : public CScriptBaseClass
{
public:
    // Create a valid method, we must know both TypeInfo and parent object
    CScriptMethod(IRadTypeInfoMethod* pRTIMethod, CScriptObject *pParentObject);
    
    // Create a valid method from name of the method, and parent object
    // if name is found, then create a valid method,
    // if name is not found in TypeInfo, then create an invalid method.
    CScriptMethod(CString strName = CString(""), CScriptObject *pParentObject = NULL);

    // Copy constructor
    CScriptMethod(const CScriptMethod &oMethod);
    // Destructor
    virtual ~CScriptMethod();
    // Assignment operator
    CScriptMethod& operator=(const CScriptMethod &oMethod);

    //
    // Override virtual functions
    //

    // true if modified, it will also set all parent object to modified as well
    virtual void SetModified(bool bModified);
    
    virtual void ValidationCheck() {};
    // Get the name of the method, if valid method, return typeinfo's name
    // if invalid, return the name supplied.
    virtual const CString GetName() const;

    virtual bool IsTypeProperty() const;
    
    // Get parent object pointer, if NULL, then no
    // parent is found.
    virtual CScriptObject* GetParentObject() const;
    // Set parent object for the script method
    virtual void SetParentObject(CScriptObject* pParentObject);
    // Get number of parameter in the method
    virtual int GetParamCount() const;
    // Get Parameter information at index supplied
    virtual CScriptParam* GetParamAt(const int nIndex) const;
    // Get a string to be displayed on the tree view
    virtual CString GetDisplayText() const;

    virtual IRadTypeInfoMethod* GetRTIMethodPtr() const;
    
    virtual void WriteFileString(CString& strText);

    virtual int GetMethodIdx( ) const;
private:
    void _PopulateParamFromTypeInfoMethod(IRadTypeInfoMethod* pRTIMethod);
    void _Delete();
    void _Copy(const CScriptMethod &oMethod);
    
    
    IRadTypeInfoMethod*         m_pRTIMethod;
    vector<CScriptParam*>       m_vecScriptParamPtr;
    CScriptObject*              m_pParentObject;
};

#endif // !defined(AFX_SCRIPTMETHOD_H__A711FE37_3242_4E1E_AE8C_13047F8C3087__INCLUDED_)
