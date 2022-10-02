// MainFrm.h : interface of the CMainFrame class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_MAINFRM_H__F15E79BE_6A16_429E_A3EE_1E4757DD29BB__INCLUDED_)
#define AFX_MAINFRM_H__F15E79BE_6A16_429E_A3EE_1E4757DD29BB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
#include "WorkspaceBar.h"
#include "OutputBar.h"
#include "WorkSpaceDoc.h"
#include "RemoteClient.h"
#include "paramsliderdlg.h"

class RemoteClient;
class CScriptDoc;
class CScriptObject;
class CScriptMethod;

#define CMDIFrameWnd CBCGMDIFrameWnd

class CMethodCall
{
	public:

		CMethodCall( CScriptObject * pScriptObject, CScriptMethod * pScriptMethod )
			:
			m_pScriptObject( pScriptObject ),
			m_pScriptMethod( pScriptMethod )
		{
		}

		CScriptObject * m_pScriptObject;
		CScriptMethod * m_pScriptMethod;
};

class CMainFrame : public CMDIFrameWnd
{
    friend CWorkSpaceDoc;       // bad hack by James Tan Aug 27, 2001. Allow me to access Mainframe's slider view
    DECLARE_DYNAMIC(CMainFrame)
public:
    CMainFrame();

    // Attributes
public:

    // Operations
public:
    CWorkSpaceDoc* GetWorkSpaceDocPtr() const
    {
        return(m_pWorkSpaceDoc);
    }

    CWnd * GetClientArea( )
    {
        return & m_wndClientArea;
    }

    COutputBar* GetOutputBarPtr() const
    {
        return((COutputBar *)&m_wndOutput);
    }

    CWorkSpaceBar* GetWorkSpacePtr() const
    {
        return((CWorkSpaceBar *)&m_wndWorkSpace);
    }

    bool CallRCC(const CScriptObject *pObject, CScriptMethod *pMethod);
    bool CallRCC(const CScriptObject *pObject, IRadTypeInfoMethod *pRTIMethod);

    bool OpenWorkSpaceFile( const CString & strFileName );
    
    int GetDynamicMenuItemIndex() const
    {
        return(m_nDynamicMenuCallMethodIndex);
    }

    void AddChildParamSliderWnd( CParamSliderDlg * pSliderDlg )
    {
        ASSERT( pSliderDlg );
        m_aryParamSliderDlg.insert( pSliderDlg );
    }

    void RemoveChildParamSliderWnd( CParamSliderDlg * pSliderDlg )
    {
        ASSERT( pSliderDlg );
        m_aryParamSliderDlg.erase( pSliderDlg );
        if ( pSliderDlg->GetSafeHwnd( ) != NULL )
        {
            pSliderDlg->DestroyWindow( );
        }
        delete pSliderDlg;
    }

