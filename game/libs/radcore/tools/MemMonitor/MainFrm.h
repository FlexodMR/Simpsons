// MainFrm.h : interface of the CMainFrame class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_MAINFRM_H__EB4D9B6C_40F4_4033_8E1A_5AB849F7811C__INCLUDED_)
#define AFX_MAINFRM_H__EB4D9B6C_40F4_4033_8E1A_5AB849F7811C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
#include "WorkspaceBar.h"
#include "OutputBar.h"
#include "PropertyBar.h"
#include "MemStatusBar.h"

class CMemSessionDataManager;
class CMemSessionViewManager;

#define CMDIFrameWnd CBCGMDIFrameWnd

class CMainFrame :
    public CMDIFrameWnd
{
    DECLARE_DYNAMIC(CMainFrame)
public:
    CMainFrame();

// Attributespublic:

    CMemOverallView * GetMemOverallViewPtr( );

    const CMemOverallView * GetMemOverallViewPtr( ) const;

    CWorkspaceBar * GetWorkSpaceBar( )
    {
        return & m_wndWorkSpace;
    }

    const CWorkspaceBar * GetWorkSpaceBar( ) const
    {
        return & m_wndWorkSpace;
    }

    COutputBar * GetOutputBar( )
    {
        return & m_wndOutput;
    }

    const COutputBar * GetOutputBar( ) const
    {
        return & m_wndOutput;
    }

    CPropertyBar * GetPropertyBar( )
    {
        return & m_wndProperty;
    }

    const CPropertyBar * GetPropertyBar( ) const
    {
        return & m_wndProperty;
    }

    void OpenFile( const CString & strFileName );

protected:

// Operations
public:

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMainFrame)
	public:
    virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	//}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CMainFrame();
#ifdef _DEBUG
    virtual void AssertValid() const;
    virtual void Dump(CDumpContext& dc) const;
#endif

protected:  // control bar embedded members

    UINT            m_uNotifyMsgTimer;


    CImageList      m_imgImageList;

    CBCGMenuBar     m_wndMenuBar;
    CMemStatusBar   m_wndStatusBar;
    CBCGToolBar     m_wndToolBar;
    CWorkspaceBar   m_wndWorkSpace;
    COutputBar      m_wndOutput;
    CPropertyBar    m_wndProperty;

// Generated message map functions
protected:
    //{{AFX_MSG(CMainFrame)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnUpdateFileNew(CCmdUI* pCmdUI);
    afx_msg void OnFileNew();
    afx_msg void OnFileSettings();
    afx_msg void OnUpdateFileSettings(CCmdUI* pCmdUI);
    afx_msg void OnFileOpen();
    afx_msg void OnUpdateFileOpen(CCmdUI* pCmdUI);
    afx_msg void OnFileClose();
    afx_msg void OnUpdateFileClose(CCmdUI* pCmdUI);
    afx_msg void OnFileSave();
    afx_msg void OnUpdateFileSave(CCmdUI* pCmdUI);
    afx_msg void OnFilePrint();
    afx_msg void OnUpdateFilePrint(CCmdUI* pCmdUI);
    afx_msg void OnFilePrintPreview();
    afx_msg void OnUpdateFilePrintPreview(CCmdUI* pCmdUI);
    afx_msg void OnFilePrintSetup();
    afx_msg void OnUpdateFilePrintSetup(CCmdUI* pCmdUI);
    afx_msg void OnHostSuspend();
    afx_msg void OnUpdateHostSuspend(CCmdUI* pCmdUI);
    afx_msg void OnHostTargetconnect();
    afx_msg void OnUpdateHostTargetconnect(CCmdUI* pCmdUI);
    afx_msg void OnHostTargetlist();
    afx_msg void OnUpdateHostTargetlist(CCmdUI* pCmdUI);
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnClose();
	afx_msg void OnFileSavesettingsas();
	afx_msg void OnUpdateFileSavesettingsas(CCmdUI* pCmdUI);
	afx_msg void OnFileLoadsettings();
	afx_msg void OnUpdateFileLoadsettings(CCmdUI* pCmdUI);
	afx_msg void OnViewProperty();
	afx_msg void OnUpdateViewProperty(CCmdUI* pCmdUI);
	//}}AFX_MSG
    afx_msg LRESULT OnToolbarReset(WPARAM,LPARAM);
    afx_msg LRESULT OnToolbarContextMenu(WPARAM,LPARAM);
    afx_msg void OnViewWorkspace();
    afx_msg void OnUpdateViewWorkspace(CCmdUI* pCmdUI);
    afx_msg void OnViewOutput();
    afx_msg void OnUpdateViewOutput(CCmdUI* pCmdUI);
    afx_msg void OnWindowManager();
    afx_msg void OnUpdateDataBuffer(CCmdUI* pCmdUI);
    DECLARE_MESSAGE_MAP()

    virtual BOOL OnShowPopupMenu (CBCGPopupMenu* pMenuPopup);
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MAINFRM_H__EB4D9B6C_40F4_4033_8E1A_5AB849F7811C__INCLUDED_)
