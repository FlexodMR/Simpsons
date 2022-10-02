#if !defined(AFX_FMTCOMBOBOX_H__991210FA_0B30_496D_AF92_D13FE3947B0C__INCLUDED_)
#define AFX_FMTCOMBOBOX_H__991210FA_0B30_496D_AF92_D13FE3947B0C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// FmtComboBox.h : header file
//
class CScriptParam;
/////////////////////////////////////////////////////////////////////////////
// CFmtComboBox window

class CFmtComboBox : public CComboBox
{
    // Construction
    public:
    CFmtComboBox();


    // Operations
    public:
    virtual void SetInput(const CScriptParam* pParam);

    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CFmtComboBox)
    //}}AFX_VIRTUAL

    // Implementation
    public:
    virtual ~CFmtComboBox();

    // Generated message map functions
    protected:
    //{{AFX_MSG(CFmtComboBox)
    // NOTE - the ClassWizard will add and remove member functions here.
    //}}AFX_MSG

    DECLARE_MESSAGE_MAP()

    // Attributes
    protected:
    ref< IRadTypeInfoParam >     m_pRTIParam;

};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FMTCOMBOBOX_H__991210FA_0B30_496D_AF92_D13FE3947B0C__INCLUDED_)
