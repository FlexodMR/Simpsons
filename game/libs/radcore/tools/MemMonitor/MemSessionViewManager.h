#if !defined(AFX_MEMSESSIONVIEWMANAGER_H__F9027D48_6ED2_40A9_A118_2F72DFB64CAF__INCLUDED_)
#define AFX_MEMSESSIONVIEWMANAGER_H__F9027D48_6ED2_40A9_A118_2F72DFB64CAF__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemSessionViewManager.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMemSessionViewManager document
#include "ConfigurationPps.h"
#include "MemOverallView.h"
#include "MemSectionListView.h"
#include "MemSectionCellView.h"
#include "MemSectionFrame.h"
#include "MemErrorListView.h"
#include "MemWndState.h"

class CMainFrame;

struct CNotifyMessage
{
    __int64 nTimeIndex;
    int nState;
    int nHints;
    void * pUserData;
};

bool operator==( const CNotifyMessage & lhs, const CNotifyMessage & rhs );

class CMemSessionViewManager;
typedef TRef< CMemSessionViewManager > CMemSessionViewManagerPtr;

class CMemSessionViewManager :
	public CDocument,
    public CSubject,
    public CObserver,
    public CMFCRefCount
{
protected:
	CMemSessionViewManager();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CMemSessionViewManager)

protected:

// Attributes
public:

    typedef map< unsigned int, CNotifyMessage >      ViewNotifyMessage;
    typedef map< CMemorySection *, TRef< CMemSectionFrame > > MemSectionDocViewMap;

    bool OnSubjectStateChangeUIThread( int nState, int nHints, void * pUserData );

    virtual bool OnSubjectStateChange( int nState, int nHints = 0, void * pUserData = NULL );

	void Initialize( CMemSessionDataManager * pData );

    void Terminate( );

    void ClearView( );

    // load a section view frame
    CMemSectionFrame * LoadSectionViewFrame( CMemorySection * pSection );
    void UnLoadSectionViewFrame( CMemSectionFrame * pView );

	CConfigurationPps * GetConfigurationPpsPtr( );
	const CConfigurationPps * GetConfigurationPpsPtr( ) const;

	CMemOverallView * GetMemOverallViewPtr( );
	const CMemOverallView * GetMemOverallViewPtr( ) const;

	CMemSectionFrame * GetMemSectionFramePtr( CMemorySection * pSection );
	const CMemSectionFrame * GetMemSectionFramePtr( CMemorySection * pSection ) const;

    //
    // load content view with conent document
    //
    CMemContentFrame * LoadContentViewFrame( );
    void UnLoadContentViewFrame( CMemContentFrame * pContentFrame );
    void UpdateAllContentViewFrame( MM_ClientMemorySpace eMemorySpaceType, unsigned int uAddr );

    CMemErrorListView * GetErrorListView( );
    const CMemErrorListView * GetErrorListView( ) const;

    //
    // save/load window state
    //
    CMemWndState * FindWindowState( const CRuntimeClass * pClassInfo, unsigned int uWndID );

    const CMemWndState * FindWindowState( const CRuntimeClass * pClassInfo, unsigned int uWndID ) const;

    void AddWindowState( const CRuntimeClass * pClassInfo, unsigned int uWndID, const int nWndState, const CRect & rcWndRect );

    //
    // notification message for consistent and periodic UI update. (solve the problem of more than 100 update per second)
    //
    void AddNotifyMessage( int nState, int nHints, void * pUserData );

    void RemoveNotifyMessage( );

protected:

private:

    CMemSessionDataManager *    m_pMemSessionDataManager;
    CMainFrame *                m_pMainFrameWnd;

    CMemErrorListView *         m_pErrorListView;

    CMemoryImagePtr             m_pMemoryImage;

    CMemOverallView *           m_pOverallView;

    CConfigurationPpsPtr        m_pConfigurationPps;
    MemSectionDocViewMap        m_arySectionView;

    CMemWndStatePtr             m_pMemWndState;         // where required wnd state is saved for the duration of the
                                                        // view

    vector< CMemContentFramePtr > m_aryMemContentFramePtr;

    ViewNotifyMessage           m_aryNotifyMessage;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMemSessionViewManager)
	public:
	virtual void Serialize(CArchive& ar);   // overridden for document i/o
	virtual void OnCloseDocument();
	protected:
	virtual BOOL OnNewDocument();
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMemSessionViewManager();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CMemSessionViewManager)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMSESSIONVIEWMANAGER_H__F9027D48_6ED2_40A9_A118_2F72DFB64CAF__INCLUDED_)
