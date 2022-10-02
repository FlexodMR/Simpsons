//=============================================================================
//
// File:        ScriptBaseClass.h
//
// Subsystem:	Foundation Technologies - Controller
//
// Description:	interface for the CScriptBaseClass class.
//
//
// Revisions:   Mar 4, 2001        Creation
//
//=============================================================================

#if !defined(AFX_SCRIPTBASECLASS_H__7116E93D_E7C3_41C2_B618_189C379066FB__INCLUDED_)
#define AFX_SCRIPTBASECLASS_H__7116E93D_E7C3_41C2_B618_189C379066FB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CScriptBaseClass
{
public:
    // Default Constructor
    CScriptBaseClass();
    // Copy constructor
    CScriptBaseClass(const CScriptBaseClass &oBaseClass);
    // Desctructor
    virtual ~CScriptBaseClass() = 0;
    
    // Assignment operator
    CScriptBaseClass& operator=(const CScriptBaseClass &oObject);

    // Return true if it is a valid instance
    virtual bool GetValid() const;
    // Set true if instance is valid
    virtual void SetValid(bool bValid);
    // Return true if instance has been modified
    virtual bool GetModified() const;
    // set true if instance has been modified
    virtual void SetModified(bool bModified);
    // Return the name of the instance
    virtual const CString GetName() const;
    // Set the name of the instance
    virtual void SetName(const CString& strName);
    // Call this function to check if instance is valid
    virtual void ValidationCheck() = 0 {};

    virtual ParserConst::PlatformType GetPlatForm( ) const { return m_ePlatForm; }
    virtual void SetPlatForm( ParserConst::PlatformType ePlatForm ) { SetModified( true ); m_ePlatForm = ePlatForm; }
    
private:
    // Help function
    void _Copy(const CScriptBaseClass &oObject);

    bool            m_bValid;

    bool            m_bModified;

    CString         m_strName;

    ParserConst::PlatformType   m_ePlatForm;

};

#endif // !defined(AFX_SCRIPTBASECLASS_H__7116E93D_E7C3_41C2_B618_189C379066FB__INCLUDED_)
