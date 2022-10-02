#if !defined(AFX_MEMMONITORHOSTTARGETCOMBOBOX_H__EB05C746_567B_42F1_B6A3_369122B2E9FB__INCLUDED_)
#define AFX_MEMMONITORHOSTTARGETCOMBOBOX_H__EB05C746_567B_42F1_B6A3_369122B2E9FB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemMonitorHostTargetComboBox.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMemMonitorHostTargetComboBox window

class CMemMonitorHostTargetComboBox :
    public CComboBox
{
// Construction
public:
	CMemMonitorHostTargetComboBox();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemMonitorHostTargetComboBox)
	public:
	virtual BOOL PreTranslateMessage(MSG* pMsg);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMemMonitorHostTargetComboBox();

	// Generated message map functions
protected:
	//{{AFX_MSG(CMemMonitorHostTargetComboBox)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnSelchange();
	afx_msg void OnCloseup();
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

class CMemMonitorHostTargetComboButton :
    public CBCGToolbarComboBoxButton
{
	DECLARE_SERIAL(CMemMonitorHostTargetComboButton)

// Construction
public:
	CMemMonitorHostTargetComboButton () :
		CBCGToolbarComboBoxButton( ID_HOST_TARGETLIST, CImageHash::GetImageOfCommand( ID_HOST_TARGETLIST, FALSE ), CBS_DROPDOWNLIST )
	{
	}

// Attributes:
public:

	static BOOL HasFocus ()
	{
		return m_bHasFocus;
	}

    CString GetCurrentSelected( ) const;

protected:

    static BOOL m_bHasFocus;

// Overrides
protected:

	virtual CComboBox* CreateCombo (CWnd* pWndParent, const CRect& rect)
	{
		CMemMonitorHostTargetComboBox* pWndCombo = new CMemMonitorHostTargetComboBox;

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

#endif // !defined(AFX_MEMMONITORHOSTTARGETCOMBOBOX_H__EB05C746_567B_42F1_B6A3_369122B2E9FB__INCLUDED_)
