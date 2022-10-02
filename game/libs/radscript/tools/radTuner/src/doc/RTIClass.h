// RTIClass.h: interface for the CRTIClass class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_RTICLASS_H__E7EBD557_DD7C_4AAD_BE03_4C6A0728BEBF__INCLUDED_)
#define AFX_RTICLASS_H__E7EBD557_DD7C_4AAD_BE03_4C6A0728BEBF__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "ScriptBaseClass.h"

class CRTIMethod;

class CRTIClass : public CScriptBaseClass  
{
public:
	CRTIClass();

    CRTIClass(const IRadTypeInfo *pRTIClass, const bool bShowInFileView);

    virtual ~CRTIClass();

    // Copy constructor
    CRTIClass(const CRTIClass &oBaseClass);

    // Assignment operator
    CRTIClass& operator=(const CRTIClass &oObject);

    //
    // Override functions
    //

    // Return true if it is a valid instance
    virtual bool GetValid() const;
    // Return true if instance has been modified
    virtual bool GetModified() const;
    // set true if instance has been modified
    virtual void SetModified(bool bModified);
    // Return the name of the instance
    virtual const CString GetName() const;
    // Call this function to check if instance is valid
    virtual void ValidationCheck() {};

    //
    // Function specific for this class
    //

    virtual IRadTypeInfo* GetRTIClass() const;

    virtual bool GetShowInFileView() const;
    virtual void SetShowInFileView(bool bShowInFileView);

    virtual CString GetDisplayText() const;

    virtual CRTIMethod* GetRTIMethodPtrAt(const int nIndex);
    virtual void GetRTIMethodCount() const;

private:

    bool                    m_bShowInFileView;

    IRadTypeInfo*           m_pRTIClass;

    vector<CRTIMethod*>     m_vecRTIMethodPtr;
};

#endif // !defined(AFX_RTICLASS_H__E7EBD557_DD7C_4AAD_BE03_4C6A0728BEBF__INCLUDED_)
