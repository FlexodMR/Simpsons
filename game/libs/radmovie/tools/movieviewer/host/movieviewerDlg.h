// movieviewerDlg.h : header file
//

#if !defined(AFX_MOVIEVIEWERDLG_H__3D37637C_D3F7_4848_B1C2_F574A8AC0EE0__INCLUDED_)
#define AFX_MOVIEVIEWERDLG_H__3D37637C_D3F7_4848_B1C2_F574A8AC0EE0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "movielauncher.hpp"
#include "afxwin.h"

#define NUM_PLATS 5;

/////////////////////////////////////////////////////////////////////////////
// CMovieviewerDlg dialog

class CMovieviewerDlg : public CDialog
{
// Construction
public:
	CMovieviewerDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CMovieviewerDlg)
	enum { IDD = IDD_MOVIEVIEWER_DIALOG };
	CListBox	m_StatusList;
	CComboBox	m_ATrackList;
	CComboBox	m_PlatList;
	CEdit	m_CEdit;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMovieviewerDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	virtual LRESULT WindowProc(UINT message, WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CMovieviewerDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnChangeEdit1();
	afx_msg void OnPlayButton();
	afx_msg void OnDropFiles(HDROP hDropInfo);
	afx_msg void OnBrowseButton();
	afx_msg void OnDestroy();
	afx_msg void OnTimer(UINT nIDEvent);
    afx_msg LRESULT OnStatusText(WPARAM, LPARAM);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
private:
    void TestDropTarget( UINT resource, CPoint & point, CString & text );
    bool LaunchMovie( unsigned int platformId, char * pFileName, unsigned int audioTrack );
	void GetFileName( char * pBuf, unsigned int size );
	unsigned int GetPlatformId( void );
    unsigned int GetAudioTrack( void );
	void UpdateViewerConfig( void );

    struct PlatformInfo
    {
        char m_pName[ 32 ];
        char m_pLauncherName[ 256 ];
    };
    PlatformInfo m_pPlatformInfo[ 5 ];

    IMovieLauncher * m_pIMovieLauncher[ 5 ];

	ViewerConfig m_ViewerConfig;
public:
	afx_msg void OnBnClickedButtonConfig();
	afx_msg void OnBnClickedConfigButton();
	CEdit m_CEdit_Ps2_IP;
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MOVIEVIEWERDLG_H__3D37637C_D3F7_4848_B1C2_F574A8AC0EE0__INCLUDED_)
