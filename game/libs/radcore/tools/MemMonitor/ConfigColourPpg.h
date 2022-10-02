#if !defined(AFX_CONFIGCOLOURPPG_H__550CE697_E8B9_4FD9_B879_D99CBD21AEAC__INCLUDED_)
#define AFX_CONFIGCOLOURPPG_H__550CE697_E8B9_4FD9_B879_D99CBD21AEAC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ConfigColourPpg.h : header file
//
/////////////////////////////////////////////////////////////////////////////
// CConfigColourPpg dialog
#include "MemConfiguration.h"

class CConfigColourPpg :
    public CPropertyPageEx
{
    DECLARE_DYNCREATE(CConfigColourPpg)

// Construction
public:

    CConfigColourPpg();

    ~CConfigColourPpg();

    void Initialize( const CMemConfiguration * pConfig );

protected:

    void PopulateColourTable( );

    void DelSelectedColour( );

    void PopulateColourEntry( );

    void AddColourEntry( );

private:

    CMemConfiguration::MemColourTable  m_aryColourTable;

// Dialog Data
    //{{AFX_DATA(CConfigColourPpg)
	enum { IDD = IDD_PROPPAGE_COLOUR };
	CEdit	        m_edtGroupID;
    CListCtrl       m_lbxColourList;
    CBCGColorButton m_butColourPicker;
    CString         m_strRGBValue;
	CString	        m_strGroupID;
	//}}AFX_DATA


// Overrides
    // ClassWizard generate virtual function overrides
    //{{AFX_VIRTUAL(CConfigColourPpg)
	public:
    virtual BOOL OnSetActive();
	virtual BOOL OnApply();
	virtual void OnOK();
	protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    afx_msg void OnCustomDraw( NMHDR * pNMHDR, LRESULT * pResult );
    // Generated message map functions
    //{{AFX_MSG(CConfigColourPpg)
    virtual BOOL OnInitDialog();
    afx_msg void OnColorPicker();
    afx_msg void OnButtonDel();
    afx_msg void OnButtonAdd();
    afx_msg void OnClickListColourList(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnGetdispinfoListColourList(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnColumnclickListColourList(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG
    DECLARE_MESSAGE_MAP()

};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CONFIGCOLOURPPG_H__550CE697_E8B9_4FD9_B879_D99CBD21AEAC__INCLUDED_)
