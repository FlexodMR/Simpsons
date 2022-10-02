//=============================================================================
//
// File:        ExceptDlg.hpp
//
// Subsystem:   Radical File Server Exception Dialog
//
// Description:	This file contains the file
//
// Author:		Peter Mielcarski
//
// Revisions:	V1.00	Feb 3, 2000	    Creation
//
//=============================================================================

//=============================================================================
// Include Files
//============================================================================

#if !defined(AFX_EXCEPTDLG_H__A3D7D3C0_DADB_11D3_92F7_00105A633137__INCLUDED_)
#define AFX_EXCEPTDLG_H__A3D7D3C0_DADB_11D3_92F7_00105A633137__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// ExceptDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CExceptDlg dialog

class CExceptDlg : public CDialog
{
// Construction
public:
	CExceptDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CExceptDlg)
	enum { IDD = IDD_EXCEPTION };
	CEdit	m_FileSpec;
	//}}AFX_DATA
    CString m_Spec;


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CExceptDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CExceptDlg)
	virtual void OnOK();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_EXCEPTDLG_H__A3D7D3C0_DADB_11D3_92F7_00105A633137__INCLUDED_)
