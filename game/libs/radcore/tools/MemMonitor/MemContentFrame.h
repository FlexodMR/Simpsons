#if !defined(AFX_MEMCONTENTFRAME_H__79C3B95B_9D7D_4D40_A3D6_3A0D71609140__INCLUDED_)
#define AFX_MEMCONTENTFRAME_H__79C3B95B_9D7D_4D40_A3D6_3A0D71609140__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemContentFrame.h : header file
//
/////////////////////////////////////////////////////////////////////////////
// CMemContentFrame frame
class CMemContentView;
class CMemorySection;
class CMemHexView;
class CMemSessionViewManager;

class CMemContentFrame;
typedef TRef< CMemContentFrame > CMemContentFramePtr;

#define CMDIChildWnd CBCGMDIChildWnd

class CMemContentFrame :
    public CMDIChildWnd,
    public CMFCRefCount
{
	DECLARE_DYNCREATE(CMemContentFrame)

protected:

    CMemContentFrame();           // protected constructor used by dynamic creation

public:

    CMemHexView * GetMemContentView( );

    void Initialize( CWnd * pParentWnd, CMemSessionViewManager * pViewManager );

    void Terminate( );

    void SetMemContent( MM_ClientMemorySpace eMemSpace, unsigned int uAddress );

protected:

    void UpdateReloadTimeCheckMenu( );

private:

    HMENU                   m_hMenu;
    HACCEL                  m_hAccel;

    CMemSessionViewManager * m_pViewManager;

    CMemHexView *           m_pView;
    CBCGToolBar	            m_wndToolBar;
    CImageList              m_imgImageList;

    UINT                    m_uReloadTiming;

    UINT                    m_uReloadTimerID;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemContentFrame)
	protected:
	virtual BOOL OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext);
	virtual void PostNcDestroy();
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CMemContentFrame();

	// Generated message map functions
	//{{AFX_MSG(CMemContentFrame)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnDestroy();
	afx_msg void OnDatawidthByte();
	afx_msg void OnUpdateDatawidthByte(CCmdUI* pCmdUI);
	afx_msg void OnDatawidthDword();
	afx_msg void OnUpdateDatawidthDword(CCmdUI* pCmdUI);
	afx_msg void OnDatawidthWord();
	afx_msg void OnUpdateDatawidthWord(CCmdUI* pCmdUI);
	afx_msg void OnHexeditAddress();
	afx_msg void OnUpdateHexeditAddress(CCmdUI* pCmdUI);
	afx_msg void OnHexeditReload();
	afx_msg void OnUpdateHexeditReload(CCmdUI* pCmdUI);
	afx_msg void OnReloadtime1sec();
	afx_msg void OnUpdateReloadtime1sec(CCmdUI* pCmdUI);
	afx_msg void OnReloadtime2sec();
	afx_msg void OnUpdateReloadtime2sec(CCmdUI* pCmdUI);
	afx_msg void OnReloadtime5sec();
	afx_msg void OnUpdateReloadtime5sec(CCmdUI* pCmdUI);
	afx_msg void OnReloadtime10sec();
	afx_msg void OnUpdateReloadtime10sec(CCmdUI* pCmdUI);
	afx_msg void OnReloadtime15sec();
	afx_msg void OnUpdateReloadtime15sec(CCmdUI* pCmdUI);
	afx_msg void OnReloadtime20sec();
	afx_msg void OnUpdateReloadtime20sec(CCmdUI* pCmdUI);
	afx_msg void OnReloadtimeNone();
	afx_msg void OnUpdateReloadtimeNone(CCmdUI* pCmdUI);
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnHexeditAlignment();
	afx_msg void OnUpdateHexeditAlignment(CCmdUI* pCmdUI);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMCONTENTFRAME_H__79C3B95B_9D7D_4D40_A3D6_3A0D71609140__INCLUDED_)
