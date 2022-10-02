#ifndef MAINFRM_H
#define MAINFRM_H

#include "framework/MainCanvas.h"

class CMainFrame : public CFrameWnd
{	
    public:

        void OpenRecentFile( const char * pFile );
    
    protected: 
	    DECLARE_DYNAMIC(CMainFrame)

        virtual BOOL OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult);
        virtual BOOL PreCreateWindow(CREATESTRUCT& cs);

	    DECLARE_MESSAGE_MAP()
	    
        void OnProjectRefresh();
		int  OnCreate(LPCREATESTRUCT lpCreateStruct);
	    void OnFileOpen();
	    void OnTimer(UINT nIDEvent);
	    void OnDestroy();
	    void OnFileSave();
	    void OnFileSaveAs();
	    void OnFileNew();
	    void OnClose();
        void OnProjectSettings();
        void OnDropFiles(HDROP hDropInfo);
        
        void OnCustomCommand( UINT );
            	    
    private:
    
        void OpenFile( const char * pFileName );
       	
	    bool QueryUserSaveIfModified( void );
        bool Save( void );
        bool SaveAs( void );
        void SetFileName( const char * pFileName );    
        
        void CreateDefaultDocument( );
        void CreateEmptyDocument( );
        void DestroyDocument( );
        bool DocDirty( void ) { return true; }

	    unsigned int last_timer_time;     

        CMainCanvas      m_MainCanvas;
        
	    CStatusBar  m_wndStatusBar;
	    CToolBar    m_wndToolBar;
	    CReBar      m_wndReBar;
	    
	    CString     m_FileName;
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MAINFRM_H__4ABE6D75_01AF_43B5_810F_3716827367EE__INCLUDED_)