    void RemoveAllParamSliderWnd( )
    {
        set< CParamSliderDlg * >::iterator i;

        for ( i = m_aryParamSliderDlg.begin( ); i != m_aryParamSliderDlg.end( ); i ++ )
        {
            CParamSliderDlg * pSliderDlg = *i;
            if ( pSliderDlg->GetSafeHwnd( ) != NULL )
            {
                pSliderDlg->DestroyWindow( );
            }
        }

        m_aryParamSliderDlg.erase( m_aryParamSliderDlg.begin( ), m_aryParamSliderDlg.end( ) );
    }


    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMainFrame)
	public:
    virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual BOOL OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo);
	protected:
	virtual BOOL OnCommand(WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL

    // Implementation
public:
    virtual ~CMainFrame();
#ifdef _DEBUG
    virtual void AssertValid() const;
    virtual void Dump(CDumpContext& dc) const;
#endif

protected:  // control bar embedded members

    static void _RemoteCallback(HrcsResultCode result);
    static RemoteClient*   ms_pRC;
    static bool            ms_bIsLastRCDone;

    void _PopulateClassView();
    void _PopulateFileView();
    void _PopulateScriptView();

    bool _ShouldAppCloseWorkSpace();

    CBCGMenuBar             m_wndMenuBar;
    CStatusBar              m_wndStatusBar;
    CBCGToolBar             m_wndToolBar;
    CWorkSpaceBar           m_wndWorkSpace;
    COutputBar              m_wndOutput;

    CScriptView*            m_pScriptView;

    CWorkSpaceDoc*          m_pWorkSpaceDoc;        // document associated with workspace
    int                     m_nTimer;

    CBCGToolBarImages       m_UserImages;

    int                     m_nDynamicMenuCallMethodIndex;

    CBCGToolbarComboBoxButton   m_cbxTargetSelect;

    vector<CMethodCall*>    m_vecMethodCallQueue;

public:
    set< CParamSliderDlg * >    m_aryParamSliderDlg;    // list of parameter slider window

    // Generated message map functions
protected:
    //{{AFX_MSG(CMainFrame)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnFileOpen();
    afx_msg void OnUpdateFileOpen(CCmdUI* pCmdUI);
    afx_msg void OnUpdateFileNewWorkspace(CCmdUI* pCmdUI);
    afx_msg void OnFileNewWorkspace();
    afx_msg void OnFileOpenWorkspace();
    afx_msg void OnUpdateFileOpenWorkspace(CCmdUI* pCmdUI);
    afx_msg void OnFileSaveWorkspace();
    afx_msg void OnUpdateFileSaveWorkspace(CCmdUI* pCmdUI);
    afx_msg void OnFileSaveAll();
    afx_msg void OnUpdateFileSaveAll(CCmdUI* pCmdUI);
    afx_msg void OnFileCloseWorkspace();
    afx_msg void OnUpdateFileCloseWorkspace(CCmdUI* pCmdUI);
    afx_msg void OnProjectSettings();
    afx_msg void OnUpdateProjectSettings(CCmdUI* pCmdUI);
    afx_msg void OnDestroy();
    afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnEditCopy();
	afx_msg void OnUpdateEditCopy(CCmdUI* pCmdUI);
	afx_msg void OnEditCut();
	afx_msg void OnUpdateEditCut(CCmdUI* pCmdUI);
	afx_msg void OnEditPaste();
	afx_msg void OnUpdateEditPaste(CCmdUI* pCmdUI);
	afx_msg void OnEditUndo();
	afx_msg void OnUpdateEditUndo(CCmdUI* pCmdUI);
	afx_msg void OnClose();
    afx_msg void OnViewCustomize();
	afx_msg void OnViewRefresh();
	afx_msg void OnUpdateViewRefresh(CCmdUI* pCmdUI);
	afx_msg void OnFileReloadscriptfile();
	afx_msg void OnUpdateFileReloadscriptfile(CCmdUI* pCmdUI);
	afx_msg void OnViewClearoutput();
	afx_msg void OnUpdateViewClearoutput(CCmdUI* pCmdUI);
	afx_msg void OnMoving(UINT fwSide, LPRECT pRect);
	afx_msg void OnMove(int x, int y);
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	//}}AFX_MSG
    afx_msg LRESULT OnToolbarReset(WPARAM,LPARAM);
    void OnToolsViewUserToolbar (UINT id);
    void OnUpdateToolsViewUserToolbar (CCmdUI* pCmdUI);
    afx_msg LRESULT OnToolbarContextMenu(WPARAM,LPARAM);
    afx_msg void OnViewWorkspace();
    afx_msg void OnUpdateViewWorkspace(CCmdUI* pCmdUI);
    afx_msg void OnViewOutput();
    afx_msg void OnUpdateViewOutput(CCmdUI* pCmdUI);
    DECLARE_MESSAGE_MAP()

    virtual BOOL OnShowPopupMenu (CBCGPopupMenu* pMenuPopup);
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MAINFRM_H__F15E79BE_6A16_429E_A3EE_1E4757DD29BB__INCLUDED_)
