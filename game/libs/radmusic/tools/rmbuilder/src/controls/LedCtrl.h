#if !defined(AFX_LEDCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_)
#define AFX_LEDCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// FaderCtrl.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CLedCtrl window
 
class CLedCtrl : public CWnd
{

public:
	CLedCtrl();
	
    BOOL Create( unsigned int characters,
        CWnd * pParent,
        UINT id,
        CPoint & pos);

    void SetText( const char * p_text );
    
private:

    unsigned int num_characters;
    char * p_text;
        
// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CLedCtrl)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CLedCtrl();

	// Generated message map functions
protected:
	//{{AFX_MSG(CLedCtrl)
	afx_msg void OnPaint();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FADERCTRL_H__311A4C14_E496_11D2_A675_00C0DF11BD5D__INCLUDED_)
