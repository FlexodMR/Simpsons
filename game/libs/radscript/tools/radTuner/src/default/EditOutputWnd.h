#if !defined(AFX_EDITOUTPUTWND_H__7B7F0F7E_681A_4F37_810D_05307175A805__INCLUDED_)
#define AFX_EDITOUTPUTWND_H__7B7F0F7E_681A_4F37_810D_05307175A805__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// EditOutputWnd.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CEditOutputWnd window

class CEditOutputWnd : public CEdit
{
    // Construction
public:
    CEditOutputWnd();


// Attributes
private:
    CFont   m_fontMain;
// Operations
public:
    
    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CEditOutputWnd)
    //}}AFX_VIRTUAL

    // Implementation
public:
    virtual ~CEditOutputWnd();
    
    // Generated message map functions
protected:
    //{{AFX_MSG(CEditOutputWnd)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	//}}AFX_MSG
    
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_EDITOUTPUTWND_H__7B7F0F7E_681A_4F37_810D_05307175A805__INCLUDED_)
