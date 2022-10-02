#if !defined(AFX_RCFPROPERTIES_H__1530FF24_5D47_40B7_B8E3_571164F44D49__INCLUDED_)
#define AFX_RCFPROPERTIES_H__1530FF24_5D47_40B7_B8E3_571164F44D49__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// RCFProperties.h : header file
//

#include <rcfEncoder.hpp>

/////////////////////////////////////////////////////////////////////////////
// CRCFProperties dialog

class CRCFProperties : public CDialog
{
// Construction
public:
	CRCFProperties(CWnd* pParent = NULL);   // standard constructor

    // Encoder stuff
    void ConnectEncoder( IRadRCFEncoder* pEncoder );
    void DisconnectEncoder( bool applysettings );

// Dialog Data
	//{{AFX_DATA(CRCFProperties)
	enum { IDD = IDD_RCFPROPERTIES_DIALOG };
	CButton	m_EndianGroup;
	CButton	m_AlignmentGroup;
	CButton	m_PadnetsizeGroup;
	CEdit	m_PadnetsizeEditHex;
	CEdit	m_PadnetsizeEditDecimal;
	CEdit	m_AlignmentEditHex;
	CEdit	m_AlignmentEditDecimal;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRCFProperties)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    // Cement file
    IRadRCFEncoder* m_pEncoder;

    // Cement file data
    unsigned int m_PadNetSize;
    unsigned int m_Alignment;
    radRCFEndian m_Endian;

	// Generated message map functions
	//{{AFX_MSG(CRCFProperties)
	afx_msg void OnPadnetsizeOff();
	afx_msg void OnPadnetsizeDecimal();
	afx_msg void OnPadnetsizeHex();
	afx_msg void OnAlignmentOff();
	afx_msg void OnAlignmentDecimal();
	afx_msg void OnAlignmentHex();
	afx_msg void OnEndianLittle();
	afx_msg void OnEndianBig();
	virtual BOOL OnInitDialog();
	afx_msg void OnDestroy();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RCFPROPERTIES_H__1530FF24_5D47_40B7_B8E3_571164F44D49__INCLUDED_)
