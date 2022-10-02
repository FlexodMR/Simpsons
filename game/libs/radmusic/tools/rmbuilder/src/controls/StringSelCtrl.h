#if !defined(AFX_STRINGSELCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_)
#define AFX_STRINGSLCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

/////////////////////////////////////////////////////////////////////////////
// CStringSelCtrl window
#include "LedCtrl.h"
#include "ButtonCtrl.h"
#include "afxtempl.h"

class CStringSelCtrl : public CWnd
{

public:
	CStringSelCtrl();
	
    BOOL Create(
        const char * p_name, 
        unsigned int max_chars,
        CWnd * pParent,
        UINT id,
        CPoint & pos);
        
    void AddItem( const char * p_string );
    void SelectItem( unsigned int item );
    unsigned int GetSelectedItem( void );
        
private:

    void SendParentMessage( void );
    
    CLedCtrl    m_wndLedCtrl;
    CButtonCtrl m_wndButtonCtrl_Up;
    CButtonCtrl m_wndButtonCtrl_Down;

    CString m_Name;
    CArray< CString > m_Strings;
        
    unsigned int selected_item;   
    
// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CStringSelCtrl)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CStringSelCtrl();

	// Generated message map functions
protected:
	//{{AFX_MSG(CStringSelCtrl)
	afx_msg void OnPaint( void );
    afx_msg void OnButtonUp( void );
    afx_msg void OnButtonDown( void );	
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
public:
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FADERCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_)
