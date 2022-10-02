// ScriptObject.h: interface for the CScriptObject class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_SCRIPTOBJECT_H__B33A7C25_A3E1_497C_ACDC_DD2C41E7B3A0__INCLUDED_)
#define AFX_SCRIPTOBJECT_H__B33A7C25_A3E1_497C_ACDC_DD2C41E7B3A0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CScriptMethod;
class CScriptDoc;
class CScriptObject;
class CScriptObjectView;

#include "ScriptBaseClass.h"

#include <vector>
using std::vector;
//
// Notes:
// -----------------------
// Validation of an object
// -----------------------
//      Object is valid even if one or more of its method(s) are invalid.
//      Validation is currently done at creation, and assignment.
// -----------------------
// New object creation
// -----------------------
//      To create an new valid object do the following
//
//          CScriptObject oNewObject(pTypeInfo);                    // create a new object
//          oNewObject.SetName("MyObject");                         // set the name
//          oNewObject.SetCreationType(CScriptObject::RT_CREATE);   // set the creation method
// ------------------------------
// Add new method into the object
// ------------------------------
//
//
class CScriptObject : public CScriptBaseClass
{
    public:

    enum RT_CREATION_TYPE
    {
        RT_WITH,
        RT_CREATE,
    };

    //
    // Constructor and Destructor
    //

    // Default constructor, we should often create
    // object with typeinfo system information provided
    CScriptObject(IRadTypeInfo *pTypeInfo = NULL, const CString& strObjName = CString(""), RT_CREATION_TYPE eCreationType = RT_CREATE, CScriptDoc* pParentDoc = NULL);

    // copy constructor
    CScriptObject(const CScriptObject &oObject);

    // assignment operator
    CScriptObject& operator=(const CScriptObject &oObject);

    // destructor
    virtual ~CScriptObject();

    //
    // Validation check
    // TODO: It is not implemented at this time
    //
    virtual void ValidationCheck() {};

    virtual void SetModified(bool bModified);

    //
    // Property Get/Set/Modification
    //

    // Get object's creation method with/create
    virtual CScriptObject::RT_CREATION_TYPE GetCreationType() const;

    // Set object's creation method with/create
    virtual void SetCreationType(CScriptObject::RT_CREATION_TYPE eType);

    // Get the class name, if the object is invalid, then
    // GetClassName() will return NULL.
    virtual const CString GetClassName() const;

    virtual const CString GetUnMangoedClassName() const;

    // Get the RadTypeInfo pointer
    virtual IRadTypeInfo* GetRadTypeInfo() const;

    // Get parent document pointer, if NULL, then no
    // parent is found.
    virtual CScriptDoc* GetParentDoc() const;

    // Set parent document for the script object
    virtual void SetParentDoc(CScriptDoc* pParentDoc);

    virtual CScriptMethod* FindMethodByName( const CString & strMetName, const long nMetIdx );

    // Get number of method is currently used in the object
    virtual int GetMethodCount();

    // Get method at index passed in
    virtual CScriptMethod* GetMethodAt(const int nIndex);

    // Remove method at index passed in
    virtual void RemoveMethodAt(const int nIndex);

    virtual void RemoveMethod(CScriptMethod* pMethod);

    // Remove all method in the object
    virtual void RemoveAll();

    virtual void RemoveInvalid();

    // Insert a object after a index, pMethod is taken by the object,
    // don't call "delete pMethod" after insert
    virtual void Insert(CScriptMethod *pMethod, const int nInsertAfter = -2);

    virtual void Insert(CScriptMethod *pMethod, const CScriptMethod *pAfterThisMethod);

    virtual const CString GetDisplayText() const;

    virtual bool ShowView();

    virtual CScriptObjectView* GetView() const;

    virtual void SetView(CScriptObjectView* pView);

    virtual void WriteFileString(CString &strText);
    private:

    void _Copy(const CScriptObject& oObject);

    void _Delete();

    // Holds the typeinfo, if NULL, this object is invalid
    IRadTypeInfo            *m_pRTIObject;
    RT_CREATION_TYPE        m_eCreationType;
    vector<CScriptMethod*>  m_vecMehthodPtr;
    CScriptDoc              *m_pParentDoc;

    CScriptObjectView       *m_pObjectView;
};

#endif // !defined(AFX_SCRIPTOBJECT_H__B33A7C25_A3E1_497C_ACDC_DD2C41E7B3A0__INCLUDED_)
