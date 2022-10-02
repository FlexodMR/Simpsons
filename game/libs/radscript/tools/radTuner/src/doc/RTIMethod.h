// RTIMethod.h: interface for the CRTIMethod class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_RTIMETHOD_H__4EAF67E9_A5EE_40AE_816E_7D078C316B21__INCLUDED_)
#define AFX_RTIMETHOD_H__4EAF67E9_A5EE_40AE_816E_7D078C316B21__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


#include "ScriptBaseClass.h"

class CRTIClass;
class CRTIParam;
class CRTIMethod : public CScriptBaseClass  
{
public:
	CRTIMethod();

    CRTIMethod(const IRadTypeInfoMethod* pRTIMethod, const bool bShowInFileView, const CRTIClass* pParentClass);
    
    virtual ~CRTIMethod();

    // Copy constructor
    CRTIMethod(const CScriptBaseClass &oBaseClass);

    // Assignment operator
    CRTIMethod& operator=(const CScriptBaseClass &oObject);

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
    virtual IRadTypeInfoMethod* GetRTIMethod() const;

    virtual bool GetShowInFileView() const;
    virtual void SetShowInFileView(bool bShowInFileView);

    virtual CString GetDisplayText() const;

    virtual CRTIParam* GetRTIParamPtrAt(const int nIndex);
    virtual void GetRTIParamCount() const;

private:

    bool                    m_bShowInFileView;

    IRadTypeInfoMethod      *m_pRTIMethod;

    vector<CRTIParam*>      m_vecRTIParamPtr;
};

#endif // !defined(AFX_RTIMETHOD_H__4EAF67E9_A5EE_40AE_816E_7D078C316B21__INCLUDED_)
