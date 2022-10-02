#if !defined(AFX_MEMHEXADDRCOMBOBOX_H__245AF80A_2385_4A9F_AB94_C57102F750C9__INCLUDED_)
#define AFX_MEMHEXADDRCOMBOBOX_H__245AF80A_2385_4A9F_AB94_C57102F750C9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemHexAddrComboBox.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMemHexAddrComboBox window

class CMemHexAddrComboBox :
    public CComboBox
{
// Construction
public:
	CMemHexAddrComboBox( );

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemHexAddrComboBox)
	public:
	virtual BOOL PreTranslateMessage(MSG* pMsg);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMemHexAddrComboBox();

	// Generated message map functions
protected:
	//{{AFX_MSG(CMemHexAddrComboBox)
	afx_msg void OnSelchange();
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

class CMemHexAddrComboButton :
    public CBCGToolbarComboBoxButton
{
	DECLARE_SERIAL(CMemHexAddrComboButton)

// Construction
public:
	CMemHexAddrComboButton () :
		CBCGToolbarComboBoxButton( ID_HEXEDIT_ADDRESS, CImageHash::GetImageOfCommand( ID_HEXEDIT_ADDRESS, FALSE ), CBS_DROPDOWN )
	{
	}

// Attributes:
public:
	static BOOL HasFocus ()
	{
		return m_bHasFocus;
	}

protected:

    static BOOL m_bHasFocus;

// Overrides
protected:

	virtual CComboBox* CreateCombo (CWnd* pWndParent, const CRect& rect)
	{
		CMemHexAddrComboBox* pWndCombo = new CMemHexAddrComboBox;

		if (!pWndCombo->Create (m_dwStyle, rect, pWndParent, m_nID))
		{
			delete pWndCombo;
			return NULL;
		}

		return pWndCombo;
	}

	virtual BOOL NotifyCommand (int iNotifyCode);
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMHEXADDRCOMBOBOX_H__245AF80A_2385_4A9F_AB94_C57102F750C9__INCLUDED_)
